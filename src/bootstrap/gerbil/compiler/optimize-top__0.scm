(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707674933)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl236972_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243633 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl236972_ __tmp243633))
           (let ()
             (declare (not safe))
             (table-set! _tbl236972_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236972_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236972_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236972_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl236972_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx236955_ . _args236957_)
        (let ((__tmp243635
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236957_)
                     (gxc#compile-e__0 _stx236955_)
                     (let ((_arg1236962_ (car _args236957_))
                           (_rest236964_ (cdr _args236957_)))
                       (if (null? _rest236964_)
                           (gxc#compile-e__1 _stx236955_ _arg1236962_)
                           (let ((_arg2236967_ (car _rest236964_))
                                 (_rest236969_ (cdr _rest236964_)))
                             (if (null? _rest236969_)
                                 (gxc#compile-e__2
                                  _stx236955_
                                  _arg1236962_
                                  _arg2236967_)
                                 (apply gxc#compile-e
                                        _stx236955_
                                        _arg1236962_
                                        _arg2236967_
                                        _rest236969_))))))))
              (__tmp243634 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp243635
           gxc#current-compile-methods
           __tmp243634))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl236952_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243636 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl236952_ __tmp243636))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236952_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236952_ '%#call gxc#basic-expression-type-call%))
           _tbl236952_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx236935_ . _args236937_)
        (let ((__tmp243638
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236937_)
                     (gxc#compile-e__0 _stx236935_)
                     (let ((_arg1236942_ (car _args236937_))
                           (_rest236944_ (cdr _args236937_)))
                       (if (null? _rest236944_)
                           (gxc#compile-e__1 _stx236935_ _arg1236942_)
                           (let ((_arg2236947_ (car _rest236944_))
                                 (_rest236949_ (cdr _rest236944_)))
                             (if (null? _rest236949_)
                                 (gxc#compile-e__2
                                  _stx236935_
                                  _arg1236942_
                                  _arg2236947_)
                                 (apply gxc#compile-e
                                        _stx236935_
                                        _arg1236942_
                                        _arg2236947_
                                        _rest236949_))))))))
              (__tmp243637 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp243638
           gxc#current-compile-methods
           __tmp243637))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl236932_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243639 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl236932_ __tmp243639))
           (let ()
             (declare (not safe))
             (table-set! _tbl236932_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236932_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236932_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236932_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236932_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236932_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236932_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236932_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236932_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236932_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236932_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236932_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl236932_ '%#set! gxc#collect-body-setq%))
           _tbl236932_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx236915_ . _args236917_)
        (let ((__tmp243641
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236917_)
                     (gxc#compile-e__0 _stx236915_)
                     (let ((_arg1236922_ (car _args236917_))
                           (_rest236924_ (cdr _args236917_)))
                       (if (null? _rest236924_)
                           (gxc#compile-e__1 _stx236915_ _arg1236922_)
                           (let ((_arg2236927_ (car _rest236924_))
                                 (_rest236929_ (cdr _rest236924_)))
                             (if (null? _rest236929_)
                                 (gxc#compile-e__2
                                  _stx236915_
                                  _arg1236922_
                                  _arg2236927_)
                                 (apply gxc#compile-e
                                        _stx236915_
                                        _arg1236922_
                                        _arg2236927_
                                        _rest236929_))))))))
              (__tmp243640 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp243641
           gxc#current-compile-methods
           __tmp243640))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl236912_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243642 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl236912_ __tmp243642))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236912_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236912_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236912_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236912_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236912_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236912_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236912_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236912_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236912_ '%#ref gxc#basic-expression-type-ref%))
           _tbl236912_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx236895_ . _args236897_)
        (let ((__tmp243644
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236897_)
                     (gxc#compile-e__0 _stx236895_)
                     (let ((_arg1236902_ (car _args236897_))
                           (_rest236904_ (cdr _args236897_)))
                       (if (null? _rest236904_)
                           (gxc#compile-e__1 _stx236895_ _arg1236902_)
                           (let ((_arg2236907_ (car _rest236904_))
                                 (_rest236909_ (cdr _rest236904_)))
                             (if (null? _rest236909_)
                                 (gxc#compile-e__2
                                  _stx236895_
                                  _arg1236902_
                                  _arg2236907_)
                                 (apply gxc#compile-e
                                        _stx236895_
                                        _arg1236902_
                                        _arg2236907_
                                        _rest236909_))))))))
              (__tmp243643 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp243644
           gxc#current-compile-methods
           __tmp243643))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl236892_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243645 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl236892_ __tmp243645))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236892_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236892_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236892_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236892_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl236892_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx236875_ . _args236877_)
        (let ((__tmp243647
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236877_)
                     (gxc#compile-e__0 _stx236875_)
                     (let ((_arg1236882_ (car _args236877_))
                           (_rest236884_ (cdr _args236877_)))
                       (if (null? _rest236884_)
                           (gxc#compile-e__1 _stx236875_ _arg1236882_)
                           (let ((_arg2236887_ (car _rest236884_))
                                 (_rest236889_ (cdr _rest236884_)))
                             (if (null? _rest236889_)
                                 (gxc#compile-e__2
                                  _stx236875_
                                  _arg1236882_
                                  _arg2236887_)
                                 (apply gxc#compile-e
                                        _stx236875_
                                        _arg1236882_
                                        _arg2236887_
                                        _rest236889_))))))))
              (__tmp243646 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp243647
           gxc#current-compile-methods
           __tmp243646))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx236778_)
        (let* ((___stx241553241554_ _stx236778_)
               (_g236781236801_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241553241554_)))))
          (let ((___kont241555241556_
                 (lambda (_L236845_ _L236846_)
                   (let ((_sym236864_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236846_))))
                     (if (let ((__tmp243648 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp243648 _sym236864_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym236864_))
                         (let ((_type236865236867_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L236845_))))
                           (if _type236865236867_
                               (let ((_type236870_ _type236865236867_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym236864_
                                  _type236870_))
                               '#f))))))
                (___kont241557241558_ (lambda () '#!void)))
            (let ((___match241586241587_
                   (lambda (_e236787236813_
                            _hd236786236816_
                            _tl236785236818_
                            _e236790236821_
                            _hd236789236824_
                            _tl236788236826_
                            _e236793236829_
                            _hd236792236832_
                            _tl236791236834_
                            _e236796236837_
                            _hd236795236840_
                            _tl236794236842_)
                     (let ((_L236845_ _hd236795236840_)
                           (_L236846_ _hd236792236832_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236846_))
                           (___kont241555241556_ _L236845_ _L236846_)
                           (___kont241557241558_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241553241554_))
                  (let ((_e236787236813_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241553241554_))))
                    (let ((_tl236785236818_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236787236813_)))
                          (_hd236786236816_
                           (let ()
                             (declare (not safe))
                             (##car _e236787236813_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236785236818_))
                          (let ((_e236790236821_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236785236818_))))
                            (let ((_tl236788236826_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236790236821_)))
                                  (_hd236789236824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236790236821_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236789236824_))
                                  (let ((_e236793236829_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236789236824_))))
                                    (let ((_tl236791236834_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236793236829_)))
                                          (_hd236792236832_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236793236829_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236791236834_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236788236826_))
                                              (let ((_e236796236837_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236788236826_))))
                                                (let ((_tl236794236842_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236796236837_)))
                                                      (_hd236795236840_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236796236837_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236794236842_))
                                                      (___match241586241587_
                                                       _e236787236813_
                                                       _hd236786236816_
                                                       _tl236785236818_
                                                       _e236790236821_
                                                       _hd236789236824_
                                                       _tl236788236826_
                                                       _e236793236829_
                                                       _hd236792236832_
                                                       _tl236791236834_
                                                       _e236796236837_
                                                       _hd236795236840_
                                                       _tl236794236842_)
                                                      (___kont241557241558_))))
                                              (___kont241557241558_))
                                          (___kont241557241558_))))
                                  (___kont241557241558_))))
                          (___kont241557241558_))))
                  (___kont241557241558_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx236634_)
        (let* ((___stx241589241590_ _stx236634_)
               (_g236637236668_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241589241590_)))))
          (let ((___kont241591241592_
                 (lambda (_L236750_ _L236751_)
                   (let ((_sym236767_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236751_))))
                     (if (let ((__tmp243649 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp243649 _sym236767_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym236767_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym236767_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym236767_))
                             (let ((_type236768236770_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L236750_))))
                               (if _type236768236770_
                                   (let ((_type236773_ _type236768236770_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym236767_
                                      _type236773_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L236750_)))))
                (___kont241593241594_
                 (lambda (_L236697_ _L236698_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L236697_)))))
            (let ((___match241622241623_
                   (lambda (_e236643236718_
                            _hd236642236721_
                            _tl236641236723_
                            _e236646236726_
                            _hd236645236729_
                            _tl236644236731_
                            _e236649236734_
                            _hd236648236737_
                            _tl236647236739_
                            _e236652236742_
                            _hd236651236745_
                            _tl236650236747_)
                     (let ((_L236750_ _hd236651236745_)
                           (_L236751_ _hd236648236737_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236751_))
                           (___kont241591241592_ _L236750_ _L236751_)
                           (___kont241593241594_
                            _hd236651236745_
                            _hd236645236729_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241589241590_))
                  (let ((_e236643236718_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241589241590_))))
                    (let ((_tl236641236723_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236643236718_)))
                          (_hd236642236721_
                           (let ()
                             (declare (not safe))
                             (##car _e236643236718_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236641236723_))
                          (let ((_e236646236726_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236641236723_))))
                            (let ((_tl236644236731_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236646236726_)))
                                  (_hd236645236729_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236646236726_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236645236729_))
                                  (let ((_e236649236734_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236645236729_))))
                                    (let ((_tl236647236739_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236649236734_)))
                                          (_hd236648236737_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236649236734_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236647236739_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236644236731_))
                                              (let ((_e236652236742_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236644236731_))))
                                                (let ((_tl236650236747_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236652236742_)))
                                                      (_hd236651236745_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236652236742_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236650236747_))
                                                      (___match241622241623_
                                                       _e236643236718_
                                                       _hd236642236721_
                                                       _tl236641236723_
                                                       _e236646236726_
                                                       _hd236645236729_
                                                       _tl236644236731_
                                                       _e236649236734_
                                                       _hd236648236737_
                                                       _tl236647236739_
                                                       _e236652236742_
                                                       _hd236651236745_
                                                       _tl236650236747_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236637236668_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236637236668_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236644236731_))
                                              (let ((_e236663236689_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236644236731_))))
                                                (let ((_tl236661236694_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236663236689_)))
                                                      (_hd236662236692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236663236689_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236661236694_))
                                                      (___kont241593241594_
                                                       _hd236662236692_
                                                       _hd236645236729_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236637236668_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236637236668_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236644236731_))
                                      (let ((_e236663236689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236644236731_))))
                                        (let ((_tl236661236694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236663236689_)))
                                              (_hd236662236692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236663236689_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236661236694_))
                                              (___kont241593241594_
                                               _hd236662236692_
                                               _hd236645236729_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236637236668_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236637236668_))))))
                          (let () (declare (not safe)) (_g236637236668_)))))
                  (let () (declare (not safe)) (_g236637236668_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx236419_)
        (letrec ((_collect-e236421_
                  (lambda (_hd236578_ _expr236579_)
                    (let* ((___stx241645241646_ _hd236578_)
                           (_g236582236592_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx241645241646_)))))
                      (let ((___kont241647241648_
                             (lambda (_L236612_)
                               (let ((_sym236623_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L236612_))))
                                 (if (let ((__tmp243650
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp243650 _sym236623_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym236623_))
                                     (let ((_type236624236626_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr236579_))))
                                       (if _type236624236626_
                                           (let ((_type236629_
                                                  _type236624236626_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym236623_
                                              _type236629_
                                              '#t))
                                           '#f))))))
                            (___kont241649241650_ (lambda () '#!void)))
                        (let ((___match241658241659_
                               (lambda (_e236587236604_
                                        _hd236586236607_
                                        _tl236585236609_)
                                 (let ((_L236612_ _hd236586236607_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L236612_))
                                       (___kont241647241648_ _L236612_)
                                       (___kont241649241650_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx241645241646_))
                              (let ((_e236587236604_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx241645241646_))))
                                (let ((_tl236585236609_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236587236604_)))
                                      (_hd236586236607_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236587236604_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236585236609_))
                                      (___match241658241659_
                                       _e236587236604_
                                       _hd236586236607_
                                       _tl236585236609_)
                                      (___kont241649241650_))))
                              (___kont241649241650_))))))))
          (let* ((_g236423236458_
                  (lambda (_g236424236455_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g236424236455_))))
                 (_g236422236575_
                  (lambda (_g236424236461_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g236424236461_))
                        (let ((_e236430236463_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g236424236461_))))
                          (let ((_hd236429236466_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236430236463_)))
                                (_tl236428236468_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236430236463_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl236428236468_))
                                (let ((_e236433236471_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl236428236468_))))
                                  (let ((_hd236432236474_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236433236471_)))
                                        (_tl236431236476_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236433236471_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd236432236474_))
                                        (let ((_g243651_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd236432236474_
                                                  '0))))
                                          (begin
                                            (let ((_g243652_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g243651_)
                                                         (##vector-length
                                                          _g243651_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g243652_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g243652_)))
                                            (let ((_target236434236479_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g243651_
                                                      0)))
                                                  (_tl236436236481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g243651_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236436236481_))
                                                  (letrec ((_loop236437236484_
                                                            (lambda (_hd236435236487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr236441236489_
                             _hd236442236491_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236435236487_))
                          (let ((_e236438236494_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236435236487_))))
                            (let ((_lp-hd236439236497_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236438236494_)))
                                  (_lp-tl236440236499_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236438236494_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd236439236497_))
                                  (let ((_e236447236502_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd236439236497_))))
                                    (let ((_hd236446236505_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236447236502_)))
                                          (_tl236445236507_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236447236502_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236445236507_))
                                          (let ((_e236450236510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236445236507_))))
                                            (let ((_hd236449236513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236450236510_)))
                                                  (_tl236448236515_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236450236510_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236448236515_))
                                                  (let ((__tmp243657
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd236449236513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr236441236489_)))
                (__tmp243656
                 (let ()
                   (declare (not safe))
                   (cons _hd236446236505_ _hd236442236491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop236437236484_
                                                     _lp-tl236440236499_
                                                     __tmp243657
                                                     __tmp243656))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236423236458_
                                                     _g236424236461_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236423236458_
                                             _g236424236461_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236423236458_ _g236424236461_)))))
                          (let ((_expr236443236518_
                                 (reverse _expr236441236489_))
                                (_hd236444236520_ (reverse _hd236442236491_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl236431236476_))
                                (let ((_e236453236523_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl236431236476_))))
                                  (let ((_hd236452236526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236453236523_)))
                                        (_tl236451236528_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236453236523_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236451236528_))
                                        ((lambda (_L236531_
                                                  _L236532_
                                                  _L236533_)
                                           (for-each
                                            _collect-e236421_
                                            (let ((__tmp243653
                                                   (lambda (_g236553236556_
                                                            _g236554236558_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236553236556_
                                                             _g236554236558_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243653
                                                      '()
                                                      _L236533_))
                                            (let ((__tmp243654
                                                   (lambda (_g236560236563_
                                                            _g236561236565_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236560236563_
                                                             _g236561236565_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243654
                                                      '()
                                                      _L236532_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp243655
                                                   (lambda (_g236567236570_
                                                            _g236568236572_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236567236570_
                                                             _g236568236572_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243655
                                                      '()
                                                      _L236532_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L236531_)))
                                         _hd236452236526_
                                         _expr236443236518_
                                         _hd236444236520_)
                                        (let ()
                                          (declare (not safe))
                                          (_g236423236458_ _g236424236461_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236423236458_ _g236424236461_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop236437236484_
                                                       _target236434236479_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236423236458_
                                                     _g236424236461_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g236423236458_ _g236424236461_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236423236458_ _g236424236461_)))))
                        (let ()
                          (declare (not safe))
                          (_g236423236458_ _g236424236461_))))))
            (declare (not safe))
            (_g236422236575_ _stx236419_)))))
    (define gxc#collect-type-call%
      (lambda (_stx235911_)
        (let* ((___stx241661241662_ _stx235911_)
               (_g235915236030_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241661241662_)))))
          (let ((___kont241663241664_
                 (lambda (_L236369_ _L236370_ _L236371_ _L236372_ _L236373_)
                   (let ((__tmp243661
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236372_)))
                         (__tmp243660
                          (let () (declare (not safe)) (gx#stx-e _L236371_)))
                         (__tmp243659
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236370_)))
                         (__tmp243658
                          (let () (declare (not safe)) (gx#stx-e _L236369_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp243661
                      __tmp243660
                      __tmp243659
                      __tmp243658))))
                (___kont241665241666_
                 (lambda (_L236197_ _L236198_ _L236199_ _L236200_)
                   (let ((__tmp243664
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236199_)))
                         (__tmp243663
                          (let () (declare (not safe)) (gx#stx-e _L236198_)))
                         (__tmp243662
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236197_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp243664
                      __tmp243663
                      __tmp243662
                      '#f))))
                (___kont241667241668_
                 (lambda (_L236067_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp243665
                           (lambda (_g236080236083_ _g236081236085_)
                             (let ()
                               (declare (not safe))
                               (cons _g236080236083_ _g236081236085_)))))
                      (declare (not safe))
                      (foldr1 __tmp243665 '() _L236067_))))))
            (let* ((___match241918241919_
                    (lambda (_e236016236035_
                             _hd236015236038_
                             _tl236014236040_
                             ___splice241669241670_
                             _target236017236043_
                             _tl236019236045_)
                      (letrec ((_loop236020236048_
                                (lambda (_hd236018236051_ _expr236024236053_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd236018236051_))
                                      (let ((_e236021236056_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd236018236051_))))
                                        (let ((_lp-tl236023236061_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236021236056_)))
                                              (_lp-hd236022236059_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236021236056_))))
                                          (let ((__tmp243666
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd236022236059_
                                                         _expr236024236053_))))
                                            (declare (not safe))
                                            (_loop236020236048_
                                             _lp-tl236023236061_
                                             __tmp243666))))
                                      (let ((_expr236025236064_
                                             (reverse _expr236024236053_)))
                                        (___kont241667241668_
                                         _expr236025236064_))))))
                        (let ()
                          (declare (not safe))
                          (_loop236020236048_ _target236017236043_ '())))))
                   (___match241798241799_
                    (lambda (_e235924236241_
                             _hd235923236244_
                             _tl235922236246_
                             _e235927236249_
                             _hd235926236252_
                             _tl235925236254_
                             _e235930236257_
                             _hd235929236260_
                             _tl235928236262_
                             _e235933236265_
                             _hd235932236268_
                             _tl235931236270_
                             _e235936236273_
                             _hd235935236276_
                             _tl235934236278_
                             _e235939236281_
                             _hd235938236284_
                             _tl235937236286_
                             _e235942236289_
                             _hd235941236292_
                             _tl235940236294_
                             _e235945236297_
                             _hd235944236300_
                             _tl235943236302_
                             _e235948236305_
                             _hd235947236308_
                             _tl235946236310_
                             _e235951236313_
                             _hd235950236316_
                             _tl235949236318_
                             _e235954236321_
                             _hd235953236324_
                             _tl235952236326_
                             _e235957236329_
                             _hd235956236332_
                             _tl235955236334_
                             _e235960236337_
                             _hd235959236340_
                             _tl235958236342_
                             _e235963236345_
                             _hd235962236348_
                             _tl235961236350_
                             _e235966236353_
                             _hd235965236356_
                             _tl235964236358_
                             _e235969236361_
                             _hd235968236364_
                             _tl235967236366_)
                      (let ((_L236369_ _hd235968236364_)
                            (_L236370_ _hd235959236340_)
                            (_L236371_ _hd235950236316_)
                            (_L236372_ _hd235941236292_)
                            (_L236373_ _hd235932236268_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L236373_
                               'bind-method!))
                            (___kont241663241664_
                             _L236369_
                             _L236370_
                             _L236371_
                             _L236372_
                             _L236373_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl235922236246_))
                                (let ((___splice241669241670_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl235922236246_
                                          '0))))
                                  (let ((_tl236019236045_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice241669241670_
                                            '1)))
                                        (_target236017236043_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice241669241670_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236019236045_))
                                        (___match241918241919_
                                         _e235924236241_
                                         _hd235923236244_
                                         _tl235922236246_
                                         ___splice241669241670_
                                         _target236017236043_
                                         _tl236019236045_)
                                        (let ()
                                          (declare (not safe))
                                          (_g235915236030_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g235915236030_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241661241662_))
                  (let ((_e235924236241_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241661241662_))))
                    (let ((_tl235922236246_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235924236241_)))
                          (_hd235923236244_
                           (let ()
                             (declare (not safe))
                             (##car _e235924236241_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235922236246_))
                          (let ((_e235927236249_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235922236246_))))
                            (let ((_tl235925236254_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235927236249_)))
                                  (_hd235926236252_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235927236249_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd235926236252_))
                                  (let ((_e235930236257_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd235926236252_))))
                                    (let ((_tl235928236262_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235930236257_)))
                                          (_hd235929236260_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235930236257_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd235929236260_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd235929236260_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235928236262_))
                                                  (let ((_e235933236265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235928236262_))))
                                                    (let ((_tl235931236270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235933236265_)))
                                                          (_hd235932236268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235933236265_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235931236270_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl235925236254_))
                      (let ((_e235936236273_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235925236254_))))
                        (let ((_tl235934236278_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235936236273_)))
                              (_hd235935236276_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235936236273_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd235935236276_))
                              (let ((_e235939236281_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd235935236276_))))
                                (let ((_tl235937236286_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235939236281_)))
                                      (_hd235938236284_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235939236281_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd235938236284_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd235938236284_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235937236286_))
                                              (let ((_e235942236289_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235937236286_))))
                                                (let ((_tl235940236294_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235942236289_)))
                                                      (_hd235941236292_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235942236289_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235940236294_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235934236278_))
                                                          (let ((_e235945236297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235934236278_))))
                    (let ((_tl235943236302_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235945236297_)))
                          (_hd235944236300_
                           (let ()
                             (declare (not safe))
                             (##car _e235945236297_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235944236300_))
                          (let ((_e235948236305_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235944236300_))))
                            (let ((_tl235946236310_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235948236305_)))
                                  (_hd235947236308_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235948236305_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235947236308_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd235947236308_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235946236310_))
                                          (let ((_e235951236313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235946236310_))))
                                            (let ((_tl235949236318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235951236313_)))
                                                  (_hd235950236316_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235951236313_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235949236318_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235943236302_))
                                                      (let ((_e235954236321_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235943236302_))))
                (let ((_tl235952236326_
                       (let () (declare (not safe)) (##cdr _e235954236321_)))
                      (_hd235953236324_
                       (let () (declare (not safe)) (##car _e235954236321_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235953236324_))
                      (let ((_e235957236329_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235953236324_))))
                        (let ((_tl235955236334_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235957236329_)))
                              (_hd235956236332_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235957236329_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235956236332_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235956236332_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235955236334_))
                                      (let ((_e235960236337_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235955236334_))))
                                        (let ((_tl235958236342_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235960236337_)))
                                              (_hd235959236340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235960236337_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235958236342_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235952236326_))
                                                  (let ((_e235963236345_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235952236326_))))
                                                    (let ((_tl235961236350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235963236345_)))
                                                          (_hd235962236348_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235963236345_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235962236348_))
                                                          (let ((_e235966236353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235962236348_))))
                    (let ((_tl235964236358_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235966236353_)))
                          (_hd235965236356_
                           (let ()
                             (declare (not safe))
                             (##car _e235966236353_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235965236356_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd235965236356_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235964236358_))
                                  (let ((_e235969236361_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235964236358_))))
                                    (let ((_tl235967236366_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235969236361_)))
                                          (_hd235968236364_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235969236361_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235967236366_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235961236350_))
                                              (___match241798241799_
                                               _e235924236241_
                                               _hd235923236244_
                                               _tl235922236246_
                                               _e235927236249_
                                               _hd235926236252_
                                               _tl235925236254_
                                               _e235930236257_
                                               _hd235929236260_
                                               _tl235928236262_
                                               _e235933236265_
                                               _hd235932236268_
                                               _tl235931236270_
                                               _e235936236273_
                                               _hd235935236276_
                                               _tl235934236278_
                                               _e235939236281_
                                               _hd235938236284_
                                               _tl235937236286_
                                               _e235942236289_
                                               _hd235941236292_
                                               _tl235940236294_
                                               _e235945236297_
                                               _hd235944236300_
                                               _tl235943236302_
                                               _e235948236305_
                                               _hd235947236308_
                                               _tl235946236310_
                                               _e235951236313_
                                               _hd235950236316_
                                               _tl235949236318_
                                               _e235954236321_
                                               _hd235953236324_
                                               _tl235952236326_
                                               _e235957236329_
                                               _hd235956236332_
                                               _tl235955236334_
                                               _e235960236337_
                                               _hd235959236340_
                                               _tl235958236342_
                                               _e235963236345_
                                               _hd235962236348_
                                               _tl235961236350_
                                               _e235966236353_
                                               _hd235965236356_
                                               _tl235964236358_
                                               _e235969236361_
                                               _hd235968236364_
                                               _tl235967236366_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235922236246_))
                                                  (let ((___splice241669241670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235922236246_
                                                            '0))))
                                                    (let ((_tl236019236045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241669241670_
                                                              '1)))
                                                          (_target236017236043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241669241670_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236019236045_))
                                                          (___match241918241919_
                                                           _e235924236241_
                                                           _hd235923236244_
                                                           _tl235922236246_
                                                           ___splice241669241670_
                                                           _target236017236043_
                                                           _tl236019236045_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235915236030_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235915236030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235922236246_))
                                              (let ((___splice241669241670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235922236246_
                                                        '0))))
                                                (let ((_tl236019236045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241669241670_
                                                          '1)))
                                                      (_target236017236043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241669241670_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236019236045_))
                                                      (___match241918241919_
                                                       _e235924236241_
                                                       _hd235923236244_
                                                       _tl235922236246_
                                                       ___splice241669241670_
                                                       _target236017236043_
                                                       _tl236019236045_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235915236030_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235915236030_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235922236246_))
                                      (let ((___splice241669241670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235922236246_
                                                '0))))
                                        (let ((_tl236019236045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241669241670_
                                                  '1)))
                                              (_target236017236043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241669241670_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236019236045_))
                                              (___match241918241919_
                                               _e235924236241_
                                               _hd235923236244_
                                               _tl235922236246_
                                               ___splice241669241670_
                                               _target236017236043_
                                               _tl236019236045_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235915236030_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235915236030_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235922236246_))
                                  (let ((___splice241669241670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235922236246_
                                            '0))))
                                    (let ((_tl236019236045_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241669241670_
                                              '1)))
                                          (_target236017236043_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241669241670_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236019236045_))
                                          (___match241918241919_
                                           _e235924236241_
                                           _hd235923236244_
                                           _tl235922236246_
                                           ___splice241669241670_
                                           _target236017236043_
                                           _tl236019236045_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235915236030_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235915236030_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235922236246_))
                              (let ((___splice241669241670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235922236246_
                                        '0))))
                                (let ((_tl236019236045_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241669241670_
                                          '1)))
                                      (_target236017236043_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241669241670_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236019236045_))
                                      (___match241918241919_
                                       _e235924236241_
                                       _hd235923236244_
                                       _tl235922236246_
                                       ___splice241669241670_
                                       _target236017236043_
                                       _tl236019236045_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235915236030_)))))
                              (let ()
                                (declare (not safe))
                                (_g235915236030_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235922236246_))
                      (let ((___splice241669241670_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235922236246_ '0))))
                        (let ((_tl236019236045_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241669241670_ '1)))
                              (_target236017236043_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241669241670_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236019236045_))
                              (___match241918241919_
                               _e235924236241_
                               _hd235923236244_
                               _tl235922236246_
                               ___splice241669241670_
                               _target236017236043_
                               _tl236019236045_)
                              (let ()
                                (declare (not safe))
                                (_g235915236030_)))))
                      (let () (declare (not safe)) (_g235915236030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235952236326_))
                                                      (if (let ((__tmp243667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp243667 'bind-method!))
                  (let ((_L236197_ _hd235959236340_)
                        (_L236198_ _hd235950236316_)
                        (_L236199_ _hd235941236292_)
                        (_L236200_ _hd235932236268_))
                    (___kont241665241666_
                     _L236197_
                     _L236198_
                     _L236199_
                     _L236200_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235922236246_))
                      (let ((___splice241669241670_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235922236246_ '0))))
                        (let ((_tl236019236045_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241669241670_ '1)))
                              (_target236017236043_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241669241670_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236019236045_))
                              (___match241918241919_
                               _e235924236241_
                               _hd235923236244_
                               _tl235922236246_
                               ___splice241669241670_
                               _target236017236043_
                               _tl236019236045_)
                              (let ()
                                (declare (not safe))
                                (_g235915236030_)))))
                      (let () (declare (not safe)) (_g235915236030_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235922236246_))
                  (let ((___splice241669241670_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235922236246_ '0))))
                    (let ((_tl236019236045_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241669241670_ '1)))
                          (_target236017236043_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241669241670_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236019236045_))
                          (___match241918241919_
                           _e235924236241_
                           _hd235923236244_
                           _tl235922236246_
                           ___splice241669241670_
                           _target236017236043_
                           _tl236019236045_)
                          (let () (declare (not safe)) (_g235915236030_)))))
                  (let () (declare (not safe)) (_g235915236030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235922236246_))
                                                  (let ((___splice241669241670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235922236246_
                                                            '0))))
                                                    (let ((_tl236019236045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241669241670_
                                                              '1)))
                                                          (_target236017236043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241669241670_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236019236045_))
                                                          (___match241918241919_
                                                           _e235924236241_
                                                           _hd235923236244_
                                                           _tl235922236246_
                                                           ___splice241669241670_
                                                           _target236017236043_
                                                           _tl236019236045_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235915236030_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235915236030_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235922236246_))
                                          (let ((___splice241669241670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235922236246_
                                                    '0))))
                                            (let ((_tl236019236045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241669241670_
                                                      '1)))
                                                  (_target236017236043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241669241670_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236019236045_))
                                                  (___match241918241919_
                                                   _e235924236241_
                                                   _hd235923236244_
                                                   _tl235922236246_
                                                   ___splice241669241670_
                                                   _target236017236043_
                                                   _tl236019236045_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235915236030_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235915236030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235922236246_))
                                      (let ((___splice241669241670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235922236246_
                                                '0))))
                                        (let ((_tl236019236045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241669241670_
                                                  '1)))
                                              (_target236017236043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241669241670_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236019236045_))
                                              (___match241918241919_
                                               _e235924236241_
                                               _hd235923236244_
                                               _tl235922236246_
                                               ___splice241669241670_
                                               _target236017236043_
                                               _tl236019236045_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235915236030_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235915236030_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235922236246_))
                                  (let ((___splice241669241670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235922236246_
                                            '0))))
                                    (let ((_tl236019236045_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241669241670_
                                              '1)))
                                          (_target236017236043_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241669241670_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236019236045_))
                                          (___match241918241919_
                                           _e235924236241_
                                           _hd235923236244_
                                           _tl235922236246_
                                           ___splice241669241670_
                                           _target236017236043_
                                           _tl236019236045_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235915236030_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235915236030_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl235922236246_))
                          (let ((___splice241669241670_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl235922236246_
                                    '0))))
                            (let ((_tl236019236045_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241669241670_ '1)))
                                  (_target236017236043_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241669241670_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236019236045_))
                                  (___match241918241919_
                                   _e235924236241_
                                   _hd235923236244_
                                   _tl235922236246_
                                   ___splice241669241670_
                                   _target236017236043_
                                   _tl236019236045_)
                                  (let ()
                                    (declare (not safe))
                                    (_g235915236030_)))))
                          (let () (declare (not safe)) (_g235915236030_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235922236246_))
                  (let ((___splice241669241670_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235922236246_ '0))))
                    (let ((_tl236019236045_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241669241670_ '1)))
                          (_target236017236043_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241669241670_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236019236045_))
                          (___match241918241919_
                           _e235924236241_
                           _hd235923236244_
                           _tl235922236246_
                           ___splice241669241670_
                           _target236017236043_
                           _tl236019236045_)
                          (let () (declare (not safe)) (_g235915236030_)))))
                  (let () (declare (not safe)) (_g235915236030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl235922236246_))
                                                      (let ((___splice241669241670_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl235922236246_ '0))))
                (let ((_tl236019236045_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241669241670_ '1)))
                      (_target236017236043_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241669241670_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236019236045_))
                      (___match241918241919_
                       _e235924236241_
                       _hd235923236244_
                       _tl235922236246_
                       ___splice241669241670_
                       _target236017236043_
                       _tl236019236045_)
                      (let () (declare (not safe)) (_g235915236030_)))))
              (let () (declare (not safe)) (_g235915236030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235922236246_))
                                              (let ((___splice241669241670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235922236246_
                                                        '0))))
                                                (let ((_tl236019236045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241669241670_
                                                          '1)))
                                                      (_target236017236043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241669241670_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236019236045_))
                                                      (___match241918241919_
                                                       _e235924236241_
                                                       _hd235923236244_
                                                       _tl235922236246_
                                                       ___splice241669241670_
                                                       _target236017236043_
                                                       _tl236019236045_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235915236030_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235915236030_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235922236246_))
                                          (let ((___splice241669241670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235922236246_
                                                    '0))))
                                            (let ((_tl236019236045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241669241670_
                                                      '1)))
                                                  (_target236017236043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241669241670_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236019236045_))
                                                  (___match241918241919_
                                                   _e235924236241_
                                                   _hd235923236244_
                                                   _tl235922236246_
                                                   ___splice241669241670_
                                                   _target236017236043_
                                                   _tl236019236045_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235915236030_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235915236030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235922236246_))
                                      (let ((___splice241669241670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235922236246_
                                                '0))))
                                        (let ((_tl236019236045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241669241670_
                                                  '1)))
                                              (_target236017236043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241669241670_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236019236045_))
                                              (___match241918241919_
                                               _e235924236241_
                                               _hd235923236244_
                                               _tl235922236246_
                                               ___splice241669241670_
                                               _target236017236043_
                                               _tl236019236045_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235915236030_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235915236030_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235922236246_))
                              (let ((___splice241669241670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235922236246_
                                        '0))))
                                (let ((_tl236019236045_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241669241670_
                                          '1)))
                                      (_target236017236043_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241669241670_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236019236045_))
                                      (___match241918241919_
                                       _e235924236241_
                                       _hd235923236244_
                                       _tl235922236246_
                                       ___splice241669241670_
                                       _target236017236043_
                                       _tl236019236045_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235915236030_)))))
                              (let ()
                                (declare (not safe))
                                (_g235915236030_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235922236246_))
                      (let ((___splice241669241670_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235922236246_ '0))))
                        (let ((_tl236019236045_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241669241670_ '1)))
                              (_target236017236043_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241669241670_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236019236045_))
                              (___match241918241919_
                               _e235924236241_
                               _hd235923236244_
                               _tl235922236246_
                               ___splice241669241670_
                               _target236017236043_
                               _tl236019236045_)
                              (let ()
                                (declare (not safe))
                                (_g235915236030_)))))
                      (let () (declare (not safe)) (_g235915236030_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235922236246_))
                  (let ((___splice241669241670_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235922236246_ '0))))
                    (let ((_tl236019236045_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241669241670_ '1)))
                          (_target236017236043_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241669241670_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236019236045_))
                          (___match241918241919_
                           _e235924236241_
                           _hd235923236244_
                           _tl235922236246_
                           ___splice241669241670_
                           _target236017236043_
                           _tl236019236045_)
                          (let () (declare (not safe)) (_g235915236030_)))))
                  (let () (declare (not safe)) (_g235915236030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235922236246_))
                                                  (let ((___splice241669241670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235922236246_
                                                            '0))))
                                                    (let ((_tl236019236045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241669241670_
                                                              '1)))
                                                          (_target236017236043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241669241670_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236019236045_))
                                                          (___match241918241919_
                                                           _e235924236241_
                                                           _hd235923236244_
                                                           _tl235922236246_
                                                           ___splice241669241670_
                                                           _target236017236043_
                                                           _tl236019236045_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235915236030_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235915236030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235922236246_))
                                              (let ((___splice241669241670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235922236246_
                                                        '0))))
                                                (let ((_tl236019236045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241669241670_
                                                          '1)))
                                                      (_target236017236043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241669241670_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236019236045_))
                                                      (___match241918241919_
                                                       _e235924236241_
                                                       _hd235923236244_
                                                       _tl235922236246_
                                                       ___splice241669241670_
                                                       _target236017236043_
                                                       _tl236019236045_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235915236030_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235915236030_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235922236246_))
                                          (let ((___splice241669241670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235922236246_
                                                    '0))))
                                            (let ((_tl236019236045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241669241670_
                                                      '1)))
                                                  (_target236017236043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241669241670_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236019236045_))
                                                  (___match241918241919_
                                                   _e235924236241_
                                                   _hd235923236244_
                                                   _tl235922236246_
                                                   ___splice241669241670_
                                                   _target236017236043_
                                                   _tl236019236045_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235915236030_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235915236030_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235922236246_))
                                  (let ((___splice241669241670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235922236246_
                                            '0))))
                                    (let ((_tl236019236045_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241669241670_
                                              '1)))
                                          (_target236017236043_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241669241670_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236019236045_))
                                          (___match241918241919_
                                           _e235924236241_
                                           _hd235923236244_
                                           _tl235922236246_
                                           ___splice241669241670_
                                           _target236017236043_
                                           _tl236019236045_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235915236030_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235915236030_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl235922236246_))
                          (let ((___splice241669241670_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl235922236246_
                                    '0))))
                            (let ((_tl236019236045_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241669241670_ '1)))
                                  (_target236017236043_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241669241670_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236019236045_))
                                  (___match241918241919_
                                   _e235924236241_
                                   _hd235923236244_
                                   _tl235922236246_
                                   ___splice241669241670_
                                   _target236017236043_
                                   _tl236019236045_)
                                  (let ()
                                    (declare (not safe))
                                    (_g235915236030_)))))
                          (let () (declare (not safe)) (_g235915236030_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235922236246_))
                      (let ((___splice241669241670_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235922236246_ '0))))
                        (let ((_tl236019236045_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241669241670_ '1)))
                              (_target236017236043_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241669241670_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236019236045_))
                              (___match241918241919_
                               _e235924236241_
                               _hd235923236244_
                               _tl235922236246_
                               ___splice241669241670_
                               _target236017236043_
                               _tl236019236045_)
                              (let ()
                                (declare (not safe))
                                (_g235915236030_)))))
                      (let () (declare (not safe)) (_g235915236030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl235922236246_))
                                                      (let ((___splice241669241670_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl235922236246_ '0))))
                (let ((_tl236019236045_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241669241670_ '1)))
                      (_target236017236043_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241669241670_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236019236045_))
                      (___match241918241919_
                       _e235924236241_
                       _hd235923236244_
                       _tl235922236246_
                       ___splice241669241670_
                       _target236017236043_
                       _tl236019236045_)
                      (let () (declare (not safe)) (_g235915236030_)))))
              (let () (declare (not safe)) (_g235915236030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235922236246_))
                                                  (let ((___splice241669241670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235922236246_
                                                            '0))))
                                                    (let ((_tl236019236045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241669241670_
                                                              '1)))
                                                          (_target236017236043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241669241670_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236019236045_))
                                                          (___match241918241919_
                                                           _e235924236241_
                                                           _hd235923236244_
                                                           _tl235922236246_
                                                           ___splice241669241670_
                                                           _target236017236043_
                                                           _tl236019236045_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235915236030_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235915236030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235922236246_))
                                              (let ((___splice241669241670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235922236246_
                                                        '0))))
                                                (let ((_tl236019236045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241669241670_
                                                          '1)))
                                                      (_target236017236043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241669241670_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236019236045_))
                                                      (___match241918241919_
                                                       _e235924236241_
                                                       _hd235923236244_
                                                       _tl235922236246_
                                                       ___splice241669241670_
                                                       _target236017236043_
                                                       _tl236019236045_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235915236030_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235915236030_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235922236246_))
                                      (let ((___splice241669241670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235922236246_
                                                '0))))
                                        (let ((_tl236019236045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241669241670_
                                                  '1)))
                                              (_target236017236043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241669241670_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236019236045_))
                                              (___match241918241919_
                                               _e235924236241_
                                               _hd235923236244_
                                               _tl235922236246_
                                               ___splice241669241670_
                                               _target236017236043_
                                               _tl236019236045_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235915236030_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235915236030_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235922236246_))
                              (let ((___splice241669241670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235922236246_
                                        '0))))
                                (let ((_tl236019236045_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241669241670_
                                          '1)))
                                      (_target236017236043_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241669241670_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236019236045_))
                                      (___match241918241919_
                                       _e235924236241_
                                       _hd235923236244_
                                       _tl235922236246_
                                       ___splice241669241670_
                                       _target236017236043_
                                       _tl236019236045_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235915236030_)))))
                              (let ()
                                (declare (not safe))
                                (_g235915236030_))))))
                  (let () (declare (not safe)) (_g235915236030_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx235851_)
        (let* ((___stx241921241922_ _stx235851_)
               (_g235854235867_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241921241922_)))))
          (let ((___kont241923241924_
                 (lambda (_L235895_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L235895_))))
                (___kont241925241926_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241921241922_))
                (let ((_e235859235879_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241921241922_))))
                  (let ((_tl235857235884_
                         (let () (declare (not safe)) (##cdr _e235859235879_)))
                        (_hd235858235882_
                         (let ()
                           (declare (not safe))
                           (##car _e235859235879_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235857235884_))
                        (let ((_e235862235887_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235857235884_))))
                          (let ((_tl235860235892_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235862235887_)))
                                (_hd235861235890_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235862235887_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl235860235892_))
                                (___kont241923241924_ _hd235861235890_)
                                (___kont241925241926_))))
                        (___kont241925241926_))))
                (___kont241925241926_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx235731_)
        (let* ((_g235733235750_
                (lambda (_g235734235747_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235734235747_))))
               (_g235732235848_
                (lambda (_g235734235753_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235734235753_))
                      (let ((_e235739235755_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235734235753_))))
                        (let ((_hd235738235758_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235739235755_)))
                              (_tl235737235760_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235739235755_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235737235760_))
                              (let ((_e235742235763_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235737235760_))))
                                (let ((_hd235741235766_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235742235763_)))
                                      (_tl235740235768_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235742235763_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235740235768_))
                                      (let ((_e235745235771_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235740235768_))))
                                        (let ((_hd235744235774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235745235771_)))
                                              (_tl235743235776_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235745235771_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235743235776_))
                                              ((lambda (_L235779_ _L235780_)
                                                 (let* ((___stx241943241944_
                                                         _L235780_)
                                                        (_g235796235807_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx241943241944_)))))
                                                   (let ((___kont241945241946_
                                                          (lambda (_L235827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L235828_)
                    (let ((_$e235840_
                           (let ((__tmp243668
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L235828_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp243668
                              '#f))))
                      (if _$e235840_
                          ((lambda (_type-e235843_)
                             (_type-e235843_ _stx235731_ _L235780_))
                           _$e235840_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L235779_))))))
                 (___kont241947241948_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L235779_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match241954241955_
                                                            (lambda (_e235802235819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd235801235822_
                             _tl235800235824_)
                      (let ((_L235827_ _tl235800235824_)
                            (_L235828_ _hd235801235822_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L235828_))
                            (___kont241945241946_ _L235827_ _L235828_)
                            (___kont241947241948_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx241943241944_))
                   (let ((_e235802235819_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx241943241944_))))
                     (let ((_tl235800235824_
                            (let ()
                              (declare (not safe))
                              (##cdr _e235802235819_)))
                           (_hd235801235822_
                            (let ()
                              (declare (not safe))
                              (##car _e235802235819_))))
                       (___match241954241955_
                        _e235802235819_
                        _hd235801235822_
                        _tl235800235824_)))
                   (___kont241947241948_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd235744235774_
                                               _hd235741235766_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235733235750_
                                                 _g235734235753_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235733235750_ _g235734235753_)))))
                              (let ()
                                (declare (not safe))
                                (_g235733235750_ _g235734235753_)))))
                      (let ()
                        (declare (not safe))
                        (_g235733235750_ _g235734235753_))))))
          (declare (not safe))
          (_g235732235848_ _stx235731_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx235592_ _ann235593_)
        (let* ((_g235595235628_
                (lambda (_g235596235625_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235596235625_))))
               (_g235594235728_
                (lambda (_g235596235631_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235596235631_))
                      (let ((_e235605235633_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235596235631_))))
                        (let ((_hd235604235636_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235605235633_)))
                              (_tl235603235638_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235605235633_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235603235638_))
                              (let ((_e235608235641_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235603235638_))))
                                (let ((_hd235607235644_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235608235641_)))
                                      (_tl235606235646_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235608235641_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235606235646_))
                                      (let ((_e235611235649_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235606235646_))))
                                        (let ((_hd235610235652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235611235649_)))
                                              (_tl235609235654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235611235649_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235609235654_))
                                              (let ((_e235614235657_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235609235654_))))
                                                (let ((_hd235613235660_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235614235657_)))
                                                      (_tl235612235662_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235614235657_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235612235662_))
                                                      (let ((_e235617235665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235612235662_))))
                (let ((_hd235616235668_
                       (let () (declare (not safe)) (##car _e235617235665_)))
                      (_tl235615235670_
                       (let () (declare (not safe)) (##cdr _e235617235665_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl235615235670_))
                      (let ((_e235620235673_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235615235670_))))
                        (let ((_hd235619235676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235620235673_)))
                              (_tl235618235678_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235620235673_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235618235678_))
                              (let ((_e235623235681_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235618235678_))))
                                (let ((_hd235622235684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235623235681_)))
                                      (_tl235621235686_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235623235681_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235621235686_))
                                      ((lambda (_L235689_
                                                _L235690_
                                                _L235691_
                                                _L235692_
                                                _L235693_
                                                _L235694_)
                                         (let ((_type-id235721_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235694_)))
                                               (_super235722_
                                                (map gxc#identifier-symbol
                                                     _L235693_))
                                               (_slots235723_
                                                (map gx#stx-e _L235692_))
                                               (_ctor-method235724_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235691_)))
                                               (_struct?235725_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235690_)))
                                               (_final?235726_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235689_))))
                                           (let ((__obj243626
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
                                              __obj243626
                                              _type-id235721_
                                              _super235722_
                                              _slots235723_
                                              _ctor-method235724_
                                              _struct?235725_
                                              _final?235726_)
                                             __obj243626)))
                                       _hd235622235684_
                                       _hd235619235676_
                                       _hd235616235668_
                                       _hd235613235660_
                                       _hd235610235652_
                                       _hd235607235644_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235595235628_ _g235596235631_)))))
                              (let ()
                                (declare (not safe))
                                (_g235595235628_ _g235596235631_)))))
                      (let ()
                        (declare (not safe))
                        (_g235595235628_ _g235596235631_)))))
              (let ()
                (declare (not safe))
                (_g235595235628_ _g235596235631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235595235628_
                                                 _g235596235631_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235595235628_ _g235596235631_)))))
                              (let ()
                                (declare (not safe))
                                (_g235595235628_ _g235596235631_)))))
                      (let ()
                        (declare (not safe))
                        (_g235595235628_ _g235596235631_))))))
          (declare (not safe))
          (_g235594235728_ _ann235593_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx235540_ _ann235541_)
        (let* ((_g235543235556_
                (lambda (_g235544235553_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235544235553_))))
               (_g235542235589_
                (lambda (_g235544235559_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235544235559_))
                      (let ((_e235548235561_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235544235559_))))
                        (let ((_hd235547235564_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235548235561_)))
                              (_tl235546235566_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235548235561_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235546235566_))
                              (let ((_e235551235569_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235546235566_))))
                                (let ((_hd235550235572_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235551235569_)))
                                      (_tl235549235574_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235551235569_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235549235574_))
                                      ((lambda (_L235577_)
                                         (let ((__tmp243669
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235577_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp243669)))
                                       _hd235550235572_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235543235556_ _g235544235559_)))))
                              (let ()
                                (declare (not safe))
                                (_g235543235556_ _g235544235559_)))))
                      (let ()
                        (declare (not safe))
                        (_g235543235556_ _g235544235559_))))))
          (declare (not safe))
          (_g235542235589_ _ann235541_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx235488_ _ann235489_)
        (let* ((_g235491235504_
                (lambda (_g235492235501_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235492235501_))))
               (_g235490235537_
                (lambda (_g235492235507_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235492235507_))
                      (let ((_e235496235509_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235492235507_))))
                        (let ((_hd235495235512_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235496235509_)))
                              (_tl235494235514_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235496235509_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235494235514_))
                              (let ((_e235499235517_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235494235514_))))
                                (let ((_hd235498235520_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235499235517_)))
                                      (_tl235497235522_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235499235517_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235497235522_))
                                      ((lambda (_L235525_)
                                         (let ((__tmp243670
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235525_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp243670)))
                                       _hd235498235520_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235491235504_ _g235492235507_)))))
                              (let ()
                                (declare (not safe))
                                (_g235491235504_ _g235492235507_)))))
                      (let ()
                        (declare (not safe))
                        (_g235491235504_ _g235492235507_))))))
          (declare (not safe))
          (_g235490235537_ _ann235489_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx235404_ _ann235405_)
        (let* ((_g235407235428_
                (lambda (_g235408235425_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235408235425_))))
               (_g235406235485_
                (lambda (_g235408235431_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235408235431_))
                      (let ((_e235414235433_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235408235431_))))
                        (let ((_hd235413235436_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235414235433_)))
                              (_tl235412235438_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235414235433_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235412235438_))
                              (let ((_e235417235441_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235412235438_))))
                                (let ((_hd235416235444_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235417235441_)))
                                      (_tl235415235446_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235417235441_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235415235446_))
                                      (let ((_e235420235449_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235415235446_))))
                                        (let ((_hd235419235452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235420235449_)))
                                              (_tl235418235454_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235420235449_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235418235454_))
                                              (let ((_e235423235457_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235418235454_))))
                                                (let ((_hd235422235460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235423235457_)))
                                                      (_tl235421235462_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235423235457_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235421235462_))
                                                      ((lambda (_L235465_
                                                                _L235466_
                                                                _L235467_)
                                                         (let ((__tmp243673
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L235467_)))
                       (__tmp243672
                        (let () (declare (not safe)) (gx#stx-e _L235466_)))
                       (__tmp243671
                        (let () (declare (not safe)) (gx#stx-e _L235465_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp243673
                    __tmp243672
                    __tmp243671)))
               _hd235422235460_
               _hd235419235452_
               _hd235416235444_)
              (let ()
                (declare (not safe))
                (_g235407235428_ _g235408235431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235407235428_
                                                 _g235408235431_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235407235428_ _g235408235431_)))))
                              (let ()
                                (declare (not safe))
                                (_g235407235428_ _g235408235431_)))))
                      (let ()
                        (declare (not safe))
                        (_g235407235428_ _g235408235431_))))))
          (declare (not safe))
          (_g235406235485_ _ann235405_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx235320_ _ann235321_)
        (let* ((_g235323235344_
                (lambda (_g235324235341_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235324235341_))))
               (_g235322235401_
                (lambda (_g235324235347_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235324235347_))
                      (let ((_e235330235349_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235324235347_))))
                        (let ((_hd235329235352_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235330235349_)))
                              (_tl235328235354_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235330235349_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235328235354_))
                              (let ((_e235333235357_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235328235354_))))
                                (let ((_hd235332235360_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235333235357_)))
                                      (_tl235331235362_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235333235357_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235331235362_))
                                      (let ((_e235336235365_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235331235362_))))
                                        (let ((_hd235335235368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235336235365_)))
                                              (_tl235334235370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235336235365_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235334235370_))
                                              (let ((_e235339235373_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235334235370_))))
                                                (let ((_hd235338235376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235339235373_)))
                                                      (_tl235337235378_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235339235373_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235337235378_))
                                                      ((lambda (_L235381_
                                                                _L235382_
                                                                _L235383_)
                                                         (let ((__tmp243676
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L235383_)))
                       (__tmp243675
                        (let () (declare (not safe)) (gx#stx-e _L235382_)))
                       (__tmp243674
                        (let () (declare (not safe)) (gx#stx-e _L235381_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp243676
                    __tmp243675
                    __tmp243674)))
               _hd235338235376_
               _hd235335235368_
               _hd235332235360_)
              (let ()
                (declare (not safe))
                (_g235323235344_ _g235324235347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235323235344_
                                                 _g235324235347_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235323235344_ _g235324235347_)))))
                              (let ()
                                (declare (not safe))
                                (_g235323235344_ _g235324235347_)))))
                      (let ()
                        (declare (not safe))
                        (_g235323235344_ _g235324235347_))))))
          (declare (not safe))
          (_g235322235401_ _ann235321_))))
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
      (lambda (_stx234440_)
        (let* ((___stx241957241958_ _stx234440_)
               (_g234446234642_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241957241958_)))))
          (let ((___kont241959241960_
                 (lambda (_L235308_)
                   (let ((__obj243627
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243627
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L235308_))
                      '#f)
                     __obj243627)))
                (___kont241961241962_
                 (lambda (_L235235_
                          _L235236_
                          _L235237_
                          _L235238_
                          _L235239_
                          _L235240_)
                   (let* ((_tab235290_
                           (let () (declare (not safe)) (gx#stx-e _L235237_)))
                          (_keys235292_
                           (if _tab235290_
                               (let ((__tmp243677 (vector->list _tab235290_)))
                                 (declare (not safe))
                                 (filter values __tmp243677))
                               '#f)))
                     (let ((__tmp243678
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L235236_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys235292_
                        __tmp243678)))))
                (___kont241963241964_
                 (lambda (_L234968_
                          _L234969_
                          _L234970_
                          _L234971_
                          _L234972_
                          _L234973_
                          _L234974_
                          _L234975_
                          _L234976_
                          _L234977_)
                   (let ((__tmp243680
                          (map gx#stx-e
                               (let ((__tmp243681
                                      (lambda (_g235070235073_ _g235071235075_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g235070235073_
                                                _g235071235075_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp243681 '() _L234970_))))
                         (__tmp243679
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234974_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp243680
                      __tmp243679))))
                (___kont241967241968_
                 (lambda (_L234678_)
                   (let ((__obj243628
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243628
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234678_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L234678_)))
                     __obj243628)))
                (___kont241969241970_
                 (lambda (_L234655_)
                   (let ((__obj243629
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243629
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234655_))
                      '#f)
                     __obj243629))))
            (let* ((___match242276242277_
                    (lambda (_e234633234670_ _hd234632234673_ _tl234631234675_)
                      (let ((_L234678_ _tl234631234675_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L234678_))
                            (___kont241967241968_ _L234678_)
                            (___kont241969241970_ _tl234631234675_)))))
                   (___match242270242271_
                    (lambda (_e234527234692_
                             _hd234526234695_
                             _tl234525234697_
                             _e234530234700_
                             _hd234529234703_
                             _tl234528234705_
                             _e234533234708_
                             _hd234532234711_
                             _tl234531234713_
                             _e234536234716_
                             _hd234535234719_
                             _tl234534234721_
                             _e234539234724_
                             _hd234538234727_
                             _tl234537234729_
                             _e234542234732_
                             _hd234541234735_
                             _tl234540234737_
                             _e234545234740_
                             _hd234544234743_
                             _tl234543234745_
                             _e234548234748_
                             _hd234547234751_
                             _tl234546234753_
                             _e234551234756_
                             _hd234550234759_
                             _tl234549234761_
                             _e234554234764_
                             _hd234553234767_
                             _tl234552234769_
                             _e234557234772_
                             _hd234556234775_
                             _tl234555234777_
                             _e234560234780_
                             _hd234559234783_
                             _tl234558234785_
                             _e234563234788_
                             _hd234562234791_
                             _tl234561234793_
                             _e234566234796_
                             _hd234565234799_
                             _tl234564234801_
                             ___splice241965241966_
                             _target234567234804_
                             _tl234569234806_
                             _e234584234809_
                             _hd234583234812_
                             _tl234582234814_
                             _e234587234817_
                             _hd234586234820_
                             _tl234585234822_
                             _e234590234825_
                             _hd234589234828_
                             _tl234588234830_)
                      (letrec ((_loop234570234833_
                                (lambda (_hd234568234836_
                                         _-absent-value234574234838_
                                         _key234575234840_
                                         _-xkwvar234576234842_
                                         _-hash-ref234577234844_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234568234836_))
                                      (let ((_e234571234847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234568234836_))))
                                        (let ((_lp-tl234573234852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234571234847_)))
                                              (_lp-hd234572234850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234571234847_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd234572234850_))
                                              (let ((_e234593234855_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd234572234850_))))
                                                (let ((_tl234591234860_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234593234855_)))
                                                      (_hd234592234858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234593234855_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd234592234858_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd234592234858_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl234591234860_))
                      (let ((_e234596234863_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl234591234860_))))
                        (let ((_tl234594234868_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234596234863_)))
                              (_hd234595234866_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234596234863_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd234595234866_))
                              (let ((_e234599234871_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd234595234866_))))
                                (let ((_tl234597234876_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234599234871_)))
                                      (_hd234598234874_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234599234871_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd234598234874_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd234598234874_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234597234876_))
                                              (let ((_e234602234879_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234597234876_))))
                                                (let ((_tl234600234884_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234602234879_)))
                                                      (_hd234601234882_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234602234879_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234600234884_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234594234868_))
                                                          (let ((_e234605234887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234594234868_))))
                    (let ((_tl234603234892_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234605234887_)))
                          (_hd234604234890_
                           (let ()
                             (declare (not safe))
                             (##car _e234605234887_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234604234890_))
                          (let ((_e234608234895_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234604234890_))))
                            (let ((_tl234606234900_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234608234895_)))
                                  (_hd234607234898_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234608234895_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234607234898_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234607234898_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234606234900_))
                                          (let ((_e234611234903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234606234900_))))
                                            (let ((_tl234609234908_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234611234903_)))
                                                  (_hd234610234906_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234611234903_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234609234908_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234603234892_))
                                                      (let ((_e234614234911_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234603234892_))))
                (let ((_tl234612234916_
                       (let () (declare (not safe)) (##cdr _e234614234911_)))
                      (_hd234613234914_
                       (let () (declare (not safe)) (##car _e234614234911_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234613234914_))
                      (let ((_e234617234919_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234613234914_))))
                        (let ((_tl234615234924_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234617234919_)))
                              (_hd234616234922_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234617234919_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234616234922_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd234616234922_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234615234924_))
                                      (let ((_e234620234927_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234615234924_))))
                                        (let ((_tl234618234932_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234620234927_)))
                                              (_hd234619234930_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234620234927_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234618234932_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234612234916_))
                                                  (let ((_e234623234935_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234612234916_))))
                                                    (let ((_tl234621234940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234623234935_)))
                                                          (_hd234622234938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234623234935_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234622234938_))
                                                          (let ((_e234626234943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234622234938_))))
                    (let ((_tl234624234948_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234626234943_)))
                          (_hd234625234946_
                           (let ()
                             (declare (not safe))
                             (##car _e234626234943_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234625234946_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234625234946_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234624234948_))
                                  (let ((_e234629234951_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234624234948_))))
                                    (let ((_tl234627234956_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234629234951_)))
                                          (_hd234628234954_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234629234951_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234627234956_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234621234940_))
                                              (let ((__tmp243696
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234628234954_
                                                             _-absent-value234574234838_)))
                                                    (__tmp243695
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234619234930_
                                                             _key234575234840_)))
                                                    (__tmp243694
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234610234906_
                                                             _-xkwvar234576234842_)))
                                                    (__tmp243693
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234601234882_
                                                             _-hash-ref234577234844_))))
                                                (declare (not safe))
                                                (_loop234570234833_
                                                 _lp-tl234573234852_
                                                 __tmp243696
                                                 __tmp243695
                                                 __tmp243694
                                                 __tmp243693))
                                              (___match242276242277_
                                               _e234527234692_
                                               _hd234526234695_
                                               _tl234525234697_))
                                          (___match242276242277_
                                           _e234527234692_
                                           _hd234526234695_
                                           _tl234525234697_))))
                                  (___match242276242277_
                                   _e234527234692_
                                   _hd234526234695_
                                   _tl234525234697_))
                              (___match242276242277_
                               _e234527234692_
                               _hd234526234695_
                               _tl234525234697_))
                          (___match242276242277_
                           _e234527234692_
                           _hd234526234695_
                           _tl234525234697_))))
                  (___match242276242277_
                   _e234527234692_
                   _hd234526234695_
                   _tl234525234697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242276242277_
                                                   _e234527234692_
                                                   _hd234526234695_
                                                   _tl234525234697_))
                                              (___match242276242277_
                                               _e234527234692_
                                               _hd234526234695_
                                               _tl234525234697_))))
                                      (___match242276242277_
                                       _e234527234692_
                                       _hd234526234695_
                                       _tl234525234697_))
                                  (___match242276242277_
                                   _e234527234692_
                                   _hd234526234695_
                                   _tl234525234697_))
                              (___match242276242277_
                               _e234527234692_
                               _hd234526234695_
                               _tl234525234697_))))
                      (___match242276242277_
                       _e234527234692_
                       _hd234526234695_
                       _tl234525234697_))))
              (___match242276242277_
               _e234527234692_
               _hd234526234695_
               _tl234525234697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242276242277_
                                                   _e234527234692_
                                                   _hd234526234695_
                                                   _tl234525234697_))))
                                          (___match242276242277_
                                           _e234527234692_
                                           _hd234526234695_
                                           _tl234525234697_))
                                      (___match242276242277_
                                       _e234527234692_
                                       _hd234526234695_
                                       _tl234525234697_))
                                  (___match242276242277_
                                   _e234527234692_
                                   _hd234526234695_
                                   _tl234525234697_))))
                          (___match242276242277_
                           _e234527234692_
                           _hd234526234695_
                           _tl234525234697_))))
                  (___match242276242277_
                   _e234527234692_
                   _hd234526234695_
                   _tl234525234697_))
              (___match242276242277_
               _e234527234692_
               _hd234526234695_
               _tl234525234697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242276242277_
                                               _e234527234692_
                                               _hd234526234695_
                                               _tl234525234697_))
                                          (___match242276242277_
                                           _e234527234692_
                                           _hd234526234695_
                                           _tl234525234697_))
                                      (___match242276242277_
                                       _e234527234692_
                                       _hd234526234695_
                                       _tl234525234697_))))
                              (___match242276242277_
                               _e234527234692_
                               _hd234526234695_
                               _tl234525234697_))))
                      (___match242276242277_
                       _e234527234692_
                       _hd234526234695_
                       _tl234525234697_))
                  (___match242276242277_
                   _e234527234692_
                   _hd234526234695_
                   _tl234525234697_))
              (___match242276242277_
               _e234527234692_
               _hd234526234695_
               _tl234525234697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242276242277_
                                               _e234527234692_
                                               _hd234526234695_
                                               _tl234525234697_))))
                                      (let ((_-hash-ref234581234965_
                                             (reverse _-hash-ref234577234844_))
                                            (_-xkwvar234580234963_
                                             (reverse _-xkwvar234576234842_))
                                            (_key234579234961_
                                             (reverse _key234575234840_))
                                            (_-absent-value234578234959_
                                             (reverse _-absent-value234574234838_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl234534234721_))
                                            (let ((_L234968_ _hd234589234828_)
                                                  (_L234969_
                                                   _-absent-value234578234959_)
                                                  (_L234970_ _key234579234961_)
                                                  (_L234971_
                                                   _-xkwvar234580234963_)
                                                  (_L234972_
                                                   _-hash-ref234581234965_)
                                                  (_L234973_ _hd234565234799_)
                                                  (_L234974_ _hd234556234775_)
                                                  (_L234975_ _hd234547234751_)
                                                  (_L234976_ _tl234531234713_)
                                                  (_L234977_ _hd234532234711_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L234977_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L234976_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L234975_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L234977_
                                                          _L234973_))
                                                       (let ((__tmp243691
                                                              (let ((__tmp243692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g235030235033_ _g235031235035_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235030235033_ _g235031235035_)))))
                        (declare (not safe))
                        (foldr1 __tmp243692 '() _L234970_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp243691))
               (let ((__tmp243690
                      (lambda (_g235037235039_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235037235039_
                           'hash-ref))))
                     (__tmp243688
                      (let ((__tmp243689
                             (lambda (_g235041235044_ _g235042235046_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235041235044_ _g235042235046_)))))
                        (declare (not safe))
                        (foldr1 __tmp243689 '() _L234972_))))
                 (declare (not safe))
                 (andmap1 __tmp243690 __tmp243688))
               (let ((__tmp243687
                      (lambda (_g235048235050_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235048235050_
                           'absent-value))))
                     (__tmp243685
                      (let ((__tmp243686
                             (lambda (_g235052235055_ _g235053235057_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235052235055_ _g235053235057_)))))
                        (declare (not safe))
                        (foldr1 __tmp243686 '() _L234969_))))
                 (declare (not safe))
                 (andmap1 __tmp243687 __tmp243685))
               (let ((__tmp243684
                      (lambda (_g235059235061_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g235059235061_ _L234977_))))
                     (__tmp243682
                      (let ((__tmp243683
                             (lambda (_g235063235066_ _g235064235068_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235063235066_ _g235064235068_)))))
                        (declare (not safe))
                        (foldr1 __tmp243683 '() _L234971_))))
                 (declare (not safe))
                 (andmap1 __tmp243684 __tmp243682)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont241963241964_
                                                   _L234968_
                                                   _L234969_
                                                   _L234970_
                                                   _L234971_
                                                   _L234972_
                                                   _L234973_
                                                   _L234974_
                                                   _L234975_
                                                   _L234976_
                                                   _L234977_)
                                                  (___match242276242277_
                                                   _e234527234692_
                                                   _hd234526234695_
                                                   _tl234525234697_)))
                                            (___match242276242277_
                                             _e234527234692_
                                             _hd234526234695_
                                             _tl234525234697_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234570234833_
                           _target234567234804_
                           '()
                           '()
                           '()
                           '())))))
                   (___match242142242143_
                    (lambda (_e234527234692_
                             _hd234526234695_
                             _tl234525234697_
                             _e234530234700_
                             _hd234529234703_
                             _tl234528234705_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234529234703_))
                          (let ((_e234533234708_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234529234703_))))
                            (let ((_tl234531234713_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234533234708_)))
                                  (_hd234532234711_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234533234708_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234528234705_))
                                  (let ((_e234536234716_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234528234705_))))
                                    (let ((_tl234534234721_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234536234716_)))
                                          (_hd234535234719_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234536234716_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234535234719_))
                                          (let ((_e234539234724_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234535234719_))))
                                            (let ((_tl234537234729_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234539234724_)))
                                                  (_hd234538234727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234539234724_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd234538234727_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd234538234727_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234537234729_))
                                                          (let ((_e234542234732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234537234729_))))
                    (let ((_tl234540234737_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234542234732_)))
                          (_hd234541234735_
                           (let ()
                             (declare (not safe))
                             (##car _e234542234732_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234541234735_))
                          (let ((_e234545234740_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234541234735_))))
                            (let ((_tl234543234745_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234545234740_)))
                                  (_hd234544234743_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234545234740_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234544234743_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234544234743_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234543234745_))
                                          (let ((_e234548234748_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234543234745_))))
                                            (let ((_tl234546234753_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234548234748_)))
                                                  (_hd234547234751_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234548234748_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234546234753_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234540234737_))
                                                      (let ((_e234551234756_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234540234737_))))
                (let ((_tl234549234761_
                       (let () (declare (not safe)) (##cdr _e234551234756_)))
                      (_hd234550234759_
                       (let () (declare (not safe)) (##car _e234551234756_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234550234759_))
                      (let ((_e234554234764_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234550234759_))))
                        (let ((_tl234552234769_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234554234764_)))
                              (_hd234553234767_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234554234764_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234553234767_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234553234767_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234552234769_))
                                      (let ((_e234557234772_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234552234769_))))
                                        (let ((_tl234555234777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234557234772_)))
                                              (_hd234556234775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234557234772_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234555234777_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234549234761_))
                                                  (let ((_e234560234780_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234549234761_))))
                                                    (let ((_tl234558234785_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234560234780_)))
                                                          (_hd234559234783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234560234780_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234559234783_))
                                                          (let ((_e234563234788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234559234783_))))
                    (let ((_tl234561234793_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234563234788_)))
                          (_hd234562234791_
                           (let ()
                             (declare (not safe))
                             (##car _e234563234788_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234562234791_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234562234791_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234561234793_))
                                  (let ((_e234566234796_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234561234793_))))
                                    (let ((_tl234564234801_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234566234796_)))
                                          (_hd234565234799_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234566234796_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234564234801_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl234558234785_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl234558234785_))
                                                        '1)
                                                  (let ((___splice241965241966_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl234558234785_
                                                            '1))))
                                                    (let ((_tl234569234806_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241965241966_
                                                              '1)))
                                                          (_target234567234804_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241965241966_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234569234806_))
                                                          (let ((_e234584234809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234569234806_))))
                    (let ((_tl234582234814_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234584234809_)))
                          (_hd234583234812_
                           (let ()
                             (declare (not safe))
                             (##car _e234584234809_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234583234812_))
                          (let ((_e234587234817_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234583234812_))))
                            (let ((_tl234585234822_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234587234817_)))
                                  (_hd234586234820_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234587234817_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234586234820_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234586234820_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234585234822_))
                                          (let ((_e234590234825_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234585234822_))))
                                            (let ((_tl234588234830_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234590234825_)))
                                                  (_hd234589234828_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234590234825_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234588234830_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234582234814_))
                                                      (___match242270242271_
                                                       _e234527234692_
                                                       _hd234526234695_
                                                       _tl234525234697_
                                                       _e234530234700_
                                                       _hd234529234703_
                                                       _tl234528234705_
                                                       _e234533234708_
                                                       _hd234532234711_
                                                       _tl234531234713_
                                                       _e234536234716_
                                                       _hd234535234719_
                                                       _tl234534234721_
                                                       _e234539234724_
                                                       _hd234538234727_
                                                       _tl234537234729_
                                                       _e234542234732_
                                                       _hd234541234735_
                                                       _tl234540234737_
                                                       _e234545234740_
                                                       _hd234544234743_
                                                       _tl234543234745_
                                                       _e234548234748_
                                                       _hd234547234751_
                                                       _tl234546234753_
                                                       _e234551234756_
                                                       _hd234550234759_
                                                       _tl234549234761_
                                                       _e234554234764_
                                                       _hd234553234767_
                                                       _tl234552234769_
                                                       _e234557234772_
                                                       _hd234556234775_
                                                       _tl234555234777_
                                                       _e234560234780_
                                                       _hd234559234783_
                                                       _tl234558234785_
                                                       _e234563234788_
                                                       _hd234562234791_
                                                       _tl234561234793_
                                                       _e234566234796_
                                                       _hd234565234799_
                                                       _tl234564234801_
                                                       ___splice241965241966_
                                                       _target234567234804_
                                                       _tl234569234806_
                                                       _e234584234809_
                                                       _hd234583234812_
                                                       _tl234582234814_
                                                       _e234587234817_
                                                       _hd234586234820_
                                                       _tl234585234822_
                                                       _e234590234825_
                                                       _hd234589234828_
                                                       _tl234588234830_)
                                                      (___match242276242277_
                                                       _e234527234692_
                                                       _hd234526234695_
                                                       _tl234525234697_))
                                                  (___match242276242277_
                                                   _e234527234692_
                                                   _hd234526234695_
                                                   _tl234525234697_))))
                                          (___match242276242277_
                                           _e234527234692_
                                           _hd234526234695_
                                           _tl234525234697_))
                                      (___match242276242277_
                                       _e234527234692_
                                       _hd234526234695_
                                       _tl234525234697_))
                                  (___match242276242277_
                                   _e234527234692_
                                   _hd234526234695_
                                   _tl234525234697_))))
                          (___match242276242277_
                           _e234527234692_
                           _hd234526234695_
                           _tl234525234697_))))
                  (___match242276242277_
                   _e234527234692_
                   _hd234526234695_
                   _tl234525234697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242276242277_
                                                   _e234527234692_
                                                   _hd234526234695_
                                                   _tl234525234697_))
                                              (___match242276242277_
                                               _e234527234692_
                                               _hd234526234695_
                                               _tl234525234697_))
                                          (___match242276242277_
                                           _e234527234692_
                                           _hd234526234695_
                                           _tl234525234697_))))
                                  (___match242276242277_
                                   _e234527234692_
                                   _hd234526234695_
                                   _tl234525234697_))
                              (___match242276242277_
                               _e234527234692_
                               _hd234526234695_
                               _tl234525234697_))
                          (___match242276242277_
                           _e234527234692_
                           _hd234526234695_
                           _tl234525234697_))))
                  (___match242276242277_
                   _e234527234692_
                   _hd234526234695_
                   _tl234525234697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242276242277_
                                                   _e234527234692_
                                                   _hd234526234695_
                                                   _tl234525234697_))
                                              (___match242276242277_
                                               _e234527234692_
                                               _hd234526234695_
                                               _tl234525234697_))))
                                      (___match242276242277_
                                       _e234527234692_
                                       _hd234526234695_
                                       _tl234525234697_))
                                  (___match242276242277_
                                   _e234527234692_
                                   _hd234526234695_
                                   _tl234525234697_))
                              (___match242276242277_
                               _e234527234692_
                               _hd234526234695_
                               _tl234525234697_))))
                      (___match242276242277_
                       _e234527234692_
                       _hd234526234695_
                       _tl234525234697_))))
              (___match242276242277_
               _e234527234692_
               _hd234526234695_
               _tl234525234697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242276242277_
                                                   _e234527234692_
                                                   _hd234526234695_
                                                   _tl234525234697_))))
                                          (___match242276242277_
                                           _e234527234692_
                                           _hd234526234695_
                                           _tl234525234697_))
                                      (___match242276242277_
                                       _e234527234692_
                                       _hd234526234695_
                                       _tl234525234697_))
                                  (___match242276242277_
                                   _e234527234692_
                                   _hd234526234695_
                                   _tl234525234697_))))
                          (___match242276242277_
                           _e234527234692_
                           _hd234526234695_
                           _tl234525234697_))))
                  (___match242276242277_
                   _e234527234692_
                   _hd234526234695_
                   _tl234525234697_))
              (___match242276242277_
               _e234527234692_
               _hd234526234695_
               _tl234525234697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242276242277_
                                                   _e234527234692_
                                                   _hd234526234695_
                                                   _tl234525234697_))))
                                          (___match242276242277_
                                           _e234527234692_
                                           _hd234526234695_
                                           _tl234525234697_))))
                                  (___match242276242277_
                                   _e234527234692_
                                   _hd234526234695_
                                   _tl234525234697_))))
                          (___match242276242277_
                           _e234527234692_
                           _hd234526234695_
                           _tl234525234697_))))
                   (___match242130242131_
                    (lambda (_e234460235083_
                             _hd234459235086_
                             _tl234458235088_
                             _e234463235091_
                             _hd234462235094_
                             _tl234461235096_
                             _e234466235099_
                             _hd234465235102_
                             _tl234464235104_
                             _e234469235107_
                             _hd234468235110_
                             _tl234467235112_
                             _e234472235115_
                             _hd234471235118_
                             _tl234470235120_
                             _e234475235123_
                             _hd234474235126_
                             _tl234473235128_
                             _e234478235131_
                             _hd234477235134_
                             _tl234476235136_
                             _e234481235139_
                             _hd234480235142_
                             _tl234479235144_
                             _e234484235147_
                             _hd234483235150_
                             _tl234482235152_
                             _e234487235155_
                             _hd234486235158_
                             _tl234485235160_
                             _e234490235163_
                             _hd234489235166_
                             _tl234488235168_
                             _e234493235171_
                             _hd234492235174_
                             _tl234491235176_
                             _e234496235179_
                             _hd234495235182_
                             _tl234494235184_
                             _e234499235187_
                             _hd234498235190_
                             _tl234497235192_
                             _e234502235195_
                             _hd234501235198_
                             _tl234500235200_
                             _e234505235203_
                             _hd234504235206_
                             _tl234503235208_
                             _e234508235211_
                             _hd234507235214_
                             _tl234506235216_
                             _e234511235219_
                             _hd234510235222_
                             _tl234509235224_
                             _e234514235227_
                             _hd234513235230_
                             _tl234512235232_)
                      (let ((_L235235_ _hd234513235230_)
                            (_L235236_ _hd234504235206_)
                            (_L235237_ _hd234495235182_)
                            (_L235238_ _hd234486235158_)
                            (_L235239_ _hd234477235134_)
                            (_L235240_ _hd234462235094_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L235240_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L235239_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L235238_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L235240_ _L235235_)))
                            (___kont241961241962_
                             _L235235_
                             _L235236_
                             _L235237_
                             _L235238_
                             _L235239_
                             _L235240_)
                            (___match242142242143_
                             _e234460235083_
                             _hd234459235086_
                             _tl234458235088_
                             _e234463235091_
                             _hd234462235094_
                             _tl234461235096_)))))
                   (___match241984241985_
                    (lambda (_e234460235083_ _hd234459235086_ _tl234458235088_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234458235088_))
                          (let ((_e234463235091_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234458235088_))))
                            (let ((_tl234461235096_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234463235091_)))
                                  (_hd234462235094_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234463235091_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234461235096_))
                                  (let ((_e234466235099_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234461235096_))))
                                    (let ((_tl234464235104_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234466235099_)))
                                          (_hd234465235102_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234466235099_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234465235102_))
                                          (let ((_e234469235107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234465235102_))))
                                            (let ((_tl234467235112_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234469235107_)))
                                                  (_hd234468235110_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234469235107_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd234468235110_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd234468235110_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234467235112_))
                                                          (let ((_e234472235115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234467235112_))))
                    (let ((_tl234470235120_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234472235115_)))
                          (_hd234471235118_
                           (let ()
                             (declare (not safe))
                             (##car _e234472235115_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234471235118_))
                          (let ((_e234475235123_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234471235118_))))
                            (let ((_tl234473235128_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234475235123_)))
                                  (_hd234474235126_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234475235123_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234474235126_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234474235126_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234473235128_))
                                          (let ((_e234478235131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234473235128_))))
                                            (let ((_tl234476235136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234478235131_)))
                                                  (_hd234477235134_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234478235131_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234476235136_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234470235120_))
                                                      (let ((_e234481235139_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234470235120_))))
                (let ((_tl234479235144_
                       (let () (declare (not safe)) (##cdr _e234481235139_)))
                      (_hd234480235142_
                       (let () (declare (not safe)) (##car _e234481235139_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234480235142_))
                      (let ((_e234484235147_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234480235142_))))
                        (let ((_tl234482235152_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234484235147_)))
                              (_hd234483235150_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234484235147_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234483235150_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234483235150_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234482235152_))
                                      (let ((_e234487235155_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234482235152_))))
                                        (let ((_tl234485235160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234487235155_)))
                                              (_hd234486235158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234487235155_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234485235160_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234479235144_))
                                                  (let ((_e234490235163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234479235144_))))
                                                    (let ((_tl234488235168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234490235163_)))
                                                          (_hd234489235166_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234490235163_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234489235166_))
                                                          (let ((_e234493235171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234489235166_))))
                    (let ((_tl234491235176_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234493235171_)))
                          (_hd234492235174_
                           (let ()
                             (declare (not safe))
                             (##car _e234493235171_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234492235174_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd234492235174_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234491235176_))
                                  (let ((_e234496235179_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234491235176_))))
                                    (let ((_tl234494235184_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234496235179_)))
                                          (_hd234495235182_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234496235179_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234494235184_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234488235168_))
                                              (let ((_e234499235187_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234488235168_))))
                                                (let ((_tl234497235192_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234499235187_)))
                                                      (_hd234498235190_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234499235187_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234498235190_))
                                                      (let ((_e234502235195_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd234498235190_))))
                (let ((_tl234500235200_
                       (let () (declare (not safe)) (##cdr _e234502235195_)))
                      (_hd234501235198_
                       (let () (declare (not safe)) (##car _e234502235195_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd234501235198_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234501235198_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234500235200_))
                              (let ((_e234505235203_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234500235200_))))
                                (let ((_tl234503235208_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234505235203_)))
                                      (_hd234504235206_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234505235203_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234503235208_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234497235192_))
                                          (let ((_e234508235211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234497235192_))))
                                            (let ((_tl234506235216_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234508235211_)))
                                                  (_hd234507235214_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234508235211_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd234507235214_))
                                                  (let ((_e234511235219_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd234507235214_))))
                                                    (let ((_tl234509235224_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234511235219_)))
                                                          (_hd234510235222_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234511235219_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd234510235222_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd234510235222_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234509235224_))
                          (let ((_e234514235227_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234509235224_))))
                            (let ((_tl234512235232_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234514235227_)))
                                  (_hd234513235230_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234514235227_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234512235232_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234506235216_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234464235104_))
                                          (___match242130242131_
                                           _e234460235083_
                                           _hd234459235086_
                                           _tl234458235088_
                                           _e234463235091_
                                           _hd234462235094_
                                           _tl234461235096_
                                           _e234466235099_
                                           _hd234465235102_
                                           _tl234464235104_
                                           _e234469235107_
                                           _hd234468235110_
                                           _tl234467235112_
                                           _e234472235115_
                                           _hd234471235118_
                                           _tl234470235120_
                                           _e234475235123_
                                           _hd234474235126_
                                           _tl234473235128_
                                           _e234478235131_
                                           _hd234477235134_
                                           _tl234476235136_
                                           _e234481235139_
                                           _hd234480235142_
                                           _tl234479235144_
                                           _e234484235147_
                                           _hd234483235150_
                                           _tl234482235152_
                                           _e234487235155_
                                           _hd234486235158_
                                           _tl234485235160_
                                           _e234490235163_
                                           _hd234489235166_
                                           _tl234488235168_
                                           _e234493235171_
                                           _hd234492235174_
                                           _tl234491235176_
                                           _e234496235179_
                                           _hd234495235182_
                                           _tl234494235184_
                                           _e234499235187_
                                           _hd234498235190_
                                           _tl234497235192_
                                           _e234502235195_
                                           _hd234501235198_
                                           _tl234500235200_
                                           _e234505235203_
                                           _hd234504235206_
                                           _tl234503235208_
                                           _e234508235211_
                                           _hd234507235214_
                                           _tl234506235216_
                                           _e234511235219_
                                           _hd234510235222_
                                           _tl234509235224_
                                           _e234514235227_
                                           _hd234513235230_
                                           _tl234512235232_)
                                          (___match242142242143_
                                           _e234460235083_
                                           _hd234459235086_
                                           _tl234458235088_
                                           _e234463235091_
                                           _hd234462235094_
                                           _tl234461235096_))
                                      (___match242142242143_
                                       _e234460235083_
                                       _hd234459235086_
                                       _tl234458235088_
                                       _e234463235091_
                                       _hd234462235094_
                                       _tl234461235096_))
                                  (___match242142242143_
                                   _e234460235083_
                                   _hd234459235086_
                                   _tl234458235088_
                                   _e234463235091_
                                   _hd234462235094_
                                   _tl234461235096_))))
                          (___match242142242143_
                           _e234460235083_
                           _hd234459235086_
                           _tl234458235088_
                           _e234463235091_
                           _hd234462235094_
                           _tl234461235096_))
                      (___match242142242143_
                       _e234460235083_
                       _hd234459235086_
                       _tl234458235088_
                       _e234463235091_
                       _hd234462235094_
                       _tl234461235096_))
                  (___match242142242143_
                   _e234460235083_
                   _hd234459235086_
                   _tl234458235088_
                   _e234463235091_
                   _hd234462235094_
                   _tl234461235096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242142242143_
                                                   _e234460235083_
                                                   _hd234459235086_
                                                   _tl234458235088_
                                                   _e234463235091_
                                                   _hd234462235094_
                                                   _tl234461235096_))))
                                          (___match242142242143_
                                           _e234460235083_
                                           _hd234459235086_
                                           _tl234458235088_
                                           _e234463235091_
                                           _hd234462235094_
                                           _tl234461235096_))
                                      (___match242142242143_
                                       _e234460235083_
                                       _hd234459235086_
                                       _tl234458235088_
                                       _e234463235091_
                                       _hd234462235094_
                                       _tl234461235096_))))
                              (___match242142242143_
                               _e234460235083_
                               _hd234459235086_
                               _tl234458235088_
                               _e234463235091_
                               _hd234462235094_
                               _tl234461235096_))
                          (___match242142242143_
                           _e234460235083_
                           _hd234459235086_
                           _tl234458235088_
                           _e234463235091_
                           _hd234462235094_
                           _tl234461235096_))
                      (___match242142242143_
                       _e234460235083_
                       _hd234459235086_
                       _tl234458235088_
                       _e234463235091_
                       _hd234462235094_
                       _tl234461235096_))))
              (___match242142242143_
               _e234460235083_
               _hd234459235086_
               _tl234458235088_
               _e234463235091_
               _hd234462235094_
               _tl234461235096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242142242143_
                                               _e234460235083_
                                               _hd234459235086_
                                               _tl234458235088_
                                               _e234463235091_
                                               _hd234462235094_
                                               _tl234461235096_))
                                          (___match242142242143_
                                           _e234460235083_
                                           _hd234459235086_
                                           _tl234458235088_
                                           _e234463235091_
                                           _hd234462235094_
                                           _tl234461235096_))))
                                  (___match242142242143_
                                   _e234460235083_
                                   _hd234459235086_
                                   _tl234458235088_
                                   _e234463235091_
                                   _hd234462235094_
                                   _tl234461235096_))
                              (___match242142242143_
                               _e234460235083_
                               _hd234459235086_
                               _tl234458235088_
                               _e234463235091_
                               _hd234462235094_
                               _tl234461235096_))
                          (___match242142242143_
                           _e234460235083_
                           _hd234459235086_
                           _tl234458235088_
                           _e234463235091_
                           _hd234462235094_
                           _tl234461235096_))))
                  (___match242142242143_
                   _e234460235083_
                   _hd234459235086_
                   _tl234458235088_
                   _e234463235091_
                   _hd234462235094_
                   _tl234461235096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242142242143_
                                                   _e234460235083_
                                                   _hd234459235086_
                                                   _tl234458235088_
                                                   _e234463235091_
                                                   _hd234462235094_
                                                   _tl234461235096_))
                                              (___match242142242143_
                                               _e234460235083_
                                               _hd234459235086_
                                               _tl234458235088_
                                               _e234463235091_
                                               _hd234462235094_
                                               _tl234461235096_))))
                                      (___match242142242143_
                                       _e234460235083_
                                       _hd234459235086_
                                       _tl234458235088_
                                       _e234463235091_
                                       _hd234462235094_
                                       _tl234461235096_))
                                  (___match242142242143_
                                   _e234460235083_
                                   _hd234459235086_
                                   _tl234458235088_
                                   _e234463235091_
                                   _hd234462235094_
                                   _tl234461235096_))
                              (___match242142242143_
                               _e234460235083_
                               _hd234459235086_
                               _tl234458235088_
                               _e234463235091_
                               _hd234462235094_
                               _tl234461235096_))))
                      (___match242142242143_
                       _e234460235083_
                       _hd234459235086_
                       _tl234458235088_
                       _e234463235091_
                       _hd234462235094_
                       _tl234461235096_))))
              (___match242142242143_
               _e234460235083_
               _hd234459235086_
               _tl234458235088_
               _e234463235091_
               _hd234462235094_
               _tl234461235096_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242142242143_
                                                   _e234460235083_
                                                   _hd234459235086_
                                                   _tl234458235088_
                                                   _e234463235091_
                                                   _hd234462235094_
                                                   _tl234461235096_))))
                                          (___match242142242143_
                                           _e234460235083_
                                           _hd234459235086_
                                           _tl234458235088_
                                           _e234463235091_
                                           _hd234462235094_
                                           _tl234461235096_))
                                      (___match242142242143_
                                       _e234460235083_
                                       _hd234459235086_
                                       _tl234458235088_
                                       _e234463235091_
                                       _hd234462235094_
                                       _tl234461235096_))
                                  (___match242142242143_
                                   _e234460235083_
                                   _hd234459235086_
                                   _tl234458235088_
                                   _e234463235091_
                                   _hd234462235094_
                                   _tl234461235096_))))
                          (___match242142242143_
                           _e234460235083_
                           _hd234459235086_
                           _tl234458235088_
                           _e234463235091_
                           _hd234462235094_
                           _tl234461235096_))))
                  (___match242142242143_
                   _e234460235083_
                   _hd234459235086_
                   _tl234458235088_
                   _e234463235091_
                   _hd234462235094_
                   _tl234461235096_))
              (___match242142242143_
               _e234460235083_
               _hd234459235086_
               _tl234458235088_
               _e234463235091_
               _hd234462235094_
               _tl234461235096_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242142242143_
                                                   _e234460235083_
                                                   _hd234459235086_
                                                   _tl234458235088_
                                                   _e234463235091_
                                                   _hd234462235094_
                                                   _tl234461235096_))))
                                          (___match242142242143_
                                           _e234460235083_
                                           _hd234459235086_
                                           _tl234458235088_
                                           _e234463235091_
                                           _hd234462235094_
                                           _tl234461235096_))))
                                  (___match242142242143_
                                   _e234460235083_
                                   _hd234459235086_
                                   _tl234458235088_
                                   _e234463235091_
                                   _hd234462235094_
                                   _tl234461235096_))))
                          (___match242276242277_
                           _e234460235083_
                           _hd234459235086_
                           _tl234458235088_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241957241958_))
                  (let ((_e234451235300_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241957241958_))))
                    (let ((_tl234449235305_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234451235300_)))
                          (_hd234450235303_
                           (let ()
                             (declare (not safe))
                             (##car _e234451235300_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L235308_ _tl234449235305_))
                            (___kont241959241960_ _L235308_))
                          (___match241984241985_
                           _e234451235300_
                           _hd234450235303_
                           _tl234449235305_))))
                  (let () (declare (not safe)) (_g234446234642_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx234395_)
        (letrec ((_clause-e234397_
                  (lambda (_form234438_)
                    (let ((__obj243630
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
                       __obj243630
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form234438_))
                       (if (let ((__tmp243697
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp243697))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form234438_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form234438_))
                               '#f)
                           '#f))
                      __obj243630))))
          (let* ((_g234399234409_
                  (lambda (_g234400234406_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g234400234406_))))
                 (_g234398234435_
                  (lambda (_g234400234412_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g234400234412_))
                        (let ((_e234404234414_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g234400234412_))))
                          (let ((_hd234403234417_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234404234414_)))
                                (_tl234402234419_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234404234414_))))
                            ((lambda (_L234422_)
                               (let ((_clauses234433_
                                      (map _clause-e234397_ _L234422_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses234433_)))
                             _tl234402234419_)))
                        (let ()
                          (declare (not safe))
                          (_g234399234409_ _g234400234412_))))))
            (declare (not safe))
            (_g234398234435_ _stx234395_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx234327_)
        (let* ((_g234329234346_
                (lambda (_g234330234343_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234330234343_))))
               (_g234328234392_
                (lambda (_g234330234349_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234330234349_))
                      (let ((_e234335234351_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234330234349_))))
                        (let ((_hd234334234354_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234335234351_)))
                              (_tl234333234356_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234335234351_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234333234356_))
                              (let ((_e234338234359_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234333234356_))))
                                (let ((_hd234337234362_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234338234359_)))
                                      (_tl234336234364_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234338234359_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234336234364_))
                                      (let ((_e234341234367_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234336234364_))))
                                        (let ((_hd234340234370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234341234367_)))
                                              (_tl234339234372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234341234367_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234339234372_))
                                              ((lambda (_L234375_ _L234376_)
                                                 (let ((__tmp243698
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L234375_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp243698
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd234340234370_
                                               _hd234337234362_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234329234346_
                                                 _g234330234349_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234329234346_ _g234330234349_)))))
                              (let ()
                                (declare (not safe))
                                (_g234329234346_ _g234330234349_)))))
                      (let ()
                        (declare (not safe))
                        (_g234329234346_ _g234330234349_))))))
          (declare (not safe))
          (_g234328234392_ _stx234327_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx234232_)
        (let* ((___stx242285242286_ _stx234232_)
               (_g234235234255_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242285242286_)))))
          (let ((___kont242287242288_
                 (lambda (_L234299_ _L234300_)
                   (let ((_type-e234317234319_
                          (let ((__tmp243699
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L234300_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp243699
                             '#f))))
                     (if _type-e234317234319_
                         (let ((_type-e234322_ _type-e234317234319_))
                           (_type-e234322_ _stx234232_ _L234299_))
                         '#f))))
                (___kont242289242290_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242285242286_))
                (let ((_e234241234267_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242285242286_))))
                  (let ((_tl234239234272_
                         (let () (declare (not safe)) (##cdr _e234241234267_)))
                        (_hd234240234270_
                         (let ()
                           (declare (not safe))
                           (##car _e234241234267_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234239234272_))
                        (let ((_e234244234275_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234239234272_))))
                          (let ((_tl234242234280_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234244234275_)))
                                (_hd234243234278_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234244234275_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234243234278_))
                                (let ((_e234247234283_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234243234278_))))
                                  (let ((_tl234245234288_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234247234283_)))
                                        (_hd234246234286_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234247234283_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234246234286_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234246234286_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234245234288_))
                                                (let ((_e234250234291_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234245234288_))))
                                                  (let ((_tl234248234296_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234250234291_)))
                                                        (_hd234249234294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234250234291_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234248234296_))
                                                        (___kont242287242288_
                                                         _tl234242234280_
                                                         _hd234249234294_)
                                                        (___kont242289242290_))))
                                                (___kont242289242290_))
                                            (___kont242289242290_))
                                        (___kont242289242290_))))
                                (___kont242289242290_))))
                        (___kont242289242290_))))
                (___kont242289242290_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx234181_)
        (let* ((_g234183234196_
                (lambda (_g234184234193_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234184234193_))))
               (_g234182234229_
                (lambda (_g234184234199_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234184234199_))
                      (let ((_e234188234201_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234184234199_))))
                        (let ((_hd234187234204_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234188234201_)))
                              (_tl234186234206_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234188234201_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234186234206_))
                              (let ((_e234191234209_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234186234206_))))
                                (let ((_hd234190234212_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234191234209_)))
                                      (_tl234189234214_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234191234209_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234189234214_))
                                      ((lambda (_L234217_)
                                         (let ((__tmp243700
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L234217_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp243700)))
                                       _hd234190234212_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234183234196_ _g234184234199_)))))
                              (let ()
                                (declare (not safe))
                                (_g234183234196_ _g234184234199_)))))
                      (let ()
                        (declare (not safe))
                        (_g234183234196_ _g234184234199_))))))
          (declare (not safe))
          (_g234182234229_ _stx234181_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form233415_)
        (let* ((___stx242323242324_ _form233415_)
               (_g233420233577_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242323242324_)))))
          (let ((___kont242325242326_
                 (lambda (_L234101_ _L234102_ _L234103_) '#t))
                (___kont242331242332_
                 (lambda (_L233889_
                          _L233890_
                          _L233891_
                          _L233892_
                          _L233893_
                          _L233894_)
                   '#t))
                (___kont242337242338_
                 (lambda (_L233685_ _L233686_ _L233687_ _L233688_) '#t))
                (___kont242339242340_ (lambda () '#f)))
            (let* ((___match242464242465_
                    (lambda (_e233539233589_
                             _hd233538233592_
                             _tl233537233594_
                             _e233542233597_
                             _hd233541233600_
                             _tl233540233602_
                             _e233545233605_
                             _hd233544233608_
                             _tl233543233610_
                             _e233548233613_
                             _hd233547233616_
                             _tl233546233618_
                             _e233551233621_
                             _hd233550233624_
                             _tl233549233626_
                             _e233554233629_
                             _hd233553233632_
                             _tl233552233634_
                             _e233557233637_
                             _hd233556233640_
                             _tl233555233642_
                             _e233560233645_
                             _hd233559233648_
                             _tl233558233650_
                             _e233563233653_
                             _hd233562233656_
                             _tl233561233658_
                             _e233566233661_
                             _hd233565233664_
                             _tl233564233666_
                             _e233569233669_
                             _hd233568233672_
                             _tl233567233674_
                             _e233572233677_
                             _hd233571233680_
                             _tl233570233682_)
                      (let ((_L233685_ _hd233571233680_)
                            (_L233686_ _hd233562233656_)
                            (_L233687_ _hd233553233632_)
                            (_L233688_ _hd233538233592_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L233688_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L233687_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L233688_ _L233685_))
                                 (let ((__tmp243701
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L233686_
                                           _L233688_))))
                                   (declare (not safe))
                                   (not __tmp243701)))
                            (___kont242337242338_
                             _L233685_
                             _L233686_
                             _L233687_
                             _L233688_)
                            (___kont242339242340_)))))
                   (___match242436242437_
                    (lambda (_e233539233589_
                             _hd233538233592_
                             _tl233537233594_
                             _e233542233597_
                             _hd233541233600_
                             _tl233540233602_
                             _e233545233605_
                             _hd233544233608_
                             _tl233543233610_
                             _e233548233613_
                             _hd233547233616_
                             _tl233546233618_
                             _e233551233621_
                             _hd233550233624_
                             _tl233549233626_
                             _e233554233629_
                             _hd233553233632_
                             _tl233552233634_
                             _e233557233637_
                             _hd233556233640_
                             _tl233555233642_
                             _e233560233645_
                             _hd233559233648_
                             _tl233558233650_
                             _e233563233653_
                             _hd233562233656_
                             _tl233561233658_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233555233642_))
                          (let ((_e233566233661_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233555233642_))))
                            (let ((_tl233564233666_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233566233661_)))
                                  (_hd233565233664_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233566233661_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233565233664_))
                                  (let ((_e233569233669_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233565233664_))))
                                    (let ((_tl233567233674_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233569233669_)))
                                          (_hd233568233672_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233569233669_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233568233672_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233568233672_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233567233674_))
                                                  (let ((_e233572233677_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233567233674_))))
                                                    (let ((_tl233570233682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233572233677_)))
                                                          (_hd233571233680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233572233677_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233570233682_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl233564233666_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233540233602_))
                          (___match242464242465_
                           _e233539233589_
                           _hd233538233592_
                           _tl233537233594_
                           _e233542233597_
                           _hd233541233600_
                           _tl233540233602_
                           _e233545233605_
                           _hd233544233608_
                           _tl233543233610_
                           _e233548233613_
                           _hd233547233616_
                           _tl233546233618_
                           _e233551233621_
                           _hd233550233624_
                           _tl233549233626_
                           _e233554233629_
                           _hd233553233632_
                           _tl233552233634_
                           _e233557233637_
                           _hd233556233640_
                           _tl233555233642_
                           _e233560233645_
                           _hd233559233648_
                           _tl233558233650_
                           _e233563233653_
                           _hd233562233656_
                           _tl233561233658_
                           _e233566233661_
                           _hd233565233664_
                           _tl233564233666_
                           _e233569233669_
                           _hd233568233672_
                           _tl233567233674_
                           _e233572233677_
                           _hd233571233680_
                           _tl233570233682_)
                          (___kont242339242340_))
                      (___kont242339242340_))
                  (___kont242339242340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242339242340_))
                                              (___kont242339242340_))
                                          (___kont242339242340_))))
                                  (___kont242339242340_))))
                          (___kont242339242340_))))
                   (___match242366242367_
                    (lambda (_e233475233729_
                             _hd233474233732_
                             _tl233473233734_
                             ___splice242333242334_
                             _target233476233737_
                             _tl233478233739_)
                      (letrec ((_loop233479233742_
                                (lambda (_hd233477233745_ _arg233483233747_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233477233745_))
                                      (let ((_e233480233750_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233477233745_))))
                                        (let ((_lp-tl233482233755_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233480233750_)))
                                              (_lp-hd233481233753_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233480233750_))))
                                          (let ((__tmp243716
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233481233753_
                                                         _arg233483233747_))))
                                            (declare (not safe))
                                            (_loop233479233742_
                                             _lp-tl233482233755_
                                             __tmp243716))))
                                      (let ((_arg233484233758_
                                             (reverse _arg233483233747_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233473233734_))
                                            (let ((_e233487233761_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233473233734_))))
                                              (let ((_tl233485233766_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233487233761_)))
                                                    (_hd233486233764_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233487233761_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233486233764_))
                                                    (let ((_e233490233769_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233486233764_))))
                                                      (let ((_tl233488233774_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233490233769_)))
                    (_hd233489233772_
                     (let () (declare (not safe)) (##car _e233490233769_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233489233772_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233489233772_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233488233774_))
                            (let ((_e233493233777_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233488233774_))))
                              (let ((_tl233491233782_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233493233777_)))
                                    (_hd233492233780_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233493233777_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233492233780_))
                                    (let ((_e233496233785_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233492233780_))))
                                      (let ((_tl233494233790_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233496233785_)))
                                            (_hd233495233788_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233496233785_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233495233788_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233495233788_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233494233790_))
                                                    (let ((_e233499233793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233494233790_))))
                                                      (let ((_tl233497233798_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233499233793_)))
                    (_hd233498233796_
                     (let () (declare (not safe)) (##car _e233499233793_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233497233798_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233491233782_))
                        (let ((_e233502233801_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233491233782_))))
                          (let ((_tl233500233806_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233502233801_)))
                                (_hd233501233804_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233502233801_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233501233804_))
                                (let ((_e233505233809_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233501233804_))))
                                  (let ((_tl233503233814_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233505233809_)))
                                        (_hd233504233812_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233505233809_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233504233812_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233504233812_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233503233814_))
                                                (let ((_e233508233817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233503233814_))))
                                                  (let ((_tl233506233822_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233508233817_)))
                                                        (_hd233507233820_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233508233817_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233506233822_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl233500233806_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl233500233806_))
                              '1)
                        (let ((___splice242335242336_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233500233806_
                                  '1))))
                          (let ((_tl233511233827_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242335242336_ '1)))
                                (_target233509233825_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242335242336_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233511233827_))
                                (let ((_e233520233830_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233511233827_))))
                                  (let ((_tl233518233835_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233520233830_)))
                                        (_hd233519233833_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233520233830_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233519233833_))
                                        (let ((_e233523233838_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233519233833_))))
                                          (let ((_tl233521233843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233523233838_)))
                                                (_hd233522233841_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233523233838_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd233522233841_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd233522233841_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl233521233843_))
                                                        (let ((_e233526233846_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl233521233843_))))
                  (let ((_tl233524233851_
                         (let () (declare (not safe)) (##cdr _e233526233846_)))
                        (_hd233525233849_
                         (let ()
                           (declare (not safe))
                           (##car _e233526233846_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233524233851_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233518233835_))
                            (letrec ((_loop233512233854_
                                      (lambda (_hd233510233857_
                                               _xarg233516233859_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd233510233857_))
                                            (let ((_e233513233862_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd233510233857_))))
                                              (let ((_lp-tl233515233867_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233513233862_)))
                                                    (_lp-hd233514233865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233513233862_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd233514233865_))
                                                    (let ((_e233529233870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd233514233865_))))
                                                      (let ((_tl233527233875_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233529233870_)))
                    (_hd233528233873_
                     (let () (declare (not safe)) (##car _e233529233870_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233528233873_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd233528233873_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233527233875_))
                            (let ((_e233532233878_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233527233875_))))
                              (let ((_tl233530233883_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233532233878_)))
                                    (_hd233531233881_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233532233878_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233530233883_))
                                    (let ((__tmp243715
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd233531233881_
                                                   _xarg233516233859_))))
                                      (declare (not safe))
                                      (_loop233512233854_
                                       _lp-tl233515233867_
                                       __tmp243715))
                                    (___match242436242437_
                                     _e233475233729_
                                     _hd233474233732_
                                     _tl233473233734_
                                     _e233487233761_
                                     _hd233486233764_
                                     _tl233485233766_
                                     _e233490233769_
                                     _hd233489233772_
                                     _tl233488233774_
                                     _e233493233777_
                                     _hd233492233780_
                                     _tl233491233782_
                                     _e233496233785_
                                     _hd233495233788_
                                     _tl233494233790_
                                     _e233499233793_
                                     _hd233498233796_
                                     _tl233497233798_
                                     _e233502233801_
                                     _hd233501233804_
                                     _tl233500233806_
                                     _e233505233809_
                                     _hd233504233812_
                                     _tl233503233814_
                                     _e233508233817_
                                     _hd233507233820_
                                     _tl233506233822_))))
                            (___match242436242437_
                             _e233475233729_
                             _hd233474233732_
                             _tl233473233734_
                             _e233487233761_
                             _hd233486233764_
                             _tl233485233766_
                             _e233490233769_
                             _hd233489233772_
                             _tl233488233774_
                             _e233493233777_
                             _hd233492233780_
                             _tl233491233782_
                             _e233496233785_
                             _hd233495233788_
                             _tl233494233790_
                             _e233499233793_
                             _hd233498233796_
                             _tl233497233798_
                             _e233502233801_
                             _hd233501233804_
                             _tl233500233806_
                             _e233505233809_
                             _hd233504233812_
                             _tl233503233814_
                             _e233508233817_
                             _hd233507233820_
                             _tl233506233822_))
                        (___match242436242437_
                         _e233475233729_
                         _hd233474233732_
                         _tl233473233734_
                         _e233487233761_
                         _hd233486233764_
                         _tl233485233766_
                         _e233490233769_
                         _hd233489233772_
                         _tl233488233774_
                         _e233493233777_
                         _hd233492233780_
                         _tl233491233782_
                         _e233496233785_
                         _hd233495233788_
                         _tl233494233790_
                         _e233499233793_
                         _hd233498233796_
                         _tl233497233798_
                         _e233502233801_
                         _hd233501233804_
                         _tl233500233806_
                         _e233505233809_
                         _hd233504233812_
                         _tl233503233814_
                         _e233508233817_
                         _hd233507233820_
                         _tl233506233822_))
                    (___match242436242437_
                     _e233475233729_
                     _hd233474233732_
                     _tl233473233734_
                     _e233487233761_
                     _hd233486233764_
                     _tl233485233766_
                     _e233490233769_
                     _hd233489233772_
                     _tl233488233774_
                     _e233493233777_
                     _hd233492233780_
                     _tl233491233782_
                     _e233496233785_
                     _hd233495233788_
                     _tl233494233790_
                     _e233499233793_
                     _hd233498233796_
                     _tl233497233798_
                     _e233502233801_
                     _hd233501233804_
                     _tl233500233806_
                     _e233505233809_
                     _hd233504233812_
                     _tl233503233814_
                     _e233508233817_
                     _hd233507233820_
                     _tl233506233822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242436242437_
                                                     _e233475233729_
                                                     _hd233474233732_
                                                     _tl233473233734_
                                                     _e233487233761_
                                                     _hd233486233764_
                                                     _tl233485233766_
                                                     _e233490233769_
                                                     _hd233489233772_
                                                     _tl233488233774_
                                                     _e233493233777_
                                                     _hd233492233780_
                                                     _tl233491233782_
                                                     _e233496233785_
                                                     _hd233495233788_
                                                     _tl233494233790_
                                                     _e233499233793_
                                                     _hd233498233796_
                                                     _tl233497233798_
                                                     _e233502233801_
                                                     _hd233501233804_
                                                     _tl233500233806_
                                                     _e233505233809_
                                                     _hd233504233812_
                                                     _tl233503233814_
                                                     _e233508233817_
                                                     _hd233507233820_
                                                     _tl233506233822_))))
                                            (let ((_xarg233517233886_
                                                   (reverse _xarg233516233859_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233485233766_))
                                                  (let ((_L233889_
                                                         _hd233525233849_)
                                                        (_L233890_
                                                         _xarg233517233886_)
                                                        (_L233891_
                                                         _hd233507233820_)
                                                        (_L233892_
                                                         _hd233498233796_)
                                                        (_L233893_
                                                         _tl233478233739_)
                                                        (_L233894_
                                                         _arg233484233758_))
                                                    (if (and (let ((__tmp243713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp243714
                                   (lambda (_g233937233940_ _g233938233942_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233937233940_
                                             _g233938233942_)))))
                              (declare (not safe))
                              (foldr1 __tmp243714 '() _L233894_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp243713))
                     (let () (declare (not safe)) (gx#identifier? _L233893_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L233892_ 'apply))
                     (fx= (length (let ((__tmp243711
                                         (lambda (_g233944233947_
                                                  _g233945233949_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g233944233947_
                                                   _g233945233949_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp243711 '() _L233894_)))
                          (length (let ((__tmp243712
                                         (lambda (_g233951233954_
                                                  _g233952233956_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g233951233954_
                                                   _g233952233956_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp243712 '() _L233890_))))
                     (let ((__tmp243709
                            (let ((__tmp243710
                                   (lambda (_g233958233961_ _g233959233963_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233958233961_
                                             _g233959233963_)))))
                              (declare (not safe))
                              (foldr1 __tmp243710 '() _L233894_)))
                           (__tmp243707
                            (let ((__tmp243708
                                   (lambda (_g233965233968_ _g233966233970_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233965233968_
                                             _g233966233970_)))))
                              (declare (not safe))
                              (foldr1 __tmp243708 '() _L233890_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp243709 __tmp243707))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L233893_ _L233889_))
                     (let ((__tmp243702
                            (let ((__tmp243706
                                   (lambda (_g233972233974_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g233972233974_
                                        _L233891_))))
                                  (__tmp243703
                                   (let ((__tmp243705
                                          (lambda (_g233976233979_
                                                   _g233977233981_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g233976233979_
                                                    _g233977233981_))))
                                         (__tmp243704
                                          (let ()
                                            (declare (not safe))
                                            (cons _L233893_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp243705
                                             __tmp243704
                                             _L233894_))))
                              (declare (not safe))
                              (find __tmp243706 __tmp243703))))
                       (declare (not safe))
                       (not __tmp243702)))
                (___kont242331242332_
                 _L233889_
                 _L233890_
                 _L233891_
                 _L233892_
                 _L233893_
                 _L233894_)
                (___match242436242437_
                 _e233475233729_
                 _hd233474233732_
                 _tl233473233734_
                 _e233487233761_
                 _hd233486233764_
                 _tl233485233766_
                 _e233490233769_
                 _hd233489233772_
                 _tl233488233774_
                 _e233493233777_
                 _hd233492233780_
                 _tl233491233782_
                 _e233496233785_
                 _hd233495233788_
                 _tl233494233790_
                 _e233499233793_
                 _hd233498233796_
                 _tl233497233798_
                 _e233502233801_
                 _hd233501233804_
                 _tl233500233806_
                 _e233505233809_
                 _hd233504233812_
                 _tl233503233814_
                 _e233508233817_
                 _hd233507233820_
                 _tl233506233822_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242436242437_
                                                   _e233475233729_
                                                   _hd233474233732_
                                                   _tl233473233734_
                                                   _e233487233761_
                                                   _hd233486233764_
                                                   _tl233485233766_
                                                   _e233490233769_
                                                   _hd233489233772_
                                                   _tl233488233774_
                                                   _e233493233777_
                                                   _hd233492233780_
                                                   _tl233491233782_
                                                   _e233496233785_
                                                   _hd233495233788_
                                                   _tl233494233790_
                                                   _e233499233793_
                                                   _hd233498233796_
                                                   _tl233497233798_
                                                   _e233502233801_
                                                   _hd233501233804_
                                                   _tl233500233806_
                                                   _e233505233809_
                                                   _hd233504233812_
                                                   _tl233503233814_
                                                   _e233508233817_
                                                   _hd233507233820_
                                                   _tl233506233822_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop233512233854_ _target233509233825_ '())))
                            (___match242436242437_
                             _e233475233729_
                             _hd233474233732_
                             _tl233473233734_
                             _e233487233761_
                             _hd233486233764_
                             _tl233485233766_
                             _e233490233769_
                             _hd233489233772_
                             _tl233488233774_
                             _e233493233777_
                             _hd233492233780_
                             _tl233491233782_
                             _e233496233785_
                             _hd233495233788_
                             _tl233494233790_
                             _e233499233793_
                             _hd233498233796_
                             _tl233497233798_
                             _e233502233801_
                             _hd233501233804_
                             _tl233500233806_
                             _e233505233809_
                             _hd233504233812_
                             _tl233503233814_
                             _e233508233817_
                             _hd233507233820_
                             _tl233506233822_))
                        (___match242436242437_
                         _e233475233729_
                         _hd233474233732_
                         _tl233473233734_
                         _e233487233761_
                         _hd233486233764_
                         _tl233485233766_
                         _e233490233769_
                         _hd233489233772_
                         _tl233488233774_
                         _e233493233777_
                         _hd233492233780_
                         _tl233491233782_
                         _e233496233785_
                         _hd233495233788_
                         _tl233494233790_
                         _e233499233793_
                         _hd233498233796_
                         _tl233497233798_
                         _e233502233801_
                         _hd233501233804_
                         _tl233500233806_
                         _e233505233809_
                         _hd233504233812_
                         _tl233503233814_
                         _e233508233817_
                         _hd233507233820_
                         _tl233506233822_))))
                (___match242436242437_
                 _e233475233729_
                 _hd233474233732_
                 _tl233473233734_
                 _e233487233761_
                 _hd233486233764_
                 _tl233485233766_
                 _e233490233769_
                 _hd233489233772_
                 _tl233488233774_
                 _e233493233777_
                 _hd233492233780_
                 _tl233491233782_
                 _e233496233785_
                 _hd233495233788_
                 _tl233494233790_
                 _e233499233793_
                 _hd233498233796_
                 _tl233497233798_
                 _e233502233801_
                 _hd233501233804_
                 _tl233500233806_
                 _e233505233809_
                 _hd233504233812_
                 _tl233503233814_
                 _e233508233817_
                 _hd233507233820_
                 _tl233506233822_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242436242437_
                                                     _e233475233729_
                                                     _hd233474233732_
                                                     _tl233473233734_
                                                     _e233487233761_
                                                     _hd233486233764_
                                                     _tl233485233766_
                                                     _e233490233769_
                                                     _hd233489233772_
                                                     _tl233488233774_
                                                     _e233493233777_
                                                     _hd233492233780_
                                                     _tl233491233782_
                                                     _e233496233785_
                                                     _hd233495233788_
                                                     _tl233494233790_
                                                     _e233499233793_
                                                     _hd233498233796_
                                                     _tl233497233798_
                                                     _e233502233801_
                                                     _hd233501233804_
                                                     _tl233500233806_
                                                     _e233505233809_
                                                     _hd233504233812_
                                                     _tl233503233814_
                                                     _e233508233817_
                                                     _hd233507233820_
                                                     _tl233506233822_))
                                                (___match242436242437_
                                                 _e233475233729_
                                                 _hd233474233732_
                                                 _tl233473233734_
                                                 _e233487233761_
                                                 _hd233486233764_
                                                 _tl233485233766_
                                                 _e233490233769_
                                                 _hd233489233772_
                                                 _tl233488233774_
                                                 _e233493233777_
                                                 _hd233492233780_
                                                 _tl233491233782_
                                                 _e233496233785_
                                                 _hd233495233788_
                                                 _tl233494233790_
                                                 _e233499233793_
                                                 _hd233498233796_
                                                 _tl233497233798_
                                                 _e233502233801_
                                                 _hd233501233804_
                                                 _tl233500233806_
                                                 _e233505233809_
                                                 _hd233504233812_
                                                 _tl233503233814_
                                                 _e233508233817_
                                                 _hd233507233820_
                                                 _tl233506233822_))))
                                        (___match242436242437_
                                         _e233475233729_
                                         _hd233474233732_
                                         _tl233473233734_
                                         _e233487233761_
                                         _hd233486233764_
                                         _tl233485233766_
                                         _e233490233769_
                                         _hd233489233772_
                                         _tl233488233774_
                                         _e233493233777_
                                         _hd233492233780_
                                         _tl233491233782_
                                         _e233496233785_
                                         _hd233495233788_
                                         _tl233494233790_
                                         _e233499233793_
                                         _hd233498233796_
                                         _tl233497233798_
                                         _e233502233801_
                                         _hd233501233804_
                                         _tl233500233806_
                                         _e233505233809_
                                         _hd233504233812_
                                         _tl233503233814_
                                         _e233508233817_
                                         _hd233507233820_
                                         _tl233506233822_))))
                                (___match242436242437_
                                 _e233475233729_
                                 _hd233474233732_
                                 _tl233473233734_
                                 _e233487233761_
                                 _hd233486233764_
                                 _tl233485233766_
                                 _e233490233769_
                                 _hd233489233772_
                                 _tl233488233774_
                                 _e233493233777_
                                 _hd233492233780_
                                 _tl233491233782_
                                 _e233496233785_
                                 _hd233495233788_
                                 _tl233494233790_
                                 _e233499233793_
                                 _hd233498233796_
                                 _tl233497233798_
                                 _e233502233801_
                                 _hd233501233804_
                                 _tl233500233806_
                                 _e233505233809_
                                 _hd233504233812_
                                 _tl233503233814_
                                 _e233508233817_
                                 _hd233507233820_
                                 _tl233506233822_))))
                        (___match242436242437_
                         _e233475233729_
                         _hd233474233732_
                         _tl233473233734_
                         _e233487233761_
                         _hd233486233764_
                         _tl233485233766_
                         _e233490233769_
                         _hd233489233772_
                         _tl233488233774_
                         _e233493233777_
                         _hd233492233780_
                         _tl233491233782_
                         _e233496233785_
                         _hd233495233788_
                         _tl233494233790_
                         _e233499233793_
                         _hd233498233796_
                         _tl233497233798_
                         _e233502233801_
                         _hd233501233804_
                         _tl233500233806_
                         _e233505233809_
                         _hd233504233812_
                         _tl233503233814_
                         _e233508233817_
                         _hd233507233820_
                         _tl233506233822_))
                    (___match242436242437_
                     _e233475233729_
                     _hd233474233732_
                     _tl233473233734_
                     _e233487233761_
                     _hd233486233764_
                     _tl233485233766_
                     _e233490233769_
                     _hd233489233772_
                     _tl233488233774_
                     _e233493233777_
                     _hd233492233780_
                     _tl233491233782_
                     _e233496233785_
                     _hd233495233788_
                     _tl233494233790_
                     _e233499233793_
                     _hd233498233796_
                     _tl233497233798_
                     _e233502233801_
                     _hd233501233804_
                     _tl233500233806_
                     _e233505233809_
                     _hd233504233812_
                     _tl233503233814_
                     _e233508233817_
                     _hd233507233820_
                     _tl233506233822_))
                (___kont242339242340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242339242340_))
                                            (___kont242339242340_))
                                        (___kont242339242340_))))
                                (___kont242339242340_))))
                        (___kont242339242340_))
                    (___kont242339242340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242339242340_))
                                                (___kont242339242340_))
                                            (___kont242339242340_))))
                                    (___kont242339242340_))))
                            (___kont242339242340_))
                        (___kont242339242340_))
                    (___kont242339242340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242339242340_))))
                                            (___kont242339242340_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233479233742_ _target233476233737_ '())))))
                   (___match242354242355_
                    (lambda (_e233427233989_
                             _hd233426233992_
                             _tl233425233994_
                             ___splice242327242328_
                             _target233428233997_
                             _tl233430233999_)
                      (letrec ((_loop233431234002_
                                (lambda (_hd233429234005_ _arg233435234007_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233429234005_))
                                      (let ((_e233432234010_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233429234005_))))
                                        (let ((_lp-tl233434234015_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233432234010_)))
                                              (_lp-hd233433234013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233432234010_))))
                                          (let ((__tmp243730
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233433234013_
                                                         _arg233435234007_))))
                                            (declare (not safe))
                                            (_loop233431234002_
                                             _lp-tl233434234015_
                                             __tmp243730))))
                                      (let ((_arg233436234018_
                                             (reverse _arg233435234007_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233425233994_))
                                            (let ((_e233439234021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233425233994_))))
                                              (let ((_tl233437234026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233439234021_)))
                                                    (_hd233438234024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233439234021_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233438234024_))
                                                    (let ((_e233442234029_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233438234024_))))
                                                      (let ((_tl233440234034_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233442234029_)))
                    (_hd233441234032_
                     (let () (declare (not safe)) (##car _e233442234029_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233441234032_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233441234032_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233440234034_))
                            (let ((_e233445234037_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233440234034_))))
                              (let ((_tl233443234042_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233445234037_)))
                                    (_hd233444234040_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233445234037_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233444234040_))
                                    (let ((_e233448234045_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233444234040_))))
                                      (let ((_tl233446234050_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233448234045_)))
                                            (_hd233447234048_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233448234045_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233447234048_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233447234048_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233446234050_))
                                                    (let ((_e233451234053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233446234050_))))
                                                      (let ((_tl233449234058_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233451234053_)))
                    (_hd233450234056_
                     (let () (declare (not safe)) (##car _e233451234053_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233449234058_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl233443234042_))
                        (let ((___splice242329242330_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233443234042_
                                  '0))))
                          (let ((_tl233454234063_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242329242330_ '1)))
                                (_target233452234061_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242329242330_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233454234063_))
                                (letrec ((_loop233455234066_
                                          (lambda (_hd233453234069_
                                                   _xarg233459234071_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233453234069_))
                                                (let ((_e233456234074_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233453234069_))))
                                                  (let ((_lp-tl233458234079_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233456234074_)))
                                                        (_lp-hd233457234077_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233456234074_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd233457234077_))
                                                        (let ((_e233463234082_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd233457234077_))))
                  (let ((_tl233461234087_
                         (let () (declare (not safe)) (##cdr _e233463234082_)))
                        (_hd233462234085_
                         (let ()
                           (declare (not safe))
                           (##car _e233463234082_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233462234085_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233462234085_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233461234087_))
                                (let ((_e233466234090_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233461234087_))))
                                  (let ((_tl233464234095_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233466234090_)))
                                        (_hd233465234093_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233466234090_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233464234095_))
                                        (let ((__tmp243729
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd233465234093_
                                                       _xarg233459234071_))))
                                          (declare (not safe))
                                          (_loop233455234066_
                                           _lp-tl233458234079_
                                           __tmp243729))
                                        (___match242366242367_
                                         _e233427233989_
                                         _hd233426233992_
                                         _tl233425233994_
                                         ___splice242327242328_
                                         _target233428233997_
                                         _tl233430233999_))))
                                (___match242366242367_
                                 _e233427233989_
                                 _hd233426233992_
                                 _tl233425233994_
                                 ___splice242327242328_
                                 _target233428233997_
                                 _tl233430233999_))
                            (___match242366242367_
                             _e233427233989_
                             _hd233426233992_
                             _tl233425233994_
                             ___splice242327242328_
                             _target233428233997_
                             _tl233430233999_))
                        (___match242366242367_
                         _e233427233989_
                         _hd233426233992_
                         _tl233425233994_
                         ___splice242327242328_
                         _target233428233997_
                         _tl233430233999_))))
                (___match242366242367_
                 _e233427233989_
                 _hd233426233992_
                 _tl233425233994_
                 ___splice242327242328_
                 _target233428233997_
                 _tl233430233999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg233460234098_
                                                       (reverse _xarg233459234071_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233437234026_))
                                                      (let ((_L234101_
                                                             _xarg233460234098_)
                                                            (_L234102_
                                                             _hd233450234056_)
                                                            (_L234103_
                                                             _arg233436234018_))
                                                        (if (and (let ((__tmp243727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp243728
                                       (lambda (_g234131234134_
                                                _g234132234136_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234131234134_
                                                 _g234132234136_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243728 '() _L234103_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp243727))
                         (fx= (length (let ((__tmp243725
                                             (lambda (_g234138234141_
                                                      _g234139234143_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234138234141_
                                                       _g234139234143_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp243725 '() _L234103_)))
                              (length (let ((__tmp243726
                                             (lambda (_g234145234148_
                                                      _g234146234150_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234145234148_
                                                       _g234146234150_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp243726 '() _L234101_))))
                         (let ((__tmp243723
                                (let ((__tmp243724
                                       (lambda (_g234152234155_
                                                _g234153234157_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234152234155_
                                                 _g234153234157_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243724 '() _L234103_)))
                               (__tmp243721
                                (let ((__tmp243722
                                       (lambda (_g234159234162_
                                                _g234160234164_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234159234162_
                                                 _g234160234164_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243722 '() _L234101_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp243723
                                    __tmp243721))
                         (let ((__tmp243717
                                (let ((__tmp243720
                                       (lambda (_g234166234168_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g234166234168_
                                            _L234102_))))
                                      (__tmp243718
                                       (let ((__tmp243719
                                              (lambda (_g234170234173_
                                                       _g234171234175_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g234170234173_
                                                        _g234171234175_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp243719 '() _L234103_))))
                                  (declare (not safe))
                                  (find __tmp243720 __tmp243718))))
                           (declare (not safe))
                           (not __tmp243717)))
                    (___kont242325242326_ _L234101_ _L234102_ _L234103_)
                    (___match242366242367_
                     _e233427233989_
                     _hd233426233992_
                     _tl233425233994_
                     ___splice242327242328_
                     _target233428233997_
                     _tl233430233999_)))
              (___match242366242367_
               _e233427233989_
               _hd233426233992_
               _tl233425233994_
               ___splice242327242328_
               _target233428233997_
               _tl233430233999_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop233455234066_
                                     _target233452234061_
                                     '())))
                                (___match242366242367_
                                 _e233427233989_
                                 _hd233426233992_
                                 _tl233425233994_
                                 ___splice242327242328_
                                 _target233428233997_
                                 _tl233430233999_))))
                        (___match242366242367_
                         _e233427233989_
                         _hd233426233992_
                         _tl233425233994_
                         ___splice242327242328_
                         _target233428233997_
                         _tl233430233999_))
                    (___match242366242367_
                     _e233427233989_
                     _hd233426233992_
                     _tl233425233994_
                     ___splice242327242328_
                     _target233428233997_
                     _tl233430233999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242366242367_
                                                     _e233427233989_
                                                     _hd233426233992_
                                                     _tl233425233994_
                                                     ___splice242327242328_
                                                     _target233428233997_
                                                     _tl233430233999_))
                                                (___match242366242367_
                                                 _e233427233989_
                                                 _hd233426233992_
                                                 _tl233425233994_
                                                 ___splice242327242328_
                                                 _target233428233997_
                                                 _tl233430233999_))
                                            (___match242366242367_
                                             _e233427233989_
                                             _hd233426233992_
                                             _tl233425233994_
                                             ___splice242327242328_
                                             _target233428233997_
                                             _tl233430233999_))))
                                    (___match242366242367_
                                     _e233427233989_
                                     _hd233426233992_
                                     _tl233425233994_
                                     ___splice242327242328_
                                     _target233428233997_
                                     _tl233430233999_))))
                            (___match242366242367_
                             _e233427233989_
                             _hd233426233992_
                             _tl233425233994_
                             ___splice242327242328_
                             _target233428233997_
                             _tl233430233999_))
                        (___match242366242367_
                         _e233427233989_
                         _hd233426233992_
                         _tl233425233994_
                         ___splice242327242328_
                         _target233428233997_
                         _tl233430233999_))
                    (___match242366242367_
                     _e233427233989_
                     _hd233426233992_
                     _tl233425233994_
                     ___splice242327242328_
                     _target233428233997_
                     _tl233430233999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242366242367_
                                                     _e233427233989_
                                                     _hd233426233992_
                                                     _tl233425233994_
                                                     ___splice242327242328_
                                                     _target233428233997_
                                                     _tl233430233999_))))
                                            (___match242366242367_
                                             _e233427233989_
                                             _hd233426233992_
                                             _tl233425233994_
                                             ___splice242327242328_
                                             _target233428233997_
                                             _tl233430233999_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233431234002_ _target233428233997_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242323242324_))
                  (let ((_e233427233989_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242323242324_))))
                    (let ((_tl233425233994_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233427233989_)))
                          (_hd233426233992_
                           (let ()
                             (declare (not safe))
                             (##car _e233427233989_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd233426233992_))
                          (let ((___splice242327242328_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd233426233992_
                                    '0))))
                            (let ((_tl233430233999_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242327242328_ '1)))
                                  (_target233428233997_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242327242328_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233430233999_))
                                  (___match242354242355_
                                   _e233427233989_
                                   _hd233426233992_
                                   _tl233425233994_
                                   ___splice242327242328_
                                   _target233428233997_
                                   _tl233430233999_)
                                  (___match242366242367_
                                   _e233427233989_
                                   _hd233426233992_
                                   _tl233425233994_
                                   ___splice242327242328_
                                   _target233428233997_
                                   _tl233430233999_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233425233994_))
                              (let ((_e233542233597_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233425233994_))))
                                (let ((_tl233540233602_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233542233597_)))
                                      (_hd233541233600_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233542233597_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233541233600_))
                                      (let ((_e233545233605_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233541233600_))))
                                        (let ((_tl233543233610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233545233605_)))
                                              (_hd233544233608_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233545233605_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd233544233608_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd233544233608_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233543233610_))
                                                      (let ((_e233548233613_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233543233610_))))
                (let ((_tl233546233618_
                       (let () (declare (not safe)) (##cdr _e233548233613_)))
                      (_hd233547233616_
                       (let () (declare (not safe)) (##car _e233548233613_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233547233616_))
                      (let ((_e233551233621_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233547233616_))))
                        (let ((_tl233549233626_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233551233621_)))
                              (_hd233550233624_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233551233621_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233550233624_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233550233624_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233549233626_))
                                      (let ((_e233554233629_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233549233626_))))
                                        (let ((_tl233552233634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233554233629_)))
                                              (_hd233553233632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233554233629_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233552233634_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233546233618_))
                                                  (let ((_e233557233637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233546233618_))))
                                                    (let ((_tl233555233642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233557233637_)))
                                                          (_hd233556233640_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233557233637_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233556233640_))
                                                          (let ((_e233560233645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233556233640_))))
                    (let ((_tl233558233650_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233560233645_)))
                          (_hd233559233648_
                           (let ()
                             (declare (not safe))
                             (##car _e233560233645_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233559233648_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233559233648_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233558233650_))
                                  (let ((_e233563233653_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233558233650_))))
                                    (let ((_tl233561233658_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233563233653_)))
                                          (_hd233562233656_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233563233653_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233561233658_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233555233642_))
                                              (let ((_e233566233661_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233555233642_))))
                                                (let ((_tl233564233666_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233566233661_)))
                                                      (_hd233565233664_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233566233661_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd233565233664_))
                                                      (let ((_e233569233669_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd233565233664_))))
                (let ((_tl233567233674_
                       (let () (declare (not safe)) (##cdr _e233569233669_)))
                      (_hd233568233672_
                       (let () (declare (not safe)) (##car _e233569233669_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd233568233672_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd233568233672_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233567233674_))
                              (let ((_e233572233677_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233567233674_))))
                                (let ((_tl233570233682_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233572233677_)))
                                      (_hd233571233680_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233572233677_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233570233682_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233564233666_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233540233602_))
                                              (___match242464242465_
                                               _e233427233989_
                                               _hd233426233992_
                                               _tl233425233994_
                                               _e233542233597_
                                               _hd233541233600_
                                               _tl233540233602_
                                               _e233545233605_
                                               _hd233544233608_
                                               _tl233543233610_
                                               _e233548233613_
                                               _hd233547233616_
                                               _tl233546233618_
                                               _e233551233621_
                                               _hd233550233624_
                                               _tl233549233626_
                                               _e233554233629_
                                               _hd233553233632_
                                               _tl233552233634_
                                               _e233557233637_
                                               _hd233556233640_
                                               _tl233555233642_
                                               _e233560233645_
                                               _hd233559233648_
                                               _tl233558233650_
                                               _e233563233653_
                                               _hd233562233656_
                                               _tl233561233658_
                                               _e233566233661_
                                               _hd233565233664_
                                               _tl233564233666_
                                               _e233569233669_
                                               _hd233568233672_
                                               _tl233567233674_
                                               _e233572233677_
                                               _hd233571233680_
                                               _tl233570233682_)
                                              (___kont242339242340_))
                                          (___kont242339242340_))
                                      (___kont242339242340_))))
                              (___kont242339242340_))
                          (___kont242339242340_))
                      (___kont242339242340_))))
              (___kont242339242340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont242339242340_))
                                          (___kont242339242340_))))
                                  (___kont242339242340_))
                              (___kont242339242340_))
                          (___kont242339242340_))))
                  (___kont242339242340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242339242340_))
                                              (___kont242339242340_))))
                                      (___kont242339242340_))
                                  (___kont242339242340_))
                              (___kont242339242340_))))
                      (___kont242339242340_))))
              (___kont242339242340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242339242340_))
                                              (___kont242339242340_))))
                                      (___kont242339242340_))))
                              (___kont242339242340_)))))
                  (___kont242339242340_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form232883_)
        (let* ((___stx242467242468_ _form232883_)
               (_g232887233011_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242467242468_)))))
          (let ((___kont242469242470_
                 (lambda (_L233381_ _L233382_ _L233383_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233382_))))
                (___kont242475242476_
                 (lambda (_L233229_ _L233230_ _L233231_ _L233232_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233229_))))
                (___kont242479242480_
                 (lambda (_L233096_ _L233097_ _L233098_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233096_)))))
            (let* ((___match242576242577_
                    (lambda (_e232979233016_
                             _hd232978233019_
                             _tl232977233021_
                             _e232982233024_
                             _hd232981233027_
                             _tl232980233029_
                             _e232985233032_
                             _hd232984233035_
                             _tl232983233037_
                             _e232988233040_
                             _hd232987233043_
                             _tl232986233045_
                             _e232991233048_
                             _hd232990233051_
                             _tl232989233053_
                             _e232994233056_
                             _hd232993233059_
                             _tl232992233061_
                             _e232997233064_
                             _hd232996233067_
                             _tl232995233069_
                             _e233000233072_
                             _hd232999233075_
                             _tl232998233077_
                             _e233003233080_
                             _hd233002233083_
                             _tl233001233085_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232995233069_))
                          (let ((_e233006233088_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232995233069_))))
                            (let ((_tl233004233093_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233006233088_)))
                                  (_hd233005233091_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233006233088_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233004233093_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232980233029_))
                                      (___kont242479242480_
                                       _hd233002233083_
                                       _hd232993233059_
                                       _hd232978233019_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232887233011_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232887233011_)))))
                          (let () (declare (not safe)) (_g232887233011_)))))
                   (___match242506242507_
                    (lambda (_e232940233133_
                             _hd232939233136_
                             _tl232938233138_
                             ___splice242477242478_
                             _target232941233141_
                             _tl232943233143_)
                      (letrec ((_loop232944233146_
                                (lambda (_hd232942233149_ _arg232948233151_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232942233149_))
                                      (let ((_e232945233154_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232942233149_))))
                                        (let ((_lp-tl232947233159_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232945233154_)))
                                              (_lp-hd232946233157_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232945233154_))))
                                          (let ((__tmp243731
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232946233157_
                                                         _arg232948233151_))))
                                            (declare (not safe))
                                            (_loop232944233146_
                                             _lp-tl232947233159_
                                             __tmp243731))))
                                      (let ((_arg232949233162_
                                             (reverse _arg232948233151_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232938233138_))
                                            (let ((_e232952233165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232938233138_))))
                                              (let ((_tl232950233170_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232952233165_)))
                                                    (_hd232951233168_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232952233165_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232951233168_))
                                                    (let ((_e232955233173_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232951233168_))))
                                                      (let ((_tl232953233178_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232955233173_)))
                    (_hd232954233176_
                     (let () (declare (not safe)) (##car _e232955233173_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232954233176_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232954233176_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232953233178_))
                            (let ((_e232958233181_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232953233178_))))
                              (let ((_tl232956233186_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232958233181_)))
                                    (_hd232957233184_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232958233181_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232957233184_))
                                    (let ((_e232961233189_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232957233184_))))
                                      (let ((_tl232959233194_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232961233189_)))
                                            (_hd232960233192_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232961233189_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232960233192_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232960233192_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232959233194_))
                                                    (let ((_e232964233197_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232959233194_))))
                                                      (let ((_tl232962233202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232964233197_)))
                    (_hd232963233200_
                     (let () (declare (not safe)) (##car _e232964233197_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232962233202_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl232956233186_))
                        (let ((_e232967233205_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232956233186_))))
                          (let ((_tl232965233210_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232967233205_)))
                                (_hd232966233208_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232967233205_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232966233208_))
                                (let ((_e232970233213_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232966233208_))))
                                  (let ((_tl232968233218_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232970233213_)))
                                        (_hd232969233216_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232970233213_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232969233216_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd232969233216_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232968233218_))
                                                (let ((_e232973233221_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232968233218_))))
                                                  (let ((_tl232971233226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232973233221_)))
                                                        (_hd232972233224_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232973233221_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232971233226_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl232950233170_))
                                                            (___kont242475242476_
                                                             _hd232972233224_
                                                             _hd232963233200_
                                                             _tl232943233143_
                                                             _arg232949233162_)
                                                            (___match242576242577_
                                                             _e232940233133_
                                                             _hd232939233136_
                                                             _tl232938233138_
                                                             _e232952233165_
                                                             _hd232951233168_
                                                             _tl232950233170_
                                                             _e232955233173_
                                                             _hd232954233176_
                                                             _tl232953233178_
                                                             _e232958233181_
                                                             _hd232957233184_
                                                             _tl232956233186_
                                                             _e232961233189_
                                                             _hd232960233192_
                                                             _tl232959233194_
                                                             _e232964233197_
                                                             _hd232963233200_
                                                             _tl232962233202_
                                                             _e232967233205_
                                                             _hd232966233208_
                                                             _tl232965233210_
                                                             _e232970233213_
                                                             _hd232969233216_
                                                             _tl232968233218_
                                                             _e232973233221_
                                                             _hd232972233224_
                                                             _tl232971233226_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232887233011_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232887233011_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g232887233011_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g232887233011_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g232887233011_)))))
                        (let () (declare (not safe)) (_g232887233011_)))
                    (let () (declare (not safe)) (_g232887233011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g232887233011_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232887233011_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g232887233011_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g232887233011_)))))
                            (let () (declare (not safe)) (_g232887233011_)))
                        (let () (declare (not safe)) (_g232887233011_)))
                    (let () (declare (not safe)) (_g232887233011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g232887233011_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g232887233011_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop232944233146_ _target232941233141_ '())))))
                   (___match242494242495_
                    (lambda (_e232894233269_
                             _hd232893233272_
                             _tl232892233274_
                             ___splice242471242472_
                             _target232895233277_
                             _tl232897233279_)
                      (letrec ((_loop232898233282_
                                (lambda (_hd232896233285_ _arg232902233287_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232896233285_))
                                      (let ((_e232899233290_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232896233285_))))
                                        (let ((_lp-tl232901233295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232899233290_)))
                                              (_lp-hd232900233293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232899233290_))))
                                          (let ((__tmp243733
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232900233293_
                                                         _arg232902233287_))))
                                            (declare (not safe))
                                            (_loop232898233282_
                                             _lp-tl232901233295_
                                             __tmp243733))))
                                      (let ((_arg232903233298_
                                             (reverse _arg232902233287_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232892233274_))
                                            (let ((_e232906233301_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232892233274_))))
                                              (let ((_tl232904233306_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232906233301_)))
                                                    (_hd232905233304_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232906233301_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232905233304_))
                                                    (let ((_e232909233309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232905233304_))))
                                                      (let ((_tl232907233314_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232909233309_)))
                    (_hd232908233312_
                     (let () (declare (not safe)) (##car _e232909233309_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232908233312_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232908233312_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232907233314_))
                            (let ((_e232912233317_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232907233314_))))
                              (let ((_tl232910233322_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232912233317_)))
                                    (_hd232911233320_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232912233317_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232911233320_))
                                    (let ((_e232915233325_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232911233320_))))
                                      (let ((_tl232913233330_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232915233325_)))
                                            (_hd232914233328_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232915233325_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232914233328_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232914233328_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232913233330_))
                                                    (let ((_e232918233333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232913233330_))))
                                                      (let ((_tl232916233338_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232918233333_)))
                    (_hd232917233336_
                     (let () (declare (not safe)) (##car _e232918233333_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232916233338_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl232910233322_))
                        (let ((___splice242473242474_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl232910233322_
                                  '0))))
                          (let ((_tl232921233343_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242473242474_ '1)))
                                (_target232919233341_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242473242474_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl232921233343_))
                                (letrec ((_loop232922233346_
                                          (lambda (_hd232920233349_
                                                   _xarg232926233351_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232920233349_))
                                                (let ((_e232923233354_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232920233349_))))
                                                  (let ((_lp-tl232925233359_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232923233354_)))
                                                        (_lp-hd232924233357_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232923233354_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd232924233357_))
                                                        (let ((_e232930233362_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd232924233357_))))
                  (let ((_tl232928233367_
                         (let () (declare (not safe)) (##cdr _e232930233362_)))
                        (_hd232929233365_
                         (let ()
                           (declare (not safe))
                           (##car _e232930233362_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232929233365_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd232929233365_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232928233367_))
                                (let ((_e232933233370_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232928233367_))))
                                  (let ((_tl232931233375_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232933233370_)))
                                        (_hd232932233373_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232933233370_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232931233375_))
                                        (let ((__tmp243732
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd232932233373_
                                                       _xarg232926233351_))))
                                          (declare (not safe))
                                          (_loop232922233346_
                                           _lp-tl232925233359_
                                           __tmp243732))
                                        (___match242506242507_
                                         _e232894233269_
                                         _hd232893233272_
                                         _tl232892233274_
                                         ___splice242471242472_
                                         _target232895233277_
                                         _tl232897233279_))))
                                (___match242506242507_
                                 _e232894233269_
                                 _hd232893233272_
                                 _tl232892233274_
                                 ___splice242471242472_
                                 _target232895233277_
                                 _tl232897233279_))
                            (___match242506242507_
                             _e232894233269_
                             _hd232893233272_
                             _tl232892233274_
                             ___splice242471242472_
                             _target232895233277_
                             _tl232897233279_))
                        (___match242506242507_
                         _e232894233269_
                         _hd232893233272_
                         _tl232892233274_
                         ___splice242471242472_
                         _target232895233277_
                         _tl232897233279_))))
                (___match242506242507_
                 _e232894233269_
                 _hd232893233272_
                 _tl232892233274_
                 ___splice242471242472_
                 _target232895233277_
                 _tl232897233279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg232927233378_
                                                       (reverse _xarg232926233351_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232904233306_))
                                                      (___kont242469242470_
                                                       _xarg232927233378_
                                                       _hd232917233336_
                                                       _arg232903233298_)
                                                      (___match242506242507_
                                                       _e232894233269_
                                                       _hd232893233272_
                                                       _tl232892233274_
                                                       ___splice242471242472_
                                                       _target232895233277_
                                                       _tl232897233279_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop232922233346_
                                     _target232919233341_
                                     '())))
                                (___match242506242507_
                                 _e232894233269_
                                 _hd232893233272_
                                 _tl232892233274_
                                 ___splice242471242472_
                                 _target232895233277_
                                 _tl232897233279_))))
                        (___match242506242507_
                         _e232894233269_
                         _hd232893233272_
                         _tl232892233274_
                         ___splice242471242472_
                         _target232895233277_
                         _tl232897233279_))
                    (___match242506242507_
                     _e232894233269_
                     _hd232893233272_
                     _tl232892233274_
                     ___splice242471242472_
                     _target232895233277_
                     _tl232897233279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242506242507_
                                                     _e232894233269_
                                                     _hd232893233272_
                                                     _tl232892233274_
                                                     ___splice242471242472_
                                                     _target232895233277_
                                                     _tl232897233279_))
                                                (___match242506242507_
                                                 _e232894233269_
                                                 _hd232893233272_
                                                 _tl232892233274_
                                                 ___splice242471242472_
                                                 _target232895233277_
                                                 _tl232897233279_))
                                            (___match242506242507_
                                             _e232894233269_
                                             _hd232893233272_
                                             _tl232892233274_
                                             ___splice242471242472_
                                             _target232895233277_
                                             _tl232897233279_))))
                                    (___match242506242507_
                                     _e232894233269_
                                     _hd232893233272_
                                     _tl232892233274_
                                     ___splice242471242472_
                                     _target232895233277_
                                     _tl232897233279_))))
                            (___match242506242507_
                             _e232894233269_
                             _hd232893233272_
                             _tl232892233274_
                             ___splice242471242472_
                             _target232895233277_
                             _tl232897233279_))
                        (___match242506242507_
                         _e232894233269_
                         _hd232893233272_
                         _tl232892233274_
                         ___splice242471242472_
                         _target232895233277_
                         _tl232897233279_))
                    (___match242506242507_
                     _e232894233269_
                     _hd232893233272_
                     _tl232892233274_
                     ___splice242471242472_
                     _target232895233277_
                     _tl232897233279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242506242507_
                                                     _e232894233269_
                                                     _hd232893233272_
                                                     _tl232892233274_
                                                     ___splice242471242472_
                                                     _target232895233277_
                                                     _tl232897233279_))))
                                            (___match242506242507_
                                             _e232894233269_
                                             _hd232893233272_
                                             _tl232892233274_
                                             ___splice242471242472_
                                             _target232895233277_
                                             _tl232897233279_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232898233282_ _target232895233277_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242467242468_))
                  (let ((_e232894233269_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242467242468_))))
                    (let ((_tl232892233274_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232894233269_)))
                          (_hd232893233272_
                           (let ()
                             (declare (not safe))
                             (##car _e232894233269_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd232893233272_))
                          (let ((___splice242471242472_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd232893233272_
                                    '0))))
                            (let ((_tl232897233279_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242471242472_ '1)))
                                  (_target232895233277_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242471242472_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232897233279_))
                                  (___match242494242495_
                                   _e232894233269_
                                   _hd232893233272_
                                   _tl232892233274_
                                   ___splice242471242472_
                                   _target232895233277_
                                   _tl232897233279_)
                                  (___match242506242507_
                                   _e232894233269_
                                   _hd232893233272_
                                   _tl232892233274_
                                   ___splice242471242472_
                                   _target232895233277_
                                   _tl232897233279_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232892233274_))
                              (let ((_e232982233024_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232892233274_))))
                                (let ((_tl232980233029_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232982233024_)))
                                      (_hd232981233027_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232982233024_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232981233027_))
                                      (let ((_e232985233032_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232981233027_))))
                                        (let ((_tl232983233037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232985233032_)))
                                              (_hd232984233035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232985233032_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd232984233035_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd232984233035_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232983233037_))
                                                      (let ((_e232988233040_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232983233037_))))
                (let ((_tl232986233045_
                       (let () (declare (not safe)) (##cdr _e232988233040_)))
                      (_hd232987233043_
                       (let () (declare (not safe)) (##car _e232988233040_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232987233043_))
                      (let ((_e232991233048_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232987233043_))))
                        (let ((_tl232989233053_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232991233048_)))
                              (_hd232990233051_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232991233048_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232990233051_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232990233051_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232989233053_))
                                      (let ((_e232994233056_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232989233053_))))
                                        (let ((_tl232992233061_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232994233056_)))
                                              (_hd232993233059_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232994233056_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232992233061_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232986233045_))
                                                  (let ((_e232997233064_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232986233045_))))
                                                    (let ((_tl232995233069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232997233064_)))
                                                          (_hd232996233067_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232997233064_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232996233067_))
                                                          (let ((_e233000233072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232996233067_))))
                    (let ((_tl232998233077_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233000233072_)))
                          (_hd232999233075_
                           (let ()
                             (declare (not safe))
                             (##car _e233000233072_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232999233075_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232999233075_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232998233077_))
                                  (let ((_e233003233080_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232998233077_))))
                                    (let ((_tl233001233085_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233003233080_)))
                                          (_hd233002233083_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233003233080_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233001233085_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232995233069_))
                                              (let ((_e233006233088_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232995233069_))))
                                                (let ((_tl233004233093_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233006233088_)))
                                                      (_hd233005233091_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233006233088_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233004233093_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl232980233029_))
                                                          (___kont242479242480_
                                                           _hd233002233083_
                                                           _hd232993233059_
                                                           _hd232893233272_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g232887233011_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g232887233011_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g232887233011_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g232887233011_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g232887233011_)))
                              (let () (declare (not safe)) (_g232887233011_)))
                          (let () (declare (not safe)) (_g232887233011_)))))
                  (let () (declare (not safe)) (_g232887233011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232887233011_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g232887233011_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232887233011_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232887233011_)))
                              (let ()
                                (declare (not safe))
                                (_g232887233011_)))))
                      (let () (declare (not safe)) (_g232887233011_)))))
              (let () (declare (not safe)) (_g232887233011_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232887233011_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g232887233011_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232887233011_)))))
                              (let ()
                                (declare (not safe))
                                (_g232887233011_))))))
                  (let () (declare (not safe)) (_g232887233011_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form232687_)
        (let* ((_g232689232703_
                (lambda (_g232690232700_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232690232700_))))
               (_g232688232880_
                (lambda (_g232690232706_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232690232706_))
                      (let ((_e232695232708_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232690232706_))))
                        (let ((_hd232694232711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232695232708_)))
                              (_tl232693232713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232695232708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232693232713_))
                              (let ((_e232698232716_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232693232713_))))
                                (let ((_hd232697232719_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232698232716_)))
                                      (_tl232696232721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232698232716_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232696232721_))
                                      ((lambda (_L232724_ _L232725_)
                                         (let* ((___stx242589242590_ _L232725_)
                                                (_g232740232768_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx242589242590_)))))
                                           (let ((___kont242591242592_
                                                  (lambda (_L232859_)
                                                    (length (let ((__tmp243734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g232869232872_ _g232870232874_)
                             (let ()
                               (declare (not safe))
                               (cons _g232869232872_ _g232870232874_)))))
                      (declare (not safe))
                      (foldr1 __tmp243734 '() _L232859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont242595242596_
                                                  (lambda (_L232810_ _L232811_)
                                                    (let ((__tmp243735
                                                           (length (let ((__tmp243736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g232822232825_ _g232823232827_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g232822232825_
                                            _g232823232827_)))))
                             (declare (not safe))
                             (foldr1 __tmp243736 '() _L232811_)))))
              (declare (not safe))
              (cons __tmp243735 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont242599242600_
                                                  (lambda (_L232773_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match242614242615_
                                                     (lambda (___splice242597242598_
                                                              _target232754232786_
                                                              _tl232756232788_)
                                                       (letrec ((_loop232757232791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232755232794_ _arg232761232796_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232755232794_))
                               (let ((_e232758232799_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232755232794_))))
                                 (let ((_lp-tl232760232804_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232758232799_)))
                                       (_lp-hd232759232802_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232758232799_))))
                                   (let ((__tmp243737
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232759232802_
                                                  _arg232761232796_))))
                                     (declare (not safe))
                                     (_loop232757232791_
                                      _lp-tl232760232804_
                                      __tmp243737))))
                               (let ((_arg232762232807_
                                      (reverse _arg232761232796_)))
                                 (___kont242595242596_
                                  _tl232756232788_
                                  _arg232762232807_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232757232791_ _target232754232786_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242608242609_
                                                     (lambda (___splice242593242594_
                                                              _target232743232835_
                                                              _tl232745232837_)
                                                       (letrec ((_loop232746232840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232744232843_ _arg232750232845_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232744232843_))
                               (let ((_e232747232848_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232744232843_))))
                                 (let ((_lp-tl232749232853_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232747232848_)))
                                       (_lp-hd232748232851_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232747232848_))))
                                   (let ((__tmp243738
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232748232851_
                                                  _arg232750232845_))))
                                     (declare (not safe))
                                     (_loop232746232840_
                                      _lp-tl232749232853_
                                      __tmp243738))))
                               (let ((_arg232751232856_
                                      (reverse _arg232750232845_)))
                                 (___kont242591242592_ _arg232751232856_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232746232840_ _target232743232835_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx242589242590_))
                                                   (let ((___splice242593242594_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx242589242590_
                                                             '0))))
                                                     (let ((_tl232745232837_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice242593242594_
                                                               '1)))
                                                           (_target232743232835_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice242593242594_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl232745232837_))
                                                           (___match242608242609_
                                                            ___splice242593242594_
                                                            _target232743232835_
                                                            _tl232745232837_)
                                                           (___match242614242615_
                                                            ___splice242593242594_
                                                            _target232743232835_
                                                            _tl232745232837_))))
                                                   (___kont242599242600_
                                                    ___stx242589242590_))))))
                                       _hd232697232719_
                                       _hd232694232711_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232689232703_ _g232690232706_)))))
                              (let ()
                                (declare (not safe))
                                (_g232689232703_ _g232690232706_)))))
                      (let ()
                        (declare (not safe))
                        (_g232689232703_ _g232690232706_))))))
          (declare (not safe))
          (_g232688232880_ _form232687_))))
    (define gxc#lambda-expr?
      (lambda (_expr232640_)
        (let* ((___stx242617242618_ _expr232640_)
               (_g232643232653_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242617242618_)))))
          (let ((___kont242619242620_ (lambda (_L232673_) '#t))
                (___kont242621242622_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242617242618_))
                (let ((_e232648232665_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242617242618_))))
                  (let ((_tl232646232670_
                         (let () (declare (not safe)) (##cdr _e232648232665_)))
                        (_hd232647232668_
                         (let ()
                           (declare (not safe))
                           (##car _e232648232665_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232647232668_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd232647232668_))
                            (___kont242619242620_ _tl232646232670_)
                            (___kont242621242622_))
                        (___kont242621242622_))))
                (___kont242621242622_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr232593_)
        (let* ((___stx242635242636_ _expr232593_)
               (_g232596232606_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242635242636_)))))
          (let ((___kont242637242638_ (lambda (_L232626_) '#t))
                (___kont242639242640_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242635242636_))
                (let ((_e232601232618_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242635242636_))))
                  (let ((_tl232599232623_
                         (let () (declare (not safe)) (##cdr _e232601232618_)))
                        (_hd232600232621_
                         (let ()
                           (declare (not safe))
                           (##car _e232601232618_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232600232621_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd232600232621_))
                            (___kont242637242638_ _tl232599232623_)
                            (___kont242639242640_))
                        (___kont242639242640_))))
                (___kont242639242640_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr232462_)
        (let* ((___stx242653242654_ _expr232462_)
               (_g232465232495_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242653242654_)))))
          (let ((___kont242655242656_
                 (lambda (_L232563_ _L232564_ _L232565_)
                   (if (let () (declare (not safe)) (gx#identifier? _L232565_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L232564_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L232563_))
                           '#f)
                       '#f)))
                (___kont242657242658_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242653242654_))
                (let ((_e232472232507_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242653242654_))))
                  (let ((_tl232470232512_
                         (let () (declare (not safe)) (##cdr _e232472232507_)))
                        (_hd232471232510_
                         (let ()
                           (declare (not safe))
                           (##car _e232472232507_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232471232510_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd232471232510_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232470232512_))
                                (let ((_e232475232515_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232470232512_))))
                                  (let ((_tl232473232520_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232475232515_)))
                                        (_hd232474232518_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232475232515_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd232474232518_))
                                        (let ((_e232478232523_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd232474232518_))))
                                          (let ((_tl232476232528_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232478232523_)))
                                                (_hd232477232526_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232478232523_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232477232526_))
                                                (let ((_e232481232531_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232477232526_))))
                                                  (let ((_tl232479232536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232481232531_)))
                                                        (_hd232480232534_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232481232531_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232480232534_))
                                                        (let ((_e232484232539_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232480232534_))))
                  (let ((_tl232482232544_
                         (let () (declare (not safe)) (##cdr _e232484232539_)))
                        (_hd232483232542_
                         (let ()
                           (declare (not safe))
                           (##car _e232484232539_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl232482232544_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232479232536_))
                            (let ((_e232487232547_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232479232536_))))
                              (let ((_tl232485232552_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232487232547_)))
                                    (_hd232486232550_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232487232547_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl232485232552_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232476232528_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232473232520_))
                                            (let ((_e232490232555_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232473232520_))))
                                              (let ((_tl232488232560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232490232555_)))
                                                    (_hd232489232558_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232490232555_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl232488232560_))
                                                    (___kont242655242656_
                                                     _hd232489232558_
                                                     _hd232486232550_
                                                     _hd232483232542_)
                                                    (___kont242657242658_))))
                                            (___kont242657242658_))
                                        (___kont242657242658_))
                                    (___kont242657242658_))))
                            (___kont242657242658_))
                        (___kont242657242658_))))
                (___kont242657242658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242657242658_))))
                                        (___kont242657242658_))))
                                (___kont242657242658_))
                            (___kont242657242658_))
                        (___kont242657242658_))))
                (___kont242657242658_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr231787_)
        (let* ((___stx242715242716_ _expr231787_)
               (_g231790231948_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242715242716_)))))
          (let ((___kont242717242718_
                 (lambda (_L232336_
                          _L232337_
                          _L232338_
                          _L232339_
                          _L232340_
                          _L232341_
                          _L232342_
                          _L232343_
                          _L232344_
                          _L232345_
                          _L232346_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L232343_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L232339_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L232338_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L232346_
                                      _L232337_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L232345_
                                          _L232342_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L232340_
                                              _L232336_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L232344_
                                              _L232341_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont242719242720_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242715242716_))
                (let ((_e231805231960_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242715242716_))))
                  (let ((_tl231803231965_
                         (let () (declare (not safe)) (##cdr _e231805231960_)))
                        (_hd231804231963_
                         (let ()
                           (declare (not safe))
                           (##car _e231805231960_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231804231963_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd231804231963_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231803231965_))
                                (let ((_e231808231968_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231803231965_))))
                                  (let ((_tl231806231973_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231808231968_)))
                                        (_hd231807231971_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231808231968_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd231807231971_))
                                        (let ((_e231811231976_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd231807231971_))))
                                          (let ((_tl231809231981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231811231976_)))
                                                (_hd231810231979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231811231976_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231810231979_))
                                                (let ((_e231814231984_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231810231979_))))
                                                  (let ((_tl231812231989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231814231984_)))
                                                        (_hd231813231987_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231814231984_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231813231987_))
                                                        (let ((_e231817231992_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231813231987_))))
                  (let ((_tl231815231997_
                         (let () (declare (not safe)) (##cdr _e231817231992_)))
                        (_hd231816231995_
                         (let ()
                           (declare (not safe))
                           (##car _e231817231992_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl231815231997_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231812231989_))
                            (let ((_e231820232000_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231812231989_))))
                              (let ((_tl231818232005_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231820232000_)))
                                    (_hd231819232003_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231820232000_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231819232003_))
                                    (let ((_e231823232008_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231819232003_))))
                                      (let ((_tl231821232013_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231823232008_)))
                                            (_hd231822232011_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231823232008_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231822232011_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd231822232011_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231821232013_))
                                                    (let ((_e231826232016_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231821232013_))))
                                                      (let ((_tl231824232021_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231826232016_)))
                    (_hd231825232019_
                     (let () (declare (not safe)) (##car _e231826232016_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231825232019_))
                    (let ((_e231829232024_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231825232019_))))
                      (let ((_tl231827232029_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231829232024_)))
                            (_hd231828232027_
                             (let ()
                               (declare (not safe))
                               (##car _e231829232024_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd231828232027_))
                            (let ((_e231832232032_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd231828232027_))))
                              (let ((_tl231830232037_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231832232032_)))
                                    (_hd231831232035_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231832232032_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231831232035_))
                                    (let ((_e231835232040_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231831232035_))))
                                      (let ((_tl231833232045_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231835232040_)))
                                            (_hd231834232043_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231835232040_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231833232045_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231830232037_))
                                                (let ((_e231838232048_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231830232037_))))
                                                  (let ((_tl231836232053_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231838232048_)))
                                                        (_hd231837232051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231838232048_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231836232053_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl231827232029_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl231824232021_))
                        (let ((_e231841232056_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231824232021_))))
                          (let ((_tl231839232061_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231841232056_)))
                                (_hd231840232059_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231841232056_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231840232059_))
                                (let ((_e231844232064_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231840232059_))))
                                  (let ((_tl231842232069_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231844232064_)))
                                        (_hd231843232067_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231844232064_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231843232067_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd231843232067_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231842232069_))
                                                (let ((_e231847232072_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231842232069_))))
                                                  (let ((_tl231845232077_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231847232072_)))
                                                        (_hd231846232075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231847232072_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231846232075_))
                                                        (let ((_e231850232080_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231846232075_))))
                  (let ((_tl231848232085_
                         (let () (declare (not safe)) (##cdr _e231850232080_)))
                        (_hd231849232083_
                         (let ()
                           (declare (not safe))
                           (##car _e231850232080_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231845232077_))
                        (let ((_e231853232088_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231845232077_))))
                          (let ((_tl231851232093_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231853232088_)))
                                (_hd231852232091_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231853232088_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231852232091_))
                                (let ((_e231856232096_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231852232091_))))
                                  (let ((_tl231854232101_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231856232096_)))
                                        (_hd231855232099_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231856232096_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231855232099_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd231855232099_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231854232101_))
                                                (let ((_e231859232104_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231854232101_))))
                                                  (let ((_tl231857232109_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231859232104_)))
                                                        (_hd231858232107_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231859232104_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231858232107_))
                                                        (let ((_e231862232112_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231858232107_))))
                  (let ((_tl231860232117_
                         (let () (declare (not safe)) (##cdr _e231862232112_)))
                        (_hd231861232115_
                         (let ()
                           (declare (not safe))
                           (##car _e231862232112_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231861232115_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd231861232115_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231860232117_))
                                (let ((_e231865232120_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231860232117_))))
                                  (let ((_tl231863232125_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231865232120_)))
                                        (_hd231864232123_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231865232120_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231863232125_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231857232109_))
                                            (let ((_e231868232128_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231857232109_))))
                                              (let ((_tl231866232133_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231868232128_)))
                                                    (_hd231867232131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231868232128_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231867232131_))
                                                    (let ((_e231871232136_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231867232131_))))
                                                      (let ((_tl231869232141_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231871232136_)))
                    (_hd231870232139_
                     (let () (declare (not safe)) (##car _e231871232136_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231870232139_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd231870232139_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231869232141_))
                            (let ((_e231874232144_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231869232141_))))
                              (let ((_tl231872232149_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231874232144_)))
                                    (_hd231873232147_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231874232144_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231872232149_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231866232133_))
                                        (let ((_e231877232152_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231866232133_))))
                                          (let ((_tl231875232157_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231877232152_)))
                                                (_hd231876232155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231877232152_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231876232155_))
                                                (let ((_e231880232160_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231876232155_))))
                                                  (let ((_tl231878232165_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231880232160_)))
                                                        (_hd231879232163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231880232160_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd231879232163_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd231879232163_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl231878232165_))
                        (let ((_e231883232168_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231878232165_))))
                          (let ((_tl231881232173_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231883232168_)))
                                (_hd231882232171_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231883232168_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl231881232173_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231851232093_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231839232061_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231818232005_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231809231981_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231806231973_))
                                                    (let ((_e231886232176_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231806231973_))))
                                                      (let ((_tl231884232181_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231886232176_)))
                    (_hd231885232179_
                     (let () (declare (not safe)) (##car _e231886232176_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231885232179_))
                    (let ((_e231889232184_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231885232179_))))
                      (let ((_tl231887232189_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231889232184_)))
                            (_hd231888232187_
                             (let ()
                               (declare (not safe))
                               (##car _e231889232184_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd231888232187_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd231888232187_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl231887232189_))
                                    (let ((_e231892232192_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl231887232189_))))
                                      (let ((_tl231890232197_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231892232192_)))
                                            (_hd231891232195_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231892232192_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231890232197_))
                                            (let ((_e231895232200_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231890232197_))))
                                              (let ((_tl231893232205_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231895232200_)))
                                                    (_hd231894232203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231895232200_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231894232203_))
                                                    (let ((_e231898232208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231894232203_))))
                                                      (let ((_tl231896232213_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231898232208_)))
                    (_hd231897232211_
                     (let () (declare (not safe)) (##car _e231898232208_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231897232211_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231897232211_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231896232213_))
                            (let ((_e231901232216_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231896232213_))))
                              (let ((_tl231899232221_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231901232216_)))
                                    (_hd231900232219_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231901232216_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231900232219_))
                                    (let ((_e231904232224_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231900232219_))))
                                      (let ((_tl231902232229_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231904232224_)))
                                            (_hd231903232227_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231904232224_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231903232227_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231903232227_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231902232229_))
                                                    (let ((_e231907232232_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231902232229_))))
                                                      (let ((_tl231905232237_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231907232232_)))
                    (_hd231906232235_
                     (let () (declare (not safe)) (##car _e231907232232_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231905232237_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231899232221_))
                        (let ((_e231910232240_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231899232221_))))
                          (let ((_tl231908232245_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231910232240_)))
                                (_hd231909232243_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231910232240_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231909232243_))
                                (let ((_e231913232248_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231909232243_))))
                                  (let ((_tl231911232253_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231913232248_)))
                                        (_hd231912232251_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231913232248_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231912232251_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231912232251_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231911232253_))
                                                (let ((_e231916232256_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231911232253_))))
                                                  (let ((_tl231914232261_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231916232256_)))
                                                        (_hd231915232259_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231916232256_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231914232261_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl231908232245_))
                                                            (let ((_e231919232264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl231908232245_))))
                      (let ((_tl231917232269_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231919232264_)))
                            (_hd231918232267_
                             (let ()
                               (declare (not safe))
                               (##car _e231919232264_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd231918232267_))
                            (let ((_e231922232272_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd231918232267_))))
                              (let ((_tl231920232277_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231922232272_)))
                                    (_hd231921232275_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231922232272_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd231921232275_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd231921232275_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231920232277_))
                                            (let ((_e231925232280_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231920232277_))))
                                              (let ((_tl231923232285_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231925232280_)))
                                                    (_hd231924232283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231925232280_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231923232285_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl231917232269_))
                                                        (let ((_e231928232288_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl231917232269_))))
                  (let ((_tl231926232293_
                         (let () (declare (not safe)) (##cdr _e231928232288_)))
                        (_hd231927232291_
                         (let ()
                           (declare (not safe))
                           (##car _e231928232288_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd231927232291_))
                        (let ((_e231931232296_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd231927232291_))))
                          (let ((_tl231929232301_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231931232296_)))
                                (_hd231930232299_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231931232296_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd231930232299_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd231930232299_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231929232301_))
                                        (let ((_e231934232304_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231929232301_))))
                                          (let ((_tl231932232309_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231934232304_)))
                                                (_hd231933232307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231934232304_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231932232309_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231926232293_))
                                                    (let ((_e231937232312_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231926232293_))))
                                                      (let ((_tl231935232317_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231937232312_)))
                    (_hd231936232315_
                     (let () (declare (not safe)) (##car _e231937232312_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231936232315_))
                    (let ((_e231940232320_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231936232315_))))
                      (let ((_tl231938232325_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231940232320_)))
                            (_hd231939232323_
                             (let ()
                               (declare (not safe))
                               (##car _e231940232320_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd231939232323_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd231939232323_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl231938232325_))
                                    (let ((_e231943232328_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl231938232325_))))
                                      (let ((_tl231941232333_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231943232328_)))
                                            (_hd231942232331_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231943232328_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231941232333_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231935232317_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231893232205_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231884232181_))
                                                        (___kont242717242718_
                                                         _hd231942232331_
                                                         _hd231933232307_
                                                         _hd231915232259_
                                                         _hd231906232235_
                                                         _hd231891232195_
                                                         _hd231882232171_
                                                         _hd231873232147_
                                                         _hd231864232123_
                                                         _hd231849232083_
                                                         _hd231834232043_
                                                         _hd231816231995_)
                                                        (___kont242719242720_))
                                                    (___kont242719242720_))
                                                (___kont242719242720_))
                                            (___kont242719242720_))))
                                    (___kont242719242720_))
                                (___kont242719242720_))
                            (___kont242719242720_))))
                    (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242719242720_))
                                                (___kont242719242720_))))
                                        (___kont242719242720_))
                                    (___kont242719242720_))
                                (___kont242719242720_))))
                        (___kont242719242720_))))
                (___kont242719242720_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242719242720_))))
                                            (___kont242719242720_))
                                        (___kont242719242720_))
                                    (___kont242719242720_))))
                            (___kont242719242720_))))
                    (___kont242719242720_))
                (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242719242720_))
                                            (___kont242719242720_))
                                        (___kont242719242720_))))
                                (___kont242719242720_))))
                        (___kont242719242720_))
                    (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242719242720_))
                                                (___kont242719242720_))
                                            (___kont242719242720_))))
                                    (___kont242719242720_))))
                            (___kont242719242720_))
                        (___kont242719242720_))
                    (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242719242720_))))
                                            (___kont242719242720_))))
                                    (___kont242719242720_))
                                (___kont242719242720_))
                            (___kont242719242720_))))
                    (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242719242720_))
                                                (___kont242719242720_))
                                            (___kont242719242720_))
                                        (___kont242719242720_))
                                    (___kont242719242720_))
                                (___kont242719242720_))))
                        (___kont242719242720_))
                    (___kont242719242720_))
                (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242719242720_))))
                                        (___kont242719242720_))
                                    (___kont242719242720_))))
                            (___kont242719242720_))
                        (___kont242719242720_))
                    (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242719242720_))))
                                            (___kont242719242720_))
                                        (___kont242719242720_))))
                                (___kont242719242720_))
                            (___kont242719242720_))
                        (___kont242719242720_))))
                (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242719242720_))
                                            (___kont242719242720_))
                                        (___kont242719242720_))))
                                (___kont242719242720_))))
                        (___kont242719242720_))))
                (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242719242720_))
                                            (___kont242719242720_))
                                        (___kont242719242720_))))
                                (___kont242719242720_))))
                        (___kont242719242720_))
                    (___kont242719242720_))
                (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242719242720_))
                                            (___kont242719242720_))))
                                    (___kont242719242720_))))
                            (___kont242719242720_))))
                    (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242719242720_))
                                                (___kont242719242720_))
                                            (___kont242719242720_))))
                                    (___kont242719242720_))))
                            (___kont242719242720_))
                        (___kont242719242720_))))
                (___kont242719242720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242719242720_))))
                                        (___kont242719242720_))))
                                (___kont242719242720_))
                            (___kont242719242720_))
                        (___kont242719242720_))))
                (___kont242719242720_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx231529_ _id231530_ _clauses231531_ _gensym?231532_)
        (let _lp231534_ ((_rest231536_ _clauses231531_)
                         (_ids231537_ '())
                         (_impls231538_ '())
                         (_clauses231539_ '()))
          (let* ((_rest231540231548_ _rest231536_)
                 (_else231542231556_
                  (lambda ()
                    (values (reverse _ids231537_)
                            (reverse _impls231538_)
                            (reverse _clauses231539_))))
                 (_K231544231761_
                  (lambda (_rest231559_ _clause231560_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause231560_))
                        (let ((__tmp243794
                               (let ()
                                 (declare (not safe))
                                 (cons _clause231560_ _clauses231539_))))
                          (declare (not safe))
                          (_lp231534_
                           _rest231559_
                           _ids231537_
                           _impls231538_
                           __tmp243794))
                        (let* ((_g231562231573_
                                (lambda (_g231563231570_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g231563231570_))))
                               (_g231561231758_
                                (lambda (_g231563231576_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g231563231576_))
                                      (let ((_e231568231578_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g231563231576_))))
                                        (let ((_hd231567231581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231568231578_)))
                                              (_tl231566231583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231568231578_))))
                                          ((lambda (_L231586_ _L231587_)
                                             (let* ((_id231604_
                                                     (let ((__tmp243741
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id231530_)))
                                                           (__tmp243740
                                                            (length _clauses231539_))
                                                           (__tmp243739
                                                            (if _gensym?231532_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp243741
                                                        '"__"
                                                        __tmp243740
                                                        __tmp243739)))
                                                    (_id231606_
                                                     (let ((__tmp243742
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx231529_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id231604_
                                                        __tmp243742)))
                                                    (_impl231608_
                                                     (let ((__tmp243743
                                                            (let ((__tmp243745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp243744
                           (let ()
                             (declare (not safe))
                             (cons _L231587_ _L231586_))))
                      (declare (not safe))
                      (cons __tmp243745 __tmp243744))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp243743 _stx231529_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause231755_
                                                     (let* ((___stx243099243100_
                                                             _L231587_)
                                                            (_g231612231640_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx243099243100_)))))
               (let ((___kont243101243102_
                      (lambda (_L231734_)
                        (let ((__tmp243746
                               (let ((__tmp243747
                                      (let ((__tmp243748
                                             (let ((__tmp243749
                                                    (let ((__tmp243755
                                                           (let ((__tmp243756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id231606_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243756)))
                  (__tmp243750
                   (let ((__tmp243751
                          (lambda (_g231744231747_ _g231745231749_)
                            (let ((__tmp243752
                                   (let ((__tmp243754
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp243753
                                          (let ()
                                            (declare (not safe))
                                            (cons _g231744231747_ '()))))
                                     (declare (not safe))
                                     (cons __tmp243754 __tmp243753))))
                              (declare (not safe))
                              (cons __tmp243752 _g231745231749_)))))
                     (declare (not safe))
                     (foldr1 __tmp243751 '() _L231734_))))
              (declare (not safe))
              (cons __tmp243755 __tmp243750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243749))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243748
                                         _stx231529_))))
                                 (declare (not safe))
                                 (cons __tmp243747 '()))))
                          (declare (not safe))
                          (cons _L231587_ __tmp243746))))
                     (___kont243105243106_
                      (lambda (_L231685_ _L231686_)
                        (let ((__tmp243757
                               (let ((__tmp243758
                                      (let ((__tmp243759
                                             (let ((__tmp243760
                                                    (let ((__tmp243774
                                                           (let ((__tmp243775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243775)))
                  (__tmp243761
                   (let ((__tmp243772
                          (let ((__tmp243773
                                 (let ()
                                   (declare (not safe))
                                   (cons _id231606_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp243773)))
                         (__tmp243762
                          (let ((__tmp243768
                                 (let ((__tmp243769
                                        (let ((__tmp243771
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp243770
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L231685_ '()))))
                                          (declare (not safe))
                                          (cons __tmp243771 __tmp243770))))
                                   (declare (not safe))
                                   (cons __tmp243769 '())))
                                (__tmp243763
                                 (let ((__tmp243764
                                        (lambda (_g231697231700_
                                                 _g231698231702_)
                                          (let ((__tmp243765
                                                 (let ((__tmp243767
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp243766
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g231697231700_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp243767
                                                         __tmp243766))))
                                            (declare (not safe))
                                            (cons __tmp243765
                                                  _g231698231702_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp243764 '() _L231686_))))
                            (declare (not safe))
                            (foldr1 cons __tmp243768 __tmp243763))))
                     (declare (not safe))
                     (cons __tmp243772 __tmp243762))))
              (declare (not safe))
              (cons __tmp243774 __tmp243761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243760))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243759
                                         _stx231529_))))
                                 (declare (not safe))
                                 (cons __tmp243758 '()))))
                          (declare (not safe))
                          (cons _L231587_ __tmp243757))))
                     (___kont243109243110_
                      (lambda (_L231645_)
                        (let ((__tmp243776
                               (let ((__tmp243777
                                      (let ((__tmp243778
                                             (let ((__tmp243779
                                                    (let ((__tmp243787
                                                           (let ((__tmp243788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243788)))
                  (__tmp243780
                   (let ((__tmp243785
                          (let ((__tmp243786
                                 (let ()
                                   (declare (not safe))
                                   (cons _id231606_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp243786)))
                         (__tmp243781
                          (let ((__tmp243782
                                 (let ((__tmp243784
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp243783
                                        (let ()
                                          (declare (not safe))
                                          (cons _L231645_ '()))))
                                   (declare (not safe))
                                   (cons __tmp243784 __tmp243783))))
                            (declare (not safe))
                            (cons __tmp243782 '()))))
                     (declare (not safe))
                     (cons __tmp243785 __tmp243781))))
              (declare (not safe))
              (cons __tmp243787 __tmp243780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243779))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243778
                                         _stx231529_))))
                                 (declare (not safe))
                                 (cons __tmp243777 '()))))
                          (declare (not safe))
                          (cons _L231587_ __tmp243776)))))
                 (let* ((___match243124243125_
                         (lambda (___splice243107243108_
                                  _target231626231661_
                                  _tl231628231663_)
                           (letrec ((_loop231629231666_
                                     (lambda (_hd231627231669_
                                              _arg231633231671_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd231627231669_))
                                           (let ((_e231630231674_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd231627231669_))))
                                             (let ((_lp-tl231632231679_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231630231674_)))
                                                   (_lp-hd231631231677_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231630231674_))))
                                               (let ((__tmp243789
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd231631231677_
                                                              _arg231633231671_))))
                                                 (declare (not safe))
                                                 (_loop231629231666_
                                                  _lp-tl231632231679_
                                                  __tmp243789))))
                                           (let ((_arg231634231682_
                                                  (reverse _arg231633231671_)))
                                             (___kont243105243106_
                                              _tl231628231663_
                                              _arg231634231682_))))))
                             (let ()
                               (declare (not safe))
                               (_loop231629231666_
                                _target231626231661_
                                '())))))
                        (___match243118243119_
                         (lambda (___splice243103243104_
                                  _target231615231710_
                                  _tl231617231712_)
                           (letrec ((_loop231618231715_
                                     (lambda (_hd231616231718_
                                              _arg231622231720_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd231616231718_))
                                           (let ((_e231619231723_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd231616231718_))))
                                             (let ((_lp-tl231621231728_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231619231723_)))
                                                   (_lp-hd231620231726_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231619231723_))))
                                               (let ((__tmp243790
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd231620231726_
                                                              _arg231622231720_))))
                                                 (declare (not safe))
                                                 (_loop231618231715_
                                                  _lp-tl231621231728_
                                                  __tmp243790))))
                                           (let ((_arg231623231731_
                                                  (reverse _arg231622231720_)))
                                             (___kont243101243102_
                                              _arg231623231731_))))))
                             (let ()
                               (declare (not safe))
                               (_loop231618231715_
                                _target231615231710_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx243099243100_))
                       (let ((___splice243103243104_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx243099243100_
                                 '0))))
                         (let ((_tl231617231712_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243103243104_ '1)))
                               (_target231615231710_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243103243104_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231617231712_))
                               (___match243118243119_
                                ___splice243103243104_
                                _target231615231710_
                                _tl231617231712_)
                               (___match243124243125_
                                ___splice243103243104_
                                _target231615231710_
                                _tl231617231712_))))
                       (___kont243109243110_ ___stx243099243100_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp243793
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id231606_
                                                              _ids231537_)))
                                                     (__tmp243792
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl231608_
                                                              _impls231538_)))
                                                     (__tmp243791
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause231755_
                                                              _clauses231539_))))
                                                 (declare (not safe))
                                                 (_lp231534_
                                                  _rest231559_
                                                  __tmp243793
                                                  __tmp243792
                                                  __tmp243791))))
                                           _tl231566231583_
                                           _hd231567231581_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g231562231573_ _g231563231576_))))))
                          (declare (not safe))
                          (_g231561231758_ _clause231560_))))))
            (if (let () (declare (not safe)) (##pair? _rest231540231548_))
                (let ((_hd231545231764_
                       (let ()
                         (declare (not safe))
                         (##car _rest231540231548_)))
                      (_tl231546231766_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest231540231548_))))
                  (let* ((_clause231769_ _hd231545231764_)
                         (_rest231771_ _tl231546231766_))
                    (declare (not safe))
                    (_K231544231761_ _rest231771_ _clause231769_)))
                (let () (declare (not safe)) (_else231542231556_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx231776_ _id231777_ _clauses231778_)
        (let ((_gensym?231780_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx231776_
           _id231777_
           _clauses231778_
           _gensym?231780_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g243796_
        (let ((_g243795_ (let () (declare (not safe)) (##length _g243796_))))
          (cond ((let () (declare (not safe)) (##fx= _g243795_ 3))
                 (apply (lambda (_stx231776_ _id231777_ _clauses231778_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx231776_
                             _id231777_
                             _clauses231778_)))
                        _g243796_))
                ((let () (declare (not safe)) (##fx= _g243795_ 4))
                 (apply (lambda (_stx231782_
                                 _id231783_
                                 _clauses231784_
                                 _gensym?231785_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx231782_
                             _id231783_
                             _clauses231784_
                             _gensym?231785_)))
                        _g243796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g243796_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx230806_)
        (letrec ((_case-lambda-clause-def230808_
                  (lambda (_id231525_ _impl231526_)
                    (let ((__tmp243797
                           (let ((__tmp243798
                                  (let ((__tmp243801
                                         (let ()
                                           (declare (not safe))
                                           (cons _id231525_ '())))
                                        (__tmp243799
                                         (let ((__tmp243800
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl231526_))))
                                           (declare (not safe))
                                           (cons __tmp243800 '()))))
                                    (declare (not safe))
                                    (cons __tmp243801 __tmp243799))))
                             (declare (not safe))
                             (cons '%#define-values __tmp243798))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp243797 _stx230806_))))
                 (_opt-lambda-dispatch-name230809_
                  (lambda (_id231521_)
                    (if (uninterned-symbol? _id231521_)
                        (let ((_str231523_ (symbol->string _id231521_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str231523_))
                              '"%"
                              _id231521_))
                        _id231521_)))
                 (_kw-lambda-dispatch-name230810_
                  (lambda (_id231516_ _name231517_)
                    (if (uninterned-symbol? _id231516_)
                        (let ((_str231519_ (symbol->string _id231516_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str231519_))
                              _name231517_
                              _id231516_))
                        _id231516_))))
          (let* ((___stx243147243148_ _stx230806_)
                 (_g230815230874_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243147243148_)))))
            (let ((___kont243149243150_
                   (lambda (_L231425_ _L231426_)
                     (let* ((___stx243127243128_ _L231425_)
                            (_g231443231457_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243127243128_)))))
                       (let ((___kont243129243130_
                              (lambda (_L231501_) _stx230806_))
                             (___kont243131243132_
                              (lambda (_L231470_)
                                (let ((_g243802_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx230806_
                                          _L231426_
                                          _L231470_))))
                                  (begin
                                    (let ((_g243803_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g243802_)
                                                 (##vector-length _g243802_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g243803_ 3)))
                                          (error "Context expects 3 values"
                                                 _g243803_)))
                                    (let ((_ids231480_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243802_ 0)))
                                          (_impls231481_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243802_ 1)))
                                          (_clauses231482_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243802_ 2))))
                                      (let* ((_g243804_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids231480_))
                                             (_defs231485_
                                              (map _case-lambda-clause-def230808_
                                                   _ids231480_
                                                   _impls231481_)))
                                        (let ((__tmp243806
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L231426_)))
                                              (__tmp243805
                                               (map gxc#identifier-symbol
                                                    _ids231480_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp243806
                                           '" => "
                                           __tmp243805))
                                        (let ((__tmp243807
                                               (let ((__tmp243808
                                                      (let ((__tmp243809
                                                             (let ((__tmp243810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp243811
                                   (let ((__tmp243812
                                          (let ((__tmp243817
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L231426_ '())))
                                                (__tmp243813
                                                 (let ((__tmp243814
                                                        (let ((__tmp243816
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses231482_)))
                      (__tmp243815
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp243816 __tmp243815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp243814 '()))))
                                            (declare (not safe))
                                            (cons __tmp243817 __tmp243813))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp243812))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp243811
                               _stx230806_))))
                       (declare (not safe))
                       (cons __tmp243810 '()))))
                (declare (not safe))
                (foldr1 cons __tmp243809 _defs231485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp243808))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp243807
                                           _stx230806_)))))))))
                         (let ((___match243138243139_
                                (lambda (_e231448231493_
                                         _hd231447231496_
                                         _tl231446231498_)
                                  (let ((_L231501_ _tl231446231498_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L231501_))
                                        (___kont243129243130_ _L231501_)
                                        (___kont243131243132_
                                         _tl231446231498_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx243127243128_))
                               (let ((_e231448231493_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx243127243128_))))
                                 (let ((_tl231446231498_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231448231493_)))
                                       (_hd231447231496_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231448231493_))))
                                   (___match243138243139_
                                    _e231448231493_
                                    _hd231447231496_
                                    _tl231446231498_)))
                               (let ()
                                 (declare (not safe))
                                 (_g231443231457_))))))))
                  (___kont243151243152_
                   (lambda (_L231243_ _L231244_)
                     (let* ((_g231260231290_
                             (lambda (_g231261231287_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g231261231287_))))
                            (_g231259231385_
                             (lambda (_g231261231293_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g231261231293_))
                                   (let ((_e231267231295_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g231261231293_))))
                                     (let ((_hd231266231298_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e231267231295_)))
                                           (_tl231265231300_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e231267231295_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl231265231300_))
                                           (let ((_e231270231303_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl231265231300_))))
                                             (let ((_hd231269231306_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231270231303_)))
                                                   (_tl231268231308_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231270231303_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231269231306_))
                                                   (let ((_e231273231311_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231269231306_))))
                                                     (let ((_hd231272231314_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231273231311_)))
                                                           (_tl231271231316_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231273231311_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd231272231314_))
                                                           (let ((_e231276231319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd231272231314_))))
                     (let ((_hd231275231322_
                            (let ()
                              (declare (not safe))
                              (##car _e231276231319_)))
                           (_tl231274231324_
                            (let ()
                              (declare (not safe))
                              (##cdr _e231276231319_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd231275231322_))
                           (let ((_e231279231327_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd231275231322_))))
                             (let ((_hd231278231330_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231279231327_)))
                                   (_tl231277231332_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231279231327_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231277231332_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl231274231324_))
                                       (let ((_e231282231335_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl231274231324_))))
                                         (let ((_hd231281231338_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231282231335_)))
                                               (_tl231280231340_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231282231335_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231280231340_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl231271231316_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231268231308_))
                                                       (let ((_e231285231343_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231268231308_))))
                 (let ((_hd231284231346_
                        (let () (declare (not safe)) (##car _e231285231343_)))
                       (_tl231283231348_
                        (let () (declare (not safe)) (##cdr _e231285231343_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231283231348_))
                       ((lambda (_L231351_ _L231352_ _L231353_)
                          (let* ((_lambda-id231377_
                                  (let ((__tmp243820
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L231244_)))
                                        (__tmp243818
                                         (let ((__tmp243819
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L231353_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name230809_
                                            __tmp243819))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp243820
                                     '"__"
                                     __tmp243818)))
                                 (_lambda-id231379_
                                  (let ((__tmp243821
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx230806_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id231377_
                                     __tmp243821)))
                                 (_g243822_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id231379_)))
                                 (_new-case-lambda-expr231382_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L231351_
                                     _L231353_
                                     _lambda-id231379_))))
                            (let ((__tmp243824
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L231244_)))
                                  (__tmp243823
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id231379_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp243824
                               '" => "
                               __tmp243823))
                            (let ((__tmp243825
                                   (let ((__tmp243826
                                          (let ((__tmp243834
                                                 (let ((__tmp243835
                                                        (let ((__tmp243836
                                                               (let ((__tmp243839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id231379_ '())))
                             (__tmp243837
                              (let ((__tmp243838
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L231352_))))
                                (declare (not safe))
                                (cons __tmp243838 '()))))
                         (declare (not safe))
                         (cons __tmp243839 __tmp243837))))
                  (declare (not safe))
                  (cons '%#define-values __tmp243836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp243835
                                                    _stx230806_)))
                                                (__tmp243827
                                                 (let ((__tmp243828
                                                        (let ((__tmp243829
                                                               (let ((__tmp243830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp243831
                                     (let ((__tmp243833
                                            (let ()
                                              (declare (not safe))
                                              (cons _L231244_ '())))
                                           (__tmp243832
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr231382_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp243833 __tmp243832))))
                                (declare (not safe))
                                (cons '%#define-values __tmp243831))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp243830 _stx230806_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp243829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp243828 '()))))
                                            (declare (not safe))
                                            (cons __tmp243834 __tmp243827))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp243826))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp243825
                               _stx230806_))))
                        _hd231284231346_
                        _hd231281231338_
                        _hd231278231330_)
                       (let ()
                         (declare (not safe))
                         (_g231260231290_ _g231261231293_)))))
               (let () (declare (not safe)) (_g231260231290_ _g231261231293_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231260231290_
                                                      _g231261231293_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231260231290_
                                                  _g231261231293_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g231260231290_ _g231261231293_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g231260231290_ _g231261231293_)))))
                           (let ()
                             (declare (not safe))
                             (_g231260231290_ _g231261231293_)))))
                   (let ()
                     (declare (not safe))
                     (_g231260231290_ _g231261231293_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231260231290_
                                                      _g231261231293_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g231260231290_
                                              _g231261231293_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g231260231290_ _g231261231293_))))))
                       (declare (not safe))
                       (_g231259231385_ _L231243_))))
                  (___kont243153243154_
                   (lambda (_L230957_ _L230958_)
                     (let* ((_g230974231027_
                             (lambda (_g230975231024_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g230975231024_))))
                            (_g230973231203_
                             (lambda (_g230975231030_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g230975231030_))
                                   (let ((_e230983231032_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g230975231030_))))
                                     (let ((_hd230982231035_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e230983231032_)))
                                           (_tl230981231037_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e230983231032_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl230981231037_))
                                           (let ((_e230986231040_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl230981231037_))))
                                             (let ((_hd230985231043_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230986231040_)))
                                                   (_tl230984231045_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230986231040_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230985231043_))
                                                   (let ((_e230989231048_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230985231043_))))
                                                     (let ((_hd230988231051_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230989231048_)))
                                                           (_tl230987231053_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230989231048_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd230988231051_))
                                                           (let ((_e230992231056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd230988231051_))))
                     (let ((_hd230991231059_
                            (let ()
                              (declare (not safe))
                              (##car _e230992231056_)))
                           (_tl230990231061_
                            (let ()
                              (declare (not safe))
                              (##cdr _e230992231056_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd230991231059_))
                           (let ((_e230995231064_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd230991231059_))))
                             (let ((_hd230994231067_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e230995231064_)))
                                   (_tl230993231069_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e230995231064_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl230993231069_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl230990231061_))
                                       (let ((_e230998231072_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl230990231061_))))
                                         (let ((_hd230997231075_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e230998231072_)))
                                               (_tl230996231077_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e230998231072_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd230997231075_))
                                               (let ((_e231001231080_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd230997231075_))))
                                                 (let ((_hd231000231083_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231001231080_)))
                                                       (_tl230999231085_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231001231080_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230999231085_))
                                                       (let ((_e231004231088_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230999231085_))))
                 (let ((_hd231003231091_
                        (let () (declare (not safe)) (##car _e231004231088_)))
                       (_tl231002231093_
                        (let () (declare (not safe)) (##cdr _e231004231088_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd231003231091_))
                       (let ((_e231007231096_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd231003231091_))))
                         (let ((_hd231006231099_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231007231096_)))
                               (_tl231005231101_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231007231096_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd231006231099_))
                               (let ((_e231010231104_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd231006231099_))))
                                 (let ((_hd231009231107_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231010231104_)))
                                       (_tl231008231109_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231010231104_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd231009231107_))
                                       (let ((_e231013231112_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd231009231107_))))
                                         (let ((_hd231012231115_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231013231112_)))
                                               (_tl231011231117_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231013231112_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231011231117_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl231008231109_))
                                                   (let ((_e231016231120_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl231008231109_))))
                                                     (let ((_hd231015231123_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231016231120_)))
                                                           (_tl231014231125_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231016231120_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231014231125_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl231005231101_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl231002231093_))
                           (let ((_e231019231128_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl231002231093_))))
                             (let ((_hd231018231131_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231019231128_)))
                                   (_tl231017231133_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231019231128_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231017231133_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl230996231077_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl230987231053_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl230984231045_))
                                               (let ((_e231022231136_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl230984231045_))))
                                                 (let ((_hd231021231139_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231022231136_)))
                                                       (_tl231020231141_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231022231136_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl231020231141_))
                                                       ((lambda (_L231144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L231145_
                         _L231146_
                         _L231147_
                         _L231148_)
                  (let* ((_get-kws-id231188_
                          (let ((__tmp243842
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L230958_)))
                                (__tmp243840
                                 (let ((__tmp243841
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231148_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name230810_
                                    __tmp243841
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp243842 '"__" __tmp243840)))
                         (_get-kws-id231190_
                          (let ((__tmp243843
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx230806_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id231188_
                             __tmp243843)))
                         (_main-id231192_
                          (let ((__tmp243846
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L230958_)))
                                (__tmp243844
                                 (let ((__tmp243845
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231147_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name230810_
                                    __tmp243845
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp243846 '"__" __tmp243844)))
                         (_main-id231194_
                          (let ((__tmp243847
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx230806_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id231192_
                             __tmp243847)))
                         (_g243848_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id231190_)))
                         (_g243849_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id231194_)))
                         (_new-kw-dispatch231198_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231144_
                             _L231148_
                             _get-kws-id231190_)))
                         (_new-get-kws231200_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231145_
                             _L231147_
                             _main-id231194_))))
                    (let ((__tmp243852
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L230958_)))
                          (__tmp243851
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id231190_)))
                          (__tmp243850
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id231194_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp243852
                       '" => "
                       __tmp243851
                       '" => "
                       __tmp243850))
                    (let ((__tmp243853
                           (let ((__tmp243854
                                  (let ((__tmp243867
                                         (let ((__tmp243868
                                                (let ((__tmp243869
                                                       (let ((__tmp243870
                                                              (let ((__tmp243872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id231194_ '())))
                            (__tmp243871
                             (let ()
                               (declare (not safe))
                               (cons _L231146_ '()))))
                        (declare (not safe))
                        (cons __tmp243872 __tmp243871))))
                 (declare (not safe))
                 (cons '%#define-values __tmp243870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243869
                                                   _stx230806_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp243868)))
                                        (__tmp243855
                                         (let ((__tmp243862
                                                (let ((__tmp243863
                                                       (let ((__tmp243864
                                                              (let ((__tmp243866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id231190_ '())))
                            (__tmp243865
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws231200_ '()))))
                        (declare (not safe))
                        (cons __tmp243866 __tmp243865))))
                 (declare (not safe))
                 (cons '%#define-values __tmp243864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243863
                                                   _stx230806_)))
                                               (__tmp243856
                                                (let ((__tmp243857
                                                       (let ((__tmp243858
                                                              (let ((__tmp243859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp243861
                                    (let ()
                                      (declare (not safe))
                                      (cons _L230958_ '())))
                                   (__tmp243860
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch231198_ '()))))
                               (declare (not safe))
                               (cons __tmp243861 __tmp243860))))
                        (declare (not safe))
                        (cons '%#define-values __tmp243859))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp243858 _stx230806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp243857 '()))))
                                           (declare (not safe))
                                           (cons __tmp243862 __tmp243856))))
                                    (declare (not safe))
                                    (cons __tmp243867 __tmp243855))))
                             (declare (not safe))
                             (cons '%#begin __tmp243854))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp243853 _stx230806_))))
                _hd231021231139_
                _hd231018231131_
                _hd231015231123_
                _hd231012231115_
                _hd230994231067_)
               (let ()
                 (declare (not safe))
                 (_g230974231027_ _g230975231030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230974231027_
                                                  _g230975231030_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g230974231027_
                                              _g230975231030_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g230974231027_ _g230975231030_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230974231027_ _g230975231030_)))))
                           (let ()
                             (declare (not safe))
                             (_g230974231027_ _g230975231030_)))
                       (let ()
                         (declare (not safe))
                         (_g230974231027_ _g230975231030_)))
                   (let ()
                     (declare (not safe))
                     (_g230974231027_ _g230975231030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230974231027_
                                                      _g230975231030_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230974231027_
                                                  _g230975231030_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230974231027_ _g230975231030_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g230974231027_ _g230975231030_)))))
                       (let ()
                         (declare (not safe))
                         (_g230974231027_ _g230975231030_)))))
               (let ()
                 (declare (not safe))
                 (_g230974231027_ _g230975231030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230974231027_
                                                  _g230975231030_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230974231027_ _g230975231030_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230974231027_ _g230975231030_)))))
                           (let ()
                             (declare (not safe))
                             (_g230974231027_ _g230975231030_)))))
                   (let ()
                     (declare (not safe))
                     (_g230974231027_ _g230975231030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230974231027_
                                                      _g230975231030_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g230974231027_
                                              _g230975231030_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g230974231027_ _g230975231030_))))))
                       (declare (not safe))
                       (_g230973231203_ _L230957_))))
                  (___kont243155243156_
                   (lambda (_L230903_ _L230904_)
                     (let ((__tmp243873
                            (let ((__tmp243874
                                   (let ((__tmp243875
                                          (let ((__tmp243876
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L230903_))))
                                            (declare (not safe))
                                            (cons __tmp243876 '()))))
                                     (declare (not safe))
                                     (cons _L230904_ __tmp243875))))
                              (declare (not safe))
                              (cons '%#define-values __tmp243874))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp243873 _stx230806_)))))
              (let* ((___match243240243241_
                      (lambda (_e230849230925_
                               _hd230848230928_
                               _tl230847230930_
                               _e230852230933_
                               _hd230851230936_
                               _tl230850230938_
                               _e230855230941_
                               _hd230854230944_
                               _tl230853230946_
                               _e230858230949_
                               _hd230857230952_
                               _tl230856230954_)
                        (let ((_L230957_ _hd230857230952_)
                              (_L230958_ _hd230854230944_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L230958_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L230957_)))
                              (___kont243153243154_ _L230957_ _L230958_)
                              (___kont243155243156_
                               _hd230857230952_
                               _hd230851230936_)))))
                     (___match243212243213_
                      (lambda (_e230835231211_
                               _hd230834231214_
                               _tl230833231216_
                               _e230838231219_
                               _hd230837231222_
                               _tl230836231224_
                               _e230841231227_
                               _hd230840231230_
                               _tl230839231232_
                               _e230844231235_
                               _hd230843231238_
                               _tl230842231240_)
                        (let ((_L231243_ _hd230843231238_)
                              (_L231244_ _hd230840231230_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231244_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L231243_)))
                              (___kont243151243152_ _L231243_ _L231244_)
                              (___match243240243241_
                               _e230835231211_
                               _hd230834231214_
                               _tl230833231216_
                               _e230838231219_
                               _hd230837231222_
                               _tl230836231224_
                               _e230841231227_
                               _hd230840231230_
                               _tl230839231232_
                               _e230844231235_
                               _hd230843231238_
                               _tl230842231240_)))))
                     (___match243184243185_
                      (lambda (_e230821231393_
                               _hd230820231396_
                               _tl230819231398_
                               _e230824231401_
                               _hd230823231404_
                               _tl230822231406_
                               _e230827231409_
                               _hd230826231412_
                               _tl230825231414_
                               _e230830231417_
                               _hd230829231420_
                               _tl230828231422_)
                        (let ((_L231425_ _hd230829231420_)
                              (_L231426_ _hd230826231412_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231426_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L231425_)))
                              (___kont243149243150_ _L231425_ _L231426_)
                              (___match243212243213_
                               _e230821231393_
                               _hd230820231396_
                               _tl230819231398_
                               _e230824231401_
                               _hd230823231404_
                               _tl230822231406_
                               _e230827231409_
                               _hd230826231412_
                               _tl230825231414_
                               _e230830231417_
                               _hd230829231420_
                               _tl230828231422_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243147243148_))
                    (let ((_e230821231393_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243147243148_))))
                      (let ((_tl230819231398_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230821231393_)))
                            (_hd230820231396_
                             (let ()
                               (declare (not safe))
                               (##car _e230821231393_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230819231398_))
                            (let ((_e230824231401_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230819231398_))))
                              (let ((_tl230822231406_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230824231401_)))
                                    (_hd230823231404_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230824231401_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230823231404_))
                                    (let ((_e230827231409_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230823231404_))))
                                      (let ((_tl230825231414_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230827231409_)))
                                            (_hd230826231412_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230827231409_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230825231414_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230822231406_))
                                                (let ((_e230830231417_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230822231406_))))
                                                  (let ((_tl230828231422_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230830231417_)))
                                                        (_hd230829231420_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230830231417_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230828231422_))
                                                        (___match243184243185_
                                                         _e230821231393_
                                                         _hd230820231396_
                                                         _tl230819231398_
                                                         _e230824231401_
                                                         _hd230823231404_
                                                         _tl230822231406_
                                                         _e230827231409_
                                                         _hd230826231412_
                                                         _tl230825231414_
                                                         _e230830231417_
                                                         _hd230829231420_
                                                         _tl230828231422_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230815230874_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230815230874_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230822231406_))
                                                (let ((_e230869230895_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230822231406_))))
                                                  (let ((_tl230867230900_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230869230895_)))
                                                        (_hd230868230898_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230869230895_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230867230900_))
                                                        (___kont243155243156_
                                                         _hd230868230898_
                                                         _hd230823231404_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230815230874_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230815230874_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl230822231406_))
                                        (let ((_e230869230895_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl230822231406_))))
                                          (let ((_tl230867230900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230869230895_)))
                                                (_hd230868230898_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230869230895_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230867230900_))
                                                (___kont243155243156_
                                                 _hd230868230898_
                                                 _hd230823231404_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230815230874_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g230815230874_))))))
                            (let () (declare (not safe)) (_g230815230874_)))))
                    (let () (declare (not safe)) (_g230815230874_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx229738_)
        (letrec* ((_bind-e__241543241544_
                   (lambda (_id230790_ _expr230791_ _compile?230792_)
                     (let ((__tmp243879
                            (let ()
                              (declare (not safe))
                              (cons _id230790_ '())))
                           (__tmp243877
                            (let ((__tmp243878
                                   (if _compile?230792_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr230791_))
                                       _expr230791_)))
                              (declare (not safe))
                              (cons __tmp243878 '()))))
                       (declare (not safe))
                       (cons __tmp243879 __tmp243877))))
                  (_bind-e__0__241545241546_
                   (lambda (_id230797_ _expr230798_)
                     (let ((_compile?230800_ '#t))
                       (declare (not safe))
                       (_bind-e__241543241544_
                        _id230797_
                        _expr230798_
                        _compile?230800_))))
                  (_bind-e229740_
                   (lambda _g243881_
                     (let ((_g243880_
                            (let ()
                              (declare (not safe))
                              (##length _g243881_))))
                       (cond ((let () (declare (not safe)) (##fx= _g243880_ 2))
                              (apply (lambda (_id230797_ _expr230798_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__241545241546_
                                          _id230797_
                                          _expr230798_)))
                                     _g243881_))
                             ((let () (declare (not safe)) (##fx= _g243880_ 3))
                              (apply (lambda (_id230802_
                                              _expr230803_
                                              _compile?230804_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__241543241544_
                                          _id230802_
                                          _expr230803_
                                          _compile?230804_)))
                                     _g243881_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g243881_))))))
                  (_compile-bindings229741_
                   (lambda (_bindings230374_)
                     (let _lp230376_ ((_rest230378_ _bindings230374_)
                                      (_lift1230379_ '())
                                      (_lift2230380_ '())
                                      (_bind230381_ '()))
                       (let* ((_rest230382230390_ _rest230378_)
                              (_else230384230398_
                               (lambda ()
                                 (values (reverse _lift1230379_)
                                         (reverse _lift2230380_)
                                         (reverse _bind230381_))))
                              (_K230386230777_
                               (lambda (_rest230401_ _hd230402_)
                                 (let* ((___stx243283243284_ _hd230402_)
                                        (_g230406230442_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243283243284_)))))
                                   (let ((___kont243285243286_
                                          (lambda (_L230684_ _L230685_)
                                            (let* ((___stx243263243264_
                                                    _L230684_)
                                                   (_g230700230714_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243263243264_)))))
                                              (let ((___kont243265243266_
                                                     (lambda (_L230762_)
                                                       (let ((__tmp243882
                                                              (let ((__tmp243883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__241543241544_
                                _L230685_
                                _L230684_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp243883 _bind230381_))))
                 (declare (not safe))
                 (_lp230376_
                  _rest230401_
                  _lift1230379_
                  _lift2230380_
                  __tmp243882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243267243268_
                                                     (lambda (_L230727_)
                                                       (let ((_g243884_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx229738_
                         _L230685_
                         _L230727_
                         '#t))))
                 (begin
                   (let ((_g243885_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g243884_)
                                (##vector-length _g243884_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g243885_ 3)))
                         (error "Context expects 3 values" _g243885_)))
                   (let ((_ids230737_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243884_ 0)))
                         (_impls230738_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243884_ 1)))
                         (_clauses230739_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243884_ 2))))
                     (let* ((_g243886_
                             (for-each gx#core-bind-runtime! _ids230737_))
                            (_xbind230742_
                             (map _bind-e229740_ _ids230737_ _impls230738_))
                            (_expr*230744_
                             (let ((__tmp243888
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses230739_)))
                                   (__tmp243887
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp243888
                                __tmp243887)))
                            (_bind*230746_
                             (let ()
                               (declare (not safe))
                               (_bind-e__241543241544_
                                _L230685_
                                _expr*230744_
                                '#f))))
                       (let ((__tmp243890
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L230685_)))
                             (__tmp243889
                              (map gxc#identifier-symbol _ids230737_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp243890
                          '" => "
                          __tmp243889))
                       (let ((__tmp243892
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2230380_ _xbind230742_)))
                             (__tmp243891
                              (let ()
                                (declare (not safe))
                                (cons _bind*230746_ _bind230381_))))
                         (declare (not safe))
                         (_lp230376_
                          _rest230401_
                          _lift1230379_
                          __tmp243892
                          __tmp243891)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match243274243275_
                                                       (lambda (_e230705230754_
                                                                _hd230704230757_
                                                                _tl230703230759_)
                                                         (let ((_L230762_
                                                                _tl230703230759_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L230762_))
                       (___kont243265243266_ _L230762_)
                       (___kont243267243268_ _tl230703230759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx243263243264_))
                                                      (let ((_e230705230754_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx243263243264_))))
                (let ((_tl230703230759_
                       (let () (declare (not safe)) (##cdr _e230705230754_)))
                      (_hd230704230757_
                       (let () (declare (not safe)) (##car _e230705230754_))))
                  (___match243274243275_
                   _e230705230754_
                   _hd230704230757_
                   _tl230703230759_)))
              (let () (declare (not safe)) (_g230700230714_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont243287243288_
                                          (lambda (_L230512_ _L230513_)
                                            (let* ((_g230527230557_
                                                    (lambda (_g230528230554_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230528230554_))))
                                                   (_g230526230652_
                                                    (lambda (_g230528230560_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230528230560_))
                                                          (let ((_e230534230562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230528230560_))))
                    (let ((_hd230533230565_
                           (let ()
                             (declare (not safe))
                             (##car _e230534230562_)))
                          (_tl230532230567_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230534230562_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230532230567_))
                          (let ((_e230537230570_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230532230567_))))
                            (let ((_hd230536230573_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230537230570_)))
                                  (_tl230535230575_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230537230570_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230536230573_))
                                  (let ((_e230540230578_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230536230573_))))
                                    (let ((_hd230539230581_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230540230578_)))
                                          (_tl230538230583_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230540230578_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230539230581_))
                                          (let ((_e230543230586_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230539230581_))))
                                            (let ((_hd230542230589_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230543230586_)))
                                                  (_tl230541230591_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230543230586_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230542230589_))
                                                  (let ((_e230546230594_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230542230589_))))
                                                    (let ((_hd230545230597_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230546230594_)))
                                                          (_tl230544230599_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230546230594_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230544230599_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230541230591_))
                      (let ((_e230549230602_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230541230591_))))
                        (let ((_hd230548230605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230549230602_)))
                              (_tl230547230607_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230549230602_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230547230607_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230538230583_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230535230575_))
                                      (let ((_e230552230610_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230535230575_))))
                                        (let ((_hd230551230613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230552230610_)))
                                              (_tl230550230615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230552230610_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230550230615_))
                                              ((lambda (_L230618_
                                                        _L230619_
                                                        _L230620_)
                                                 (let* ((_lambda-id230644_
                                                         (let ((__tmp243894
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L230513_)))
                       (__tmp243893 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp243894 __tmp243893)))
                (_lambda-id230646_
                 (let ((__tmp243895
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx229738_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id230644_ __tmp243895)))
                (_g243896_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id230646_)))
                (_new-case-lambda-expr230649_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L230618_
                    _L230620_
                    _lambda-id230646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp243898
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L230513_)))
                                                         (__tmp243897
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id230646_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp243898
                                                      '" => "
                                                      __tmp243897))
                                                   (let ((__tmp243901
                                                          (let ((__tmp243902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__241543241544_
                            _L230513_
                            _new-case-lambda-expr230649_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp243902 _rest230401_)))
                 (__tmp243899
                  (let ((__tmp243900
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__241545241546_
                            _lambda-id230646_
                            _L230619_))))
                    (declare (not safe))
                    (cons __tmp243900 _lift1230379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp230376_
                                                      __tmp243901
                                                      __tmp243899
                                                      _lift2230380_
                                                      _bind230381_))))
                                               _hd230551230613_
                                               _hd230548230605_
                                               _hd230545230597_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230527230557_
                                                 _g230528230560_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230527230557_ _g230528230560_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230527230557_ _g230528230560_)))
                              (let ()
                                (declare (not safe))
                                (_g230527230557_ _g230528230560_)))))
                      (let ()
                        (declare (not safe))
                        (_g230527230557_ _g230528230560_)))
                  (let ()
                    (declare (not safe))
                    (_g230527230557_ _g230528230560_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230527230557_
                                                     _g230528230560_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230527230557_
                                             _g230528230560_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230527230557_ _g230528230560_)))))
                          (let ()
                            (declare (not safe))
                            (_g230527230557_ _g230528230560_)))))
                  (let ()
                    (declare (not safe))
                    (_g230527230557_ _g230528230560_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230526230652_ _L230512_))))
                                         (___kont243289243290_
                                          (lambda (_L230463_ _L230464_)
                                            (let ((__tmp243903
                                                   (let ((__tmp243904
                                                          (let ((__tmp243905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp243906
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L230463_))))
                           (declare (not safe))
                           (cons __tmp243906 '()))))
                    (declare (not safe))
                    (cons _L230464_ __tmp243905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp243904
                                                           _bind230381_))))
                                              (declare (not safe))
                                              (_lp230376_
                                               _rest230401_
                                               _lift1230379_
                                               _lift2230380_
                                               __tmp243903)))))
                                     (let* ((___match243334243335_
                                             (lambda (_e230423230488_
                                                      _hd230422230491_
                                                      _tl230421230493_
                                                      _e230426230496_
                                                      _hd230425230499_
                                                      _tl230424230501_
                                                      _e230429230504_
                                                      _hd230428230507_
                                                      _tl230427230509_)
                                               (let ((_L230512_
                                                      _hd230428230507_)
                                                     (_L230513_
                                                      _hd230425230499_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230513_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L230512_)))
                                                     (___kont243287243288_
                                                      _L230512_
                                                      _L230513_)
                                                     (___kont243289243290_
                                                      _hd230428230507_
                                                      _hd230422230491_)))))
                                            (___match243312243313_
                                             (lambda (_e230412230660_
                                                      _hd230411230663_
                                                      _tl230410230665_
                                                      _e230415230668_
                                                      _hd230414230671_
                                                      _tl230413230673_
                                                      _e230418230676_
                                                      _hd230417230679_
                                                      _tl230416230681_)
                                               (let ((_L230684_
                                                      _hd230417230679_)
                                                     (_L230685_
                                                      _hd230414230671_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230685_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L230684_)))
                                                     (___kont243285243286_
                                                      _L230684_
                                                      _L230685_)
                                                     (___match243334243335_
                                                      _e230412230660_
                                                      _hd230411230663_
                                                      _tl230410230665_
                                                      _e230415230668_
                                                      _hd230414230671_
                                                      _tl230413230673_
                                                      _e230418230676_
                                                      _hd230417230679_
                                                      _tl230416230681_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243283243284_))
                                           (let ((_e230412230660_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243283243284_))))
                                             (let ((_tl230410230665_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230412230660_)))
                                                   (_hd230411230663_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230412230660_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230411230663_))
                                                   (let ((_e230415230668_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230411230663_))))
                                                     (let ((_tl230413230673_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230415230668_)))
                                                           (_hd230414230671_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230415230668_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230413230673_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230410230665_))
                       (let ((_e230418230676_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230410230665_))))
                         (let ((_tl230416230681_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230418230676_)))
                               (_hd230417230679_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230418230676_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230416230681_))
                               (___match243312243313_
                                _e230412230660_
                                _hd230411230663_
                                _tl230410230665_
                                _e230415230668_
                                _hd230414230671_
                                _tl230413230673_
                                _e230418230676_
                                _hd230417230679_
                                _tl230416230681_)
                               (let ()
                                 (declare (not safe))
                                 (_g230406230442_)))))
                       (let () (declare (not safe)) (_g230406230442_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230410230665_))
                       (let ((_e230437230455_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230410230665_))))
                         (let ((_tl230435230460_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230437230455_)))
                               (_hd230436230458_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230437230455_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230435230460_))
                               (___kont243289243290_
                                _hd230436230458_
                                _hd230411230663_)
                               (let ()
                                 (declare (not safe))
                                 (_g230406230442_)))))
                       (let () (declare (not safe)) (_g230406230442_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230410230665_))
                                                       (let ((_e230437230455_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230410230665_))))
                 (let ((_tl230435230460_
                        (let () (declare (not safe)) (##cdr _e230437230455_)))
                       (_hd230436230458_
                        (let () (declare (not safe)) (##car _e230437230455_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230435230460_))
                       (___kont243289243290_ _hd230436230458_ _hd230411230663_)
                       (let () (declare (not safe)) (_g230406230442_)))))
               (let () (declare (not safe)) (_g230406230442_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230406230442_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230382230390_))
                             (let ((_hd230387230780_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230382230390_)))
                                   (_tl230388230782_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230382230390_))))
                               (let* ((_hd230785_ _hd230387230780_)
                                      (_rest230787_ _tl230388230782_))
                                 (declare (not safe))
                                 (_K230386230777_ _rest230787_ _hd230785_)))
                             (let ()
                               (declare (not safe))
                               (_else230384230398_)))))))
                  (_lift-kw-lambda?229742_
                   (lambda (_bind230298_)
                     (let* ((___stx243351243352_ _bind230298_)
                            (_g230301230318_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243351243352_)))))
                       (let ((___kont243353243354_
                              (lambda (_L230354_ _L230355_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L230355_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L230354_))
                                    '#f)))
                             (___kont243355243356_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx243351243352_))
                             (let ((_e230307230330_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx243351243352_))))
                               (let ((_tl230305230335_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e230307230330_)))
                                     (_hd230306230333_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e230307230330_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd230306230333_))
                                     (let ((_e230310230338_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd230306230333_))))
                                       (let ((_tl230308230343_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e230310230338_)))
                                             (_hd230309230341_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e230310230338_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl230308230343_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl230305230335_))
                                                 (let ((_e230313230346_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl230305230335_))))
                                                   (let ((_tl230311230351_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e230313230346_)))
                                                         (_hd230312230349_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e230313230346_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl230311230351_))
                                                         (___kont243353243354_
                                                          _hd230312230349_
                                                          _hd230309230341_)
                                                         (___kont243355243356_))))
                                                 (___kont243355243356_))
                                             (___kont243355243356_))))
                                     (___kont243355243356_))))
                             (___kont243355243356_))))))
                  (_lift-kw-lambda-bindings229743_
                   (lambda (_bindings229910_)
                     (let _lp229912_ ((_rest229914_ _bindings229910_)
                                      (_lift1229915_ '())
                                      (_lift2229916_ '())
                                      (_bind229917_ '()))
                       (let* ((_rest229918229926_ _rest229914_)
                              (_else229920229934_
                               (lambda ()
                                 (values (reverse _lift1229915_)
                                         (reverse _lift2229916_)
                                         (reverse _bind229917_))))
                              (_K229922230286_
                               (lambda (_rest229937_ _hd229938_)
                                 (let* ((___stx243381243382_ _hd229938_)
                                        (_g229941229966_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243381243382_)))))
                                   (let ((___kont243383243384_
                                          (lambda (_L230036_ _L230037_)
                                            (let* ((_g230051230104_
                                                    (lambda (_g230052230101_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230052230101_))))
                                                   (_g230050230280_
                                                    (lambda (_g230052230107_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230052230107_))
                                                          (let ((_e230060230109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230052230107_))))
                    (let ((_hd230059230112_
                           (let ()
                             (declare (not safe))
                             (##car _e230060230109_)))
                          (_tl230058230114_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230060230109_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230058230114_))
                          (let ((_e230063230117_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230058230114_))))
                            (let ((_hd230062230120_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230063230117_)))
                                  (_tl230061230122_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230063230117_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230062230120_))
                                  (let ((_e230066230125_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230062230120_))))
                                    (let ((_hd230065230128_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230066230125_)))
                                          (_tl230064230130_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230066230125_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230065230128_))
                                          (let ((_e230069230133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230065230128_))))
                                            (let ((_hd230068230136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230069230133_)))
                                                  (_tl230067230138_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230069230133_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230068230136_))
                                                  (let ((_e230072230141_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230068230136_))))
                                                    (let ((_hd230071230144_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230072230141_)))
                                                          (_tl230070230146_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230072230141_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230070230146_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230067230138_))
                      (let ((_e230075230149_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230067230138_))))
                        (let ((_hd230074230152_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230075230149_)))
                              (_tl230073230154_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230075230149_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230074230152_))
                              (let ((_e230078230157_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230074230152_))))
                                (let ((_hd230077230160_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230078230157_)))
                                      (_tl230076230162_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230078230157_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230076230162_))
                                      (let ((_e230081230165_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230076230162_))))
                                        (let ((_hd230080230168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230081230165_)))
                                              (_tl230079230170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230081230165_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd230080230168_))
                                              (let ((_e230084230173_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd230080230168_))))
                                                (let ((_hd230083230176_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230084230173_)))
                                                      (_tl230082230178_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230084230173_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230083230176_))
                                                      (let ((_e230087230181_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230083230176_))))
                (let ((_hd230086230184_
                       (let () (declare (not safe)) (##car _e230087230181_)))
                      (_tl230085230186_
                       (let () (declare (not safe)) (##cdr _e230087230181_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230086230184_))
                      (let ((_e230090230189_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230086230184_))))
                        (let ((_hd230089230192_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230090230189_)))
                              (_tl230088230194_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230090230189_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230088230194_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230085230186_))
                                  (let ((_e230093230197_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230085230186_))))
                                    (let ((_hd230092230200_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230093230197_)))
                                          (_tl230091230202_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230093230197_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230091230202_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230082230178_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230079230170_))
                                                  (let ((_e230096230205_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230079230170_))))
                                                    (let ((_hd230095230208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230096230205_)))
                                                          (_tl230094230210_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230096230205_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230094230210_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230073230154_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230064230130_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230061230122_))
                              (let ((_e230099230213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230061230122_))))
                                (let ((_hd230098230216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230099230213_)))
                                      (_tl230097230218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230099230213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230097230218_))
                                      ((lambda (_L230221_
                                                _L230222_
                                                _L230223_
                                                _L230224_
                                                _L230225_)
                                         (let* ((_get-kws-id230265_
                                                 (let ((__tmp243908
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230037_)))
                                                       (__tmp243907
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243908
                                                    __tmp243907)))
                                                (_get-kws-id230267_
                                                 (let ((__tmp243909
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229738_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id230265_
                                                    __tmp243909)))
                                                (_main-id230269_
                                                 (let ((__tmp243911
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230037_)))
                                                       (__tmp243910
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243911
                                                    __tmp243910)))
                                                (_main-id230271_
                                                 (let ((__tmp243912
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229738_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id230269_
                                                    __tmp243912)))
                                                (_g243913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id230267_)))
                                                (_g243914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id230271_)))
                                                (_new-kw-dispatch230275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230221_
                                                    _L230225_
                                                    _get-kws-id230267_)))
                                                (_new-get-kws230277_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230222_
                                                    _L230224_
                                                    _main-id230271_))))
                                           (let ((__tmp243917
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L230037_)))
                                                 (__tmp243916
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id230267_)))
                                                 (__tmp243915
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id230271_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp243917
                                              '" => "
                                              __tmp243916
                                              '" => "
                                              __tmp243915))
                                           (let ((__tmp243922
                                                  (let ((__tmp243923
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241543241544_
                                                            _main-id230271_
                                                            _L230223_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243923
                                                          _lift1229915_)))
                                                 (__tmp243920
                                                  (let ((__tmp243921
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241543241544_
                                                            _get-kws-id230267_
                                                            _new-get-kws230277_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243921
                                                          _lift2229916_)))
                                                 (__tmp243918
                                                  (let ((__tmp243919
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241543241544_
                                                            _L230037_
                                                            _new-kw-dispatch230275_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243919
                                                          _bind229917_))))
                                             (declare (not safe))
                                             (_lp229912_
                                              _rest229937_
                                              __tmp243922
                                              __tmp243920
                                              __tmp243918))))
                                       _hd230098230216_
                                       _hd230095230208_
                                       _hd230092230200_
                                       _hd230089230192_
                                       _hd230071230144_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230051230104_ _g230052230107_)))))
                              (let ()
                                (declare (not safe))
                                (_g230051230104_ _g230052230107_)))
                          (let ()
                            (declare (not safe))
                            (_g230051230104_ _g230052230107_)))
                      (let ()
                        (declare (not safe))
                        (_g230051230104_ _g230052230107_)))
                  (let ()
                    (declare (not safe))
                    (_g230051230104_ _g230052230107_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230051230104_
                                                     _g230052230107_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230051230104_
                                                 _g230052230107_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230051230104_
                                             _g230052230107_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230051230104_ _g230052230107_)))
                              (let ()
                                (declare (not safe))
                                (_g230051230104_ _g230052230107_)))))
                      (let ()
                        (declare (not safe))
                        (_g230051230104_ _g230052230107_)))))
              (let ()
                (declare (not safe))
                (_g230051230104_ _g230052230107_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g230051230104_
                                                 _g230052230107_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230051230104_ _g230052230107_)))))
                              (let ()
                                (declare (not safe))
                                (_g230051230104_ _g230052230107_)))))
                      (let ()
                        (declare (not safe))
                        (_g230051230104_ _g230052230107_)))
                  (let ()
                    (declare (not safe))
                    (_g230051230104_ _g230052230107_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230051230104_
                                                     _g230052230107_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230051230104_
                                             _g230052230107_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230051230104_ _g230052230107_)))))
                          (let ()
                            (declare (not safe))
                            (_g230051230104_ _g230052230107_)))))
                  (let ()
                    (declare (not safe))
                    (_g230051230104_ _g230052230107_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230050230280_ _L230036_))))
                                         (___kont243385243386_
                                          (lambda (_L229987_ _L229988_)
                                            (let ((__tmp243924
                                                   (let ((__tmp243925
                                                          (let ((__tmp243926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L229987_ '()))))
                    (declare (not safe))
                    (cons _L229988_ __tmp243926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp243925
                                                           _bind229917_))))
                                              (declare (not safe))
                                              (_lp229912_
                                               _rest229937_
                                               _lift1229915_
                                               _lift2229916_
                                               __tmp243924)))))
                                     (let ((___match243408243409_
                                            (lambda (_e229947230012_
                                                     _hd229946230015_
                                                     _tl229945230017_
                                                     _e229950230020_
                                                     _hd229949230023_
                                                     _tl229948230025_
                                                     _e229953230028_
                                                     _hd229952230031_
                                                     _tl229951230033_)
                                              (let ((_L230036_
                                                     _hd229952230031_)
                                                    (_L230037_
                                                     _hd229949230023_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L230037_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L230036_)))
                                                    (___kont243383243384_
                                                     _L230036_
                                                     _L230037_)
                                                    (___kont243385243386_
                                                     _hd229952230031_
                                                     _hd229946230015_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243381243382_))
                                           (let ((_e229947230012_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243381243382_))))
                                             (let ((_tl229945230017_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229947230012_)))
                                                   (_hd229946230015_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229947230012_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229946230015_))
                                                   (let ((_e229950230020_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229946230015_))))
                                                     (let ((_tl229948230025_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229950230020_)))
                                                           (_hd229949230023_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229950230020_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229948230025_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229945230017_))
                       (let ((_e229953230028_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229945230017_))))
                         (let ((_tl229951230033_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229953230028_)))
                               (_hd229952230031_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229953230028_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229951230033_))
                               (___match243408243409_
                                _e229947230012_
                                _hd229946230015_
                                _tl229945230017_
                                _e229950230020_
                                _hd229949230023_
                                _tl229948230025_
                                _e229953230028_
                                _hd229952230031_
                                _tl229951230033_)
                               (let ()
                                 (declare (not safe))
                                 (_g229941229966_)))))
                       (let () (declare (not safe)) (_g229941229966_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229945230017_))
                       (let ((_e229961229979_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229945230017_))))
                         (let ((_tl229959229984_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229961229979_)))
                               (_hd229960229982_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229961229979_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229959229984_))
                               (___kont243385243386_
                                _hd229960229982_
                                _hd229946230015_)
                               (let ()
                                 (declare (not safe))
                                 (_g229941229966_)))))
                       (let () (declare (not safe)) (_g229941229966_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229945230017_))
                                                       (let ((_e229961229979_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229945230017_))))
                 (let ((_tl229959229984_
                        (let () (declare (not safe)) (##cdr _e229961229979_)))
                       (_hd229960229982_
                        (let () (declare (not safe)) (##car _e229961229979_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229959229984_))
                       (___kont243385243386_ _hd229960229982_ _hd229946230015_)
                       (let () (declare (not safe)) (_g229941229966_)))))
               (let () (declare (not safe)) (_g229941229966_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229941229966_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229918229926_))
                             (let ((_hd229923230289_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229918229926_)))
                                   (_tl229924230291_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229918229926_))))
                               (let* ((_hd230294_ _hd229923230289_)
                                      (_rest230296_ _tl229924230291_))
                                 (declare (not safe))
                                 (_K229922230286_ _rest230296_ _hd230294_)))
                             (let ()
                               (declare (not safe))
                               (_else229920229934_))))))))
          (let* ((___stx243425243426_ _stx229738_)
                 (_g229746229772_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243425243426_)))))
            (let ((___kont243427243428_
                   (lambda (_L229832_ _L229833_)
                     (let ((__tmp243928
                            (lambda ()
                              (if (let ((__tmp243955
                                         (let ((__tmp243956
                                                (lambda (_g229861229864_
                                                         _g229862229866_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g229861229864_
                                                          _g229862229866_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp243956
                                                   '()
                                                   _L229833_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?229742_
                                            __tmp243955))
                                  (let ((_g243942_
                                         (let ((__tmp243944
                                                (let ((__tmp243945
                                                       (lambda (_g229868229871_
                                                                _g229869229873_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g229868229871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g229869229873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp243945
                                                          '()
                                                          _L229833_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings229743_
                                            __tmp243944))))
                                    (begin
                                      (let ((_g243943_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g243942_)
                                                   (##vector-length _g243942_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g243943_ 3)))
                                            (error "Context expects 3 values"
                                                   _g243943_)))
                                      (let ((_lift1229876_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243942_ 0)))
                                            (_lift2229877_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243942_ 1)))
                                            (_hd229878_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243942_ 2))))
                                        (let* ((_expr229880_
                                                (let ((__tmp243946
                                                       (let ((__tmp243947
                                                              (let ((__tmp243948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L229832_ '()))))
                        (declare (not safe))
                        (cons _hd229878_ __tmp243948))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243946
                                                   _stx229738_)))
                                               (_expr229882_
                                                (let ((__tmp243949
                                                       (let ((__tmp243950
                                                              (let ((__tmp243951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr229880_ '()))))
                        (declare (not safe))
                        (cons _lift2229877_ __tmp243951))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243949
                                                   _stx229738_)))
                                               (_expr229884_
                                                (let ((__tmp243952
                                                       (let ((__tmp243953
                                                              (let ((__tmp243954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr229882_ '()))))
                        (declare (not safe))
                        (cons _lift1229876_ __tmp243954))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243952
                                                   _stx229738_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr229884_))))))
                                  (let ((_g243929_
                                         (let ((__tmp243931
                                                (let ((__tmp243932
                                                       (lambda (_g229886229889_
                                                                _g229887229891_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g229886229889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g229887229891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp243932
                                                          '()
                                                          _L229833_))))
                                           (declare (not safe))
                                           (_compile-bindings229741_
                                            __tmp243931))))
                                    (begin
                                      (let ((_g243930_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g243929_)
                                                   (##vector-length _g243929_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g243930_ 3)))
                                            (error "Context expects 3 values"
                                                   _g243930_)))
                                      (let ((_lift1229894_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243929_ 0)))
                                            (_lift2229895_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243929_ 1)))
                                            (_hd229896_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243929_ 2))))
                                        (let* ((_body229898_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L229832_)))
                                               (_expr229900_
                                                (let ((__tmp243933
                                                       (let ((__tmp243934
                                                              (let ((__tmp243935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body229898_ '()))))
                        (declare (not safe))
                        (cons _hd229896_ __tmp243935))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243933
                                                   _stx229738_)))
                                               (_expr229902_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2229895_))
                                                    _expr229900_
                                                    (let ((__tmp243936
                                                           (let ((__tmp243937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243938
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr229900_ '()))))
                            (declare (not safe))
                            (cons _lift2229895_ __tmp243938))))
                     (declare (not safe))
                     (cons '%#let-values __tmp243937))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp243936 _stx229738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr229904_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1229894_))
                                                    _expr229902_
                                                    (let ((__tmp243939
                                                           (let ((__tmp243940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243941
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr229902_ '()))))
                            (declare (not safe))
                            (cons _lift1229894_ __tmp243941))))
                     (declare (not safe))
                     (cons '%#let-values __tmp243940))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp243939 _stx229738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr229904_)))))))
                           (__tmp243927
                            (let ((__obj243631
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj243631)
                              __obj243631)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp243928
                        gx#current-expander-context
                        __tmp243927))))
                  (___kont243431243432_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx229738_)))))
              (let ((___match243452243453_
                     (lambda (_e229752229784_
                              _hd229751229787_
                              _tl229750229789_
                              _e229755229792_
                              _hd229754229795_
                              _tl229753229797_
                              ___splice243429243430_
                              _target229756229800_
                              _tl229758229802_)
                       (letrec ((_loop229759229805_
                                 (lambda (_hd229757229808_ _bind229763229810_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd229757229808_))
                                       (let ((_e229760229813_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd229757229808_))))
                                         (let ((_lp-tl229762229818_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e229760229813_)))
                                               (_lp-hd229761229816_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e229760229813_))))
                                           (let ((__tmp243959
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd229761229816_
                                                          _bind229763229810_))))
                                             (declare (not safe))
                                             (_loop229759229805_
                                              _lp-tl229762229818_
                                              __tmp243959))))
                                       (let ((_bind229764229821_
                                              (reverse _bind229763229810_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl229753229797_))
                                             (let ((_e229767229824_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl229753229797_))))
                                               (let ((_tl229765229829_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e229767229824_)))
                                                     (_hd229766229827_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e229767229824_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl229765229829_))
                                                     (let ((_L229832_
                                                            _hd229766229827_)
                                                           (_L229833_
                                                            _bind229764229821_))
                                                       (if (let ((__tmp243957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243958
                                 (lambda (_g229853229856_ _g229854229858_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g229853229856_ _g229854229858_)))))
                            (declare (not safe))
                            (foldr1 __tmp243958 '() _L229833_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp243957))
                   (___kont243427243428_ _L229832_ _L229833_)
                   (___kont243431243432_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243431243432_))))
                                             (___kont243431243432_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop229759229805_ _target229756229800_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243425243426_))
                    (let ((_e229752229784_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243425243426_))))
                      (let ((_tl229750229789_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229752229784_)))
                            (_hd229751229787_
                             (let ()
                               (declare (not safe))
                               (##car _e229752229784_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229750229789_))
                            (let ((_e229755229792_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229750229789_))))
                              (let ((_tl229753229797_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229755229792_)))
                                    (_hd229754229795_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229755229792_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd229754229795_))
                                    (let ((___splice243429243430_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd229754229795_
                                              '0))))
                                      (let ((_tl229758229802_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243429243430_
                                                '1)))
                                            (_target229756229800_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243429243430_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229758229802_))
                                            (___match243452243453_
                                             _e229752229784_
                                             _hd229751229787_
                                             _tl229750229789_
                                             _e229755229792_
                                             _hd229754229795_
                                             _tl229753229797_
                                             ___splice243429243430_
                                             _target229756229800_
                                             _tl229758229802_)
                                            (___kont243431243432_))))
                                    (___kont243431243432_))))
                            (___kont243431243432_))))
                    (___kont243431243432_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx228882_)
        (letrec* ((_bind-e__241548241549_
                   (lambda (_id229722_ _expr229723_ _compile?229724_)
                     (let ((__tmp243962
                            (let ()
                              (declare (not safe))
                              (cons _id229722_ '())))
                           (__tmp243960
                            (let ((__tmp243961
                                   (if _compile?229724_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr229723_))
                                       _expr229723_)))
                              (declare (not safe))
                              (cons __tmp243961 '()))))
                       (declare (not safe))
                       (cons __tmp243962 __tmp243960))))
                  (_bind-e__0__241550241551_
                   (lambda (_id229729_ _expr229730_)
                     (let ((_compile?229732_ '#t))
                       (declare (not safe))
                       (_bind-e__241548241549_
                        _id229729_
                        _expr229730_
                        _compile?229732_))))
                  (_bind-e228884_
                   (lambda _g243964_
                     (let ((_g243963_
                            (let ()
                              (declare (not safe))
                              (##length _g243964_))))
                       (cond ((let () (declare (not safe)) (##fx= _g243963_ 2))
                              (apply (lambda (_id229729_ _expr229730_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__241550241551_
                                          _id229729_
                                          _expr229730_)))
                                     _g243964_))
                             ((let () (declare (not safe)) (##fx= _g243963_ 3))
                              (apply (lambda (_id229734_
                                              _expr229735_
                                              _compile?229736_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__241548241549_
                                          _id229734_
                                          _expr229735_
                                          _compile?229736_)))
                                     _g243964_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g243964_))))))
                  (_compile-bindings228885_
                   (lambda (_rest229020_)
                     (let _lp229022_ ((_rest229024_ _rest229020_)
                                      (_bind229025_ '()))
                       (let* ((_rest229026229034_ _rest229024_)
                              (_else229028229042_
                               (lambda () (reverse _bind229025_)))
                              (_K229030229709_
                               (lambda (_rest229045_ _hd229046_)
                                 (let* ((___stx243475243476_ _hd229046_)
                                        (_g229051229098_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243475243476_)))))
                                   (let ((___kont243477243478_
                                          (lambda (_L229616_ _L229617_)
                                            (let* ((___stx243455243456_
                                                    _L229616_)
                                                   (_g229632229646_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243455243456_)))))
                                              (let ((___kont243457243458_
                                                     (lambda (_L229694_)
                                                       (let ((__tmp243965
                                                              (let ((__tmp243966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__241548241549_
                                _L229617_
                                _L229616_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp243966 _bind229025_))))
                 (declare (not safe))
                 (_lp229022_ _rest229045_ __tmp243965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243459243460_
                                                     (lambda (_L229659_)
                                                       (let ((_g243967_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx228882_
                         _L229617_
                         _L229659_
                         '#t))))
                 (begin
                   (let ((_g243968_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g243967_)
                                (##vector-length _g243967_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g243968_ 3)))
                         (error "Context expects 3 values" _g243968_)))
                   (let ((_ids229669_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243967_ 0)))
                         (_impls229670_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243967_ 1)))
                         (_clauses229671_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243967_ 2))))
                     (let* ((_g243969_
                             (for-each gx#core-bind-runtime! _ids229669_))
                            (_xbind229674_
                             (map _bind-e228884_ _ids229669_ _impls229670_))
                            (_expr*229676_
                             (let ((__tmp243971
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses229671_)))
                                   (__tmp243970
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp243971
                                __tmp243970)))
                            (_bind*229678_
                             (let ()
                               (declare (not safe))
                               (_bind-e__241548241549_
                                _L229617_
                                _expr*229676_
                                '#f))))
                       (let ((__tmp243973
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L229617_)))
                             (__tmp243972
                              (map gxc#identifier-symbol _ids229669_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp243973
                          '" => "
                          __tmp243972))
                       (let ((__tmp243974
                              (let ((__tmp243975
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind229025_
                                               _xbind229674_))))
                                (declare (not safe))
                                (cons _bind*229678_ __tmp243975))))
                         (declare (not safe))
                         (_lp229022_ _rest229045_ __tmp243974)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match243466243467_
                                                       (lambda (_e229637229686_
                                                                _hd229636229689_
                                                                _tl229635229691_)
                                                         (let ((_L229694_
                                                                _tl229635229691_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L229694_))
                       (___kont243457243458_ _L229694_)
                       (___kont243459243460_ _tl229635229691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx243455243456_))
                                                      (let ((_e229637229686_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx243455243456_))))
                (let ((_tl229635229691_
                       (let () (declare (not safe)) (##cdr _e229637229686_)))
                      (_hd229636229689_
                       (let () (declare (not safe)) (##car _e229637229686_))))
                  (___match243466243467_
                   _e229637229686_
                   _hd229636229689_
                   _tl229635229691_)))
              (let () (declare (not safe)) (_g229632229646_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont243479243480_
                                          (lambda (_L229444_ _L229445_)
                                            (let* ((_g229459229489_
                                                    (lambda (_g229460229486_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229460229486_))))
                                                   (_g229458229584_
                                                    (lambda (_g229460229492_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229460229492_))
                                                          (let ((_e229466229494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229460229492_))))
                    (let ((_hd229465229497_
                           (let ()
                             (declare (not safe))
                             (##car _e229466229494_)))
                          (_tl229464229499_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229466229494_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229464229499_))
                          (let ((_e229469229502_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229464229499_))))
                            (let ((_hd229468229505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229469229502_)))
                                  (_tl229467229507_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229469229502_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229468229505_))
                                  (let ((_e229472229510_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229468229505_))))
                                    (let ((_hd229471229513_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229472229510_)))
                                          (_tl229470229515_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229472229510_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229471229513_))
                                          (let ((_e229475229518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229471229513_))))
                                            (let ((_hd229474229521_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229475229518_)))
                                                  (_tl229473229523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229475229518_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229474229521_))
                                                  (let ((_e229478229526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229474229521_))))
                                                    (let ((_hd229477229529_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229478229526_)))
                                                          (_tl229476229531_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229478229526_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229476229531_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229473229523_))
                      (let ((_e229481229534_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229473229523_))))
                        (let ((_hd229480229537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229481229534_)))
                              (_tl229479229539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229481229534_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229479229539_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229470229515_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229467229507_))
                                      (let ((_e229484229542_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229467229507_))))
                                        (let ((_hd229483229545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229484229542_)))
                                              (_tl229482229547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229484229542_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229482229547_))
                                              ((lambda (_L229550_
                                                        _L229551_
                                                        _L229552_)
                                                 (let* ((_lambda-id229576_
                                                         (let ((__tmp243977
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L229445_)))
                       (__tmp243976 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp243977 __tmp243976)))
                (_lambda-id229578_
                 (let ((__tmp243978
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx228882_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id229576_ __tmp243978)))
                (_g243979_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id229578_)))
                (_new-case-lambda-expr229581_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L229550_
                    _L229552_
                    _lambda-id229578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp243981
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L229445_)))
                                                         (__tmp243980
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id229578_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp243981
                                                      '" => "
                                                      __tmp243980))
                                                   (let ((__tmp243984
                                                          (let ((__tmp243985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__241548241549_
                            _L229445_
                            _new-case-lambda-expr229581_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp243985 _rest229045_)))
                 (__tmp243982
                  (let ((__tmp243983
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__241550241551_
                            _lambda-id229578_
                            _L229551_))))
                    (declare (not safe))
                    (cons __tmp243983 _bind229025_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp229022_
                                                      __tmp243984
                                                      __tmp243982))))
                                               _hd229483229545_
                                               _hd229480229537_
                                               _hd229477229529_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229459229489_
                                                 _g229460229492_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229459229489_ _g229460229492_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g229459229489_ _g229460229492_)))
                              (let ()
                                (declare (not safe))
                                (_g229459229489_ _g229460229492_)))))
                      (let ()
                        (declare (not safe))
                        (_g229459229489_ _g229460229492_)))
                  (let ()
                    (declare (not safe))
                    (_g229459229489_ _g229460229492_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229459229489_
                                                     _g229460229492_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229459229489_
                                             _g229460229492_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229459229489_ _g229460229492_)))))
                          (let ()
                            (declare (not safe))
                            (_g229459229489_ _g229460229492_)))))
                  (let ()
                    (declare (not safe))
                    (_g229459229489_ _g229460229492_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229458229584_ _L229444_))))
                                         (___kont243481243482_
                                          (lambda (_L229168_ _L229169_)
                                            (let* ((_g229183229236_
                                                    (lambda (_g229184229233_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229184229233_))))
                                                   (_g229182229412_
                                                    (lambda (_g229184229239_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229184229239_))
                                                          (let ((_e229192229241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229184229239_))))
                    (let ((_hd229191229244_
                           (let ()
                             (declare (not safe))
                             (##car _e229192229241_)))
                          (_tl229190229246_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229192229241_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229190229246_))
                          (let ((_e229195229249_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229190229246_))))
                            (let ((_hd229194229252_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229195229249_)))
                                  (_tl229193229254_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229195229249_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229194229252_))
                                  (let ((_e229198229257_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229194229252_))))
                                    (let ((_hd229197229260_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229198229257_)))
                                          (_tl229196229262_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229198229257_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229197229260_))
                                          (let ((_e229201229265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229197229260_))))
                                            (let ((_hd229200229268_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229201229265_)))
                                                  (_tl229199229270_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229201229265_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229200229268_))
                                                  (let ((_e229204229273_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229200229268_))))
                                                    (let ((_hd229203229276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229204229273_)))
                                                          (_tl229202229278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229204229273_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229202229278_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229199229270_))
                      (let ((_e229207229281_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229199229270_))))
                        (let ((_hd229206229284_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229207229281_)))
                              (_tl229205229286_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229207229281_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229206229284_))
                              (let ((_e229210229289_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229206229284_))))
                                (let ((_hd229209229292_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229210229289_)))
                                      (_tl229208229294_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229210229289_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229208229294_))
                                      (let ((_e229213229297_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229208229294_))))
                                        (let ((_hd229212229300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229213229297_)))
                                              (_tl229211229302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229213229297_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd229212229300_))
                                              (let ((_e229216229305_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd229212229300_))))
                                                (let ((_hd229215229308_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229216229305_)))
                                                      (_tl229214229310_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229216229305_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229215229308_))
                                                      (let ((_e229219229313_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd229215229308_))))
                (let ((_hd229218229316_
                       (let () (declare (not safe)) (##car _e229219229313_)))
                      (_tl229217229318_
                       (let () (declare (not safe)) (##cdr _e229219229313_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229218229316_))
                      (let ((_e229222229321_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229218229316_))))
                        (let ((_hd229221229324_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229222229321_)))
                              (_tl229220229326_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229222229321_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229220229326_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229217229318_))
                                  (let ((_e229225229329_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229217229318_))))
                                    (let ((_hd229224229332_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229225229329_)))
                                          (_tl229223229334_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229225229329_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229223229334_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229214229310_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229211229302_))
                                                  (let ((_e229228229337_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229211229302_))))
                                                    (let ((_hd229227229340_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229228229337_)))
                                                          (_tl229226229342_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229228229337_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229226229342_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl229205229286_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229196229262_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229193229254_))
                              (let ((_e229231229345_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229193229254_))))
                                (let ((_hd229230229348_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229231229345_)))
                                      (_tl229229229350_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229231229345_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229229229350_))
                                      ((lambda (_L229353_
                                                _L229354_
                                                _L229355_
                                                _L229356_
                                                _L229357_)
                                         (let* ((_get-kws-id229397_
                                                 (let ((__tmp243987
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229169_)))
                                                       (__tmp243986
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243987
                                                    __tmp243986)))
                                                (_get-kws-id229399_
                                                 (let ((__tmp243988
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx228882_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id229397_
                                                    __tmp243988)))
                                                (_main-id229401_
                                                 (let ((__tmp243990
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229169_)))
                                                       (__tmp243989
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243990
                                                    __tmp243989)))
                                                (_main-id229403_
                                                 (let ((__tmp243991
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx228882_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id229401_
                                                    __tmp243991)))
                                                (_g243992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id229399_)))
                                                (_g243993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id229403_)))
                                                (_new-kw-dispatch229407_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229353_
                                                    _L229357_
                                                    _get-kws-id229399_)))
                                                (_new-get-kws229409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229354_
                                                    _L229356_
                                                    _main-id229403_))))
                                           (let ((__tmp243996
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L229169_)))
                                                 (__tmp243995
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id229399_)))
                                                 (__tmp243994
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id229403_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp243996
                                              '" => "
                                              __tmp243995
                                              '" => "
                                              __tmp243994))
                                           (let ((__tmp243997
                                                  (let ((__tmp244002
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241548241549_
                                                            _main-id229403_
                                                            _L229355_
                                                            '#f)))
                                                        (__tmp243998
                                                         (let ((__tmp244001
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__241548241549_
                           _get-kws-id229399_
                           _new-get-kws229409_
                           '#f)))
                       (__tmp243999
                        (let ((__tmp244000
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__241548241549_
                                  _L229169_
                                  _new-kw-dispatch229407_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp244000 _rest229045_))))
                   (declare (not safe))
                   (cons __tmp244001 __tmp243999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244002
                                                          __tmp243998))))
                                             (declare (not safe))
                                             (_lp229022_
                                              __tmp243997
                                              _bind229025_))))
                                       _hd229230229348_
                                       _hd229227229340_
                                       _hd229224229332_
                                       _hd229221229324_
                                       _hd229203229276_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229183229236_ _g229184229239_)))))
                              (let ()
                                (declare (not safe))
                                (_g229183229236_ _g229184229239_)))
                          (let ()
                            (declare (not safe))
                            (_g229183229236_ _g229184229239_)))
                      (let ()
                        (declare (not safe))
                        (_g229183229236_ _g229184229239_)))
                  (let ()
                    (declare (not safe))
                    (_g229183229236_ _g229184229239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229183229236_
                                                     _g229184229239_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g229183229236_
                                                 _g229184229239_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g229183229236_
                                             _g229184229239_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229183229236_ _g229184229239_)))
                              (let ()
                                (declare (not safe))
                                (_g229183229236_ _g229184229239_)))))
                      (let ()
                        (declare (not safe))
                        (_g229183229236_ _g229184229239_)))))
              (let ()
                (declare (not safe))
                (_g229183229236_ _g229184229239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229183229236_
                                                 _g229184229239_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229183229236_ _g229184229239_)))))
                              (let ()
                                (declare (not safe))
                                (_g229183229236_ _g229184229239_)))))
                      (let ()
                        (declare (not safe))
                        (_g229183229236_ _g229184229239_)))
                  (let ()
                    (declare (not safe))
                    (_g229183229236_ _g229184229239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229183229236_
                                                     _g229184229239_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229183229236_
                                             _g229184229239_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229183229236_ _g229184229239_)))))
                          (let ()
                            (declare (not safe))
                            (_g229183229236_ _g229184229239_)))))
                  (let ()
                    (declare (not safe))
                    (_g229183229236_ _g229184229239_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229182229412_ _L229168_))))
                                         (___kont243483243484_
                                          (lambda (_L229119_ _L229120_)
                                            (let ((__tmp244003
                                                   (let ((__tmp244004
                                                          (let ((__tmp244005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244006
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L229119_))))
                           (declare (not safe))
                           (cons __tmp244006 '()))))
                    (declare (not safe))
                    (cons _L229120_ __tmp244005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244004
                                                           _bind229025_))))
                                              (declare (not safe))
                                              (_lp229022_
                                               _rest229045_
                                               __tmp244003)))))
                                     (let* ((___match243550243551_
                                             (lambda (_e229079229144_
                                                      _hd229078229147_
                                                      _tl229077229149_
                                                      _e229082229152_
                                                      _hd229081229155_
                                                      _tl229080229157_
                                                      _e229085229160_
                                                      _hd229084229163_
                                                      _tl229083229165_)
                                               (let ((_L229168_
                                                      _hd229084229163_)
                                                     (_L229169_
                                                      _hd229081229155_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229169_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L229168_)))
                                                     (___kont243481243482_
                                                      _L229168_
                                                      _L229169_)
                                                     (___kont243483243484_
                                                      _hd229084229163_
                                                      _hd229078229147_)))))
                                            (___match243528243529_
                                             (lambda (_e229068229420_
                                                      _hd229067229423_
                                                      _tl229066229425_
                                                      _e229071229428_
                                                      _hd229070229431_
                                                      _tl229069229433_
                                                      _e229074229436_
                                                      _hd229073229439_
                                                      _tl229072229441_)
                                               (let ((_L229444_
                                                      _hd229073229439_)
                                                     (_L229445_
                                                      _hd229070229431_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229445_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L229444_)))
                                                     (___kont243479243480_
                                                      _L229444_
                                                      _L229445_)
                                                     (___match243550243551_
                                                      _e229068229420_
                                                      _hd229067229423_
                                                      _tl229066229425_
                                                      _e229071229428_
                                                      _hd229070229431_
                                                      _tl229069229433_
                                                      _e229074229436_
                                                      _hd229073229439_
                                                      _tl229072229441_)))))
                                            (___match243506243507_
                                             (lambda (_e229057229592_
                                                      _hd229056229595_
                                                      _tl229055229597_
                                                      _e229060229600_
                                                      _hd229059229603_
                                                      _tl229058229605_
                                                      _e229063229608_
                                                      _hd229062229611_
                                                      _tl229061229613_)
                                               (let ((_L229616_
                                                      _hd229062229611_)
                                                     (_L229617_
                                                      _hd229059229603_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229617_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L229616_)))
                                                     (___kont243477243478_
                                                      _L229616_
                                                      _L229617_)
                                                     (___match243528243529_
                                                      _e229057229592_
                                                      _hd229056229595_
                                                      _tl229055229597_
                                                      _e229060229600_
                                                      _hd229059229603_
                                                      _tl229058229605_
                                                      _e229063229608_
                                                      _hd229062229611_
                                                      _tl229061229613_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243475243476_))
                                           (let ((_e229057229592_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243475243476_))))
                                             (let ((_tl229055229597_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229057229592_)))
                                                   (_hd229056229595_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229057229592_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229056229595_))
                                                   (let ((_e229060229600_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229056229595_))))
                                                     (let ((_tl229058229605_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229060229600_)))
                                                           (_hd229059229603_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229060229600_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229058229605_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229055229597_))
                       (let ((_e229063229608_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229055229597_))))
                         (let ((_tl229061229613_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229063229608_)))
                               (_hd229062229611_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229063229608_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229061229613_))
                               (___match243506243507_
                                _e229057229592_
                                _hd229056229595_
                                _tl229055229597_
                                _e229060229600_
                                _hd229059229603_
                                _tl229058229605_
                                _e229063229608_
                                _hd229062229611_
                                _tl229061229613_)
                               (let ()
                                 (declare (not safe))
                                 (_g229051229098_)))))
                       (let () (declare (not safe)) (_g229051229098_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229055229597_))
                       (let ((_e229093229111_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229055229597_))))
                         (let ((_tl229091229116_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229093229111_)))
                               (_hd229092229114_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229093229111_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229091229116_))
                               (___kont243483243484_
                                _hd229092229114_
                                _hd229056229595_)
                               (let ()
                                 (declare (not safe))
                                 (_g229051229098_)))))
                       (let () (declare (not safe)) (_g229051229098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229055229597_))
                                                       (let ((_e229093229111_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229055229597_))))
                 (let ((_tl229091229116_
                        (let () (declare (not safe)) (##cdr _e229093229111_)))
                       (_hd229092229114_
                        (let () (declare (not safe)) (##car _e229093229111_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229091229116_))
                       (___kont243483243484_ _hd229092229114_ _hd229056229595_)
                       (let () (declare (not safe)) (_g229051229098_)))))
               (let () (declare (not safe)) (_g229051229098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229051229098_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229026229034_))
                             (let ((_hd229031229712_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229026229034_)))
                                   (_tl229032229714_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229026229034_))))
                               (let* ((_hd229717_ _hd229031229712_)
                                      (_rest229719_ _tl229032229714_))
                                 (declare (not safe))
                                 (_K229030229709_ _rest229719_ _hd229717_)))
                             (let ()
                               (declare (not safe))
                               (_else229028229042_))))))))
          (let* ((___stx243567243568_ _stx228882_)
                 (_g228888228915_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243567243568_)))))
            (let ((___kont243569243570_
                   (lambda (_L228975_ _L228976_ _L228977_)
                     (let ((__tmp244008
                            (lambda ()
                              (let ((_hd229014_
                                     (let ((__tmp244009
                                            (let ((__tmp244010
                                                   (lambda (_g229006229009_
                                                            _g229007229011_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g229006229009_
                                                             _g229007229011_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp244010
                                                      '()
                                                      _L228976_))))
                                       (declare (not safe))
                                       (_compile-bindings228885_ __tmp244009)))
                                    (_body229015_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L228975_))))
                                (let ((__tmp244011
                                       (let ((__tmp244012
                                              (let ((__tmp244013
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body229015_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd229014_
                                                      __tmp244013))))
                                         (declare (not safe))
                                         (cons _L228977_ __tmp244012))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp244011
                                   _stx228882_)))))
                           (__tmp244007
                            (let ((__obj243632
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj243632)
                              __obj243632)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp244008
                        gx#current-expander-context
                        __tmp244007))))
                  (___kont243573243574_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx228882_)))))
              (let ((___match243594243595_
                     (lambda (_e228895228927_
                              _hd228894228930_
                              _tl228893228932_
                              _e228898228935_
                              _hd228897228938_
                              _tl228896228940_
                              ___splice243571243572_
                              _target228899228943_
                              _tl228901228945_)
                       (letrec ((_loop228902228948_
                                 (lambda (_hd228900228951_ _bind228906228953_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228900228951_))
                                       (let ((_e228903228956_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228900228951_))))
                                         (let ((_lp-tl228905228961_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228903228956_)))
                                               (_lp-hd228904228959_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228903228956_))))
                                           (let ((__tmp244016
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd228904228959_
                                                          _bind228906228953_))))
                                             (declare (not safe))
                                             (_loop228902228948_
                                              _lp-tl228905228961_
                                              __tmp244016))))
                                       (let ((_bind228907228964_
                                              (reverse _bind228906228953_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl228896228940_))
                                             (let ((_e228910228967_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl228896228940_))))
                                               (let ((_tl228908228972_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e228910228967_)))
                                                     (_hd228909228970_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e228910228967_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl228908228972_))
                                                     (let ((_L228975_
                                                            _hd228909228970_)
                                                           (_L228976_
                                                            _bind228907228964_)
                                                           (_L228977_
                                                            _hd228894228930_))
                                                       (if (let ((__tmp244014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244015
                                 (lambda (_g228998229001_ _g228999229003_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g228998229001_ _g228999229003_)))))
                            (declare (not safe))
                            (foldr1 __tmp244015 '() _L228976_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp244014))
                   (___kont243569243570_ _L228975_ _L228976_ _L228977_)
                   (___kont243573243574_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243573243574_))))
                                             (___kont243573243574_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop228902228948_ _target228899228943_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243567243568_))
                    (let ((_e228895228927_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243567243568_))))
                      (let ((_tl228893228932_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228895228927_)))
                            (_hd228894228930_
                             (let ()
                               (declare (not safe))
                               (##car _e228895228927_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228893228932_))
                            (let ((_e228898228935_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228893228932_))))
                              (let ((_tl228896228940_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228898228935_)))
                                    (_hd228897228938_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228898228935_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd228897228938_))
                                    (let ((___splice243571243572_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd228897228938_
                                              '0))))
                                      (let ((_tl228901228945_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243571243572_
                                                '1)))
                                            (_target228899228943_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243571243572_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228901228945_))
                                            (___match243594243595_
                                             _e228895228927_
                                             _hd228894228930_
                                             _tl228893228932_
                                             _e228898228935_
                                             _hd228897228938_
                                             _tl228896228940_
                                             ___splice243571243572_
                                             _target228899228943_
                                             _tl228901228945_)
                                            (___kont243573243574_))))
                                    (___kont243573243574_))))
                            (___kont243573243574_))))
                    (___kont243573243574_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind228800_)
        (let* ((___stx243597243598_ _bind228800_)
               (_g228803228820_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243597243598_)))))
          (let ((___kont243599243600_
                 (lambda (_L228856_ _L228857_)
                   (if (let () (declare (not safe)) (gx#identifier? _L228857_))
                       (let ((_$e228873_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L228856_))))
                         (if _$e228873_
                             _$e228873_
                             (let ((_$e228876_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L228856_))))
                               (if _$e228876_
                                   _$e228876_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228856_))))))
                       '#f)))
                (___kont243601243602_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243597243598_))
                (let ((_e228809228832_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243597243598_))))
                  (let ((_tl228807228837_
                         (let () (declare (not safe)) (##cdr _e228809228832_)))
                        (_hd228808228835_
                         (let ()
                           (declare (not safe))
                           (##car _e228809228832_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd228808228835_))
                        (let ((_e228812228840_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd228808228835_))))
                          (let ((_tl228810228845_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228812228840_)))
                                (_hd228811228843_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228812228840_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl228810228845_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl228807228837_))
                                    (let ((_e228815228848_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl228807228837_))))
                                      (let ((_tl228813228853_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228815228848_)))
                                            (_hd228814228851_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228815228848_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228813228853_))
                                            (___kont243599243600_
                                             _hd228814228851_
                                             _hd228811228843_)
                                            (___kont243601243602_))))
                                    (___kont243601243602_))
                                (___kont243601243602_))))
                        (___kont243601243602_))))
                (___kont243601243602_))))))))
