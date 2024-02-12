(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707740670)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl236982_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243643 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl236982_ __tmp243643))
           (let ()
             (declare (not safe))
             (table-set! _tbl236982_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236982_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236982_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236982_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl236982_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx236965_ . _args236967_)
        (let ((__tmp243645
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236967_)
                     (gxc#compile-e__0 _stx236965_)
                     (let ((_arg1236972_ (car _args236967_))
                           (_rest236974_ (cdr _args236967_)))
                       (if (null? _rest236974_)
                           (gxc#compile-e__1 _stx236965_ _arg1236972_)
                           (let ((_arg2236977_ (car _rest236974_))
                                 (_rest236979_ (cdr _rest236974_)))
                             (if (null? _rest236979_)
                                 (gxc#compile-e__2
                                  _stx236965_
                                  _arg1236972_
                                  _arg2236977_)
                                 (apply gxc#compile-e
                                        _stx236965_
                                        _arg1236972_
                                        _arg2236977_
                                        _rest236979_))))))))
              (__tmp243644 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp243645
           gxc#current-compile-methods
           __tmp243644))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl236962_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243646 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl236962_ __tmp243646))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236962_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236962_ '%#call gxc#basic-expression-type-call%))
           _tbl236962_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx236945_ . _args236947_)
        (let ((__tmp243648
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236947_)
                     (gxc#compile-e__0 _stx236945_)
                     (let ((_arg1236952_ (car _args236947_))
                           (_rest236954_ (cdr _args236947_)))
                       (if (null? _rest236954_)
                           (gxc#compile-e__1 _stx236945_ _arg1236952_)
                           (let ((_arg2236957_ (car _rest236954_))
                                 (_rest236959_ (cdr _rest236954_)))
                             (if (null? _rest236959_)
                                 (gxc#compile-e__2
                                  _stx236945_
                                  _arg1236952_
                                  _arg2236957_)
                                 (apply gxc#compile-e
                                        _stx236945_
                                        _arg1236952_
                                        _arg2236957_
                                        _rest236959_))))))))
              (__tmp243647 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp243648
           gxc#current-compile-methods
           __tmp243647))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl236942_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243649 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl236942_ __tmp243649))
           (let ()
             (declare (not safe))
             (table-set! _tbl236942_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236942_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236942_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236942_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236942_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236942_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236942_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236942_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236942_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236942_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236942_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236942_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl236942_ '%#set! gxc#collect-body-setq%))
           _tbl236942_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx236925_ . _args236927_)
        (let ((__tmp243651
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236927_)
                     (gxc#compile-e__0 _stx236925_)
                     (let ((_arg1236932_ (car _args236927_))
                           (_rest236934_ (cdr _args236927_)))
                       (if (null? _rest236934_)
                           (gxc#compile-e__1 _stx236925_ _arg1236932_)
                           (let ((_arg2236937_ (car _rest236934_))
                                 (_rest236939_ (cdr _rest236934_)))
                             (if (null? _rest236939_)
                                 (gxc#compile-e__2
                                  _stx236925_
                                  _arg1236932_
                                  _arg2236937_)
                                 (apply gxc#compile-e
                                        _stx236925_
                                        _arg1236932_
                                        _arg2236937_
                                        _rest236939_))))))))
              (__tmp243650 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp243651
           gxc#current-compile-methods
           __tmp243650))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl236922_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243652 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl236922_ __tmp243652))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236922_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236922_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236922_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236922_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236922_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236922_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236922_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236922_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236922_ '%#ref gxc#basic-expression-type-ref%))
           _tbl236922_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx236905_ . _args236907_)
        (let ((__tmp243654
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236907_)
                     (gxc#compile-e__0 _stx236905_)
                     (let ((_arg1236912_ (car _args236907_))
                           (_rest236914_ (cdr _args236907_)))
                       (if (null? _rest236914_)
                           (gxc#compile-e__1 _stx236905_ _arg1236912_)
                           (let ((_arg2236917_ (car _rest236914_))
                                 (_rest236919_ (cdr _rest236914_)))
                             (if (null? _rest236919_)
                                 (gxc#compile-e__2
                                  _stx236905_
                                  _arg1236912_
                                  _arg2236917_)
                                 (apply gxc#compile-e
                                        _stx236905_
                                        _arg1236912_
                                        _arg2236917_
                                        _rest236919_))))))))
              (__tmp243653 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp243654
           gxc#current-compile-methods
           __tmp243653))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl236902_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243655 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl236902_ __tmp243655))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236902_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236902_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236902_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236902_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl236902_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx236885_ . _args236887_)
        (let ((__tmp243657
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236887_)
                     (gxc#compile-e__0 _stx236885_)
                     (let ((_arg1236892_ (car _args236887_))
                           (_rest236894_ (cdr _args236887_)))
                       (if (null? _rest236894_)
                           (gxc#compile-e__1 _stx236885_ _arg1236892_)
                           (let ((_arg2236897_ (car _rest236894_))
                                 (_rest236899_ (cdr _rest236894_)))
                             (if (null? _rest236899_)
                                 (gxc#compile-e__2
                                  _stx236885_
                                  _arg1236892_
                                  _arg2236897_)
                                 (apply gxc#compile-e
                                        _stx236885_
                                        _arg1236892_
                                        _arg2236897_
                                        _rest236899_))))))))
              (__tmp243656 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp243657
           gxc#current-compile-methods
           __tmp243656))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx236788_)
        (let* ((___stx241563241564_ _stx236788_)
               (_g236791236811_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241563241564_)))))
          (let ((___kont241565241566_
                 (lambda (_L236855_ _L236856_)
                   (let ((_sym236874_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236856_))))
                     (if (let ((__tmp243658 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp243658 _sym236874_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym236874_))
                         (let ((_type236875236877_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L236855_))))
                           (if _type236875236877_
                               (let ((_type236880_ _type236875236877_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym236874_
                                  _type236880_))
                               '#f))))))
                (___kont241567241568_ (lambda () '#!void)))
            (let ((___match241596241597_
                   (lambda (_e236797236823_
                            _hd236796236826_
                            _tl236795236828_
                            _e236800236831_
                            _hd236799236834_
                            _tl236798236836_
                            _e236803236839_
                            _hd236802236842_
                            _tl236801236844_
                            _e236806236847_
                            _hd236805236850_
                            _tl236804236852_)
                     (let ((_L236855_ _hd236805236850_)
                           (_L236856_ _hd236802236842_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236856_))
                           (___kont241565241566_ _L236855_ _L236856_)
                           (___kont241567241568_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241563241564_))
                  (let ((_e236797236823_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241563241564_))))
                    (let ((_tl236795236828_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236797236823_)))
                          (_hd236796236826_
                           (let ()
                             (declare (not safe))
                             (##car _e236797236823_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236795236828_))
                          (let ((_e236800236831_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236795236828_))))
                            (let ((_tl236798236836_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236800236831_)))
                                  (_hd236799236834_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236800236831_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236799236834_))
                                  (let ((_e236803236839_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236799236834_))))
                                    (let ((_tl236801236844_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236803236839_)))
                                          (_hd236802236842_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236803236839_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236801236844_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236798236836_))
                                              (let ((_e236806236847_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236798236836_))))
                                                (let ((_tl236804236852_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236806236847_)))
                                                      (_hd236805236850_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236806236847_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236804236852_))
                                                      (___match241596241597_
                                                       _e236797236823_
                                                       _hd236796236826_
                                                       _tl236795236828_
                                                       _e236800236831_
                                                       _hd236799236834_
                                                       _tl236798236836_
                                                       _e236803236839_
                                                       _hd236802236842_
                                                       _tl236801236844_
                                                       _e236806236847_
                                                       _hd236805236850_
                                                       _tl236804236852_)
                                                      (___kont241567241568_))))
                                              (___kont241567241568_))
                                          (___kont241567241568_))))
                                  (___kont241567241568_))))
                          (___kont241567241568_))))
                  (___kont241567241568_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx236644_)
        (let* ((___stx241599241600_ _stx236644_)
               (_g236647236678_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241599241600_)))))
          (let ((___kont241601241602_
                 (lambda (_L236760_ _L236761_)
                   (let ((_sym236777_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236761_))))
                     (if (let ((__tmp243659 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp243659 _sym236777_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym236777_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym236777_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym236777_))
                             (let ((_type236778236780_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L236760_))))
                               (if _type236778236780_
                                   (let ((_type236783_ _type236778236780_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym236777_
                                      _type236783_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L236760_)))))
                (___kont241603241604_
                 (lambda (_L236707_ _L236708_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L236707_)))))
            (let ((___match241632241633_
                   (lambda (_e236653236728_
                            _hd236652236731_
                            _tl236651236733_
                            _e236656236736_
                            _hd236655236739_
                            _tl236654236741_
                            _e236659236744_
                            _hd236658236747_
                            _tl236657236749_
                            _e236662236752_
                            _hd236661236755_
                            _tl236660236757_)
                     (let ((_L236760_ _hd236661236755_)
                           (_L236761_ _hd236658236747_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236761_))
                           (___kont241601241602_ _L236760_ _L236761_)
                           (___kont241603241604_
                            _hd236661236755_
                            _hd236655236739_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241599241600_))
                  (let ((_e236653236728_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241599241600_))))
                    (let ((_tl236651236733_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236653236728_)))
                          (_hd236652236731_
                           (let ()
                             (declare (not safe))
                             (##car _e236653236728_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236651236733_))
                          (let ((_e236656236736_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236651236733_))))
                            (let ((_tl236654236741_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236656236736_)))
                                  (_hd236655236739_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236656236736_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236655236739_))
                                  (let ((_e236659236744_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236655236739_))))
                                    (let ((_tl236657236749_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236659236744_)))
                                          (_hd236658236747_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236659236744_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236657236749_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236654236741_))
                                              (let ((_e236662236752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236654236741_))))
                                                (let ((_tl236660236757_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236662236752_)))
                                                      (_hd236661236755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236662236752_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236660236757_))
                                                      (___match241632241633_
                                                       _e236653236728_
                                                       _hd236652236731_
                                                       _tl236651236733_
                                                       _e236656236736_
                                                       _hd236655236739_
                                                       _tl236654236741_
                                                       _e236659236744_
                                                       _hd236658236747_
                                                       _tl236657236749_
                                                       _e236662236752_
                                                       _hd236661236755_
                                                       _tl236660236757_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236647236678_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236647236678_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236654236741_))
                                              (let ((_e236673236699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236654236741_))))
                                                (let ((_tl236671236704_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236673236699_)))
                                                      (_hd236672236702_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236673236699_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236671236704_))
                                                      (___kont241603241604_
                                                       _hd236672236702_
                                                       _hd236655236739_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236647236678_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236647236678_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236654236741_))
                                      (let ((_e236673236699_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236654236741_))))
                                        (let ((_tl236671236704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236673236699_)))
                                              (_hd236672236702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236673236699_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236671236704_))
                                              (___kont241603241604_
                                               _hd236672236702_
                                               _hd236655236739_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236647236678_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236647236678_))))))
                          (let () (declare (not safe)) (_g236647236678_)))))
                  (let () (declare (not safe)) (_g236647236678_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx236429_)
        (letrec ((_collect-e236431_
                  (lambda (_hd236588_ _expr236589_)
                    (let* ((___stx241655241656_ _hd236588_)
                           (_g236592236602_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx241655241656_)))))
                      (let ((___kont241657241658_
                             (lambda (_L236622_)
                               (let ((_sym236633_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L236622_))))
                                 (if (let ((__tmp243660
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp243660 _sym236633_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym236633_))
                                     (let ((_type236634236636_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr236589_))))
                                       (if _type236634236636_
                                           (let ((_type236639_
                                                  _type236634236636_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym236633_
                                              _type236639_
                                              '#t))
                                           '#f))))))
                            (___kont241659241660_ (lambda () '#!void)))
                        (let ((___match241668241669_
                               (lambda (_e236597236614_
                                        _hd236596236617_
                                        _tl236595236619_)
                                 (let ((_L236622_ _hd236596236617_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L236622_))
                                       (___kont241657241658_ _L236622_)
                                       (___kont241659241660_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx241655241656_))
                              (let ((_e236597236614_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx241655241656_))))
                                (let ((_tl236595236619_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236597236614_)))
                                      (_hd236596236617_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236597236614_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236595236619_))
                                      (___match241668241669_
                                       _e236597236614_
                                       _hd236596236617_
                                       _tl236595236619_)
                                      (___kont241659241660_))))
                              (___kont241659241660_))))))))
          (let* ((_g236433236468_
                  (lambda (_g236434236465_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g236434236465_))))
                 (_g236432236585_
                  (lambda (_g236434236471_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g236434236471_))
                        (let ((_e236440236473_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g236434236471_))))
                          (let ((_hd236439236476_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236440236473_)))
                                (_tl236438236478_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236440236473_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl236438236478_))
                                (let ((_e236443236481_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl236438236478_))))
                                  (let ((_hd236442236484_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236443236481_)))
                                        (_tl236441236486_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236443236481_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd236442236484_))
                                        (let ((_g243661_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd236442236484_
                                                  '0))))
                                          (begin
                                            (let ((_g243662_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g243661_)
                                                         (##vector-length
                                                          _g243661_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g243662_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g243662_)))
                                            (let ((_target236444236489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g243661_
                                                      0)))
                                                  (_tl236446236491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g243661_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236446236491_))
                                                  (letrec ((_loop236447236494_
                                                            (lambda (_hd236445236497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr236451236499_
                             _hd236452236501_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236445236497_))
                          (let ((_e236448236504_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236445236497_))))
                            (let ((_lp-hd236449236507_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236448236504_)))
                                  (_lp-tl236450236509_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236448236504_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd236449236507_))
                                  (let ((_e236457236512_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd236449236507_))))
                                    (let ((_hd236456236515_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236457236512_)))
                                          (_tl236455236517_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236457236512_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236455236517_))
                                          (let ((_e236460236520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236455236517_))))
                                            (let ((_hd236459236523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236460236520_)))
                                                  (_tl236458236525_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236460236520_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236458236525_))
                                                  (let ((__tmp243667
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd236459236523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr236451236499_)))
                (__tmp243666
                 (let ()
                   (declare (not safe))
                   (cons _hd236456236515_ _hd236452236501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop236447236494_
                                                     _lp-tl236450236509_
                                                     __tmp243667
                                                     __tmp243666))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236433236468_
                                                     _g236434236471_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236433236468_
                                             _g236434236471_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236433236468_ _g236434236471_)))))
                          (let ((_expr236453236528_
                                 (reverse _expr236451236499_))
                                (_hd236454236530_ (reverse _hd236452236501_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl236441236486_))
                                (let ((_e236463236533_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl236441236486_))))
                                  (let ((_hd236462236536_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236463236533_)))
                                        (_tl236461236538_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236463236533_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236461236538_))
                                        ((lambda (_L236541_
                                                  _L236542_
                                                  _L236543_)
                                           (for-each
                                            _collect-e236431_
                                            (let ((__tmp243663
                                                   (lambda (_g236563236566_
                                                            _g236564236568_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236563236566_
                                                             _g236564236568_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243663
                                                      '()
                                                      _L236543_))
                                            (let ((__tmp243664
                                                   (lambda (_g236570236573_
                                                            _g236571236575_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236570236573_
                                                             _g236571236575_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243664
                                                      '()
                                                      _L236542_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp243665
                                                   (lambda (_g236577236580_
                                                            _g236578236582_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236577236580_
                                                             _g236578236582_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243665
                                                      '()
                                                      _L236542_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L236541_)))
                                         _hd236462236536_
                                         _expr236453236528_
                                         _hd236454236530_)
                                        (let ()
                                          (declare (not safe))
                                          (_g236433236468_ _g236434236471_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236433236468_ _g236434236471_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop236447236494_
                                                       _target236444236489_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236433236468_
                                                     _g236434236471_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g236433236468_ _g236434236471_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236433236468_ _g236434236471_)))))
                        (let ()
                          (declare (not safe))
                          (_g236433236468_ _g236434236471_))))))
            (declare (not safe))
            (_g236432236585_ _stx236429_)))))
    (define gxc#collect-type-call%
      (lambda (_stx235921_)
        (let* ((___stx241671241672_ _stx235921_)
               (_g235925236040_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241671241672_)))))
          (let ((___kont241673241674_
                 (lambda (_L236379_ _L236380_ _L236381_ _L236382_ _L236383_)
                   (let ((__tmp243671
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236382_)))
                         (__tmp243670
                          (let () (declare (not safe)) (gx#stx-e _L236381_)))
                         (__tmp243669
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236380_)))
                         (__tmp243668
                          (let () (declare (not safe)) (gx#stx-e _L236379_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp243671
                      __tmp243670
                      __tmp243669
                      __tmp243668))))
                (___kont241675241676_
                 (lambda (_L236207_ _L236208_ _L236209_ _L236210_)
                   (let ((__tmp243674
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236209_)))
                         (__tmp243673
                          (let () (declare (not safe)) (gx#stx-e _L236208_)))
                         (__tmp243672
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236207_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp243674
                      __tmp243673
                      __tmp243672
                      '#f))))
                (___kont241677241678_
                 (lambda (_L236077_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp243675
                           (lambda (_g236090236093_ _g236091236095_)
                             (let ()
                               (declare (not safe))
                               (cons _g236090236093_ _g236091236095_)))))
                      (declare (not safe))
                      (foldr1 __tmp243675 '() _L236077_))))))
            (let* ((___match241928241929_
                    (lambda (_e236026236045_
                             _hd236025236048_
                             _tl236024236050_
                             ___splice241679241680_
                             _target236027236053_
                             _tl236029236055_)
                      (letrec ((_loop236030236058_
                                (lambda (_hd236028236061_ _expr236034236063_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd236028236061_))
                                      (let ((_e236031236066_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd236028236061_))))
                                        (let ((_lp-tl236033236071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236031236066_)))
                                              (_lp-hd236032236069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236031236066_))))
                                          (let ((__tmp243676
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd236032236069_
                                                         _expr236034236063_))))
                                            (declare (not safe))
                                            (_loop236030236058_
                                             _lp-tl236033236071_
                                             __tmp243676))))
                                      (let ((_expr236035236074_
                                             (reverse _expr236034236063_)))
                                        (___kont241677241678_
                                         _expr236035236074_))))))
                        (let ()
                          (declare (not safe))
                          (_loop236030236058_ _target236027236053_ '())))))
                   (___match241808241809_
                    (lambda (_e235934236251_
                             _hd235933236254_
                             _tl235932236256_
                             _e235937236259_
                             _hd235936236262_
                             _tl235935236264_
                             _e235940236267_
                             _hd235939236270_
                             _tl235938236272_
                             _e235943236275_
                             _hd235942236278_
                             _tl235941236280_
                             _e235946236283_
                             _hd235945236286_
                             _tl235944236288_
                             _e235949236291_
                             _hd235948236294_
                             _tl235947236296_
                             _e235952236299_
                             _hd235951236302_
                             _tl235950236304_
                             _e235955236307_
                             _hd235954236310_
                             _tl235953236312_
                             _e235958236315_
                             _hd235957236318_
                             _tl235956236320_
                             _e235961236323_
                             _hd235960236326_
                             _tl235959236328_
                             _e235964236331_
                             _hd235963236334_
                             _tl235962236336_
                             _e235967236339_
                             _hd235966236342_
                             _tl235965236344_
                             _e235970236347_
                             _hd235969236350_
                             _tl235968236352_
                             _e235973236355_
                             _hd235972236358_
                             _tl235971236360_
                             _e235976236363_
                             _hd235975236366_
                             _tl235974236368_
                             _e235979236371_
                             _hd235978236374_
                             _tl235977236376_)
                      (let ((_L236379_ _hd235978236374_)
                            (_L236380_ _hd235969236350_)
                            (_L236381_ _hd235960236326_)
                            (_L236382_ _hd235951236302_)
                            (_L236383_ _hd235942236278_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L236383_
                               'bind-method!))
                            (___kont241673241674_
                             _L236379_
                             _L236380_
                             _L236381_
                             _L236382_
                             _L236383_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl235932236256_))
                                (let ((___splice241679241680_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl235932236256_
                                          '0))))
                                  (let ((_tl236029236055_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice241679241680_
                                            '1)))
                                        (_target236027236053_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice241679241680_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236029236055_))
                                        (___match241928241929_
                                         _e235934236251_
                                         _hd235933236254_
                                         _tl235932236256_
                                         ___splice241679241680_
                                         _target236027236053_
                                         _tl236029236055_)
                                        (let ()
                                          (declare (not safe))
                                          (_g235925236040_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g235925236040_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241671241672_))
                  (let ((_e235934236251_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241671241672_))))
                    (let ((_tl235932236256_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235934236251_)))
                          (_hd235933236254_
                           (let ()
                             (declare (not safe))
                             (##car _e235934236251_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235932236256_))
                          (let ((_e235937236259_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235932236256_))))
                            (let ((_tl235935236264_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235937236259_)))
                                  (_hd235936236262_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235937236259_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd235936236262_))
                                  (let ((_e235940236267_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd235936236262_))))
                                    (let ((_tl235938236272_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235940236267_)))
                                          (_hd235939236270_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235940236267_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd235939236270_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd235939236270_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235938236272_))
                                                  (let ((_e235943236275_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235938236272_))))
                                                    (let ((_tl235941236280_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235943236275_)))
                                                          (_hd235942236278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235943236275_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235941236280_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl235935236264_))
                      (let ((_e235946236283_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235935236264_))))
                        (let ((_tl235944236288_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235946236283_)))
                              (_hd235945236286_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235946236283_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd235945236286_))
                              (let ((_e235949236291_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd235945236286_))))
                                (let ((_tl235947236296_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235949236291_)))
                                      (_hd235948236294_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235949236291_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd235948236294_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd235948236294_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235947236296_))
                                              (let ((_e235952236299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235947236296_))))
                                                (let ((_tl235950236304_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235952236299_)))
                                                      (_hd235951236302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235952236299_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235950236304_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235944236288_))
                                                          (let ((_e235955236307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235944236288_))))
                    (let ((_tl235953236312_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235955236307_)))
                          (_hd235954236310_
                           (let ()
                             (declare (not safe))
                             (##car _e235955236307_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235954236310_))
                          (let ((_e235958236315_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235954236310_))))
                            (let ((_tl235956236320_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235958236315_)))
                                  (_hd235957236318_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235958236315_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235957236318_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd235957236318_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235956236320_))
                                          (let ((_e235961236323_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235956236320_))))
                                            (let ((_tl235959236328_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235961236323_)))
                                                  (_hd235960236326_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235961236323_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235959236328_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235953236312_))
                                                      (let ((_e235964236331_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235953236312_))))
                (let ((_tl235962236336_
                       (let () (declare (not safe)) (##cdr _e235964236331_)))
                      (_hd235963236334_
                       (let () (declare (not safe)) (##car _e235964236331_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235963236334_))
                      (let ((_e235967236339_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235963236334_))))
                        (let ((_tl235965236344_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235967236339_)))
                              (_hd235966236342_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235967236339_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235966236342_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235966236342_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235965236344_))
                                      (let ((_e235970236347_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235965236344_))))
                                        (let ((_tl235968236352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235970236347_)))
                                              (_hd235969236350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235970236347_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235968236352_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235962236336_))
                                                  (let ((_e235973236355_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235962236336_))))
                                                    (let ((_tl235971236360_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235973236355_)))
                                                          (_hd235972236358_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235973236355_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235972236358_))
                                                          (let ((_e235976236363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235972236358_))))
                    (let ((_tl235974236368_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235976236363_)))
                          (_hd235975236366_
                           (let ()
                             (declare (not safe))
                             (##car _e235976236363_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235975236366_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd235975236366_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235974236368_))
                                  (let ((_e235979236371_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235974236368_))))
                                    (let ((_tl235977236376_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235979236371_)))
                                          (_hd235978236374_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235979236371_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235977236376_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235971236360_))
                                              (___match241808241809_
                                               _e235934236251_
                                               _hd235933236254_
                                               _tl235932236256_
                                               _e235937236259_
                                               _hd235936236262_
                                               _tl235935236264_
                                               _e235940236267_
                                               _hd235939236270_
                                               _tl235938236272_
                                               _e235943236275_
                                               _hd235942236278_
                                               _tl235941236280_
                                               _e235946236283_
                                               _hd235945236286_
                                               _tl235944236288_
                                               _e235949236291_
                                               _hd235948236294_
                                               _tl235947236296_
                                               _e235952236299_
                                               _hd235951236302_
                                               _tl235950236304_
                                               _e235955236307_
                                               _hd235954236310_
                                               _tl235953236312_
                                               _e235958236315_
                                               _hd235957236318_
                                               _tl235956236320_
                                               _e235961236323_
                                               _hd235960236326_
                                               _tl235959236328_
                                               _e235964236331_
                                               _hd235963236334_
                                               _tl235962236336_
                                               _e235967236339_
                                               _hd235966236342_
                                               _tl235965236344_
                                               _e235970236347_
                                               _hd235969236350_
                                               _tl235968236352_
                                               _e235973236355_
                                               _hd235972236358_
                                               _tl235971236360_
                                               _e235976236363_
                                               _hd235975236366_
                                               _tl235974236368_
                                               _e235979236371_
                                               _hd235978236374_
                                               _tl235977236376_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235932236256_))
                                                  (let ((___splice241679241680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235932236256_
                                                            '0))))
                                                    (let ((_tl236029236055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241679241680_
                                                              '1)))
                                                          (_target236027236053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241679241680_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236029236055_))
                                                          (___match241928241929_
                                                           _e235934236251_
                                                           _hd235933236254_
                                                           _tl235932236256_
                                                           ___splice241679241680_
                                                           _target236027236053_
                                                           _tl236029236055_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235925236040_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235925236040_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235932236256_))
                                              (let ((___splice241679241680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235932236256_
                                                        '0))))
                                                (let ((_tl236029236055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241679241680_
                                                          '1)))
                                                      (_target236027236053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241679241680_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236029236055_))
                                                      (___match241928241929_
                                                       _e235934236251_
                                                       _hd235933236254_
                                                       _tl235932236256_
                                                       ___splice241679241680_
                                                       _target236027236053_
                                                       _tl236029236055_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235925236040_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235925236040_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235932236256_))
                                      (let ((___splice241679241680_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235932236256_
                                                '0))))
                                        (let ((_tl236029236055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241679241680_
                                                  '1)))
                                              (_target236027236053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241679241680_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236029236055_))
                                              (___match241928241929_
                                               _e235934236251_
                                               _hd235933236254_
                                               _tl235932236256_
                                               ___splice241679241680_
                                               _target236027236053_
                                               _tl236029236055_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235925236040_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235925236040_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235932236256_))
                                  (let ((___splice241679241680_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235932236256_
                                            '0))))
                                    (let ((_tl236029236055_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241679241680_
                                              '1)))
                                          (_target236027236053_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241679241680_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236029236055_))
                                          (___match241928241929_
                                           _e235934236251_
                                           _hd235933236254_
                                           _tl235932236256_
                                           ___splice241679241680_
                                           _target236027236053_
                                           _tl236029236055_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235925236040_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235925236040_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235932236256_))
                              (let ((___splice241679241680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235932236256_
                                        '0))))
                                (let ((_tl236029236055_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241679241680_
                                          '1)))
                                      (_target236027236053_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241679241680_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236029236055_))
                                      (___match241928241929_
                                       _e235934236251_
                                       _hd235933236254_
                                       _tl235932236256_
                                       ___splice241679241680_
                                       _target236027236053_
                                       _tl236029236055_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235925236040_)))))
                              (let ()
                                (declare (not safe))
                                (_g235925236040_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235932236256_))
                      (let ((___splice241679241680_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235932236256_ '0))))
                        (let ((_tl236029236055_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241679241680_ '1)))
                              (_target236027236053_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241679241680_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236029236055_))
                              (___match241928241929_
                               _e235934236251_
                               _hd235933236254_
                               _tl235932236256_
                               ___splice241679241680_
                               _target236027236053_
                               _tl236029236055_)
                              (let ()
                                (declare (not safe))
                                (_g235925236040_)))))
                      (let () (declare (not safe)) (_g235925236040_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235962236336_))
                                                      (if (let ((__tmp243677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp243677 'bind-method!))
                  (let ((_L236207_ _hd235969236350_)
                        (_L236208_ _hd235960236326_)
                        (_L236209_ _hd235951236302_)
                        (_L236210_ _hd235942236278_))
                    (___kont241675241676_
                     _L236207_
                     _L236208_
                     _L236209_
                     _L236210_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235932236256_))
                      (let ((___splice241679241680_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235932236256_ '0))))
                        (let ((_tl236029236055_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241679241680_ '1)))
                              (_target236027236053_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241679241680_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236029236055_))
                              (___match241928241929_
                               _e235934236251_
                               _hd235933236254_
                               _tl235932236256_
                               ___splice241679241680_
                               _target236027236053_
                               _tl236029236055_)
                              (let ()
                                (declare (not safe))
                                (_g235925236040_)))))
                      (let () (declare (not safe)) (_g235925236040_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235932236256_))
                  (let ((___splice241679241680_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235932236256_ '0))))
                    (let ((_tl236029236055_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241679241680_ '1)))
                          (_target236027236053_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241679241680_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236029236055_))
                          (___match241928241929_
                           _e235934236251_
                           _hd235933236254_
                           _tl235932236256_
                           ___splice241679241680_
                           _target236027236053_
                           _tl236029236055_)
                          (let () (declare (not safe)) (_g235925236040_)))))
                  (let () (declare (not safe)) (_g235925236040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235932236256_))
                                                  (let ((___splice241679241680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235932236256_
                                                            '0))))
                                                    (let ((_tl236029236055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241679241680_
                                                              '1)))
                                                          (_target236027236053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241679241680_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236029236055_))
                                                          (___match241928241929_
                                                           _e235934236251_
                                                           _hd235933236254_
                                                           _tl235932236256_
                                                           ___splice241679241680_
                                                           _target236027236053_
                                                           _tl236029236055_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235925236040_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235925236040_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235932236256_))
                                          (let ((___splice241679241680_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235932236256_
                                                    '0))))
                                            (let ((_tl236029236055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241679241680_
                                                      '1)))
                                                  (_target236027236053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241679241680_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236029236055_))
                                                  (___match241928241929_
                                                   _e235934236251_
                                                   _hd235933236254_
                                                   _tl235932236256_
                                                   ___splice241679241680_
                                                   _target236027236053_
                                                   _tl236029236055_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235925236040_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235925236040_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235932236256_))
                                      (let ((___splice241679241680_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235932236256_
                                                '0))))
                                        (let ((_tl236029236055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241679241680_
                                                  '1)))
                                              (_target236027236053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241679241680_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236029236055_))
                                              (___match241928241929_
                                               _e235934236251_
                                               _hd235933236254_
                                               _tl235932236256_
                                               ___splice241679241680_
                                               _target236027236053_
                                               _tl236029236055_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235925236040_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235925236040_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235932236256_))
                                  (let ((___splice241679241680_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235932236256_
                                            '0))))
                                    (let ((_tl236029236055_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241679241680_
                                              '1)))
                                          (_target236027236053_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241679241680_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236029236055_))
                                          (___match241928241929_
                                           _e235934236251_
                                           _hd235933236254_
                                           _tl235932236256_
                                           ___splice241679241680_
                                           _target236027236053_
                                           _tl236029236055_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235925236040_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235925236040_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl235932236256_))
                          (let ((___splice241679241680_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl235932236256_
                                    '0))))
                            (let ((_tl236029236055_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241679241680_ '1)))
                                  (_target236027236053_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241679241680_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236029236055_))
                                  (___match241928241929_
                                   _e235934236251_
                                   _hd235933236254_
                                   _tl235932236256_
                                   ___splice241679241680_
                                   _target236027236053_
                                   _tl236029236055_)
                                  (let ()
                                    (declare (not safe))
                                    (_g235925236040_)))))
                          (let () (declare (not safe)) (_g235925236040_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235932236256_))
                  (let ((___splice241679241680_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235932236256_ '0))))
                    (let ((_tl236029236055_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241679241680_ '1)))
                          (_target236027236053_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241679241680_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236029236055_))
                          (___match241928241929_
                           _e235934236251_
                           _hd235933236254_
                           _tl235932236256_
                           ___splice241679241680_
                           _target236027236053_
                           _tl236029236055_)
                          (let () (declare (not safe)) (_g235925236040_)))))
                  (let () (declare (not safe)) (_g235925236040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl235932236256_))
                                                      (let ((___splice241679241680_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl235932236256_ '0))))
                (let ((_tl236029236055_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241679241680_ '1)))
                      (_target236027236053_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241679241680_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236029236055_))
                      (___match241928241929_
                       _e235934236251_
                       _hd235933236254_
                       _tl235932236256_
                       ___splice241679241680_
                       _target236027236053_
                       _tl236029236055_)
                      (let () (declare (not safe)) (_g235925236040_)))))
              (let () (declare (not safe)) (_g235925236040_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235932236256_))
                                              (let ((___splice241679241680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235932236256_
                                                        '0))))
                                                (let ((_tl236029236055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241679241680_
                                                          '1)))
                                                      (_target236027236053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241679241680_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236029236055_))
                                                      (___match241928241929_
                                                       _e235934236251_
                                                       _hd235933236254_
                                                       _tl235932236256_
                                                       ___splice241679241680_
                                                       _target236027236053_
                                                       _tl236029236055_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235925236040_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235925236040_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235932236256_))
                                          (let ((___splice241679241680_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235932236256_
                                                    '0))))
                                            (let ((_tl236029236055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241679241680_
                                                      '1)))
                                                  (_target236027236053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241679241680_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236029236055_))
                                                  (___match241928241929_
                                                   _e235934236251_
                                                   _hd235933236254_
                                                   _tl235932236256_
                                                   ___splice241679241680_
                                                   _target236027236053_
                                                   _tl236029236055_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235925236040_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235925236040_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235932236256_))
                                      (let ((___splice241679241680_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235932236256_
                                                '0))))
                                        (let ((_tl236029236055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241679241680_
                                                  '1)))
                                              (_target236027236053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241679241680_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236029236055_))
                                              (___match241928241929_
                                               _e235934236251_
                                               _hd235933236254_
                                               _tl235932236256_
                                               ___splice241679241680_
                                               _target236027236053_
                                               _tl236029236055_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235925236040_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235925236040_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235932236256_))
                              (let ((___splice241679241680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235932236256_
                                        '0))))
                                (let ((_tl236029236055_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241679241680_
                                          '1)))
                                      (_target236027236053_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241679241680_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236029236055_))
                                      (___match241928241929_
                                       _e235934236251_
                                       _hd235933236254_
                                       _tl235932236256_
                                       ___splice241679241680_
                                       _target236027236053_
                                       _tl236029236055_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235925236040_)))))
                              (let ()
                                (declare (not safe))
                                (_g235925236040_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235932236256_))
                      (let ((___splice241679241680_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235932236256_ '0))))
                        (let ((_tl236029236055_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241679241680_ '1)))
                              (_target236027236053_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241679241680_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236029236055_))
                              (___match241928241929_
                               _e235934236251_
                               _hd235933236254_
                               _tl235932236256_
                               ___splice241679241680_
                               _target236027236053_
                               _tl236029236055_)
                              (let ()
                                (declare (not safe))
                                (_g235925236040_)))))
                      (let () (declare (not safe)) (_g235925236040_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235932236256_))
                  (let ((___splice241679241680_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235932236256_ '0))))
                    (let ((_tl236029236055_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241679241680_ '1)))
                          (_target236027236053_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241679241680_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236029236055_))
                          (___match241928241929_
                           _e235934236251_
                           _hd235933236254_
                           _tl235932236256_
                           ___splice241679241680_
                           _target236027236053_
                           _tl236029236055_)
                          (let () (declare (not safe)) (_g235925236040_)))))
                  (let () (declare (not safe)) (_g235925236040_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235932236256_))
                                                  (let ((___splice241679241680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235932236256_
                                                            '0))))
                                                    (let ((_tl236029236055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241679241680_
                                                              '1)))
                                                          (_target236027236053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241679241680_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236029236055_))
                                                          (___match241928241929_
                                                           _e235934236251_
                                                           _hd235933236254_
                                                           _tl235932236256_
                                                           ___splice241679241680_
                                                           _target236027236053_
                                                           _tl236029236055_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235925236040_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235925236040_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235932236256_))
                                              (let ((___splice241679241680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235932236256_
                                                        '0))))
                                                (let ((_tl236029236055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241679241680_
                                                          '1)))
                                                      (_target236027236053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241679241680_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236029236055_))
                                                      (___match241928241929_
                                                       _e235934236251_
                                                       _hd235933236254_
                                                       _tl235932236256_
                                                       ___splice241679241680_
                                                       _target236027236053_
                                                       _tl236029236055_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235925236040_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235925236040_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235932236256_))
                                          (let ((___splice241679241680_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235932236256_
                                                    '0))))
                                            (let ((_tl236029236055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241679241680_
                                                      '1)))
                                                  (_target236027236053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241679241680_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236029236055_))
                                                  (___match241928241929_
                                                   _e235934236251_
                                                   _hd235933236254_
                                                   _tl235932236256_
                                                   ___splice241679241680_
                                                   _target236027236053_
                                                   _tl236029236055_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235925236040_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235925236040_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235932236256_))
                                  (let ((___splice241679241680_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235932236256_
                                            '0))))
                                    (let ((_tl236029236055_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241679241680_
                                              '1)))
                                          (_target236027236053_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241679241680_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236029236055_))
                                          (___match241928241929_
                                           _e235934236251_
                                           _hd235933236254_
                                           _tl235932236256_
                                           ___splice241679241680_
                                           _target236027236053_
                                           _tl236029236055_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235925236040_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235925236040_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl235932236256_))
                          (let ((___splice241679241680_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl235932236256_
                                    '0))))
                            (let ((_tl236029236055_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241679241680_ '1)))
                                  (_target236027236053_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241679241680_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236029236055_))
                                  (___match241928241929_
                                   _e235934236251_
                                   _hd235933236254_
                                   _tl235932236256_
                                   ___splice241679241680_
                                   _target236027236053_
                                   _tl236029236055_)
                                  (let ()
                                    (declare (not safe))
                                    (_g235925236040_)))))
                          (let () (declare (not safe)) (_g235925236040_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235932236256_))
                      (let ((___splice241679241680_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235932236256_ '0))))
                        (let ((_tl236029236055_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241679241680_ '1)))
                              (_target236027236053_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241679241680_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236029236055_))
                              (___match241928241929_
                               _e235934236251_
                               _hd235933236254_
                               _tl235932236256_
                               ___splice241679241680_
                               _target236027236053_
                               _tl236029236055_)
                              (let ()
                                (declare (not safe))
                                (_g235925236040_)))))
                      (let () (declare (not safe)) (_g235925236040_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl235932236256_))
                                                      (let ((___splice241679241680_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl235932236256_ '0))))
                (let ((_tl236029236055_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241679241680_ '1)))
                      (_target236027236053_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241679241680_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236029236055_))
                      (___match241928241929_
                       _e235934236251_
                       _hd235933236254_
                       _tl235932236256_
                       ___splice241679241680_
                       _target236027236053_
                       _tl236029236055_)
                      (let () (declare (not safe)) (_g235925236040_)))))
              (let () (declare (not safe)) (_g235925236040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235932236256_))
                                                  (let ((___splice241679241680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235932236256_
                                                            '0))))
                                                    (let ((_tl236029236055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241679241680_
                                                              '1)))
                                                          (_target236027236053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241679241680_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236029236055_))
                                                          (___match241928241929_
                                                           _e235934236251_
                                                           _hd235933236254_
                                                           _tl235932236256_
                                                           ___splice241679241680_
                                                           _target236027236053_
                                                           _tl236029236055_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235925236040_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235925236040_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235932236256_))
                                              (let ((___splice241679241680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235932236256_
                                                        '0))))
                                                (let ((_tl236029236055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241679241680_
                                                          '1)))
                                                      (_target236027236053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241679241680_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236029236055_))
                                                      (___match241928241929_
                                                       _e235934236251_
                                                       _hd235933236254_
                                                       _tl235932236256_
                                                       ___splice241679241680_
                                                       _target236027236053_
                                                       _tl236029236055_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235925236040_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235925236040_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235932236256_))
                                      (let ((___splice241679241680_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235932236256_
                                                '0))))
                                        (let ((_tl236029236055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241679241680_
                                                  '1)))
                                              (_target236027236053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241679241680_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236029236055_))
                                              (___match241928241929_
                                               _e235934236251_
                                               _hd235933236254_
                                               _tl235932236256_
                                               ___splice241679241680_
                                               _target236027236053_
                                               _tl236029236055_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235925236040_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235925236040_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235932236256_))
                              (let ((___splice241679241680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235932236256_
                                        '0))))
                                (let ((_tl236029236055_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241679241680_
                                          '1)))
                                      (_target236027236053_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241679241680_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236029236055_))
                                      (___match241928241929_
                                       _e235934236251_
                                       _hd235933236254_
                                       _tl235932236256_
                                       ___splice241679241680_
                                       _target236027236053_
                                       _tl236029236055_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235925236040_)))))
                              (let ()
                                (declare (not safe))
                                (_g235925236040_))))))
                  (let () (declare (not safe)) (_g235925236040_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx235861_)
        (let* ((___stx241931241932_ _stx235861_)
               (_g235864235877_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241931241932_)))))
          (let ((___kont241933241934_
                 (lambda (_L235905_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L235905_))))
                (___kont241935241936_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241931241932_))
                (let ((_e235869235889_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241931241932_))))
                  (let ((_tl235867235894_
                         (let () (declare (not safe)) (##cdr _e235869235889_)))
                        (_hd235868235892_
                         (let ()
                           (declare (not safe))
                           (##car _e235869235889_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235867235894_))
                        (let ((_e235872235897_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235867235894_))))
                          (let ((_tl235870235902_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235872235897_)))
                                (_hd235871235900_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235872235897_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl235870235902_))
                                (___kont241933241934_ _hd235871235900_)
                                (___kont241935241936_))))
                        (___kont241935241936_))))
                (___kont241935241936_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx235741_)
        (let* ((_g235743235760_
                (lambda (_g235744235757_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235744235757_))))
               (_g235742235858_
                (lambda (_g235744235763_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235744235763_))
                      (let ((_e235749235765_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235744235763_))))
                        (let ((_hd235748235768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235749235765_)))
                              (_tl235747235770_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235749235765_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235747235770_))
                              (let ((_e235752235773_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235747235770_))))
                                (let ((_hd235751235776_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235752235773_)))
                                      (_tl235750235778_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235752235773_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235750235778_))
                                      (let ((_e235755235781_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235750235778_))))
                                        (let ((_hd235754235784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235755235781_)))
                                              (_tl235753235786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235755235781_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235753235786_))
                                              ((lambda (_L235789_ _L235790_)
                                                 (let* ((___stx241953241954_
                                                         _L235790_)
                                                        (_g235806235817_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx241953241954_)))))
                                                   (let ((___kont241955241956_
                                                          (lambda (_L235837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L235838_)
                    (let ((_$e235850_
                           (let ((__tmp243678
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L235838_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp243678
                              '#f))))
                      (if _$e235850_
                          ((lambda (_type-e235853_)
                             (_type-e235853_ _stx235741_ _L235790_))
                           _$e235850_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L235789_))))))
                 (___kont241957241958_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L235789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match241964241965_
                                                            (lambda (_e235812235829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd235811235832_
                             _tl235810235834_)
                      (let ((_L235837_ _tl235810235834_)
                            (_L235838_ _hd235811235832_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L235838_))
                            (___kont241955241956_ _L235837_ _L235838_)
                            (___kont241957241958_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx241953241954_))
                   (let ((_e235812235829_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx241953241954_))))
                     (let ((_tl235810235834_
                            (let ()
                              (declare (not safe))
                              (##cdr _e235812235829_)))
                           (_hd235811235832_
                            (let ()
                              (declare (not safe))
                              (##car _e235812235829_))))
                       (___match241964241965_
                        _e235812235829_
                        _hd235811235832_
                        _tl235810235834_)))
                   (___kont241957241958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd235754235784_
                                               _hd235751235776_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235743235760_
                                                 _g235744235763_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235743235760_ _g235744235763_)))))
                              (let ()
                                (declare (not safe))
                                (_g235743235760_ _g235744235763_)))))
                      (let ()
                        (declare (not safe))
                        (_g235743235760_ _g235744235763_))))))
          (declare (not safe))
          (_g235742235858_ _stx235741_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx235602_ _ann235603_)
        (let* ((_g235605235638_
                (lambda (_g235606235635_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235606235635_))))
               (_g235604235738_
                (lambda (_g235606235641_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235606235641_))
                      (let ((_e235615235643_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235606235641_))))
                        (let ((_hd235614235646_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235615235643_)))
                              (_tl235613235648_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235615235643_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235613235648_))
                              (let ((_e235618235651_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235613235648_))))
                                (let ((_hd235617235654_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235618235651_)))
                                      (_tl235616235656_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235618235651_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235616235656_))
                                      (let ((_e235621235659_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235616235656_))))
                                        (let ((_hd235620235662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235621235659_)))
                                              (_tl235619235664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235621235659_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235619235664_))
                                              (let ((_e235624235667_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235619235664_))))
                                                (let ((_hd235623235670_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235624235667_)))
                                                      (_tl235622235672_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235624235667_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235622235672_))
                                                      (let ((_e235627235675_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235622235672_))))
                (let ((_hd235626235678_
                       (let () (declare (not safe)) (##car _e235627235675_)))
                      (_tl235625235680_
                       (let () (declare (not safe)) (##cdr _e235627235675_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl235625235680_))
                      (let ((_e235630235683_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235625235680_))))
                        (let ((_hd235629235686_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235630235683_)))
                              (_tl235628235688_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235630235683_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235628235688_))
                              (let ((_e235633235691_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235628235688_))))
                                (let ((_hd235632235694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235633235691_)))
                                      (_tl235631235696_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235633235691_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235631235696_))
                                      ((lambda (_L235699_
                                                _L235700_
                                                _L235701_
                                                _L235702_
                                                _L235703_
                                                _L235704_)
                                         (let ((_type-id235731_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235704_)))
                                               (_super235732_
                                                (map gxc#identifier-symbol
                                                     _L235703_))
                                               (_slots235733_
                                                (map gx#stx-e _L235702_))
                                               (_ctor-method235734_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235701_)))
                                               (_struct?235735_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235700_)))
                                               (_final?235736_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235699_))))
                                           (let ((__obj243636
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
                                              __obj243636
                                              _type-id235731_
                                              _super235732_
                                              _slots235733_
                                              _ctor-method235734_
                                              _struct?235735_
                                              _final?235736_)
                                             __obj243636)))
                                       _hd235632235694_
                                       _hd235629235686_
                                       _hd235626235678_
                                       _hd235623235670_
                                       _hd235620235662_
                                       _hd235617235654_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235605235638_ _g235606235641_)))))
                              (let ()
                                (declare (not safe))
                                (_g235605235638_ _g235606235641_)))))
                      (let ()
                        (declare (not safe))
                        (_g235605235638_ _g235606235641_)))))
              (let ()
                (declare (not safe))
                (_g235605235638_ _g235606235641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235605235638_
                                                 _g235606235641_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235605235638_ _g235606235641_)))))
                              (let ()
                                (declare (not safe))
                                (_g235605235638_ _g235606235641_)))))
                      (let ()
                        (declare (not safe))
                        (_g235605235638_ _g235606235641_))))))
          (declare (not safe))
          (_g235604235738_ _ann235603_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx235550_ _ann235551_)
        (let* ((_g235553235566_
                (lambda (_g235554235563_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235554235563_))))
               (_g235552235599_
                (lambda (_g235554235569_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235554235569_))
                      (let ((_e235558235571_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235554235569_))))
                        (let ((_hd235557235574_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235558235571_)))
                              (_tl235556235576_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235558235571_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235556235576_))
                              (let ((_e235561235579_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235556235576_))))
                                (let ((_hd235560235582_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235561235579_)))
                                      (_tl235559235584_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235561235579_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235559235584_))
                                      ((lambda (_L235587_)
                                         (let ((__tmp243679
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235587_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp243679)))
                                       _hd235560235582_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235553235566_ _g235554235569_)))))
                              (let ()
                                (declare (not safe))
                                (_g235553235566_ _g235554235569_)))))
                      (let ()
                        (declare (not safe))
                        (_g235553235566_ _g235554235569_))))))
          (declare (not safe))
          (_g235552235599_ _ann235551_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx235498_ _ann235499_)
        (let* ((_g235501235514_
                (lambda (_g235502235511_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235502235511_))))
               (_g235500235547_
                (lambda (_g235502235517_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235502235517_))
                      (let ((_e235506235519_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235502235517_))))
                        (let ((_hd235505235522_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235506235519_)))
                              (_tl235504235524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235506235519_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235504235524_))
                              (let ((_e235509235527_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235504235524_))))
                                (let ((_hd235508235530_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235509235527_)))
                                      (_tl235507235532_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235509235527_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235507235532_))
                                      ((lambda (_L235535_)
                                         (let ((__tmp243680
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235535_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp243680)))
                                       _hd235508235530_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235501235514_ _g235502235517_)))))
                              (let ()
                                (declare (not safe))
                                (_g235501235514_ _g235502235517_)))))
                      (let ()
                        (declare (not safe))
                        (_g235501235514_ _g235502235517_))))))
          (declare (not safe))
          (_g235500235547_ _ann235499_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx235414_ _ann235415_)
        (let* ((_g235417235438_
                (lambda (_g235418235435_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235418235435_))))
               (_g235416235495_
                (lambda (_g235418235441_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235418235441_))
                      (let ((_e235424235443_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235418235441_))))
                        (let ((_hd235423235446_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235424235443_)))
                              (_tl235422235448_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235424235443_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235422235448_))
                              (let ((_e235427235451_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235422235448_))))
                                (let ((_hd235426235454_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235427235451_)))
                                      (_tl235425235456_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235427235451_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235425235456_))
                                      (let ((_e235430235459_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235425235456_))))
                                        (let ((_hd235429235462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235430235459_)))
                                              (_tl235428235464_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235430235459_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235428235464_))
                                              (let ((_e235433235467_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235428235464_))))
                                                (let ((_hd235432235470_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235433235467_)))
                                                      (_tl235431235472_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235433235467_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235431235472_))
                                                      ((lambda (_L235475_
                                                                _L235476_
                                                                _L235477_)
                                                         (let ((__tmp243683
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L235477_)))
                       (__tmp243682
                        (let () (declare (not safe)) (gx#stx-e _L235476_)))
                       (__tmp243681
                        (let () (declare (not safe)) (gx#stx-e _L235475_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp243683
                    __tmp243682
                    __tmp243681)))
               _hd235432235470_
               _hd235429235462_
               _hd235426235454_)
              (let ()
                (declare (not safe))
                (_g235417235438_ _g235418235441_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235417235438_
                                                 _g235418235441_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235417235438_ _g235418235441_)))))
                              (let ()
                                (declare (not safe))
                                (_g235417235438_ _g235418235441_)))))
                      (let ()
                        (declare (not safe))
                        (_g235417235438_ _g235418235441_))))))
          (declare (not safe))
          (_g235416235495_ _ann235415_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx235330_ _ann235331_)
        (let* ((_g235333235354_
                (lambda (_g235334235351_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235334235351_))))
               (_g235332235411_
                (lambda (_g235334235357_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235334235357_))
                      (let ((_e235340235359_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235334235357_))))
                        (let ((_hd235339235362_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235340235359_)))
                              (_tl235338235364_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235340235359_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235338235364_))
                              (let ((_e235343235367_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235338235364_))))
                                (let ((_hd235342235370_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235343235367_)))
                                      (_tl235341235372_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235343235367_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235341235372_))
                                      (let ((_e235346235375_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235341235372_))))
                                        (let ((_hd235345235378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235346235375_)))
                                              (_tl235344235380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235346235375_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235344235380_))
                                              (let ((_e235349235383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235344235380_))))
                                                (let ((_hd235348235386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235349235383_)))
                                                      (_tl235347235388_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235349235383_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235347235388_))
                                                      ((lambda (_L235391_
                                                                _L235392_
                                                                _L235393_)
                                                         (let ((__tmp243686
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L235393_)))
                       (__tmp243685
                        (let () (declare (not safe)) (gx#stx-e _L235392_)))
                       (__tmp243684
                        (let () (declare (not safe)) (gx#stx-e _L235391_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp243686
                    __tmp243685
                    __tmp243684)))
               _hd235348235386_
               _hd235345235378_
               _hd235342235370_)
              (let ()
                (declare (not safe))
                (_g235333235354_ _g235334235357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235333235354_
                                                 _g235334235357_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235333235354_ _g235334235357_)))))
                              (let ()
                                (declare (not safe))
                                (_g235333235354_ _g235334235357_)))))
                      (let ()
                        (declare (not safe))
                        (_g235333235354_ _g235334235357_))))))
          (declare (not safe))
          (_g235332235411_ _ann235331_))))
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
      (lambda (_stx234450_)
        (let* ((___stx241967241968_ _stx234450_)
               (_g234456234652_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241967241968_)))))
          (let ((___kont241969241970_
                 (lambda (_L235318_)
                   (let ((__obj243637
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243637
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L235318_))
                      '#f)
                     __obj243637)))
                (___kont241971241972_
                 (lambda (_L235245_
                          _L235246_
                          _L235247_
                          _L235248_
                          _L235249_
                          _L235250_)
                   (let* ((_tab235300_
                           (let () (declare (not safe)) (gx#stx-e _L235247_)))
                          (_keys235302_
                           (if _tab235300_
                               (let ((__tmp243687 (vector->list _tab235300_)))
                                 (declare (not safe))
                                 (filter values __tmp243687))
                               '#f)))
                     (let ((__tmp243688
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L235246_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys235302_
                        __tmp243688)))))
                (___kont241973241974_
                 (lambda (_L234978_
                          _L234979_
                          _L234980_
                          _L234981_
                          _L234982_
                          _L234983_
                          _L234984_
                          _L234985_
                          _L234986_
                          _L234987_)
                   (let ((__tmp243690
                          (map gx#stx-e
                               (let ((__tmp243691
                                      (lambda (_g235080235083_ _g235081235085_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g235080235083_
                                                _g235081235085_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp243691 '() _L234980_))))
                         (__tmp243689
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234984_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp243690
                      __tmp243689))))
                (___kont241977241978_
                 (lambda (_L234688_)
                   (let ((__obj243638
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243638
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234688_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L234688_)))
                     __obj243638)))
                (___kont241979241980_
                 (lambda (_L234665_)
                   (let ((__obj243639
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243639
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234665_))
                      '#f)
                     __obj243639))))
            (let* ((___match242286242287_
                    (lambda (_e234643234680_ _hd234642234683_ _tl234641234685_)
                      (let ((_L234688_ _tl234641234685_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L234688_))
                            (___kont241977241978_ _L234688_)
                            (___kont241979241980_ _tl234641234685_)))))
                   (___match242280242281_
                    (lambda (_e234537234702_
                             _hd234536234705_
                             _tl234535234707_
                             _e234540234710_
                             _hd234539234713_
                             _tl234538234715_
                             _e234543234718_
                             _hd234542234721_
                             _tl234541234723_
                             _e234546234726_
                             _hd234545234729_
                             _tl234544234731_
                             _e234549234734_
                             _hd234548234737_
                             _tl234547234739_
                             _e234552234742_
                             _hd234551234745_
                             _tl234550234747_
                             _e234555234750_
                             _hd234554234753_
                             _tl234553234755_
                             _e234558234758_
                             _hd234557234761_
                             _tl234556234763_
                             _e234561234766_
                             _hd234560234769_
                             _tl234559234771_
                             _e234564234774_
                             _hd234563234777_
                             _tl234562234779_
                             _e234567234782_
                             _hd234566234785_
                             _tl234565234787_
                             _e234570234790_
                             _hd234569234793_
                             _tl234568234795_
                             _e234573234798_
                             _hd234572234801_
                             _tl234571234803_
                             _e234576234806_
                             _hd234575234809_
                             _tl234574234811_
                             ___splice241975241976_
                             _target234577234814_
                             _tl234579234816_
                             _e234594234819_
                             _hd234593234822_
                             _tl234592234824_
                             _e234597234827_
                             _hd234596234830_
                             _tl234595234832_
                             _e234600234835_
                             _hd234599234838_
                             _tl234598234840_)
                      (letrec ((_loop234580234843_
                                (lambda (_hd234578234846_
                                         _-absent-value234584234848_
                                         _key234585234850_
                                         _-xkwvar234586234852_
                                         _-hash-ref234587234854_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234578234846_))
                                      (let ((_e234581234857_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234578234846_))))
                                        (let ((_lp-tl234583234862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234581234857_)))
                                              (_lp-hd234582234860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234581234857_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd234582234860_))
                                              (let ((_e234603234865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd234582234860_))))
                                                (let ((_tl234601234870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234603234865_)))
                                                      (_hd234602234868_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234603234865_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd234602234868_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd234602234868_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl234601234870_))
                      (let ((_e234606234873_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl234601234870_))))
                        (let ((_tl234604234878_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234606234873_)))
                              (_hd234605234876_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234606234873_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd234605234876_))
                              (let ((_e234609234881_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd234605234876_))))
                                (let ((_tl234607234886_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234609234881_)))
                                      (_hd234608234884_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234609234881_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd234608234884_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd234608234884_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234607234886_))
                                              (let ((_e234612234889_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234607234886_))))
                                                (let ((_tl234610234894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234612234889_)))
                                                      (_hd234611234892_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234612234889_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234610234894_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234604234878_))
                                                          (let ((_e234615234897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234604234878_))))
                    (let ((_tl234613234902_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234615234897_)))
                          (_hd234614234900_
                           (let ()
                             (declare (not safe))
                             (##car _e234615234897_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234614234900_))
                          (let ((_e234618234905_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234614234900_))))
                            (let ((_tl234616234910_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234618234905_)))
                                  (_hd234617234908_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234618234905_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234617234908_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234617234908_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234616234910_))
                                          (let ((_e234621234913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234616234910_))))
                                            (let ((_tl234619234918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234621234913_)))
                                                  (_hd234620234916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234621234913_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234619234918_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234613234902_))
                                                      (let ((_e234624234921_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234613234902_))))
                (let ((_tl234622234926_
                       (let () (declare (not safe)) (##cdr _e234624234921_)))
                      (_hd234623234924_
                       (let () (declare (not safe)) (##car _e234624234921_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234623234924_))
                      (let ((_e234627234929_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234623234924_))))
                        (let ((_tl234625234934_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234627234929_)))
                              (_hd234626234932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234627234929_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234626234932_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd234626234932_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234625234934_))
                                      (let ((_e234630234937_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234625234934_))))
                                        (let ((_tl234628234942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234630234937_)))
                                              (_hd234629234940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234630234937_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234628234942_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234622234926_))
                                                  (let ((_e234633234945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234622234926_))))
                                                    (let ((_tl234631234950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234633234945_)))
                                                          (_hd234632234948_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234633234945_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234632234948_))
                                                          (let ((_e234636234953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234632234948_))))
                    (let ((_tl234634234958_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234636234953_)))
                          (_hd234635234956_
                           (let ()
                             (declare (not safe))
                             (##car _e234636234953_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234635234956_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234635234956_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234634234958_))
                                  (let ((_e234639234961_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234634234958_))))
                                    (let ((_tl234637234966_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234639234961_)))
                                          (_hd234638234964_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234639234961_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234637234966_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234631234950_))
                                              (let ((__tmp243706
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234638234964_
                                                             _-absent-value234584234848_)))
                                                    (__tmp243705
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234629234940_
                                                             _key234585234850_)))
                                                    (__tmp243704
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234620234916_
                                                             _-xkwvar234586234852_)))
                                                    (__tmp243703
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234611234892_
                                                             _-hash-ref234587234854_))))
                                                (declare (not safe))
                                                (_loop234580234843_
                                                 _lp-tl234583234862_
                                                 __tmp243706
                                                 __tmp243705
                                                 __tmp243704
                                                 __tmp243703))
                                              (___match242286242287_
                                               _e234537234702_
                                               _hd234536234705_
                                               _tl234535234707_))
                                          (___match242286242287_
                                           _e234537234702_
                                           _hd234536234705_
                                           _tl234535234707_))))
                                  (___match242286242287_
                                   _e234537234702_
                                   _hd234536234705_
                                   _tl234535234707_))
                              (___match242286242287_
                               _e234537234702_
                               _hd234536234705_
                               _tl234535234707_))
                          (___match242286242287_
                           _e234537234702_
                           _hd234536234705_
                           _tl234535234707_))))
                  (___match242286242287_
                   _e234537234702_
                   _hd234536234705_
                   _tl234535234707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242286242287_
                                                   _e234537234702_
                                                   _hd234536234705_
                                                   _tl234535234707_))
                                              (___match242286242287_
                                               _e234537234702_
                                               _hd234536234705_
                                               _tl234535234707_))))
                                      (___match242286242287_
                                       _e234537234702_
                                       _hd234536234705_
                                       _tl234535234707_))
                                  (___match242286242287_
                                   _e234537234702_
                                   _hd234536234705_
                                   _tl234535234707_))
                              (___match242286242287_
                               _e234537234702_
                               _hd234536234705_
                               _tl234535234707_))))
                      (___match242286242287_
                       _e234537234702_
                       _hd234536234705_
                       _tl234535234707_))))
              (___match242286242287_
               _e234537234702_
               _hd234536234705_
               _tl234535234707_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242286242287_
                                                   _e234537234702_
                                                   _hd234536234705_
                                                   _tl234535234707_))))
                                          (___match242286242287_
                                           _e234537234702_
                                           _hd234536234705_
                                           _tl234535234707_))
                                      (___match242286242287_
                                       _e234537234702_
                                       _hd234536234705_
                                       _tl234535234707_))
                                  (___match242286242287_
                                   _e234537234702_
                                   _hd234536234705_
                                   _tl234535234707_))))
                          (___match242286242287_
                           _e234537234702_
                           _hd234536234705_
                           _tl234535234707_))))
                  (___match242286242287_
                   _e234537234702_
                   _hd234536234705_
                   _tl234535234707_))
              (___match242286242287_
               _e234537234702_
               _hd234536234705_
               _tl234535234707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242286242287_
                                               _e234537234702_
                                               _hd234536234705_
                                               _tl234535234707_))
                                          (___match242286242287_
                                           _e234537234702_
                                           _hd234536234705_
                                           _tl234535234707_))
                                      (___match242286242287_
                                       _e234537234702_
                                       _hd234536234705_
                                       _tl234535234707_))))
                              (___match242286242287_
                               _e234537234702_
                               _hd234536234705_
                               _tl234535234707_))))
                      (___match242286242287_
                       _e234537234702_
                       _hd234536234705_
                       _tl234535234707_))
                  (___match242286242287_
                   _e234537234702_
                   _hd234536234705_
                   _tl234535234707_))
              (___match242286242287_
               _e234537234702_
               _hd234536234705_
               _tl234535234707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242286242287_
                                               _e234537234702_
                                               _hd234536234705_
                                               _tl234535234707_))))
                                      (let ((_-hash-ref234591234975_
                                             (reverse _-hash-ref234587234854_))
                                            (_-xkwvar234590234973_
                                             (reverse _-xkwvar234586234852_))
                                            (_key234589234971_
                                             (reverse _key234585234850_))
                                            (_-absent-value234588234969_
                                             (reverse _-absent-value234584234848_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl234544234731_))
                                            (let ((_L234978_ _hd234599234838_)
                                                  (_L234979_
                                                   _-absent-value234588234969_)
                                                  (_L234980_ _key234589234971_)
                                                  (_L234981_
                                                   _-xkwvar234590234973_)
                                                  (_L234982_
                                                   _-hash-ref234591234975_)
                                                  (_L234983_ _hd234575234809_)
                                                  (_L234984_ _hd234566234785_)
                                                  (_L234985_ _hd234557234761_)
                                                  (_L234986_ _tl234541234723_)
                                                  (_L234987_ _hd234542234721_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L234987_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L234986_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L234985_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L234987_
                                                          _L234983_))
                                                       (let ((__tmp243701
                                                              (let ((__tmp243702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g235040235043_ _g235041235045_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235040235043_ _g235041235045_)))))
                        (declare (not safe))
                        (foldr1 __tmp243702 '() _L234980_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp243701))
               (let ((__tmp243700
                      (lambda (_g235047235049_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235047235049_
                           'hash-ref))))
                     (__tmp243698
                      (let ((__tmp243699
                             (lambda (_g235051235054_ _g235052235056_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235051235054_ _g235052235056_)))))
                        (declare (not safe))
                        (foldr1 __tmp243699 '() _L234982_))))
                 (declare (not safe))
                 (andmap1 __tmp243700 __tmp243698))
               (let ((__tmp243697
                      (lambda (_g235058235060_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235058235060_
                           'absent-value))))
                     (__tmp243695
                      (let ((__tmp243696
                             (lambda (_g235062235065_ _g235063235067_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235062235065_ _g235063235067_)))))
                        (declare (not safe))
                        (foldr1 __tmp243696 '() _L234979_))))
                 (declare (not safe))
                 (andmap1 __tmp243697 __tmp243695))
               (let ((__tmp243694
                      (lambda (_g235069235071_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g235069235071_ _L234987_))))
                     (__tmp243692
                      (let ((__tmp243693
                             (lambda (_g235073235076_ _g235074235078_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235073235076_ _g235074235078_)))))
                        (declare (not safe))
                        (foldr1 __tmp243693 '() _L234981_))))
                 (declare (not safe))
                 (andmap1 __tmp243694 __tmp243692)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont241973241974_
                                                   _L234978_
                                                   _L234979_
                                                   _L234980_
                                                   _L234981_
                                                   _L234982_
                                                   _L234983_
                                                   _L234984_
                                                   _L234985_
                                                   _L234986_
                                                   _L234987_)
                                                  (___match242286242287_
                                                   _e234537234702_
                                                   _hd234536234705_
                                                   _tl234535234707_)))
                                            (___match242286242287_
                                             _e234537234702_
                                             _hd234536234705_
                                             _tl234535234707_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234580234843_
                           _target234577234814_
                           '()
                           '()
                           '()
                           '())))))
                   (___match242152242153_
                    (lambda (_e234537234702_
                             _hd234536234705_
                             _tl234535234707_
                             _e234540234710_
                             _hd234539234713_
                             _tl234538234715_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234539234713_))
                          (let ((_e234543234718_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234539234713_))))
                            (let ((_tl234541234723_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234543234718_)))
                                  (_hd234542234721_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234543234718_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234538234715_))
                                  (let ((_e234546234726_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234538234715_))))
                                    (let ((_tl234544234731_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234546234726_)))
                                          (_hd234545234729_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234546234726_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234545234729_))
                                          (let ((_e234549234734_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234545234729_))))
                                            (let ((_tl234547234739_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234549234734_)))
                                                  (_hd234548234737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234549234734_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd234548234737_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd234548234737_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234547234739_))
                                                          (let ((_e234552234742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234547234739_))))
                    (let ((_tl234550234747_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234552234742_)))
                          (_hd234551234745_
                           (let ()
                             (declare (not safe))
                             (##car _e234552234742_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234551234745_))
                          (let ((_e234555234750_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234551234745_))))
                            (let ((_tl234553234755_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234555234750_)))
                                  (_hd234554234753_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234555234750_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234554234753_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234554234753_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234553234755_))
                                          (let ((_e234558234758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234553234755_))))
                                            (let ((_tl234556234763_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234558234758_)))
                                                  (_hd234557234761_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234558234758_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234556234763_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234550234747_))
                                                      (let ((_e234561234766_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234550234747_))))
                (let ((_tl234559234771_
                       (let () (declare (not safe)) (##cdr _e234561234766_)))
                      (_hd234560234769_
                       (let () (declare (not safe)) (##car _e234561234766_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234560234769_))
                      (let ((_e234564234774_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234560234769_))))
                        (let ((_tl234562234779_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234564234774_)))
                              (_hd234563234777_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234564234774_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234563234777_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234563234777_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234562234779_))
                                      (let ((_e234567234782_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234562234779_))))
                                        (let ((_tl234565234787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234567234782_)))
                                              (_hd234566234785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234567234782_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234565234787_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234559234771_))
                                                  (let ((_e234570234790_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234559234771_))))
                                                    (let ((_tl234568234795_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234570234790_)))
                                                          (_hd234569234793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234570234790_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234569234793_))
                                                          (let ((_e234573234798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234569234793_))))
                    (let ((_tl234571234803_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234573234798_)))
                          (_hd234572234801_
                           (let ()
                             (declare (not safe))
                             (##car _e234573234798_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234572234801_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234572234801_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234571234803_))
                                  (let ((_e234576234806_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234571234803_))))
                                    (let ((_tl234574234811_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234576234806_)))
                                          (_hd234575234809_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234576234806_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234574234811_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl234568234795_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl234568234795_))
                                                        '1)
                                                  (let ((___splice241975241976_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl234568234795_
                                                            '1))))
                                                    (let ((_tl234579234816_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241975241976_
                                                              '1)))
                                                          (_target234577234814_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241975241976_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234579234816_))
                                                          (let ((_e234594234819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234579234816_))))
                    (let ((_tl234592234824_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234594234819_)))
                          (_hd234593234822_
                           (let ()
                             (declare (not safe))
                             (##car _e234594234819_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234593234822_))
                          (let ((_e234597234827_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234593234822_))))
                            (let ((_tl234595234832_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234597234827_)))
                                  (_hd234596234830_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234597234827_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234596234830_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234596234830_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234595234832_))
                                          (let ((_e234600234835_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234595234832_))))
                                            (let ((_tl234598234840_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234600234835_)))
                                                  (_hd234599234838_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234600234835_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234598234840_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234592234824_))
                                                      (___match242280242281_
                                                       _e234537234702_
                                                       _hd234536234705_
                                                       _tl234535234707_
                                                       _e234540234710_
                                                       _hd234539234713_
                                                       _tl234538234715_
                                                       _e234543234718_
                                                       _hd234542234721_
                                                       _tl234541234723_
                                                       _e234546234726_
                                                       _hd234545234729_
                                                       _tl234544234731_
                                                       _e234549234734_
                                                       _hd234548234737_
                                                       _tl234547234739_
                                                       _e234552234742_
                                                       _hd234551234745_
                                                       _tl234550234747_
                                                       _e234555234750_
                                                       _hd234554234753_
                                                       _tl234553234755_
                                                       _e234558234758_
                                                       _hd234557234761_
                                                       _tl234556234763_
                                                       _e234561234766_
                                                       _hd234560234769_
                                                       _tl234559234771_
                                                       _e234564234774_
                                                       _hd234563234777_
                                                       _tl234562234779_
                                                       _e234567234782_
                                                       _hd234566234785_
                                                       _tl234565234787_
                                                       _e234570234790_
                                                       _hd234569234793_
                                                       _tl234568234795_
                                                       _e234573234798_
                                                       _hd234572234801_
                                                       _tl234571234803_
                                                       _e234576234806_
                                                       _hd234575234809_
                                                       _tl234574234811_
                                                       ___splice241975241976_
                                                       _target234577234814_
                                                       _tl234579234816_
                                                       _e234594234819_
                                                       _hd234593234822_
                                                       _tl234592234824_
                                                       _e234597234827_
                                                       _hd234596234830_
                                                       _tl234595234832_
                                                       _e234600234835_
                                                       _hd234599234838_
                                                       _tl234598234840_)
                                                      (___match242286242287_
                                                       _e234537234702_
                                                       _hd234536234705_
                                                       _tl234535234707_))
                                                  (___match242286242287_
                                                   _e234537234702_
                                                   _hd234536234705_
                                                   _tl234535234707_))))
                                          (___match242286242287_
                                           _e234537234702_
                                           _hd234536234705_
                                           _tl234535234707_))
                                      (___match242286242287_
                                       _e234537234702_
                                       _hd234536234705_
                                       _tl234535234707_))
                                  (___match242286242287_
                                   _e234537234702_
                                   _hd234536234705_
                                   _tl234535234707_))))
                          (___match242286242287_
                           _e234537234702_
                           _hd234536234705_
                           _tl234535234707_))))
                  (___match242286242287_
                   _e234537234702_
                   _hd234536234705_
                   _tl234535234707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242286242287_
                                                   _e234537234702_
                                                   _hd234536234705_
                                                   _tl234535234707_))
                                              (___match242286242287_
                                               _e234537234702_
                                               _hd234536234705_
                                               _tl234535234707_))
                                          (___match242286242287_
                                           _e234537234702_
                                           _hd234536234705_
                                           _tl234535234707_))))
                                  (___match242286242287_
                                   _e234537234702_
                                   _hd234536234705_
                                   _tl234535234707_))
                              (___match242286242287_
                               _e234537234702_
                               _hd234536234705_
                               _tl234535234707_))
                          (___match242286242287_
                           _e234537234702_
                           _hd234536234705_
                           _tl234535234707_))))
                  (___match242286242287_
                   _e234537234702_
                   _hd234536234705_
                   _tl234535234707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242286242287_
                                                   _e234537234702_
                                                   _hd234536234705_
                                                   _tl234535234707_))
                                              (___match242286242287_
                                               _e234537234702_
                                               _hd234536234705_
                                               _tl234535234707_))))
                                      (___match242286242287_
                                       _e234537234702_
                                       _hd234536234705_
                                       _tl234535234707_))
                                  (___match242286242287_
                                   _e234537234702_
                                   _hd234536234705_
                                   _tl234535234707_))
                              (___match242286242287_
                               _e234537234702_
                               _hd234536234705_
                               _tl234535234707_))))
                      (___match242286242287_
                       _e234537234702_
                       _hd234536234705_
                       _tl234535234707_))))
              (___match242286242287_
               _e234537234702_
               _hd234536234705_
               _tl234535234707_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242286242287_
                                                   _e234537234702_
                                                   _hd234536234705_
                                                   _tl234535234707_))))
                                          (___match242286242287_
                                           _e234537234702_
                                           _hd234536234705_
                                           _tl234535234707_))
                                      (___match242286242287_
                                       _e234537234702_
                                       _hd234536234705_
                                       _tl234535234707_))
                                  (___match242286242287_
                                   _e234537234702_
                                   _hd234536234705_
                                   _tl234535234707_))))
                          (___match242286242287_
                           _e234537234702_
                           _hd234536234705_
                           _tl234535234707_))))
                  (___match242286242287_
                   _e234537234702_
                   _hd234536234705_
                   _tl234535234707_))
              (___match242286242287_
               _e234537234702_
               _hd234536234705_
               _tl234535234707_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242286242287_
                                                   _e234537234702_
                                                   _hd234536234705_
                                                   _tl234535234707_))))
                                          (___match242286242287_
                                           _e234537234702_
                                           _hd234536234705_
                                           _tl234535234707_))))
                                  (___match242286242287_
                                   _e234537234702_
                                   _hd234536234705_
                                   _tl234535234707_))))
                          (___match242286242287_
                           _e234537234702_
                           _hd234536234705_
                           _tl234535234707_))))
                   (___match242140242141_
                    (lambda (_e234470235093_
                             _hd234469235096_
                             _tl234468235098_
                             _e234473235101_
                             _hd234472235104_
                             _tl234471235106_
                             _e234476235109_
                             _hd234475235112_
                             _tl234474235114_
                             _e234479235117_
                             _hd234478235120_
                             _tl234477235122_
                             _e234482235125_
                             _hd234481235128_
                             _tl234480235130_
                             _e234485235133_
                             _hd234484235136_
                             _tl234483235138_
                             _e234488235141_
                             _hd234487235144_
                             _tl234486235146_
                             _e234491235149_
                             _hd234490235152_
                             _tl234489235154_
                             _e234494235157_
                             _hd234493235160_
                             _tl234492235162_
                             _e234497235165_
                             _hd234496235168_
                             _tl234495235170_
                             _e234500235173_
                             _hd234499235176_
                             _tl234498235178_
                             _e234503235181_
                             _hd234502235184_
                             _tl234501235186_
                             _e234506235189_
                             _hd234505235192_
                             _tl234504235194_
                             _e234509235197_
                             _hd234508235200_
                             _tl234507235202_
                             _e234512235205_
                             _hd234511235208_
                             _tl234510235210_
                             _e234515235213_
                             _hd234514235216_
                             _tl234513235218_
                             _e234518235221_
                             _hd234517235224_
                             _tl234516235226_
                             _e234521235229_
                             _hd234520235232_
                             _tl234519235234_
                             _e234524235237_
                             _hd234523235240_
                             _tl234522235242_)
                      (let ((_L235245_ _hd234523235240_)
                            (_L235246_ _hd234514235216_)
                            (_L235247_ _hd234505235192_)
                            (_L235248_ _hd234496235168_)
                            (_L235249_ _hd234487235144_)
                            (_L235250_ _hd234472235104_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L235250_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L235249_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L235248_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L235250_ _L235245_)))
                            (___kont241971241972_
                             _L235245_
                             _L235246_
                             _L235247_
                             _L235248_
                             _L235249_
                             _L235250_)
                            (___match242152242153_
                             _e234470235093_
                             _hd234469235096_
                             _tl234468235098_
                             _e234473235101_
                             _hd234472235104_
                             _tl234471235106_)))))
                   (___match241994241995_
                    (lambda (_e234470235093_ _hd234469235096_ _tl234468235098_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234468235098_))
                          (let ((_e234473235101_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234468235098_))))
                            (let ((_tl234471235106_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234473235101_)))
                                  (_hd234472235104_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234473235101_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234471235106_))
                                  (let ((_e234476235109_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234471235106_))))
                                    (let ((_tl234474235114_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234476235109_)))
                                          (_hd234475235112_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234476235109_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234475235112_))
                                          (let ((_e234479235117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234475235112_))))
                                            (let ((_tl234477235122_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234479235117_)))
                                                  (_hd234478235120_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234479235117_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd234478235120_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd234478235120_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234477235122_))
                                                          (let ((_e234482235125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234477235122_))))
                    (let ((_tl234480235130_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234482235125_)))
                          (_hd234481235128_
                           (let ()
                             (declare (not safe))
                             (##car _e234482235125_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234481235128_))
                          (let ((_e234485235133_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234481235128_))))
                            (let ((_tl234483235138_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234485235133_)))
                                  (_hd234484235136_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234485235133_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234484235136_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234484235136_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234483235138_))
                                          (let ((_e234488235141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234483235138_))))
                                            (let ((_tl234486235146_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234488235141_)))
                                                  (_hd234487235144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234488235141_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234486235146_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234480235130_))
                                                      (let ((_e234491235149_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234480235130_))))
                (let ((_tl234489235154_
                       (let () (declare (not safe)) (##cdr _e234491235149_)))
                      (_hd234490235152_
                       (let () (declare (not safe)) (##car _e234491235149_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234490235152_))
                      (let ((_e234494235157_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234490235152_))))
                        (let ((_tl234492235162_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234494235157_)))
                              (_hd234493235160_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234494235157_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234493235160_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234493235160_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234492235162_))
                                      (let ((_e234497235165_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234492235162_))))
                                        (let ((_tl234495235170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234497235165_)))
                                              (_hd234496235168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234497235165_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234495235170_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234489235154_))
                                                  (let ((_e234500235173_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234489235154_))))
                                                    (let ((_tl234498235178_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234500235173_)))
                                                          (_hd234499235176_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234500235173_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234499235176_))
                                                          (let ((_e234503235181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234499235176_))))
                    (let ((_tl234501235186_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234503235181_)))
                          (_hd234502235184_
                           (let ()
                             (declare (not safe))
                             (##car _e234503235181_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234502235184_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd234502235184_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234501235186_))
                                  (let ((_e234506235189_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234501235186_))))
                                    (let ((_tl234504235194_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234506235189_)))
                                          (_hd234505235192_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234506235189_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234504235194_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234498235178_))
                                              (let ((_e234509235197_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234498235178_))))
                                                (let ((_tl234507235202_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234509235197_)))
                                                      (_hd234508235200_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234509235197_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234508235200_))
                                                      (let ((_e234512235205_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd234508235200_))))
                (let ((_tl234510235210_
                       (let () (declare (not safe)) (##cdr _e234512235205_)))
                      (_hd234511235208_
                       (let () (declare (not safe)) (##car _e234512235205_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd234511235208_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234511235208_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234510235210_))
                              (let ((_e234515235213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234510235210_))))
                                (let ((_tl234513235218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234515235213_)))
                                      (_hd234514235216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234515235213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234513235218_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234507235202_))
                                          (let ((_e234518235221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234507235202_))))
                                            (let ((_tl234516235226_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234518235221_)))
                                                  (_hd234517235224_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234518235221_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd234517235224_))
                                                  (let ((_e234521235229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd234517235224_))))
                                                    (let ((_tl234519235234_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234521235229_)))
                                                          (_hd234520235232_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234521235229_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd234520235232_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd234520235232_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234519235234_))
                          (let ((_e234524235237_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234519235234_))))
                            (let ((_tl234522235242_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234524235237_)))
                                  (_hd234523235240_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234524235237_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234522235242_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234516235226_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234474235114_))
                                          (___match242140242141_
                                           _e234470235093_
                                           _hd234469235096_
                                           _tl234468235098_
                                           _e234473235101_
                                           _hd234472235104_
                                           _tl234471235106_
                                           _e234476235109_
                                           _hd234475235112_
                                           _tl234474235114_
                                           _e234479235117_
                                           _hd234478235120_
                                           _tl234477235122_
                                           _e234482235125_
                                           _hd234481235128_
                                           _tl234480235130_
                                           _e234485235133_
                                           _hd234484235136_
                                           _tl234483235138_
                                           _e234488235141_
                                           _hd234487235144_
                                           _tl234486235146_
                                           _e234491235149_
                                           _hd234490235152_
                                           _tl234489235154_
                                           _e234494235157_
                                           _hd234493235160_
                                           _tl234492235162_
                                           _e234497235165_
                                           _hd234496235168_
                                           _tl234495235170_
                                           _e234500235173_
                                           _hd234499235176_
                                           _tl234498235178_
                                           _e234503235181_
                                           _hd234502235184_
                                           _tl234501235186_
                                           _e234506235189_
                                           _hd234505235192_
                                           _tl234504235194_
                                           _e234509235197_
                                           _hd234508235200_
                                           _tl234507235202_
                                           _e234512235205_
                                           _hd234511235208_
                                           _tl234510235210_
                                           _e234515235213_
                                           _hd234514235216_
                                           _tl234513235218_
                                           _e234518235221_
                                           _hd234517235224_
                                           _tl234516235226_
                                           _e234521235229_
                                           _hd234520235232_
                                           _tl234519235234_
                                           _e234524235237_
                                           _hd234523235240_
                                           _tl234522235242_)
                                          (___match242152242153_
                                           _e234470235093_
                                           _hd234469235096_
                                           _tl234468235098_
                                           _e234473235101_
                                           _hd234472235104_
                                           _tl234471235106_))
                                      (___match242152242153_
                                       _e234470235093_
                                       _hd234469235096_
                                       _tl234468235098_
                                       _e234473235101_
                                       _hd234472235104_
                                       _tl234471235106_))
                                  (___match242152242153_
                                   _e234470235093_
                                   _hd234469235096_
                                   _tl234468235098_
                                   _e234473235101_
                                   _hd234472235104_
                                   _tl234471235106_))))
                          (___match242152242153_
                           _e234470235093_
                           _hd234469235096_
                           _tl234468235098_
                           _e234473235101_
                           _hd234472235104_
                           _tl234471235106_))
                      (___match242152242153_
                       _e234470235093_
                       _hd234469235096_
                       _tl234468235098_
                       _e234473235101_
                       _hd234472235104_
                       _tl234471235106_))
                  (___match242152242153_
                   _e234470235093_
                   _hd234469235096_
                   _tl234468235098_
                   _e234473235101_
                   _hd234472235104_
                   _tl234471235106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242152242153_
                                                   _e234470235093_
                                                   _hd234469235096_
                                                   _tl234468235098_
                                                   _e234473235101_
                                                   _hd234472235104_
                                                   _tl234471235106_))))
                                          (___match242152242153_
                                           _e234470235093_
                                           _hd234469235096_
                                           _tl234468235098_
                                           _e234473235101_
                                           _hd234472235104_
                                           _tl234471235106_))
                                      (___match242152242153_
                                       _e234470235093_
                                       _hd234469235096_
                                       _tl234468235098_
                                       _e234473235101_
                                       _hd234472235104_
                                       _tl234471235106_))))
                              (___match242152242153_
                               _e234470235093_
                               _hd234469235096_
                               _tl234468235098_
                               _e234473235101_
                               _hd234472235104_
                               _tl234471235106_))
                          (___match242152242153_
                           _e234470235093_
                           _hd234469235096_
                           _tl234468235098_
                           _e234473235101_
                           _hd234472235104_
                           _tl234471235106_))
                      (___match242152242153_
                       _e234470235093_
                       _hd234469235096_
                       _tl234468235098_
                       _e234473235101_
                       _hd234472235104_
                       _tl234471235106_))))
              (___match242152242153_
               _e234470235093_
               _hd234469235096_
               _tl234468235098_
               _e234473235101_
               _hd234472235104_
               _tl234471235106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242152242153_
                                               _e234470235093_
                                               _hd234469235096_
                                               _tl234468235098_
                                               _e234473235101_
                                               _hd234472235104_
                                               _tl234471235106_))
                                          (___match242152242153_
                                           _e234470235093_
                                           _hd234469235096_
                                           _tl234468235098_
                                           _e234473235101_
                                           _hd234472235104_
                                           _tl234471235106_))))
                                  (___match242152242153_
                                   _e234470235093_
                                   _hd234469235096_
                                   _tl234468235098_
                                   _e234473235101_
                                   _hd234472235104_
                                   _tl234471235106_))
                              (___match242152242153_
                               _e234470235093_
                               _hd234469235096_
                               _tl234468235098_
                               _e234473235101_
                               _hd234472235104_
                               _tl234471235106_))
                          (___match242152242153_
                           _e234470235093_
                           _hd234469235096_
                           _tl234468235098_
                           _e234473235101_
                           _hd234472235104_
                           _tl234471235106_))))
                  (___match242152242153_
                   _e234470235093_
                   _hd234469235096_
                   _tl234468235098_
                   _e234473235101_
                   _hd234472235104_
                   _tl234471235106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242152242153_
                                                   _e234470235093_
                                                   _hd234469235096_
                                                   _tl234468235098_
                                                   _e234473235101_
                                                   _hd234472235104_
                                                   _tl234471235106_))
                                              (___match242152242153_
                                               _e234470235093_
                                               _hd234469235096_
                                               _tl234468235098_
                                               _e234473235101_
                                               _hd234472235104_
                                               _tl234471235106_))))
                                      (___match242152242153_
                                       _e234470235093_
                                       _hd234469235096_
                                       _tl234468235098_
                                       _e234473235101_
                                       _hd234472235104_
                                       _tl234471235106_))
                                  (___match242152242153_
                                   _e234470235093_
                                   _hd234469235096_
                                   _tl234468235098_
                                   _e234473235101_
                                   _hd234472235104_
                                   _tl234471235106_))
                              (___match242152242153_
                               _e234470235093_
                               _hd234469235096_
                               _tl234468235098_
                               _e234473235101_
                               _hd234472235104_
                               _tl234471235106_))))
                      (___match242152242153_
                       _e234470235093_
                       _hd234469235096_
                       _tl234468235098_
                       _e234473235101_
                       _hd234472235104_
                       _tl234471235106_))))
              (___match242152242153_
               _e234470235093_
               _hd234469235096_
               _tl234468235098_
               _e234473235101_
               _hd234472235104_
               _tl234471235106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242152242153_
                                                   _e234470235093_
                                                   _hd234469235096_
                                                   _tl234468235098_
                                                   _e234473235101_
                                                   _hd234472235104_
                                                   _tl234471235106_))))
                                          (___match242152242153_
                                           _e234470235093_
                                           _hd234469235096_
                                           _tl234468235098_
                                           _e234473235101_
                                           _hd234472235104_
                                           _tl234471235106_))
                                      (___match242152242153_
                                       _e234470235093_
                                       _hd234469235096_
                                       _tl234468235098_
                                       _e234473235101_
                                       _hd234472235104_
                                       _tl234471235106_))
                                  (___match242152242153_
                                   _e234470235093_
                                   _hd234469235096_
                                   _tl234468235098_
                                   _e234473235101_
                                   _hd234472235104_
                                   _tl234471235106_))))
                          (___match242152242153_
                           _e234470235093_
                           _hd234469235096_
                           _tl234468235098_
                           _e234473235101_
                           _hd234472235104_
                           _tl234471235106_))))
                  (___match242152242153_
                   _e234470235093_
                   _hd234469235096_
                   _tl234468235098_
                   _e234473235101_
                   _hd234472235104_
                   _tl234471235106_))
              (___match242152242153_
               _e234470235093_
               _hd234469235096_
               _tl234468235098_
               _e234473235101_
               _hd234472235104_
               _tl234471235106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242152242153_
                                                   _e234470235093_
                                                   _hd234469235096_
                                                   _tl234468235098_
                                                   _e234473235101_
                                                   _hd234472235104_
                                                   _tl234471235106_))))
                                          (___match242152242153_
                                           _e234470235093_
                                           _hd234469235096_
                                           _tl234468235098_
                                           _e234473235101_
                                           _hd234472235104_
                                           _tl234471235106_))))
                                  (___match242152242153_
                                   _e234470235093_
                                   _hd234469235096_
                                   _tl234468235098_
                                   _e234473235101_
                                   _hd234472235104_
                                   _tl234471235106_))))
                          (___match242286242287_
                           _e234470235093_
                           _hd234469235096_
                           _tl234468235098_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241967241968_))
                  (let ((_e234461235310_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241967241968_))))
                    (let ((_tl234459235315_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234461235310_)))
                          (_hd234460235313_
                           (let ()
                             (declare (not safe))
                             (##car _e234461235310_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L235318_ _tl234459235315_))
                            (___kont241969241970_ _L235318_))
                          (___match241994241995_
                           _e234461235310_
                           _hd234460235313_
                           _tl234459235315_))))
                  (let () (declare (not safe)) (_g234456234652_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx234405_)
        (letrec ((_clause-e234407_
                  (lambda (_form234448_)
                    (let ((__obj243640
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
                       __obj243640
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form234448_))
                       (if (let ((__tmp243707
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp243707))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form234448_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form234448_))
                               '#f)
                           '#f))
                      __obj243640))))
          (let* ((_g234409234419_
                  (lambda (_g234410234416_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g234410234416_))))
                 (_g234408234445_
                  (lambda (_g234410234422_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g234410234422_))
                        (let ((_e234414234424_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g234410234422_))))
                          (let ((_hd234413234427_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234414234424_)))
                                (_tl234412234429_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234414234424_))))
                            ((lambda (_L234432_)
                               (let ((_clauses234443_
                                      (map _clause-e234407_ _L234432_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses234443_)))
                             _tl234412234429_)))
                        (let ()
                          (declare (not safe))
                          (_g234409234419_ _g234410234422_))))))
            (declare (not safe))
            (_g234408234445_ _stx234405_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx234337_)
        (let* ((_g234339234356_
                (lambda (_g234340234353_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234340234353_))))
               (_g234338234402_
                (lambda (_g234340234359_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234340234359_))
                      (let ((_e234345234361_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234340234359_))))
                        (let ((_hd234344234364_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234345234361_)))
                              (_tl234343234366_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234345234361_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234343234366_))
                              (let ((_e234348234369_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234343234366_))))
                                (let ((_hd234347234372_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234348234369_)))
                                      (_tl234346234374_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234348234369_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234346234374_))
                                      (let ((_e234351234377_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234346234374_))))
                                        (let ((_hd234350234380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234351234377_)))
                                              (_tl234349234382_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234351234377_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234349234382_))
                                              ((lambda (_L234385_ _L234386_)
                                                 (let ((__tmp243708
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L234385_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp243708
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd234350234380_
                                               _hd234347234372_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234339234356_
                                                 _g234340234359_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234339234356_ _g234340234359_)))))
                              (let ()
                                (declare (not safe))
                                (_g234339234356_ _g234340234359_)))))
                      (let ()
                        (declare (not safe))
                        (_g234339234356_ _g234340234359_))))))
          (declare (not safe))
          (_g234338234402_ _stx234337_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx234242_)
        (let* ((___stx242295242296_ _stx234242_)
               (_g234245234265_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242295242296_)))))
          (let ((___kont242297242298_
                 (lambda (_L234309_ _L234310_)
                   (let ((_type-e234327234329_
                          (let ((__tmp243709
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L234310_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp243709
                             '#f))))
                     (if _type-e234327234329_
                         (let ((_type-e234332_ _type-e234327234329_))
                           (_type-e234332_ _stx234242_ _L234309_))
                         '#f))))
                (___kont242299242300_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242295242296_))
                (let ((_e234251234277_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242295242296_))))
                  (let ((_tl234249234282_
                         (let () (declare (not safe)) (##cdr _e234251234277_)))
                        (_hd234250234280_
                         (let ()
                           (declare (not safe))
                           (##car _e234251234277_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234249234282_))
                        (let ((_e234254234285_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234249234282_))))
                          (let ((_tl234252234290_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234254234285_)))
                                (_hd234253234288_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234254234285_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234253234288_))
                                (let ((_e234257234293_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234253234288_))))
                                  (let ((_tl234255234298_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234257234293_)))
                                        (_hd234256234296_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234257234293_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234256234296_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234256234296_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234255234298_))
                                                (let ((_e234260234301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234255234298_))))
                                                  (let ((_tl234258234306_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234260234301_)))
                                                        (_hd234259234304_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234260234301_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234258234306_))
                                                        (___kont242297242298_
                                                         _tl234252234290_
                                                         _hd234259234304_)
                                                        (___kont242299242300_))))
                                                (___kont242299242300_))
                                            (___kont242299242300_))
                                        (___kont242299242300_))))
                                (___kont242299242300_))))
                        (___kont242299242300_))))
                (___kont242299242300_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx234191_)
        (let* ((_g234193234206_
                (lambda (_g234194234203_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234194234203_))))
               (_g234192234239_
                (lambda (_g234194234209_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234194234209_))
                      (let ((_e234198234211_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234194234209_))))
                        (let ((_hd234197234214_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234198234211_)))
                              (_tl234196234216_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234198234211_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234196234216_))
                              (let ((_e234201234219_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234196234216_))))
                                (let ((_hd234200234222_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234201234219_)))
                                      (_tl234199234224_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234201234219_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234199234224_))
                                      ((lambda (_L234227_)
                                         (let ((__tmp243710
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L234227_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp243710)))
                                       _hd234200234222_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234193234206_ _g234194234209_)))))
                              (let ()
                                (declare (not safe))
                                (_g234193234206_ _g234194234209_)))))
                      (let ()
                        (declare (not safe))
                        (_g234193234206_ _g234194234209_))))))
          (declare (not safe))
          (_g234192234239_ _stx234191_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form233425_)
        (let* ((___stx242333242334_ _form233425_)
               (_g233430233587_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242333242334_)))))
          (let ((___kont242335242336_
                 (lambda (_L234111_ _L234112_ _L234113_) '#t))
                (___kont242341242342_
                 (lambda (_L233899_
                          _L233900_
                          _L233901_
                          _L233902_
                          _L233903_
                          _L233904_)
                   '#t))
                (___kont242347242348_
                 (lambda (_L233695_ _L233696_ _L233697_ _L233698_) '#t))
                (___kont242349242350_ (lambda () '#f)))
            (let* ((___match242474242475_
                    (lambda (_e233549233599_
                             _hd233548233602_
                             _tl233547233604_
                             _e233552233607_
                             _hd233551233610_
                             _tl233550233612_
                             _e233555233615_
                             _hd233554233618_
                             _tl233553233620_
                             _e233558233623_
                             _hd233557233626_
                             _tl233556233628_
                             _e233561233631_
                             _hd233560233634_
                             _tl233559233636_
                             _e233564233639_
                             _hd233563233642_
                             _tl233562233644_
                             _e233567233647_
                             _hd233566233650_
                             _tl233565233652_
                             _e233570233655_
                             _hd233569233658_
                             _tl233568233660_
                             _e233573233663_
                             _hd233572233666_
                             _tl233571233668_
                             _e233576233671_
                             _hd233575233674_
                             _tl233574233676_
                             _e233579233679_
                             _hd233578233682_
                             _tl233577233684_
                             _e233582233687_
                             _hd233581233690_
                             _tl233580233692_)
                      (let ((_L233695_ _hd233581233690_)
                            (_L233696_ _hd233572233666_)
                            (_L233697_ _hd233563233642_)
                            (_L233698_ _hd233548233602_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L233698_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L233697_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L233698_ _L233695_))
                                 (let ((__tmp243711
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L233696_
                                           _L233698_))))
                                   (declare (not safe))
                                   (not __tmp243711)))
                            (___kont242347242348_
                             _L233695_
                             _L233696_
                             _L233697_
                             _L233698_)
                            (___kont242349242350_)))))
                   (___match242446242447_
                    (lambda (_e233549233599_
                             _hd233548233602_
                             _tl233547233604_
                             _e233552233607_
                             _hd233551233610_
                             _tl233550233612_
                             _e233555233615_
                             _hd233554233618_
                             _tl233553233620_
                             _e233558233623_
                             _hd233557233626_
                             _tl233556233628_
                             _e233561233631_
                             _hd233560233634_
                             _tl233559233636_
                             _e233564233639_
                             _hd233563233642_
                             _tl233562233644_
                             _e233567233647_
                             _hd233566233650_
                             _tl233565233652_
                             _e233570233655_
                             _hd233569233658_
                             _tl233568233660_
                             _e233573233663_
                             _hd233572233666_
                             _tl233571233668_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233565233652_))
                          (let ((_e233576233671_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233565233652_))))
                            (let ((_tl233574233676_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233576233671_)))
                                  (_hd233575233674_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233576233671_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233575233674_))
                                  (let ((_e233579233679_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233575233674_))))
                                    (let ((_tl233577233684_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233579233679_)))
                                          (_hd233578233682_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233579233679_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233578233682_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233578233682_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233577233684_))
                                                  (let ((_e233582233687_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233577233684_))))
                                                    (let ((_tl233580233692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233582233687_)))
                                                          (_hd233581233690_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233582233687_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233580233692_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl233574233676_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233550233612_))
                          (___match242474242475_
                           _e233549233599_
                           _hd233548233602_
                           _tl233547233604_
                           _e233552233607_
                           _hd233551233610_
                           _tl233550233612_
                           _e233555233615_
                           _hd233554233618_
                           _tl233553233620_
                           _e233558233623_
                           _hd233557233626_
                           _tl233556233628_
                           _e233561233631_
                           _hd233560233634_
                           _tl233559233636_
                           _e233564233639_
                           _hd233563233642_
                           _tl233562233644_
                           _e233567233647_
                           _hd233566233650_
                           _tl233565233652_
                           _e233570233655_
                           _hd233569233658_
                           _tl233568233660_
                           _e233573233663_
                           _hd233572233666_
                           _tl233571233668_
                           _e233576233671_
                           _hd233575233674_
                           _tl233574233676_
                           _e233579233679_
                           _hd233578233682_
                           _tl233577233684_
                           _e233582233687_
                           _hd233581233690_
                           _tl233580233692_)
                          (___kont242349242350_))
                      (___kont242349242350_))
                  (___kont242349242350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242349242350_))
                                              (___kont242349242350_))
                                          (___kont242349242350_))))
                                  (___kont242349242350_))))
                          (___kont242349242350_))))
                   (___match242376242377_
                    (lambda (_e233485233739_
                             _hd233484233742_
                             _tl233483233744_
                             ___splice242343242344_
                             _target233486233747_
                             _tl233488233749_)
                      (letrec ((_loop233489233752_
                                (lambda (_hd233487233755_ _arg233493233757_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233487233755_))
                                      (let ((_e233490233760_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233487233755_))))
                                        (let ((_lp-tl233492233765_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233490233760_)))
                                              (_lp-hd233491233763_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233490233760_))))
                                          (let ((__tmp243726
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233491233763_
                                                         _arg233493233757_))))
                                            (declare (not safe))
                                            (_loop233489233752_
                                             _lp-tl233492233765_
                                             __tmp243726))))
                                      (let ((_arg233494233768_
                                             (reverse _arg233493233757_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233483233744_))
                                            (let ((_e233497233771_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233483233744_))))
                                              (let ((_tl233495233776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233497233771_)))
                                                    (_hd233496233774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233497233771_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233496233774_))
                                                    (let ((_e233500233779_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233496233774_))))
                                                      (let ((_tl233498233784_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233500233779_)))
                    (_hd233499233782_
                     (let () (declare (not safe)) (##car _e233500233779_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233499233782_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233499233782_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233498233784_))
                            (let ((_e233503233787_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233498233784_))))
                              (let ((_tl233501233792_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233503233787_)))
                                    (_hd233502233790_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233503233787_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233502233790_))
                                    (let ((_e233506233795_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233502233790_))))
                                      (let ((_tl233504233800_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233506233795_)))
                                            (_hd233505233798_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233506233795_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233505233798_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233505233798_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233504233800_))
                                                    (let ((_e233509233803_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233504233800_))))
                                                      (let ((_tl233507233808_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233509233803_)))
                    (_hd233508233806_
                     (let () (declare (not safe)) (##car _e233509233803_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233507233808_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233501233792_))
                        (let ((_e233512233811_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233501233792_))))
                          (let ((_tl233510233816_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233512233811_)))
                                (_hd233511233814_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233512233811_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233511233814_))
                                (let ((_e233515233819_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233511233814_))))
                                  (let ((_tl233513233824_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233515233819_)))
                                        (_hd233514233822_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233515233819_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233514233822_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233514233822_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233513233824_))
                                                (let ((_e233518233827_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233513233824_))))
                                                  (let ((_tl233516233832_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233518233827_)))
                                                        (_hd233517233830_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233518233827_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233516233832_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl233510233816_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl233510233816_))
                              '1)
                        (let ((___splice242345242346_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233510233816_
                                  '1))))
                          (let ((_tl233521233837_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242345242346_ '1)))
                                (_target233519233835_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242345242346_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233521233837_))
                                (let ((_e233530233840_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233521233837_))))
                                  (let ((_tl233528233845_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233530233840_)))
                                        (_hd233529233843_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233530233840_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233529233843_))
                                        (let ((_e233533233848_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233529233843_))))
                                          (let ((_tl233531233853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233533233848_)))
                                                (_hd233532233851_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233533233848_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd233532233851_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd233532233851_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl233531233853_))
                                                        (let ((_e233536233856_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl233531233853_))))
                  (let ((_tl233534233861_
                         (let () (declare (not safe)) (##cdr _e233536233856_)))
                        (_hd233535233859_
                         (let ()
                           (declare (not safe))
                           (##car _e233536233856_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233534233861_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233528233845_))
                            (letrec ((_loop233522233864_
                                      (lambda (_hd233520233867_
                                               _xarg233526233869_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd233520233867_))
                                            (let ((_e233523233872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd233520233867_))))
                                              (let ((_lp-tl233525233877_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233523233872_)))
                                                    (_lp-hd233524233875_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233523233872_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd233524233875_))
                                                    (let ((_e233539233880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd233524233875_))))
                                                      (let ((_tl233537233885_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233539233880_)))
                    (_hd233538233883_
                     (let () (declare (not safe)) (##car _e233539233880_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233538233883_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd233538233883_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233537233885_))
                            (let ((_e233542233888_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233537233885_))))
                              (let ((_tl233540233893_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233542233888_)))
                                    (_hd233541233891_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233542233888_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233540233893_))
                                    (let ((__tmp243725
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd233541233891_
                                                   _xarg233526233869_))))
                                      (declare (not safe))
                                      (_loop233522233864_
                                       _lp-tl233525233877_
                                       __tmp243725))
                                    (___match242446242447_
                                     _e233485233739_
                                     _hd233484233742_
                                     _tl233483233744_
                                     _e233497233771_
                                     _hd233496233774_
                                     _tl233495233776_
                                     _e233500233779_
                                     _hd233499233782_
                                     _tl233498233784_
                                     _e233503233787_
                                     _hd233502233790_
                                     _tl233501233792_
                                     _e233506233795_
                                     _hd233505233798_
                                     _tl233504233800_
                                     _e233509233803_
                                     _hd233508233806_
                                     _tl233507233808_
                                     _e233512233811_
                                     _hd233511233814_
                                     _tl233510233816_
                                     _e233515233819_
                                     _hd233514233822_
                                     _tl233513233824_
                                     _e233518233827_
                                     _hd233517233830_
                                     _tl233516233832_))))
                            (___match242446242447_
                             _e233485233739_
                             _hd233484233742_
                             _tl233483233744_
                             _e233497233771_
                             _hd233496233774_
                             _tl233495233776_
                             _e233500233779_
                             _hd233499233782_
                             _tl233498233784_
                             _e233503233787_
                             _hd233502233790_
                             _tl233501233792_
                             _e233506233795_
                             _hd233505233798_
                             _tl233504233800_
                             _e233509233803_
                             _hd233508233806_
                             _tl233507233808_
                             _e233512233811_
                             _hd233511233814_
                             _tl233510233816_
                             _e233515233819_
                             _hd233514233822_
                             _tl233513233824_
                             _e233518233827_
                             _hd233517233830_
                             _tl233516233832_))
                        (___match242446242447_
                         _e233485233739_
                         _hd233484233742_
                         _tl233483233744_
                         _e233497233771_
                         _hd233496233774_
                         _tl233495233776_
                         _e233500233779_
                         _hd233499233782_
                         _tl233498233784_
                         _e233503233787_
                         _hd233502233790_
                         _tl233501233792_
                         _e233506233795_
                         _hd233505233798_
                         _tl233504233800_
                         _e233509233803_
                         _hd233508233806_
                         _tl233507233808_
                         _e233512233811_
                         _hd233511233814_
                         _tl233510233816_
                         _e233515233819_
                         _hd233514233822_
                         _tl233513233824_
                         _e233518233827_
                         _hd233517233830_
                         _tl233516233832_))
                    (___match242446242447_
                     _e233485233739_
                     _hd233484233742_
                     _tl233483233744_
                     _e233497233771_
                     _hd233496233774_
                     _tl233495233776_
                     _e233500233779_
                     _hd233499233782_
                     _tl233498233784_
                     _e233503233787_
                     _hd233502233790_
                     _tl233501233792_
                     _e233506233795_
                     _hd233505233798_
                     _tl233504233800_
                     _e233509233803_
                     _hd233508233806_
                     _tl233507233808_
                     _e233512233811_
                     _hd233511233814_
                     _tl233510233816_
                     _e233515233819_
                     _hd233514233822_
                     _tl233513233824_
                     _e233518233827_
                     _hd233517233830_
                     _tl233516233832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242446242447_
                                                     _e233485233739_
                                                     _hd233484233742_
                                                     _tl233483233744_
                                                     _e233497233771_
                                                     _hd233496233774_
                                                     _tl233495233776_
                                                     _e233500233779_
                                                     _hd233499233782_
                                                     _tl233498233784_
                                                     _e233503233787_
                                                     _hd233502233790_
                                                     _tl233501233792_
                                                     _e233506233795_
                                                     _hd233505233798_
                                                     _tl233504233800_
                                                     _e233509233803_
                                                     _hd233508233806_
                                                     _tl233507233808_
                                                     _e233512233811_
                                                     _hd233511233814_
                                                     _tl233510233816_
                                                     _e233515233819_
                                                     _hd233514233822_
                                                     _tl233513233824_
                                                     _e233518233827_
                                                     _hd233517233830_
                                                     _tl233516233832_))))
                                            (let ((_xarg233527233896_
                                                   (reverse _xarg233526233869_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233495233776_))
                                                  (let ((_L233899_
                                                         _hd233535233859_)
                                                        (_L233900_
                                                         _xarg233527233896_)
                                                        (_L233901_
                                                         _hd233517233830_)
                                                        (_L233902_
                                                         _hd233508233806_)
                                                        (_L233903_
                                                         _tl233488233749_)
                                                        (_L233904_
                                                         _arg233494233768_))
                                                    (if (and (let ((__tmp243723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp243724
                                   (lambda (_g233947233950_ _g233948233952_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233947233950_
                                             _g233948233952_)))))
                              (declare (not safe))
                              (foldr1 __tmp243724 '() _L233904_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp243723))
                     (let () (declare (not safe)) (gx#identifier? _L233903_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L233902_ 'apply))
                     (fx= (length (let ((__tmp243721
                                         (lambda (_g233954233957_
                                                  _g233955233959_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g233954233957_
                                                   _g233955233959_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp243721 '() _L233904_)))
                          (length (let ((__tmp243722
                                         (lambda (_g233961233964_
                                                  _g233962233966_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g233961233964_
                                                   _g233962233966_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp243722 '() _L233900_))))
                     (let ((__tmp243719
                            (let ((__tmp243720
                                   (lambda (_g233968233971_ _g233969233973_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233968233971_
                                             _g233969233973_)))))
                              (declare (not safe))
                              (foldr1 __tmp243720 '() _L233904_)))
                           (__tmp243717
                            (let ((__tmp243718
                                   (lambda (_g233975233978_ _g233976233980_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233975233978_
                                             _g233976233980_)))))
                              (declare (not safe))
                              (foldr1 __tmp243718 '() _L233900_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp243719 __tmp243717))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L233903_ _L233899_))
                     (let ((__tmp243712
                            (let ((__tmp243716
                                   (lambda (_g233982233984_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g233982233984_
                                        _L233901_))))
                                  (__tmp243713
                                   (let ((__tmp243715
                                          (lambda (_g233986233989_
                                                   _g233987233991_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g233986233989_
                                                    _g233987233991_))))
                                         (__tmp243714
                                          (let ()
                                            (declare (not safe))
                                            (cons _L233903_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp243715
                                             __tmp243714
                                             _L233904_))))
                              (declare (not safe))
                              (find __tmp243716 __tmp243713))))
                       (declare (not safe))
                       (not __tmp243712)))
                (___kont242341242342_
                 _L233899_
                 _L233900_
                 _L233901_
                 _L233902_
                 _L233903_
                 _L233904_)
                (___match242446242447_
                 _e233485233739_
                 _hd233484233742_
                 _tl233483233744_
                 _e233497233771_
                 _hd233496233774_
                 _tl233495233776_
                 _e233500233779_
                 _hd233499233782_
                 _tl233498233784_
                 _e233503233787_
                 _hd233502233790_
                 _tl233501233792_
                 _e233506233795_
                 _hd233505233798_
                 _tl233504233800_
                 _e233509233803_
                 _hd233508233806_
                 _tl233507233808_
                 _e233512233811_
                 _hd233511233814_
                 _tl233510233816_
                 _e233515233819_
                 _hd233514233822_
                 _tl233513233824_
                 _e233518233827_
                 _hd233517233830_
                 _tl233516233832_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242446242447_
                                                   _e233485233739_
                                                   _hd233484233742_
                                                   _tl233483233744_
                                                   _e233497233771_
                                                   _hd233496233774_
                                                   _tl233495233776_
                                                   _e233500233779_
                                                   _hd233499233782_
                                                   _tl233498233784_
                                                   _e233503233787_
                                                   _hd233502233790_
                                                   _tl233501233792_
                                                   _e233506233795_
                                                   _hd233505233798_
                                                   _tl233504233800_
                                                   _e233509233803_
                                                   _hd233508233806_
                                                   _tl233507233808_
                                                   _e233512233811_
                                                   _hd233511233814_
                                                   _tl233510233816_
                                                   _e233515233819_
                                                   _hd233514233822_
                                                   _tl233513233824_
                                                   _e233518233827_
                                                   _hd233517233830_
                                                   _tl233516233832_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop233522233864_ _target233519233835_ '())))
                            (___match242446242447_
                             _e233485233739_
                             _hd233484233742_
                             _tl233483233744_
                             _e233497233771_
                             _hd233496233774_
                             _tl233495233776_
                             _e233500233779_
                             _hd233499233782_
                             _tl233498233784_
                             _e233503233787_
                             _hd233502233790_
                             _tl233501233792_
                             _e233506233795_
                             _hd233505233798_
                             _tl233504233800_
                             _e233509233803_
                             _hd233508233806_
                             _tl233507233808_
                             _e233512233811_
                             _hd233511233814_
                             _tl233510233816_
                             _e233515233819_
                             _hd233514233822_
                             _tl233513233824_
                             _e233518233827_
                             _hd233517233830_
                             _tl233516233832_))
                        (___match242446242447_
                         _e233485233739_
                         _hd233484233742_
                         _tl233483233744_
                         _e233497233771_
                         _hd233496233774_
                         _tl233495233776_
                         _e233500233779_
                         _hd233499233782_
                         _tl233498233784_
                         _e233503233787_
                         _hd233502233790_
                         _tl233501233792_
                         _e233506233795_
                         _hd233505233798_
                         _tl233504233800_
                         _e233509233803_
                         _hd233508233806_
                         _tl233507233808_
                         _e233512233811_
                         _hd233511233814_
                         _tl233510233816_
                         _e233515233819_
                         _hd233514233822_
                         _tl233513233824_
                         _e233518233827_
                         _hd233517233830_
                         _tl233516233832_))))
                (___match242446242447_
                 _e233485233739_
                 _hd233484233742_
                 _tl233483233744_
                 _e233497233771_
                 _hd233496233774_
                 _tl233495233776_
                 _e233500233779_
                 _hd233499233782_
                 _tl233498233784_
                 _e233503233787_
                 _hd233502233790_
                 _tl233501233792_
                 _e233506233795_
                 _hd233505233798_
                 _tl233504233800_
                 _e233509233803_
                 _hd233508233806_
                 _tl233507233808_
                 _e233512233811_
                 _hd233511233814_
                 _tl233510233816_
                 _e233515233819_
                 _hd233514233822_
                 _tl233513233824_
                 _e233518233827_
                 _hd233517233830_
                 _tl233516233832_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242446242447_
                                                     _e233485233739_
                                                     _hd233484233742_
                                                     _tl233483233744_
                                                     _e233497233771_
                                                     _hd233496233774_
                                                     _tl233495233776_
                                                     _e233500233779_
                                                     _hd233499233782_
                                                     _tl233498233784_
                                                     _e233503233787_
                                                     _hd233502233790_
                                                     _tl233501233792_
                                                     _e233506233795_
                                                     _hd233505233798_
                                                     _tl233504233800_
                                                     _e233509233803_
                                                     _hd233508233806_
                                                     _tl233507233808_
                                                     _e233512233811_
                                                     _hd233511233814_
                                                     _tl233510233816_
                                                     _e233515233819_
                                                     _hd233514233822_
                                                     _tl233513233824_
                                                     _e233518233827_
                                                     _hd233517233830_
                                                     _tl233516233832_))
                                                (___match242446242447_
                                                 _e233485233739_
                                                 _hd233484233742_
                                                 _tl233483233744_
                                                 _e233497233771_
                                                 _hd233496233774_
                                                 _tl233495233776_
                                                 _e233500233779_
                                                 _hd233499233782_
                                                 _tl233498233784_
                                                 _e233503233787_
                                                 _hd233502233790_
                                                 _tl233501233792_
                                                 _e233506233795_
                                                 _hd233505233798_
                                                 _tl233504233800_
                                                 _e233509233803_
                                                 _hd233508233806_
                                                 _tl233507233808_
                                                 _e233512233811_
                                                 _hd233511233814_
                                                 _tl233510233816_
                                                 _e233515233819_
                                                 _hd233514233822_
                                                 _tl233513233824_
                                                 _e233518233827_
                                                 _hd233517233830_
                                                 _tl233516233832_))))
                                        (___match242446242447_
                                         _e233485233739_
                                         _hd233484233742_
                                         _tl233483233744_
                                         _e233497233771_
                                         _hd233496233774_
                                         _tl233495233776_
                                         _e233500233779_
                                         _hd233499233782_
                                         _tl233498233784_
                                         _e233503233787_
                                         _hd233502233790_
                                         _tl233501233792_
                                         _e233506233795_
                                         _hd233505233798_
                                         _tl233504233800_
                                         _e233509233803_
                                         _hd233508233806_
                                         _tl233507233808_
                                         _e233512233811_
                                         _hd233511233814_
                                         _tl233510233816_
                                         _e233515233819_
                                         _hd233514233822_
                                         _tl233513233824_
                                         _e233518233827_
                                         _hd233517233830_
                                         _tl233516233832_))))
                                (___match242446242447_
                                 _e233485233739_
                                 _hd233484233742_
                                 _tl233483233744_
                                 _e233497233771_
                                 _hd233496233774_
                                 _tl233495233776_
                                 _e233500233779_
                                 _hd233499233782_
                                 _tl233498233784_
                                 _e233503233787_
                                 _hd233502233790_
                                 _tl233501233792_
                                 _e233506233795_
                                 _hd233505233798_
                                 _tl233504233800_
                                 _e233509233803_
                                 _hd233508233806_
                                 _tl233507233808_
                                 _e233512233811_
                                 _hd233511233814_
                                 _tl233510233816_
                                 _e233515233819_
                                 _hd233514233822_
                                 _tl233513233824_
                                 _e233518233827_
                                 _hd233517233830_
                                 _tl233516233832_))))
                        (___match242446242447_
                         _e233485233739_
                         _hd233484233742_
                         _tl233483233744_
                         _e233497233771_
                         _hd233496233774_
                         _tl233495233776_
                         _e233500233779_
                         _hd233499233782_
                         _tl233498233784_
                         _e233503233787_
                         _hd233502233790_
                         _tl233501233792_
                         _e233506233795_
                         _hd233505233798_
                         _tl233504233800_
                         _e233509233803_
                         _hd233508233806_
                         _tl233507233808_
                         _e233512233811_
                         _hd233511233814_
                         _tl233510233816_
                         _e233515233819_
                         _hd233514233822_
                         _tl233513233824_
                         _e233518233827_
                         _hd233517233830_
                         _tl233516233832_))
                    (___match242446242447_
                     _e233485233739_
                     _hd233484233742_
                     _tl233483233744_
                     _e233497233771_
                     _hd233496233774_
                     _tl233495233776_
                     _e233500233779_
                     _hd233499233782_
                     _tl233498233784_
                     _e233503233787_
                     _hd233502233790_
                     _tl233501233792_
                     _e233506233795_
                     _hd233505233798_
                     _tl233504233800_
                     _e233509233803_
                     _hd233508233806_
                     _tl233507233808_
                     _e233512233811_
                     _hd233511233814_
                     _tl233510233816_
                     _e233515233819_
                     _hd233514233822_
                     _tl233513233824_
                     _e233518233827_
                     _hd233517233830_
                     _tl233516233832_))
                (___kont242349242350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242349242350_))
                                            (___kont242349242350_))
                                        (___kont242349242350_))))
                                (___kont242349242350_))))
                        (___kont242349242350_))
                    (___kont242349242350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242349242350_))
                                                (___kont242349242350_))
                                            (___kont242349242350_))))
                                    (___kont242349242350_))))
                            (___kont242349242350_))
                        (___kont242349242350_))
                    (___kont242349242350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242349242350_))))
                                            (___kont242349242350_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233489233752_ _target233486233747_ '())))))
                   (___match242364242365_
                    (lambda (_e233437233999_
                             _hd233436234002_
                             _tl233435234004_
                             ___splice242337242338_
                             _target233438234007_
                             _tl233440234009_)
                      (letrec ((_loop233441234012_
                                (lambda (_hd233439234015_ _arg233445234017_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233439234015_))
                                      (let ((_e233442234020_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233439234015_))))
                                        (let ((_lp-tl233444234025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233442234020_)))
                                              (_lp-hd233443234023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233442234020_))))
                                          (let ((__tmp243740
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233443234023_
                                                         _arg233445234017_))))
                                            (declare (not safe))
                                            (_loop233441234012_
                                             _lp-tl233444234025_
                                             __tmp243740))))
                                      (let ((_arg233446234028_
                                             (reverse _arg233445234017_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233435234004_))
                                            (let ((_e233449234031_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233435234004_))))
                                              (let ((_tl233447234036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233449234031_)))
                                                    (_hd233448234034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233449234031_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233448234034_))
                                                    (let ((_e233452234039_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233448234034_))))
                                                      (let ((_tl233450234044_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233452234039_)))
                    (_hd233451234042_
                     (let () (declare (not safe)) (##car _e233452234039_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233451234042_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233451234042_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233450234044_))
                            (let ((_e233455234047_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233450234044_))))
                              (let ((_tl233453234052_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233455234047_)))
                                    (_hd233454234050_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233455234047_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233454234050_))
                                    (let ((_e233458234055_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233454234050_))))
                                      (let ((_tl233456234060_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233458234055_)))
                                            (_hd233457234058_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233458234055_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233457234058_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233457234058_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233456234060_))
                                                    (let ((_e233461234063_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233456234060_))))
                                                      (let ((_tl233459234068_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233461234063_)))
                    (_hd233460234066_
                     (let () (declare (not safe)) (##car _e233461234063_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233459234068_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl233453234052_))
                        (let ((___splice242339242340_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233453234052_
                                  '0))))
                          (let ((_tl233464234073_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242339242340_ '1)))
                                (_target233462234071_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242339242340_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233464234073_))
                                (letrec ((_loop233465234076_
                                          (lambda (_hd233463234079_
                                                   _xarg233469234081_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233463234079_))
                                                (let ((_e233466234084_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233463234079_))))
                                                  (let ((_lp-tl233468234089_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233466234084_)))
                                                        (_lp-hd233467234087_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233466234084_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd233467234087_))
                                                        (let ((_e233473234092_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd233467234087_))))
                  (let ((_tl233471234097_
                         (let () (declare (not safe)) (##cdr _e233473234092_)))
                        (_hd233472234095_
                         (let ()
                           (declare (not safe))
                           (##car _e233473234092_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233472234095_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233472234095_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233471234097_))
                                (let ((_e233476234100_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233471234097_))))
                                  (let ((_tl233474234105_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233476234100_)))
                                        (_hd233475234103_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233476234100_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233474234105_))
                                        (let ((__tmp243739
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd233475234103_
                                                       _xarg233469234081_))))
                                          (declare (not safe))
                                          (_loop233465234076_
                                           _lp-tl233468234089_
                                           __tmp243739))
                                        (___match242376242377_
                                         _e233437233999_
                                         _hd233436234002_
                                         _tl233435234004_
                                         ___splice242337242338_
                                         _target233438234007_
                                         _tl233440234009_))))
                                (___match242376242377_
                                 _e233437233999_
                                 _hd233436234002_
                                 _tl233435234004_
                                 ___splice242337242338_
                                 _target233438234007_
                                 _tl233440234009_))
                            (___match242376242377_
                             _e233437233999_
                             _hd233436234002_
                             _tl233435234004_
                             ___splice242337242338_
                             _target233438234007_
                             _tl233440234009_))
                        (___match242376242377_
                         _e233437233999_
                         _hd233436234002_
                         _tl233435234004_
                         ___splice242337242338_
                         _target233438234007_
                         _tl233440234009_))))
                (___match242376242377_
                 _e233437233999_
                 _hd233436234002_
                 _tl233435234004_
                 ___splice242337242338_
                 _target233438234007_
                 _tl233440234009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg233470234108_
                                                       (reverse _xarg233469234081_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233447234036_))
                                                      (let ((_L234111_
                                                             _xarg233470234108_)
                                                            (_L234112_
                                                             _hd233460234066_)
                                                            (_L234113_
                                                             _arg233446234028_))
                                                        (if (and (let ((__tmp243737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp243738
                                       (lambda (_g234141234144_
                                                _g234142234146_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234141234144_
                                                 _g234142234146_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243738 '() _L234113_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp243737))
                         (fx= (length (let ((__tmp243735
                                             (lambda (_g234148234151_
                                                      _g234149234153_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234148234151_
                                                       _g234149234153_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp243735 '() _L234113_)))
                              (length (let ((__tmp243736
                                             (lambda (_g234155234158_
                                                      _g234156234160_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234155234158_
                                                       _g234156234160_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp243736 '() _L234111_))))
                         (let ((__tmp243733
                                (let ((__tmp243734
                                       (lambda (_g234162234165_
                                                _g234163234167_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234162234165_
                                                 _g234163234167_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243734 '() _L234113_)))
                               (__tmp243731
                                (let ((__tmp243732
                                       (lambda (_g234169234172_
                                                _g234170234174_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234169234172_
                                                 _g234170234174_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243732 '() _L234111_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp243733
                                    __tmp243731))
                         (let ((__tmp243727
                                (let ((__tmp243730
                                       (lambda (_g234176234178_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g234176234178_
                                            _L234112_))))
                                      (__tmp243728
                                       (let ((__tmp243729
                                              (lambda (_g234180234183_
                                                       _g234181234185_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g234180234183_
                                                        _g234181234185_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp243729 '() _L234113_))))
                                  (declare (not safe))
                                  (find __tmp243730 __tmp243728))))
                           (declare (not safe))
                           (not __tmp243727)))
                    (___kont242335242336_ _L234111_ _L234112_ _L234113_)
                    (___match242376242377_
                     _e233437233999_
                     _hd233436234002_
                     _tl233435234004_
                     ___splice242337242338_
                     _target233438234007_
                     _tl233440234009_)))
              (___match242376242377_
               _e233437233999_
               _hd233436234002_
               _tl233435234004_
               ___splice242337242338_
               _target233438234007_
               _tl233440234009_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop233465234076_
                                     _target233462234071_
                                     '())))
                                (___match242376242377_
                                 _e233437233999_
                                 _hd233436234002_
                                 _tl233435234004_
                                 ___splice242337242338_
                                 _target233438234007_
                                 _tl233440234009_))))
                        (___match242376242377_
                         _e233437233999_
                         _hd233436234002_
                         _tl233435234004_
                         ___splice242337242338_
                         _target233438234007_
                         _tl233440234009_))
                    (___match242376242377_
                     _e233437233999_
                     _hd233436234002_
                     _tl233435234004_
                     ___splice242337242338_
                     _target233438234007_
                     _tl233440234009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242376242377_
                                                     _e233437233999_
                                                     _hd233436234002_
                                                     _tl233435234004_
                                                     ___splice242337242338_
                                                     _target233438234007_
                                                     _tl233440234009_))
                                                (___match242376242377_
                                                 _e233437233999_
                                                 _hd233436234002_
                                                 _tl233435234004_
                                                 ___splice242337242338_
                                                 _target233438234007_
                                                 _tl233440234009_))
                                            (___match242376242377_
                                             _e233437233999_
                                             _hd233436234002_
                                             _tl233435234004_
                                             ___splice242337242338_
                                             _target233438234007_
                                             _tl233440234009_))))
                                    (___match242376242377_
                                     _e233437233999_
                                     _hd233436234002_
                                     _tl233435234004_
                                     ___splice242337242338_
                                     _target233438234007_
                                     _tl233440234009_))))
                            (___match242376242377_
                             _e233437233999_
                             _hd233436234002_
                             _tl233435234004_
                             ___splice242337242338_
                             _target233438234007_
                             _tl233440234009_))
                        (___match242376242377_
                         _e233437233999_
                         _hd233436234002_
                         _tl233435234004_
                         ___splice242337242338_
                         _target233438234007_
                         _tl233440234009_))
                    (___match242376242377_
                     _e233437233999_
                     _hd233436234002_
                     _tl233435234004_
                     ___splice242337242338_
                     _target233438234007_
                     _tl233440234009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242376242377_
                                                     _e233437233999_
                                                     _hd233436234002_
                                                     _tl233435234004_
                                                     ___splice242337242338_
                                                     _target233438234007_
                                                     _tl233440234009_))))
                                            (___match242376242377_
                                             _e233437233999_
                                             _hd233436234002_
                                             _tl233435234004_
                                             ___splice242337242338_
                                             _target233438234007_
                                             _tl233440234009_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233441234012_ _target233438234007_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242333242334_))
                  (let ((_e233437233999_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242333242334_))))
                    (let ((_tl233435234004_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233437233999_)))
                          (_hd233436234002_
                           (let ()
                             (declare (not safe))
                             (##car _e233437233999_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd233436234002_))
                          (let ((___splice242337242338_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd233436234002_
                                    '0))))
                            (let ((_tl233440234009_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242337242338_ '1)))
                                  (_target233438234007_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242337242338_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233440234009_))
                                  (___match242364242365_
                                   _e233437233999_
                                   _hd233436234002_
                                   _tl233435234004_
                                   ___splice242337242338_
                                   _target233438234007_
                                   _tl233440234009_)
                                  (___match242376242377_
                                   _e233437233999_
                                   _hd233436234002_
                                   _tl233435234004_
                                   ___splice242337242338_
                                   _target233438234007_
                                   _tl233440234009_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233435234004_))
                              (let ((_e233552233607_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233435234004_))))
                                (let ((_tl233550233612_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233552233607_)))
                                      (_hd233551233610_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233552233607_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233551233610_))
                                      (let ((_e233555233615_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233551233610_))))
                                        (let ((_tl233553233620_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233555233615_)))
                                              (_hd233554233618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233555233615_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd233554233618_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd233554233618_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233553233620_))
                                                      (let ((_e233558233623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233553233620_))))
                (let ((_tl233556233628_
                       (let () (declare (not safe)) (##cdr _e233558233623_)))
                      (_hd233557233626_
                       (let () (declare (not safe)) (##car _e233558233623_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233557233626_))
                      (let ((_e233561233631_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233557233626_))))
                        (let ((_tl233559233636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233561233631_)))
                              (_hd233560233634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233561233631_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233560233634_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233560233634_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233559233636_))
                                      (let ((_e233564233639_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233559233636_))))
                                        (let ((_tl233562233644_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233564233639_)))
                                              (_hd233563233642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233564233639_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233562233644_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233556233628_))
                                                  (let ((_e233567233647_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233556233628_))))
                                                    (let ((_tl233565233652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233567233647_)))
                                                          (_hd233566233650_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233567233647_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233566233650_))
                                                          (let ((_e233570233655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233566233650_))))
                    (let ((_tl233568233660_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233570233655_)))
                          (_hd233569233658_
                           (let ()
                             (declare (not safe))
                             (##car _e233570233655_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233569233658_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233569233658_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233568233660_))
                                  (let ((_e233573233663_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233568233660_))))
                                    (let ((_tl233571233668_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233573233663_)))
                                          (_hd233572233666_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233573233663_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233571233668_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233565233652_))
                                              (let ((_e233576233671_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233565233652_))))
                                                (let ((_tl233574233676_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233576233671_)))
                                                      (_hd233575233674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233576233671_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd233575233674_))
                                                      (let ((_e233579233679_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd233575233674_))))
                (let ((_tl233577233684_
                       (let () (declare (not safe)) (##cdr _e233579233679_)))
                      (_hd233578233682_
                       (let () (declare (not safe)) (##car _e233579233679_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd233578233682_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd233578233682_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233577233684_))
                              (let ((_e233582233687_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233577233684_))))
                                (let ((_tl233580233692_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233582233687_)))
                                      (_hd233581233690_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233582233687_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233580233692_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233574233676_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233550233612_))
                                              (___match242474242475_
                                               _e233437233999_
                                               _hd233436234002_
                                               _tl233435234004_
                                               _e233552233607_
                                               _hd233551233610_
                                               _tl233550233612_
                                               _e233555233615_
                                               _hd233554233618_
                                               _tl233553233620_
                                               _e233558233623_
                                               _hd233557233626_
                                               _tl233556233628_
                                               _e233561233631_
                                               _hd233560233634_
                                               _tl233559233636_
                                               _e233564233639_
                                               _hd233563233642_
                                               _tl233562233644_
                                               _e233567233647_
                                               _hd233566233650_
                                               _tl233565233652_
                                               _e233570233655_
                                               _hd233569233658_
                                               _tl233568233660_
                                               _e233573233663_
                                               _hd233572233666_
                                               _tl233571233668_
                                               _e233576233671_
                                               _hd233575233674_
                                               _tl233574233676_
                                               _e233579233679_
                                               _hd233578233682_
                                               _tl233577233684_
                                               _e233582233687_
                                               _hd233581233690_
                                               _tl233580233692_)
                                              (___kont242349242350_))
                                          (___kont242349242350_))
                                      (___kont242349242350_))))
                              (___kont242349242350_))
                          (___kont242349242350_))
                      (___kont242349242350_))))
              (___kont242349242350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont242349242350_))
                                          (___kont242349242350_))))
                                  (___kont242349242350_))
                              (___kont242349242350_))
                          (___kont242349242350_))))
                  (___kont242349242350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242349242350_))
                                              (___kont242349242350_))))
                                      (___kont242349242350_))
                                  (___kont242349242350_))
                              (___kont242349242350_))))
                      (___kont242349242350_))))
              (___kont242349242350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242349242350_))
                                              (___kont242349242350_))))
                                      (___kont242349242350_))))
                              (___kont242349242350_)))))
                  (___kont242349242350_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form232893_)
        (let* ((___stx242477242478_ _form232893_)
               (_g232897233021_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242477242478_)))))
          (let ((___kont242479242480_
                 (lambda (_L233391_ _L233392_ _L233393_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233392_))))
                (___kont242485242486_
                 (lambda (_L233239_ _L233240_ _L233241_ _L233242_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233239_))))
                (___kont242489242490_
                 (lambda (_L233106_ _L233107_ _L233108_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233106_)))))
            (let* ((___match242586242587_
                    (lambda (_e232989233026_
                             _hd232988233029_
                             _tl232987233031_
                             _e232992233034_
                             _hd232991233037_
                             _tl232990233039_
                             _e232995233042_
                             _hd232994233045_
                             _tl232993233047_
                             _e232998233050_
                             _hd232997233053_
                             _tl232996233055_
                             _e233001233058_
                             _hd233000233061_
                             _tl232999233063_
                             _e233004233066_
                             _hd233003233069_
                             _tl233002233071_
                             _e233007233074_
                             _hd233006233077_
                             _tl233005233079_
                             _e233010233082_
                             _hd233009233085_
                             _tl233008233087_
                             _e233013233090_
                             _hd233012233093_
                             _tl233011233095_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233005233079_))
                          (let ((_e233016233098_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233005233079_))))
                            (let ((_tl233014233103_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233016233098_)))
                                  (_hd233015233101_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233016233098_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233014233103_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232990233039_))
                                      (___kont242489242490_
                                       _hd233012233093_
                                       _hd233003233069_
                                       _hd232988233029_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232897233021_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232897233021_)))))
                          (let () (declare (not safe)) (_g232897233021_)))))
                   (___match242516242517_
                    (lambda (_e232950233143_
                             _hd232949233146_
                             _tl232948233148_
                             ___splice242487242488_
                             _target232951233151_
                             _tl232953233153_)
                      (letrec ((_loop232954233156_
                                (lambda (_hd232952233159_ _arg232958233161_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232952233159_))
                                      (let ((_e232955233164_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232952233159_))))
                                        (let ((_lp-tl232957233169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232955233164_)))
                                              (_lp-hd232956233167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232955233164_))))
                                          (let ((__tmp243741
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232956233167_
                                                         _arg232958233161_))))
                                            (declare (not safe))
                                            (_loop232954233156_
                                             _lp-tl232957233169_
                                             __tmp243741))))
                                      (let ((_arg232959233172_
                                             (reverse _arg232958233161_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232948233148_))
                                            (let ((_e232962233175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232948233148_))))
                                              (let ((_tl232960233180_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232962233175_)))
                                                    (_hd232961233178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232962233175_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232961233178_))
                                                    (let ((_e232965233183_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232961233178_))))
                                                      (let ((_tl232963233188_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232965233183_)))
                    (_hd232964233186_
                     (let () (declare (not safe)) (##car _e232965233183_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232964233186_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232964233186_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232963233188_))
                            (let ((_e232968233191_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232963233188_))))
                              (let ((_tl232966233196_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232968233191_)))
                                    (_hd232967233194_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232968233191_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232967233194_))
                                    (let ((_e232971233199_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232967233194_))))
                                      (let ((_tl232969233204_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232971233199_)))
                                            (_hd232970233202_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232971233199_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232970233202_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232970233202_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232969233204_))
                                                    (let ((_e232974233207_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232969233204_))))
                                                      (let ((_tl232972233212_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232974233207_)))
                    (_hd232973233210_
                     (let () (declare (not safe)) (##car _e232974233207_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232972233212_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl232966233196_))
                        (let ((_e232977233215_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232966233196_))))
                          (let ((_tl232975233220_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232977233215_)))
                                (_hd232976233218_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232977233215_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232976233218_))
                                (let ((_e232980233223_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232976233218_))))
                                  (let ((_tl232978233228_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232980233223_)))
                                        (_hd232979233226_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232980233223_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232979233226_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd232979233226_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232978233228_))
                                                (let ((_e232983233231_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232978233228_))))
                                                  (let ((_tl232981233236_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232983233231_)))
                                                        (_hd232982233234_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232983233231_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232981233236_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl232960233180_))
                                                            (___kont242485242486_
                                                             _hd232982233234_
                                                             _hd232973233210_
                                                             _tl232953233153_
                                                             _arg232959233172_)
                                                            (___match242586242587_
                                                             _e232950233143_
                                                             _hd232949233146_
                                                             _tl232948233148_
                                                             _e232962233175_
                                                             _hd232961233178_
                                                             _tl232960233180_
                                                             _e232965233183_
                                                             _hd232964233186_
                                                             _tl232963233188_
                                                             _e232968233191_
                                                             _hd232967233194_
                                                             _tl232966233196_
                                                             _e232971233199_
                                                             _hd232970233202_
                                                             _tl232969233204_
                                                             _e232974233207_
                                                             _hd232973233210_
                                                             _tl232972233212_
                                                             _e232977233215_
                                                             _hd232976233218_
                                                             _tl232975233220_
                                                             _e232980233223_
                                                             _hd232979233226_
                                                             _tl232978233228_
                                                             _e232983233231_
                                                             _hd232982233234_
                                                             _tl232981233236_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232897233021_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232897233021_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g232897233021_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g232897233021_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g232897233021_)))))
                        (let () (declare (not safe)) (_g232897233021_)))
                    (let () (declare (not safe)) (_g232897233021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g232897233021_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232897233021_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g232897233021_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g232897233021_)))))
                            (let () (declare (not safe)) (_g232897233021_)))
                        (let () (declare (not safe)) (_g232897233021_)))
                    (let () (declare (not safe)) (_g232897233021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g232897233021_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g232897233021_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop232954233156_ _target232951233151_ '())))))
                   (___match242504242505_
                    (lambda (_e232904233279_
                             _hd232903233282_
                             _tl232902233284_
                             ___splice242481242482_
                             _target232905233287_
                             _tl232907233289_)
                      (letrec ((_loop232908233292_
                                (lambda (_hd232906233295_ _arg232912233297_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232906233295_))
                                      (let ((_e232909233300_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232906233295_))))
                                        (let ((_lp-tl232911233305_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232909233300_)))
                                              (_lp-hd232910233303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232909233300_))))
                                          (let ((__tmp243743
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232910233303_
                                                         _arg232912233297_))))
                                            (declare (not safe))
                                            (_loop232908233292_
                                             _lp-tl232911233305_
                                             __tmp243743))))
                                      (let ((_arg232913233308_
                                             (reverse _arg232912233297_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232902233284_))
                                            (let ((_e232916233311_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232902233284_))))
                                              (let ((_tl232914233316_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232916233311_)))
                                                    (_hd232915233314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232916233311_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232915233314_))
                                                    (let ((_e232919233319_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232915233314_))))
                                                      (let ((_tl232917233324_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232919233319_)))
                    (_hd232918233322_
                     (let () (declare (not safe)) (##car _e232919233319_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232918233322_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232918233322_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232917233324_))
                            (let ((_e232922233327_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232917233324_))))
                              (let ((_tl232920233332_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232922233327_)))
                                    (_hd232921233330_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232922233327_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232921233330_))
                                    (let ((_e232925233335_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232921233330_))))
                                      (let ((_tl232923233340_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232925233335_)))
                                            (_hd232924233338_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232925233335_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232924233338_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232924233338_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232923233340_))
                                                    (let ((_e232928233343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232923233340_))))
                                                      (let ((_tl232926233348_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232928233343_)))
                    (_hd232927233346_
                     (let () (declare (not safe)) (##car _e232928233343_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232926233348_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl232920233332_))
                        (let ((___splice242483242484_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl232920233332_
                                  '0))))
                          (let ((_tl232931233353_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242483242484_ '1)))
                                (_target232929233351_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242483242484_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl232931233353_))
                                (letrec ((_loop232932233356_
                                          (lambda (_hd232930233359_
                                                   _xarg232936233361_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232930233359_))
                                                (let ((_e232933233364_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232930233359_))))
                                                  (let ((_lp-tl232935233369_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232933233364_)))
                                                        (_lp-hd232934233367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232933233364_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd232934233367_))
                                                        (let ((_e232940233372_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd232934233367_))))
                  (let ((_tl232938233377_
                         (let () (declare (not safe)) (##cdr _e232940233372_)))
                        (_hd232939233375_
                         (let ()
                           (declare (not safe))
                           (##car _e232940233372_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232939233375_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd232939233375_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232938233377_))
                                (let ((_e232943233380_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232938233377_))))
                                  (let ((_tl232941233385_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232943233380_)))
                                        (_hd232942233383_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232943233380_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232941233385_))
                                        (let ((__tmp243742
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd232942233383_
                                                       _xarg232936233361_))))
                                          (declare (not safe))
                                          (_loop232932233356_
                                           _lp-tl232935233369_
                                           __tmp243742))
                                        (___match242516242517_
                                         _e232904233279_
                                         _hd232903233282_
                                         _tl232902233284_
                                         ___splice242481242482_
                                         _target232905233287_
                                         _tl232907233289_))))
                                (___match242516242517_
                                 _e232904233279_
                                 _hd232903233282_
                                 _tl232902233284_
                                 ___splice242481242482_
                                 _target232905233287_
                                 _tl232907233289_))
                            (___match242516242517_
                             _e232904233279_
                             _hd232903233282_
                             _tl232902233284_
                             ___splice242481242482_
                             _target232905233287_
                             _tl232907233289_))
                        (___match242516242517_
                         _e232904233279_
                         _hd232903233282_
                         _tl232902233284_
                         ___splice242481242482_
                         _target232905233287_
                         _tl232907233289_))))
                (___match242516242517_
                 _e232904233279_
                 _hd232903233282_
                 _tl232902233284_
                 ___splice242481242482_
                 _target232905233287_
                 _tl232907233289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg232937233388_
                                                       (reverse _xarg232936233361_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232914233316_))
                                                      (___kont242479242480_
                                                       _xarg232937233388_
                                                       _hd232927233346_
                                                       _arg232913233308_)
                                                      (___match242516242517_
                                                       _e232904233279_
                                                       _hd232903233282_
                                                       _tl232902233284_
                                                       ___splice242481242482_
                                                       _target232905233287_
                                                       _tl232907233289_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop232932233356_
                                     _target232929233351_
                                     '())))
                                (___match242516242517_
                                 _e232904233279_
                                 _hd232903233282_
                                 _tl232902233284_
                                 ___splice242481242482_
                                 _target232905233287_
                                 _tl232907233289_))))
                        (___match242516242517_
                         _e232904233279_
                         _hd232903233282_
                         _tl232902233284_
                         ___splice242481242482_
                         _target232905233287_
                         _tl232907233289_))
                    (___match242516242517_
                     _e232904233279_
                     _hd232903233282_
                     _tl232902233284_
                     ___splice242481242482_
                     _target232905233287_
                     _tl232907233289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242516242517_
                                                     _e232904233279_
                                                     _hd232903233282_
                                                     _tl232902233284_
                                                     ___splice242481242482_
                                                     _target232905233287_
                                                     _tl232907233289_))
                                                (___match242516242517_
                                                 _e232904233279_
                                                 _hd232903233282_
                                                 _tl232902233284_
                                                 ___splice242481242482_
                                                 _target232905233287_
                                                 _tl232907233289_))
                                            (___match242516242517_
                                             _e232904233279_
                                             _hd232903233282_
                                             _tl232902233284_
                                             ___splice242481242482_
                                             _target232905233287_
                                             _tl232907233289_))))
                                    (___match242516242517_
                                     _e232904233279_
                                     _hd232903233282_
                                     _tl232902233284_
                                     ___splice242481242482_
                                     _target232905233287_
                                     _tl232907233289_))))
                            (___match242516242517_
                             _e232904233279_
                             _hd232903233282_
                             _tl232902233284_
                             ___splice242481242482_
                             _target232905233287_
                             _tl232907233289_))
                        (___match242516242517_
                         _e232904233279_
                         _hd232903233282_
                         _tl232902233284_
                         ___splice242481242482_
                         _target232905233287_
                         _tl232907233289_))
                    (___match242516242517_
                     _e232904233279_
                     _hd232903233282_
                     _tl232902233284_
                     ___splice242481242482_
                     _target232905233287_
                     _tl232907233289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242516242517_
                                                     _e232904233279_
                                                     _hd232903233282_
                                                     _tl232902233284_
                                                     ___splice242481242482_
                                                     _target232905233287_
                                                     _tl232907233289_))))
                                            (___match242516242517_
                                             _e232904233279_
                                             _hd232903233282_
                                             _tl232902233284_
                                             ___splice242481242482_
                                             _target232905233287_
                                             _tl232907233289_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232908233292_ _target232905233287_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242477242478_))
                  (let ((_e232904233279_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242477242478_))))
                    (let ((_tl232902233284_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232904233279_)))
                          (_hd232903233282_
                           (let ()
                             (declare (not safe))
                             (##car _e232904233279_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd232903233282_))
                          (let ((___splice242481242482_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd232903233282_
                                    '0))))
                            (let ((_tl232907233289_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242481242482_ '1)))
                                  (_target232905233287_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242481242482_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232907233289_))
                                  (___match242504242505_
                                   _e232904233279_
                                   _hd232903233282_
                                   _tl232902233284_
                                   ___splice242481242482_
                                   _target232905233287_
                                   _tl232907233289_)
                                  (___match242516242517_
                                   _e232904233279_
                                   _hd232903233282_
                                   _tl232902233284_
                                   ___splice242481242482_
                                   _target232905233287_
                                   _tl232907233289_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232902233284_))
                              (let ((_e232992233034_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232902233284_))))
                                (let ((_tl232990233039_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232992233034_)))
                                      (_hd232991233037_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232992233034_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232991233037_))
                                      (let ((_e232995233042_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232991233037_))))
                                        (let ((_tl232993233047_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232995233042_)))
                                              (_hd232994233045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232995233042_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd232994233045_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd232994233045_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232993233047_))
                                                      (let ((_e232998233050_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232993233047_))))
                (let ((_tl232996233055_
                       (let () (declare (not safe)) (##cdr _e232998233050_)))
                      (_hd232997233053_
                       (let () (declare (not safe)) (##car _e232998233050_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232997233053_))
                      (let ((_e233001233058_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232997233053_))))
                        (let ((_tl232999233063_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233001233058_)))
                              (_hd233000233061_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233001233058_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233000233061_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233000233061_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232999233063_))
                                      (let ((_e233004233066_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232999233063_))))
                                        (let ((_tl233002233071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233004233066_)))
                                              (_hd233003233069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233004233066_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233002233071_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232996233055_))
                                                  (let ((_e233007233074_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232996233055_))))
                                                    (let ((_tl233005233079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233007233074_)))
                                                          (_hd233006233077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233007233074_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233006233077_))
                                                          (let ((_e233010233082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233006233077_))))
                    (let ((_tl233008233087_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233010233082_)))
                          (_hd233009233085_
                           (let ()
                             (declare (not safe))
                             (##car _e233010233082_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233009233085_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233009233085_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233008233087_))
                                  (let ((_e233013233090_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233008233087_))))
                                    (let ((_tl233011233095_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233013233090_)))
                                          (_hd233012233093_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233013233090_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233011233095_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233005233079_))
                                              (let ((_e233016233098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233005233079_))))
                                                (let ((_tl233014233103_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233016233098_)))
                                                      (_hd233015233101_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233016233098_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233014233103_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl232990233039_))
                                                          (___kont242489242490_
                                                           _hd233012233093_
                                                           _hd233003233069_
                                                           _hd232903233282_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g232897233021_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g232897233021_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g232897233021_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g232897233021_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g232897233021_)))
                              (let () (declare (not safe)) (_g232897233021_)))
                          (let () (declare (not safe)) (_g232897233021_)))))
                  (let () (declare (not safe)) (_g232897233021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232897233021_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g232897233021_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232897233021_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232897233021_)))
                              (let ()
                                (declare (not safe))
                                (_g232897233021_)))))
                      (let () (declare (not safe)) (_g232897233021_)))))
              (let () (declare (not safe)) (_g232897233021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232897233021_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g232897233021_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232897233021_)))))
                              (let ()
                                (declare (not safe))
                                (_g232897233021_))))))
                  (let () (declare (not safe)) (_g232897233021_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form232697_)
        (let* ((_g232699232713_
                (lambda (_g232700232710_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232700232710_))))
               (_g232698232890_
                (lambda (_g232700232716_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232700232716_))
                      (let ((_e232705232718_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232700232716_))))
                        (let ((_hd232704232721_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232705232718_)))
                              (_tl232703232723_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232705232718_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232703232723_))
                              (let ((_e232708232726_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232703232723_))))
                                (let ((_hd232707232729_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232708232726_)))
                                      (_tl232706232731_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232708232726_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232706232731_))
                                      ((lambda (_L232734_ _L232735_)
                                         (let* ((___stx242599242600_ _L232735_)
                                                (_g232750232778_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx242599242600_)))))
                                           (let ((___kont242601242602_
                                                  (lambda (_L232869_)
                                                    (length (let ((__tmp243744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g232879232882_ _g232880232884_)
                             (let ()
                               (declare (not safe))
                               (cons _g232879232882_ _g232880232884_)))))
                      (declare (not safe))
                      (foldr1 __tmp243744 '() _L232869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont242605242606_
                                                  (lambda (_L232820_ _L232821_)
                                                    (let ((__tmp243745
                                                           (length (let ((__tmp243746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g232832232835_ _g232833232837_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g232832232835_
                                            _g232833232837_)))))
                             (declare (not safe))
                             (foldr1 __tmp243746 '() _L232821_)))))
              (declare (not safe))
              (cons __tmp243745 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont242609242610_
                                                  (lambda (_L232783_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match242624242625_
                                                     (lambda (___splice242607242608_
                                                              _target232764232796_
                                                              _tl232766232798_)
                                                       (letrec ((_loop232767232801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232765232804_ _arg232771232806_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232765232804_))
                               (let ((_e232768232809_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232765232804_))))
                                 (let ((_lp-tl232770232814_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232768232809_)))
                                       (_lp-hd232769232812_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232768232809_))))
                                   (let ((__tmp243747
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232769232812_
                                                  _arg232771232806_))))
                                     (declare (not safe))
                                     (_loop232767232801_
                                      _lp-tl232770232814_
                                      __tmp243747))))
                               (let ((_arg232772232817_
                                      (reverse _arg232771232806_)))
                                 (___kont242605242606_
                                  _tl232766232798_
                                  _arg232772232817_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232767232801_ _target232764232796_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242618242619_
                                                     (lambda (___splice242603242604_
                                                              _target232753232845_
                                                              _tl232755232847_)
                                                       (letrec ((_loop232756232850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232754232853_ _arg232760232855_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232754232853_))
                               (let ((_e232757232858_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232754232853_))))
                                 (let ((_lp-tl232759232863_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232757232858_)))
                                       (_lp-hd232758232861_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232757232858_))))
                                   (let ((__tmp243748
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232758232861_
                                                  _arg232760232855_))))
                                     (declare (not safe))
                                     (_loop232756232850_
                                      _lp-tl232759232863_
                                      __tmp243748))))
                               (let ((_arg232761232866_
                                      (reverse _arg232760232855_)))
                                 (___kont242601242602_ _arg232761232866_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232756232850_ _target232753232845_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx242599242600_))
                                                   (let ((___splice242603242604_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx242599242600_
                                                             '0))))
                                                     (let ((_tl232755232847_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice242603242604_
                                                               '1)))
                                                           (_target232753232845_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice242603242604_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl232755232847_))
                                                           (___match242618242619_
                                                            ___splice242603242604_
                                                            _target232753232845_
                                                            _tl232755232847_)
                                                           (___match242624242625_
                                                            ___splice242603242604_
                                                            _target232753232845_
                                                            _tl232755232847_))))
                                                   (___kont242609242610_
                                                    ___stx242599242600_))))))
                                       _hd232707232729_
                                       _hd232704232721_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232699232713_ _g232700232716_)))))
                              (let ()
                                (declare (not safe))
                                (_g232699232713_ _g232700232716_)))))
                      (let ()
                        (declare (not safe))
                        (_g232699232713_ _g232700232716_))))))
          (declare (not safe))
          (_g232698232890_ _form232697_))))
    (define gxc#lambda-expr?
      (lambda (_expr232650_)
        (let* ((___stx242627242628_ _expr232650_)
               (_g232653232663_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242627242628_)))))
          (let ((___kont242629242630_ (lambda (_L232683_) '#t))
                (___kont242631242632_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242627242628_))
                (let ((_e232658232675_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242627242628_))))
                  (let ((_tl232656232680_
                         (let () (declare (not safe)) (##cdr _e232658232675_)))
                        (_hd232657232678_
                         (let ()
                           (declare (not safe))
                           (##car _e232658232675_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232657232678_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd232657232678_))
                            (___kont242629242630_ _tl232656232680_)
                            (___kont242631242632_))
                        (___kont242631242632_))))
                (___kont242631242632_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr232603_)
        (let* ((___stx242645242646_ _expr232603_)
               (_g232606232616_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242645242646_)))))
          (let ((___kont242647242648_ (lambda (_L232636_) '#t))
                (___kont242649242650_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242645242646_))
                (let ((_e232611232628_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242645242646_))))
                  (let ((_tl232609232633_
                         (let () (declare (not safe)) (##cdr _e232611232628_)))
                        (_hd232610232631_
                         (let ()
                           (declare (not safe))
                           (##car _e232611232628_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232610232631_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd232610232631_))
                            (___kont242647242648_ _tl232609232633_)
                            (___kont242649242650_))
                        (___kont242649242650_))))
                (___kont242649242650_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr232472_)
        (let* ((___stx242663242664_ _expr232472_)
               (_g232475232505_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242663242664_)))))
          (let ((___kont242665242666_
                 (lambda (_L232573_ _L232574_ _L232575_)
                   (if (let () (declare (not safe)) (gx#identifier? _L232575_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L232574_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L232573_))
                           '#f)
                       '#f)))
                (___kont242667242668_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242663242664_))
                (let ((_e232482232517_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242663242664_))))
                  (let ((_tl232480232522_
                         (let () (declare (not safe)) (##cdr _e232482232517_)))
                        (_hd232481232520_
                         (let ()
                           (declare (not safe))
                           (##car _e232482232517_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232481232520_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd232481232520_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232480232522_))
                                (let ((_e232485232525_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232480232522_))))
                                  (let ((_tl232483232530_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232485232525_)))
                                        (_hd232484232528_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232485232525_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd232484232528_))
                                        (let ((_e232488232533_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd232484232528_))))
                                          (let ((_tl232486232538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232488232533_)))
                                                (_hd232487232536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232488232533_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232487232536_))
                                                (let ((_e232491232541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232487232536_))))
                                                  (let ((_tl232489232546_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232491232541_)))
                                                        (_hd232490232544_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232491232541_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232490232544_))
                                                        (let ((_e232494232549_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232490232544_))))
                  (let ((_tl232492232554_
                         (let () (declare (not safe)) (##cdr _e232494232549_)))
                        (_hd232493232552_
                         (let ()
                           (declare (not safe))
                           (##car _e232494232549_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl232492232554_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232489232546_))
                            (let ((_e232497232557_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232489232546_))))
                              (let ((_tl232495232562_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232497232557_)))
                                    (_hd232496232560_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232497232557_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl232495232562_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232486232538_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232483232530_))
                                            (let ((_e232500232565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232483232530_))))
                                              (let ((_tl232498232570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232500232565_)))
                                                    (_hd232499232568_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232500232565_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl232498232570_))
                                                    (___kont242665242666_
                                                     _hd232499232568_
                                                     _hd232496232560_
                                                     _hd232493232552_)
                                                    (___kont242667242668_))))
                                            (___kont242667242668_))
                                        (___kont242667242668_))
                                    (___kont242667242668_))))
                            (___kont242667242668_))
                        (___kont242667242668_))))
                (___kont242667242668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242667242668_))))
                                        (___kont242667242668_))))
                                (___kont242667242668_))
                            (___kont242667242668_))
                        (___kont242667242668_))))
                (___kont242667242668_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr231797_)
        (let* ((___stx242725242726_ _expr231797_)
               (_g231800231958_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242725242726_)))))
          (let ((___kont242727242728_
                 (lambda (_L232346_
                          _L232347_
                          _L232348_
                          _L232349_
                          _L232350_
                          _L232351_
                          _L232352_
                          _L232353_
                          _L232354_
                          _L232355_
                          _L232356_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L232353_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L232349_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L232348_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L232356_
                                      _L232347_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L232355_
                                          _L232352_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L232350_
                                              _L232346_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L232354_
                                              _L232351_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont242729242730_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242725242726_))
                (let ((_e231815231970_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242725242726_))))
                  (let ((_tl231813231975_
                         (let () (declare (not safe)) (##cdr _e231815231970_)))
                        (_hd231814231973_
                         (let ()
                           (declare (not safe))
                           (##car _e231815231970_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231814231973_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd231814231973_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231813231975_))
                                (let ((_e231818231978_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231813231975_))))
                                  (let ((_tl231816231983_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231818231978_)))
                                        (_hd231817231981_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231818231978_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd231817231981_))
                                        (let ((_e231821231986_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd231817231981_))))
                                          (let ((_tl231819231991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231821231986_)))
                                                (_hd231820231989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231821231986_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231820231989_))
                                                (let ((_e231824231994_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231820231989_))))
                                                  (let ((_tl231822231999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231824231994_)))
                                                        (_hd231823231997_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231824231994_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231823231997_))
                                                        (let ((_e231827232002_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231823231997_))))
                  (let ((_tl231825232007_
                         (let () (declare (not safe)) (##cdr _e231827232002_)))
                        (_hd231826232005_
                         (let ()
                           (declare (not safe))
                           (##car _e231827232002_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl231825232007_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231822231999_))
                            (let ((_e231830232010_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231822231999_))))
                              (let ((_tl231828232015_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231830232010_)))
                                    (_hd231829232013_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231830232010_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231829232013_))
                                    (let ((_e231833232018_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231829232013_))))
                                      (let ((_tl231831232023_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231833232018_)))
                                            (_hd231832232021_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231833232018_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231832232021_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd231832232021_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231831232023_))
                                                    (let ((_e231836232026_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231831232023_))))
                                                      (let ((_tl231834232031_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231836232026_)))
                    (_hd231835232029_
                     (let () (declare (not safe)) (##car _e231836232026_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231835232029_))
                    (let ((_e231839232034_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231835232029_))))
                      (let ((_tl231837232039_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231839232034_)))
                            (_hd231838232037_
                             (let ()
                               (declare (not safe))
                               (##car _e231839232034_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd231838232037_))
                            (let ((_e231842232042_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd231838232037_))))
                              (let ((_tl231840232047_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231842232042_)))
                                    (_hd231841232045_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231842232042_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231841232045_))
                                    (let ((_e231845232050_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231841232045_))))
                                      (let ((_tl231843232055_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231845232050_)))
                                            (_hd231844232053_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231845232050_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231843232055_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231840232047_))
                                                (let ((_e231848232058_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231840232047_))))
                                                  (let ((_tl231846232063_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231848232058_)))
                                                        (_hd231847232061_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231848232058_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231846232063_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl231837232039_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl231834232031_))
                        (let ((_e231851232066_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231834232031_))))
                          (let ((_tl231849232071_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231851232066_)))
                                (_hd231850232069_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231851232066_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231850232069_))
                                (let ((_e231854232074_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231850232069_))))
                                  (let ((_tl231852232079_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231854232074_)))
                                        (_hd231853232077_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231854232074_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231853232077_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd231853232077_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231852232079_))
                                                (let ((_e231857232082_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231852232079_))))
                                                  (let ((_tl231855232087_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231857232082_)))
                                                        (_hd231856232085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231857232082_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231856232085_))
                                                        (let ((_e231860232090_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231856232085_))))
                  (let ((_tl231858232095_
                         (let () (declare (not safe)) (##cdr _e231860232090_)))
                        (_hd231859232093_
                         (let ()
                           (declare (not safe))
                           (##car _e231860232090_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231855232087_))
                        (let ((_e231863232098_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231855232087_))))
                          (let ((_tl231861232103_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231863232098_)))
                                (_hd231862232101_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231863232098_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231862232101_))
                                (let ((_e231866232106_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231862232101_))))
                                  (let ((_tl231864232111_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231866232106_)))
                                        (_hd231865232109_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231866232106_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231865232109_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd231865232109_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231864232111_))
                                                (let ((_e231869232114_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231864232111_))))
                                                  (let ((_tl231867232119_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231869232114_)))
                                                        (_hd231868232117_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231869232114_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231868232117_))
                                                        (let ((_e231872232122_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231868232117_))))
                  (let ((_tl231870232127_
                         (let () (declare (not safe)) (##cdr _e231872232122_)))
                        (_hd231871232125_
                         (let ()
                           (declare (not safe))
                           (##car _e231872232122_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231871232125_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd231871232125_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231870232127_))
                                (let ((_e231875232130_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231870232127_))))
                                  (let ((_tl231873232135_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231875232130_)))
                                        (_hd231874232133_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231875232130_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231873232135_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231867232119_))
                                            (let ((_e231878232138_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231867232119_))))
                                              (let ((_tl231876232143_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231878232138_)))
                                                    (_hd231877232141_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231878232138_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231877232141_))
                                                    (let ((_e231881232146_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231877232141_))))
                                                      (let ((_tl231879232151_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231881232146_)))
                    (_hd231880232149_
                     (let () (declare (not safe)) (##car _e231881232146_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231880232149_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd231880232149_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231879232151_))
                            (let ((_e231884232154_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231879232151_))))
                              (let ((_tl231882232159_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231884232154_)))
                                    (_hd231883232157_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231884232154_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231882232159_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231876232143_))
                                        (let ((_e231887232162_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231876232143_))))
                                          (let ((_tl231885232167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231887232162_)))
                                                (_hd231886232165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231887232162_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231886232165_))
                                                (let ((_e231890232170_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231886232165_))))
                                                  (let ((_tl231888232175_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231890232170_)))
                                                        (_hd231889232173_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231890232170_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd231889232173_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd231889232173_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl231888232175_))
                        (let ((_e231893232178_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231888232175_))))
                          (let ((_tl231891232183_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231893232178_)))
                                (_hd231892232181_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231893232178_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl231891232183_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231861232103_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231849232071_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231828232015_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231819231991_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231816231983_))
                                                    (let ((_e231896232186_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231816231983_))))
                                                      (let ((_tl231894232191_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231896232186_)))
                    (_hd231895232189_
                     (let () (declare (not safe)) (##car _e231896232186_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231895232189_))
                    (let ((_e231899232194_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231895232189_))))
                      (let ((_tl231897232199_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231899232194_)))
                            (_hd231898232197_
                             (let ()
                               (declare (not safe))
                               (##car _e231899232194_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd231898232197_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd231898232197_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl231897232199_))
                                    (let ((_e231902232202_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl231897232199_))))
                                      (let ((_tl231900232207_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231902232202_)))
                                            (_hd231901232205_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231902232202_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231900232207_))
                                            (let ((_e231905232210_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231900232207_))))
                                              (let ((_tl231903232215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231905232210_)))
                                                    (_hd231904232213_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231905232210_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231904232213_))
                                                    (let ((_e231908232218_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231904232213_))))
                                                      (let ((_tl231906232223_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231908232218_)))
                    (_hd231907232221_
                     (let () (declare (not safe)) (##car _e231908232218_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231907232221_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231907232221_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231906232223_))
                            (let ((_e231911232226_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231906232223_))))
                              (let ((_tl231909232231_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231911232226_)))
                                    (_hd231910232229_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231911232226_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231910232229_))
                                    (let ((_e231914232234_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231910232229_))))
                                      (let ((_tl231912232239_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231914232234_)))
                                            (_hd231913232237_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231914232234_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231913232237_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231913232237_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231912232239_))
                                                    (let ((_e231917232242_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231912232239_))))
                                                      (let ((_tl231915232247_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231917232242_)))
                    (_hd231916232245_
                     (let () (declare (not safe)) (##car _e231917232242_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231915232247_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231909232231_))
                        (let ((_e231920232250_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231909232231_))))
                          (let ((_tl231918232255_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231920232250_)))
                                (_hd231919232253_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231920232250_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231919232253_))
                                (let ((_e231923232258_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231919232253_))))
                                  (let ((_tl231921232263_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231923232258_)))
                                        (_hd231922232261_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231923232258_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231922232261_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231922232261_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231921232263_))
                                                (let ((_e231926232266_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231921232263_))))
                                                  (let ((_tl231924232271_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231926232266_)))
                                                        (_hd231925232269_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231926232266_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231924232271_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl231918232255_))
                                                            (let ((_e231929232274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl231918232255_))))
                      (let ((_tl231927232279_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231929232274_)))
                            (_hd231928232277_
                             (let ()
                               (declare (not safe))
                               (##car _e231929232274_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd231928232277_))
                            (let ((_e231932232282_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd231928232277_))))
                              (let ((_tl231930232287_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231932232282_)))
                                    (_hd231931232285_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231932232282_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd231931232285_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd231931232285_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231930232287_))
                                            (let ((_e231935232290_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231930232287_))))
                                              (let ((_tl231933232295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231935232290_)))
                                                    (_hd231934232293_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231935232290_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231933232295_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl231927232279_))
                                                        (let ((_e231938232298_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl231927232279_))))
                  (let ((_tl231936232303_
                         (let () (declare (not safe)) (##cdr _e231938232298_)))
                        (_hd231937232301_
                         (let ()
                           (declare (not safe))
                           (##car _e231938232298_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd231937232301_))
                        (let ((_e231941232306_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd231937232301_))))
                          (let ((_tl231939232311_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231941232306_)))
                                (_hd231940232309_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231941232306_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd231940232309_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd231940232309_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231939232311_))
                                        (let ((_e231944232314_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231939232311_))))
                                          (let ((_tl231942232319_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231944232314_)))
                                                (_hd231943232317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231944232314_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231942232319_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231936232303_))
                                                    (let ((_e231947232322_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231936232303_))))
                                                      (let ((_tl231945232327_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231947232322_)))
                    (_hd231946232325_
                     (let () (declare (not safe)) (##car _e231947232322_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231946232325_))
                    (let ((_e231950232330_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231946232325_))))
                      (let ((_tl231948232335_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231950232330_)))
                            (_hd231949232333_
                             (let ()
                               (declare (not safe))
                               (##car _e231950232330_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd231949232333_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd231949232333_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl231948232335_))
                                    (let ((_e231953232338_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl231948232335_))))
                                      (let ((_tl231951232343_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231953232338_)))
                                            (_hd231952232341_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231953232338_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231951232343_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231945232327_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231903232215_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231894232191_))
                                                        (___kont242727242728_
                                                         _hd231952232341_
                                                         _hd231943232317_
                                                         _hd231925232269_
                                                         _hd231916232245_
                                                         _hd231901232205_
                                                         _hd231892232181_
                                                         _hd231883232157_
                                                         _hd231874232133_
                                                         _hd231859232093_
                                                         _hd231844232053_
                                                         _hd231826232005_)
                                                        (___kont242729242730_))
                                                    (___kont242729242730_))
                                                (___kont242729242730_))
                                            (___kont242729242730_))))
                                    (___kont242729242730_))
                                (___kont242729242730_))
                            (___kont242729242730_))))
                    (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242729242730_))
                                                (___kont242729242730_))))
                                        (___kont242729242730_))
                                    (___kont242729242730_))
                                (___kont242729242730_))))
                        (___kont242729242730_))))
                (___kont242729242730_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242729242730_))))
                                            (___kont242729242730_))
                                        (___kont242729242730_))
                                    (___kont242729242730_))))
                            (___kont242729242730_))))
                    (___kont242729242730_))
                (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242729242730_))
                                            (___kont242729242730_))
                                        (___kont242729242730_))))
                                (___kont242729242730_))))
                        (___kont242729242730_))
                    (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242729242730_))
                                                (___kont242729242730_))
                                            (___kont242729242730_))))
                                    (___kont242729242730_))))
                            (___kont242729242730_))
                        (___kont242729242730_))
                    (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242729242730_))))
                                            (___kont242729242730_))))
                                    (___kont242729242730_))
                                (___kont242729242730_))
                            (___kont242729242730_))))
                    (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242729242730_))
                                                (___kont242729242730_))
                                            (___kont242729242730_))
                                        (___kont242729242730_))
                                    (___kont242729242730_))
                                (___kont242729242730_))))
                        (___kont242729242730_))
                    (___kont242729242730_))
                (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242729242730_))))
                                        (___kont242729242730_))
                                    (___kont242729242730_))))
                            (___kont242729242730_))
                        (___kont242729242730_))
                    (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242729242730_))))
                                            (___kont242729242730_))
                                        (___kont242729242730_))))
                                (___kont242729242730_))
                            (___kont242729242730_))
                        (___kont242729242730_))))
                (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242729242730_))
                                            (___kont242729242730_))
                                        (___kont242729242730_))))
                                (___kont242729242730_))))
                        (___kont242729242730_))))
                (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242729242730_))
                                            (___kont242729242730_))
                                        (___kont242729242730_))))
                                (___kont242729242730_))))
                        (___kont242729242730_))
                    (___kont242729242730_))
                (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242729242730_))
                                            (___kont242729242730_))))
                                    (___kont242729242730_))))
                            (___kont242729242730_))))
                    (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242729242730_))
                                                (___kont242729242730_))
                                            (___kont242729242730_))))
                                    (___kont242729242730_))))
                            (___kont242729242730_))
                        (___kont242729242730_))))
                (___kont242729242730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242729242730_))))
                                        (___kont242729242730_))))
                                (___kont242729242730_))
                            (___kont242729242730_))
                        (___kont242729242730_))))
                (___kont242729242730_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx231539_ _id231540_ _clauses231541_ _gensym?231542_)
        (let _lp231544_ ((_rest231546_ _clauses231541_)
                         (_ids231547_ '())
                         (_impls231548_ '())
                         (_clauses231549_ '()))
          (let* ((_rest231550231558_ _rest231546_)
                 (_else231552231566_
                  (lambda ()
                    (values (reverse _ids231547_)
                            (reverse _impls231548_)
                            (reverse _clauses231549_))))
                 (_K231554231771_
                  (lambda (_rest231569_ _clause231570_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause231570_))
                        (let ((__tmp243804
                               (let ()
                                 (declare (not safe))
                                 (cons _clause231570_ _clauses231549_))))
                          (declare (not safe))
                          (_lp231544_
                           _rest231569_
                           _ids231547_
                           _impls231548_
                           __tmp243804))
                        (let* ((_g231572231583_
                                (lambda (_g231573231580_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g231573231580_))))
                               (_g231571231768_
                                (lambda (_g231573231586_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g231573231586_))
                                      (let ((_e231578231588_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g231573231586_))))
                                        (let ((_hd231577231591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231578231588_)))
                                              (_tl231576231593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231578231588_))))
                                          ((lambda (_L231596_ _L231597_)
                                             (let* ((_id231614_
                                                     (let ((__tmp243751
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id231540_)))
                                                           (__tmp243750
                                                            (length _clauses231549_))
                                                           (__tmp243749
                                                            (if _gensym?231542_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp243751
                                                        '"__"
                                                        __tmp243750
                                                        __tmp243749)))
                                                    (_id231616_
                                                     (let ((__tmp243752
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx231539_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id231614_
                                                        __tmp243752)))
                                                    (_impl231618_
                                                     (let ((__tmp243753
                                                            (let ((__tmp243755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp243754
                           (let ()
                             (declare (not safe))
                             (cons _L231597_ _L231596_))))
                      (declare (not safe))
                      (cons __tmp243755 __tmp243754))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp243753 _stx231539_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause231765_
                                                     (let* ((___stx243109243110_
                                                             _L231597_)
                                                            (_g231622231650_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx243109243110_)))))
               (let ((___kont243111243112_
                      (lambda (_L231744_)
                        (let ((__tmp243756
                               (let ((__tmp243757
                                      (let ((__tmp243758
                                             (let ((__tmp243759
                                                    (let ((__tmp243765
                                                           (let ((__tmp243766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id231616_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243766)))
                  (__tmp243760
                   (let ((__tmp243761
                          (lambda (_g231754231757_ _g231755231759_)
                            (let ((__tmp243762
                                   (let ((__tmp243764
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp243763
                                          (let ()
                                            (declare (not safe))
                                            (cons _g231754231757_ '()))))
                                     (declare (not safe))
                                     (cons __tmp243764 __tmp243763))))
                              (declare (not safe))
                              (cons __tmp243762 _g231755231759_)))))
                     (declare (not safe))
                     (foldr1 __tmp243761 '() _L231744_))))
              (declare (not safe))
              (cons __tmp243765 __tmp243760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243759))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243758
                                         _stx231539_))))
                                 (declare (not safe))
                                 (cons __tmp243757 '()))))
                          (declare (not safe))
                          (cons _L231597_ __tmp243756))))
                     (___kont243115243116_
                      (lambda (_L231695_ _L231696_)
                        (let ((__tmp243767
                               (let ((__tmp243768
                                      (let ((__tmp243769
                                             (let ((__tmp243770
                                                    (let ((__tmp243784
                                                           (let ((__tmp243785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243785)))
                  (__tmp243771
                   (let ((__tmp243782
                          (let ((__tmp243783
                                 (let ()
                                   (declare (not safe))
                                   (cons _id231616_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp243783)))
                         (__tmp243772
                          (let ((__tmp243778
                                 (let ((__tmp243779
                                        (let ((__tmp243781
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp243780
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L231695_ '()))))
                                          (declare (not safe))
                                          (cons __tmp243781 __tmp243780))))
                                   (declare (not safe))
                                   (cons __tmp243779 '())))
                                (__tmp243773
                                 (let ((__tmp243774
                                        (lambda (_g231707231710_
                                                 _g231708231712_)
                                          (let ((__tmp243775
                                                 (let ((__tmp243777
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp243776
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g231707231710_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp243777
                                                         __tmp243776))))
                                            (declare (not safe))
                                            (cons __tmp243775
                                                  _g231708231712_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp243774 '() _L231696_))))
                            (declare (not safe))
                            (foldr1 cons __tmp243778 __tmp243773))))
                     (declare (not safe))
                     (cons __tmp243782 __tmp243772))))
              (declare (not safe))
              (cons __tmp243784 __tmp243771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243770))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243769
                                         _stx231539_))))
                                 (declare (not safe))
                                 (cons __tmp243768 '()))))
                          (declare (not safe))
                          (cons _L231597_ __tmp243767))))
                     (___kont243119243120_
                      (lambda (_L231655_)
                        (let ((__tmp243786
                               (let ((__tmp243787
                                      (let ((__tmp243788
                                             (let ((__tmp243789
                                                    (let ((__tmp243797
                                                           (let ((__tmp243798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243798)))
                  (__tmp243790
                   (let ((__tmp243795
                          (let ((__tmp243796
                                 (let ()
                                   (declare (not safe))
                                   (cons _id231616_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp243796)))
                         (__tmp243791
                          (let ((__tmp243792
                                 (let ((__tmp243794
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp243793
                                        (let ()
                                          (declare (not safe))
                                          (cons _L231655_ '()))))
                                   (declare (not safe))
                                   (cons __tmp243794 __tmp243793))))
                            (declare (not safe))
                            (cons __tmp243792 '()))))
                     (declare (not safe))
                     (cons __tmp243795 __tmp243791))))
              (declare (not safe))
              (cons __tmp243797 __tmp243790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243789))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243788
                                         _stx231539_))))
                                 (declare (not safe))
                                 (cons __tmp243787 '()))))
                          (declare (not safe))
                          (cons _L231597_ __tmp243786)))))
                 (let* ((___match243134243135_
                         (lambda (___splice243117243118_
                                  _target231636231671_
                                  _tl231638231673_)
                           (letrec ((_loop231639231676_
                                     (lambda (_hd231637231679_
                                              _arg231643231681_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd231637231679_))
                                           (let ((_e231640231684_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd231637231679_))))
                                             (let ((_lp-tl231642231689_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231640231684_)))
                                                   (_lp-hd231641231687_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231640231684_))))
                                               (let ((__tmp243799
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd231641231687_
                                                              _arg231643231681_))))
                                                 (declare (not safe))
                                                 (_loop231639231676_
                                                  _lp-tl231642231689_
                                                  __tmp243799))))
                                           (let ((_arg231644231692_
                                                  (reverse _arg231643231681_)))
                                             (___kont243115243116_
                                              _tl231638231673_
                                              _arg231644231692_))))))
                             (let ()
                               (declare (not safe))
                               (_loop231639231676_
                                _target231636231671_
                                '())))))
                        (___match243128243129_
                         (lambda (___splice243113243114_
                                  _target231625231720_
                                  _tl231627231722_)
                           (letrec ((_loop231628231725_
                                     (lambda (_hd231626231728_
                                              _arg231632231730_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd231626231728_))
                                           (let ((_e231629231733_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd231626231728_))))
                                             (let ((_lp-tl231631231738_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231629231733_)))
                                                   (_lp-hd231630231736_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231629231733_))))
                                               (let ((__tmp243800
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd231630231736_
                                                              _arg231632231730_))))
                                                 (declare (not safe))
                                                 (_loop231628231725_
                                                  _lp-tl231631231738_
                                                  __tmp243800))))
                                           (let ((_arg231633231741_
                                                  (reverse _arg231632231730_)))
                                             (___kont243111243112_
                                              _arg231633231741_))))))
                             (let ()
                               (declare (not safe))
                               (_loop231628231725_
                                _target231625231720_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx243109243110_))
                       (let ((___splice243113243114_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx243109243110_
                                 '0))))
                         (let ((_tl231627231722_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243113243114_ '1)))
                               (_target231625231720_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243113243114_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231627231722_))
                               (___match243128243129_
                                ___splice243113243114_
                                _target231625231720_
                                _tl231627231722_)
                               (___match243134243135_
                                ___splice243113243114_
                                _target231625231720_
                                _tl231627231722_))))
                       (___kont243119243120_ ___stx243109243110_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp243803
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id231616_
                                                              _ids231547_)))
                                                     (__tmp243802
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl231618_
                                                              _impls231548_)))
                                                     (__tmp243801
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause231765_
                                                              _clauses231549_))))
                                                 (declare (not safe))
                                                 (_lp231544_
                                                  _rest231569_
                                                  __tmp243803
                                                  __tmp243802
                                                  __tmp243801))))
                                           _tl231576231593_
                                           _hd231577231591_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g231572231583_ _g231573231586_))))))
                          (declare (not safe))
                          (_g231571231768_ _clause231570_))))))
            (if (let () (declare (not safe)) (##pair? _rest231550231558_))
                (let ((_hd231555231774_
                       (let ()
                         (declare (not safe))
                         (##car _rest231550231558_)))
                      (_tl231556231776_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest231550231558_))))
                  (let* ((_clause231779_ _hd231555231774_)
                         (_rest231781_ _tl231556231776_))
                    (declare (not safe))
                    (_K231554231771_ _rest231781_ _clause231779_)))
                (let () (declare (not safe)) (_else231552231566_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx231786_ _id231787_ _clauses231788_)
        (let ((_gensym?231790_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx231786_
           _id231787_
           _clauses231788_
           _gensym?231790_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g243806_
        (let ((_g243805_ (let () (declare (not safe)) (##length _g243806_))))
          (cond ((let () (declare (not safe)) (##fx= _g243805_ 3))
                 (apply (lambda (_stx231786_ _id231787_ _clauses231788_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx231786_
                             _id231787_
                             _clauses231788_)))
                        _g243806_))
                ((let () (declare (not safe)) (##fx= _g243805_ 4))
                 (apply (lambda (_stx231792_
                                 _id231793_
                                 _clauses231794_
                                 _gensym?231795_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx231792_
                             _id231793_
                             _clauses231794_
                             _gensym?231795_)))
                        _g243806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g243806_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx230816_)
        (letrec ((_case-lambda-clause-def230818_
                  (lambda (_id231535_ _impl231536_)
                    (let ((__tmp243807
                           (let ((__tmp243808
                                  (let ((__tmp243811
                                         (let ()
                                           (declare (not safe))
                                           (cons _id231535_ '())))
                                        (__tmp243809
                                         (let ((__tmp243810
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl231536_))))
                                           (declare (not safe))
                                           (cons __tmp243810 '()))))
                                    (declare (not safe))
                                    (cons __tmp243811 __tmp243809))))
                             (declare (not safe))
                             (cons '%#define-values __tmp243808))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp243807 _stx230816_))))
                 (_opt-lambda-dispatch-name230819_
                  (lambda (_id231531_)
                    (if (uninterned-symbol? _id231531_)
                        (let ((_str231533_ (symbol->string _id231531_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str231533_))
                              '"%"
                              _id231531_))
                        _id231531_)))
                 (_kw-lambda-dispatch-name230820_
                  (lambda (_id231526_ _name231527_)
                    (if (uninterned-symbol? _id231526_)
                        (let ((_str231529_ (symbol->string _id231526_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str231529_))
                              _name231527_
                              _id231526_))
                        _id231526_))))
          (let* ((___stx243157243158_ _stx230816_)
                 (_g230825230884_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243157243158_)))))
            (let ((___kont243159243160_
                   (lambda (_L231435_ _L231436_)
                     (let* ((___stx243137243138_ _L231435_)
                            (_g231453231467_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243137243138_)))))
                       (let ((___kont243139243140_
                              (lambda (_L231511_) _stx230816_))
                             (___kont243141243142_
                              (lambda (_L231480_)
                                (let ((_g243812_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx230816_
                                          _L231436_
                                          _L231480_))))
                                  (begin
                                    (let ((_g243813_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g243812_)
                                                 (##vector-length _g243812_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g243813_ 3)))
                                          (error "Context expects 3 values"
                                                 _g243813_)))
                                    (let ((_ids231490_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243812_ 0)))
                                          (_impls231491_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243812_ 1)))
                                          (_clauses231492_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243812_ 2))))
                                      (let* ((_g243814_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids231490_))
                                             (_defs231495_
                                              (map _case-lambda-clause-def230818_
                                                   _ids231490_
                                                   _impls231491_)))
                                        (let ((__tmp243816
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L231436_)))
                                              (__tmp243815
                                               (map gxc#identifier-symbol
                                                    _ids231490_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp243816
                                           '" => "
                                           __tmp243815))
                                        (let ((__tmp243817
                                               (let ((__tmp243818
                                                      (let ((__tmp243819
                                                             (let ((__tmp243820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp243821
                                   (let ((__tmp243822
                                          (let ((__tmp243827
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L231436_ '())))
                                                (__tmp243823
                                                 (let ((__tmp243824
                                                        (let ((__tmp243826
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses231492_)))
                      (__tmp243825
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp243826 __tmp243825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp243824 '()))))
                                            (declare (not safe))
                                            (cons __tmp243827 __tmp243823))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp243822))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp243821
                               _stx230816_))))
                       (declare (not safe))
                       (cons __tmp243820 '()))))
                (declare (not safe))
                (foldr1 cons __tmp243819 _defs231495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp243818))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp243817
                                           _stx230816_)))))))))
                         (let ((___match243148243149_
                                (lambda (_e231458231503_
                                         _hd231457231506_
                                         _tl231456231508_)
                                  (let ((_L231511_ _tl231456231508_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L231511_))
                                        (___kont243139243140_ _L231511_)
                                        (___kont243141243142_
                                         _tl231456231508_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx243137243138_))
                               (let ((_e231458231503_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx243137243138_))))
                                 (let ((_tl231456231508_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231458231503_)))
                                       (_hd231457231506_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231458231503_))))
                                   (___match243148243149_
                                    _e231458231503_
                                    _hd231457231506_
                                    _tl231456231508_)))
                               (let ()
                                 (declare (not safe))
                                 (_g231453231467_))))))))
                  (___kont243161243162_
                   (lambda (_L231253_ _L231254_)
                     (let* ((_g231270231300_
                             (lambda (_g231271231297_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g231271231297_))))
                            (_g231269231395_
                             (lambda (_g231271231303_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g231271231303_))
                                   (let ((_e231277231305_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g231271231303_))))
                                     (let ((_hd231276231308_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e231277231305_)))
                                           (_tl231275231310_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e231277231305_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl231275231310_))
                                           (let ((_e231280231313_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl231275231310_))))
                                             (let ((_hd231279231316_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231280231313_)))
                                                   (_tl231278231318_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231280231313_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231279231316_))
                                                   (let ((_e231283231321_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231279231316_))))
                                                     (let ((_hd231282231324_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231283231321_)))
                                                           (_tl231281231326_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231283231321_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd231282231324_))
                                                           (let ((_e231286231329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd231282231324_))))
                     (let ((_hd231285231332_
                            (let ()
                              (declare (not safe))
                              (##car _e231286231329_)))
                           (_tl231284231334_
                            (let ()
                              (declare (not safe))
                              (##cdr _e231286231329_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd231285231332_))
                           (let ((_e231289231337_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd231285231332_))))
                             (let ((_hd231288231340_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231289231337_)))
                                   (_tl231287231342_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231289231337_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231287231342_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl231284231334_))
                                       (let ((_e231292231345_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl231284231334_))))
                                         (let ((_hd231291231348_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231292231345_)))
                                               (_tl231290231350_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231292231345_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231290231350_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl231281231326_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231278231318_))
                                                       (let ((_e231295231353_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231278231318_))))
                 (let ((_hd231294231356_
                        (let () (declare (not safe)) (##car _e231295231353_)))
                       (_tl231293231358_
                        (let () (declare (not safe)) (##cdr _e231295231353_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231293231358_))
                       ((lambda (_L231361_ _L231362_ _L231363_)
                          (let* ((_lambda-id231387_
                                  (let ((__tmp243830
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L231254_)))
                                        (__tmp243828
                                         (let ((__tmp243829
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L231363_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name230819_
                                            __tmp243829))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp243830
                                     '"__"
                                     __tmp243828)))
                                 (_lambda-id231389_
                                  (let ((__tmp243831
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx230816_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id231387_
                                     __tmp243831)))
                                 (_g243832_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id231389_)))
                                 (_new-case-lambda-expr231392_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L231361_
                                     _L231363_
                                     _lambda-id231389_))))
                            (let ((__tmp243834
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L231254_)))
                                  (__tmp243833
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id231389_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp243834
                               '" => "
                               __tmp243833))
                            (let ((__tmp243835
                                   (let ((__tmp243836
                                          (let ((__tmp243844
                                                 (let ((__tmp243845
                                                        (let ((__tmp243846
                                                               (let ((__tmp243849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id231389_ '())))
                             (__tmp243847
                              (let ((__tmp243848
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L231362_))))
                                (declare (not safe))
                                (cons __tmp243848 '()))))
                         (declare (not safe))
                         (cons __tmp243849 __tmp243847))))
                  (declare (not safe))
                  (cons '%#define-values __tmp243846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp243845
                                                    _stx230816_)))
                                                (__tmp243837
                                                 (let ((__tmp243838
                                                        (let ((__tmp243839
                                                               (let ((__tmp243840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp243841
                                     (let ((__tmp243843
                                            (let ()
                                              (declare (not safe))
                                              (cons _L231254_ '())))
                                           (__tmp243842
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr231392_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp243843 __tmp243842))))
                                (declare (not safe))
                                (cons '%#define-values __tmp243841))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp243840 _stx230816_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp243839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp243838 '()))))
                                            (declare (not safe))
                                            (cons __tmp243844 __tmp243837))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp243836))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp243835
                               _stx230816_))))
                        _hd231294231356_
                        _hd231291231348_
                        _hd231288231340_)
                       (let ()
                         (declare (not safe))
                         (_g231270231300_ _g231271231303_)))))
               (let () (declare (not safe)) (_g231270231300_ _g231271231303_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231270231300_
                                                      _g231271231303_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231270231300_
                                                  _g231271231303_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g231270231300_ _g231271231303_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g231270231300_ _g231271231303_)))))
                           (let ()
                             (declare (not safe))
                             (_g231270231300_ _g231271231303_)))))
                   (let ()
                     (declare (not safe))
                     (_g231270231300_ _g231271231303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231270231300_
                                                      _g231271231303_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g231270231300_
                                              _g231271231303_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g231270231300_ _g231271231303_))))))
                       (declare (not safe))
                       (_g231269231395_ _L231253_))))
                  (___kont243163243164_
                   (lambda (_L230967_ _L230968_)
                     (let* ((_g230984231037_
                             (lambda (_g230985231034_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g230985231034_))))
                            (_g230983231213_
                             (lambda (_g230985231040_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g230985231040_))
                                   (let ((_e230993231042_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g230985231040_))))
                                     (let ((_hd230992231045_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e230993231042_)))
                                           (_tl230991231047_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e230993231042_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl230991231047_))
                                           (let ((_e230996231050_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl230991231047_))))
                                             (let ((_hd230995231053_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230996231050_)))
                                                   (_tl230994231055_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230996231050_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230995231053_))
                                                   (let ((_e230999231058_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230995231053_))))
                                                     (let ((_hd230998231061_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230999231058_)))
                                                           (_tl230997231063_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230999231058_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd230998231061_))
                                                           (let ((_e231002231066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd230998231061_))))
                     (let ((_hd231001231069_
                            (let ()
                              (declare (not safe))
                              (##car _e231002231066_)))
                           (_tl231000231071_
                            (let ()
                              (declare (not safe))
                              (##cdr _e231002231066_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd231001231069_))
                           (let ((_e231005231074_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd231001231069_))))
                             (let ((_hd231004231077_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231005231074_)))
                                   (_tl231003231079_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231005231074_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231003231079_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl231000231071_))
                                       (let ((_e231008231082_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl231000231071_))))
                                         (let ((_hd231007231085_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231008231082_)))
                                               (_tl231006231087_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231008231082_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd231007231085_))
                                               (let ((_e231011231090_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd231007231085_))))
                                                 (let ((_hd231010231093_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231011231090_)))
                                                       (_tl231009231095_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231011231090_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231009231095_))
                                                       (let ((_e231014231098_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231009231095_))))
                 (let ((_hd231013231101_
                        (let () (declare (not safe)) (##car _e231014231098_)))
                       (_tl231012231103_
                        (let () (declare (not safe)) (##cdr _e231014231098_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd231013231101_))
                       (let ((_e231017231106_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd231013231101_))))
                         (let ((_hd231016231109_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231017231106_)))
                               (_tl231015231111_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231017231106_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd231016231109_))
                               (let ((_e231020231114_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd231016231109_))))
                                 (let ((_hd231019231117_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231020231114_)))
                                       (_tl231018231119_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231020231114_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd231019231117_))
                                       (let ((_e231023231122_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd231019231117_))))
                                         (let ((_hd231022231125_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231023231122_)))
                                               (_tl231021231127_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231023231122_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231021231127_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl231018231119_))
                                                   (let ((_e231026231130_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl231018231119_))))
                                                     (let ((_hd231025231133_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231026231130_)))
                                                           (_tl231024231135_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231026231130_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231024231135_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl231015231111_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl231012231103_))
                           (let ((_e231029231138_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl231012231103_))))
                             (let ((_hd231028231141_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231029231138_)))
                                   (_tl231027231143_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231029231138_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231027231143_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl231006231087_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl230997231063_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl230994231055_))
                                               (let ((_e231032231146_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl230994231055_))))
                                                 (let ((_hd231031231149_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231032231146_)))
                                                       (_tl231030231151_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231032231146_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl231030231151_))
                                                       ((lambda (_L231154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L231155_
                         _L231156_
                         _L231157_
                         _L231158_)
                  (let* ((_get-kws-id231198_
                          (let ((__tmp243852
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L230968_)))
                                (__tmp243850
                                 (let ((__tmp243851
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231158_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name230820_
                                    __tmp243851
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp243852 '"__" __tmp243850)))
                         (_get-kws-id231200_
                          (let ((__tmp243853
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx230816_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id231198_
                             __tmp243853)))
                         (_main-id231202_
                          (let ((__tmp243856
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L230968_)))
                                (__tmp243854
                                 (let ((__tmp243855
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231157_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name230820_
                                    __tmp243855
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp243856 '"__" __tmp243854)))
                         (_main-id231204_
                          (let ((__tmp243857
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx230816_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id231202_
                             __tmp243857)))
                         (_g243858_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id231200_)))
                         (_g243859_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id231204_)))
                         (_new-kw-dispatch231208_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231154_
                             _L231158_
                             _get-kws-id231200_)))
                         (_new-get-kws231210_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231155_
                             _L231157_
                             _main-id231204_))))
                    (let ((__tmp243862
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L230968_)))
                          (__tmp243861
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id231200_)))
                          (__tmp243860
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id231204_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp243862
                       '" => "
                       __tmp243861
                       '" => "
                       __tmp243860))
                    (let ((__tmp243863
                           (let ((__tmp243864
                                  (let ((__tmp243877
                                         (let ((__tmp243878
                                                (let ((__tmp243879
                                                       (let ((__tmp243880
                                                              (let ((__tmp243882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id231204_ '())))
                            (__tmp243881
                             (let ()
                               (declare (not safe))
                               (cons _L231156_ '()))))
                        (declare (not safe))
                        (cons __tmp243882 __tmp243881))))
                 (declare (not safe))
                 (cons '%#define-values __tmp243880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243879
                                                   _stx230816_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp243878)))
                                        (__tmp243865
                                         (let ((__tmp243872
                                                (let ((__tmp243873
                                                       (let ((__tmp243874
                                                              (let ((__tmp243876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id231200_ '())))
                            (__tmp243875
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws231210_ '()))))
                        (declare (not safe))
                        (cons __tmp243876 __tmp243875))))
                 (declare (not safe))
                 (cons '%#define-values __tmp243874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243873
                                                   _stx230816_)))
                                               (__tmp243866
                                                (let ((__tmp243867
                                                       (let ((__tmp243868
                                                              (let ((__tmp243869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp243871
                                    (let ()
                                      (declare (not safe))
                                      (cons _L230968_ '())))
                                   (__tmp243870
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch231208_ '()))))
                               (declare (not safe))
                               (cons __tmp243871 __tmp243870))))
                        (declare (not safe))
                        (cons '%#define-values __tmp243869))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp243868 _stx230816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp243867 '()))))
                                           (declare (not safe))
                                           (cons __tmp243872 __tmp243866))))
                                    (declare (not safe))
                                    (cons __tmp243877 __tmp243865))))
                             (declare (not safe))
                             (cons '%#begin __tmp243864))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp243863 _stx230816_))))
                _hd231031231149_
                _hd231028231141_
                _hd231025231133_
                _hd231022231125_
                _hd231004231077_)
               (let ()
                 (declare (not safe))
                 (_g230984231037_ _g230985231040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230984231037_
                                                  _g230985231040_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g230984231037_
                                              _g230985231040_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g230984231037_ _g230985231040_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230984231037_ _g230985231040_)))))
                           (let ()
                             (declare (not safe))
                             (_g230984231037_ _g230985231040_)))
                       (let ()
                         (declare (not safe))
                         (_g230984231037_ _g230985231040_)))
                   (let ()
                     (declare (not safe))
                     (_g230984231037_ _g230985231040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230984231037_
                                                      _g230985231040_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230984231037_
                                                  _g230985231040_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230984231037_ _g230985231040_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g230984231037_ _g230985231040_)))))
                       (let ()
                         (declare (not safe))
                         (_g230984231037_ _g230985231040_)))))
               (let ()
                 (declare (not safe))
                 (_g230984231037_ _g230985231040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230984231037_
                                                  _g230985231040_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230984231037_ _g230985231040_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230984231037_ _g230985231040_)))))
                           (let ()
                             (declare (not safe))
                             (_g230984231037_ _g230985231040_)))))
                   (let ()
                     (declare (not safe))
                     (_g230984231037_ _g230985231040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230984231037_
                                                      _g230985231040_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g230984231037_
                                              _g230985231040_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g230984231037_ _g230985231040_))))))
                       (declare (not safe))
                       (_g230983231213_ _L230967_))))
                  (___kont243165243166_
                   (lambda (_L230913_ _L230914_)
                     (let ((__tmp243883
                            (let ((__tmp243884
                                   (let ((__tmp243885
                                          (let ((__tmp243886
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L230913_))))
                                            (declare (not safe))
                                            (cons __tmp243886 '()))))
                                     (declare (not safe))
                                     (cons _L230914_ __tmp243885))))
                              (declare (not safe))
                              (cons '%#define-values __tmp243884))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp243883 _stx230816_)))))
              (let* ((___match243250243251_
                      (lambda (_e230859230935_
                               _hd230858230938_
                               _tl230857230940_
                               _e230862230943_
                               _hd230861230946_
                               _tl230860230948_
                               _e230865230951_
                               _hd230864230954_
                               _tl230863230956_
                               _e230868230959_
                               _hd230867230962_
                               _tl230866230964_)
                        (let ((_L230967_ _hd230867230962_)
                              (_L230968_ _hd230864230954_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L230968_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L230967_)))
                              (___kont243163243164_ _L230967_ _L230968_)
                              (___kont243165243166_
                               _hd230867230962_
                               _hd230861230946_)))))
                     (___match243222243223_
                      (lambda (_e230845231221_
                               _hd230844231224_
                               _tl230843231226_
                               _e230848231229_
                               _hd230847231232_
                               _tl230846231234_
                               _e230851231237_
                               _hd230850231240_
                               _tl230849231242_
                               _e230854231245_
                               _hd230853231248_
                               _tl230852231250_)
                        (let ((_L231253_ _hd230853231248_)
                              (_L231254_ _hd230850231240_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231254_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L231253_)))
                              (___kont243161243162_ _L231253_ _L231254_)
                              (___match243250243251_
                               _e230845231221_
                               _hd230844231224_
                               _tl230843231226_
                               _e230848231229_
                               _hd230847231232_
                               _tl230846231234_
                               _e230851231237_
                               _hd230850231240_
                               _tl230849231242_
                               _e230854231245_
                               _hd230853231248_
                               _tl230852231250_)))))
                     (___match243194243195_
                      (lambda (_e230831231403_
                               _hd230830231406_
                               _tl230829231408_
                               _e230834231411_
                               _hd230833231414_
                               _tl230832231416_
                               _e230837231419_
                               _hd230836231422_
                               _tl230835231424_
                               _e230840231427_
                               _hd230839231430_
                               _tl230838231432_)
                        (let ((_L231435_ _hd230839231430_)
                              (_L231436_ _hd230836231422_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231436_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L231435_)))
                              (___kont243159243160_ _L231435_ _L231436_)
                              (___match243222243223_
                               _e230831231403_
                               _hd230830231406_
                               _tl230829231408_
                               _e230834231411_
                               _hd230833231414_
                               _tl230832231416_
                               _e230837231419_
                               _hd230836231422_
                               _tl230835231424_
                               _e230840231427_
                               _hd230839231430_
                               _tl230838231432_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243157243158_))
                    (let ((_e230831231403_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243157243158_))))
                      (let ((_tl230829231408_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230831231403_)))
                            (_hd230830231406_
                             (let ()
                               (declare (not safe))
                               (##car _e230831231403_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230829231408_))
                            (let ((_e230834231411_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230829231408_))))
                              (let ((_tl230832231416_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230834231411_)))
                                    (_hd230833231414_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230834231411_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230833231414_))
                                    (let ((_e230837231419_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230833231414_))))
                                      (let ((_tl230835231424_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230837231419_)))
                                            (_hd230836231422_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230837231419_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230835231424_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230832231416_))
                                                (let ((_e230840231427_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230832231416_))))
                                                  (let ((_tl230838231432_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230840231427_)))
                                                        (_hd230839231430_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230840231427_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230838231432_))
                                                        (___match243194243195_
                                                         _e230831231403_
                                                         _hd230830231406_
                                                         _tl230829231408_
                                                         _e230834231411_
                                                         _hd230833231414_
                                                         _tl230832231416_
                                                         _e230837231419_
                                                         _hd230836231422_
                                                         _tl230835231424_
                                                         _e230840231427_
                                                         _hd230839231430_
                                                         _tl230838231432_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230825230884_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230825230884_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230832231416_))
                                                (let ((_e230879230905_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230832231416_))))
                                                  (let ((_tl230877230910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230879230905_)))
                                                        (_hd230878230908_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230879230905_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230877230910_))
                                                        (___kont243165243166_
                                                         _hd230878230908_
                                                         _hd230833231414_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230825230884_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230825230884_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl230832231416_))
                                        (let ((_e230879230905_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl230832231416_))))
                                          (let ((_tl230877230910_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230879230905_)))
                                                (_hd230878230908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230879230905_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230877230910_))
                                                (___kont243165243166_
                                                 _hd230878230908_
                                                 _hd230833231414_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230825230884_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g230825230884_))))))
                            (let () (declare (not safe)) (_g230825230884_)))))
                    (let () (declare (not safe)) (_g230825230884_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx229748_)
        (letrec* ((_bind-e__241553241554_
                   (lambda (_id230800_ _expr230801_ _compile?230802_)
                     (let ((__tmp243889
                            (let ()
                              (declare (not safe))
                              (cons _id230800_ '())))
                           (__tmp243887
                            (let ((__tmp243888
                                   (if _compile?230802_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr230801_))
                                       _expr230801_)))
                              (declare (not safe))
                              (cons __tmp243888 '()))))
                       (declare (not safe))
                       (cons __tmp243889 __tmp243887))))
                  (_bind-e__0__241555241556_
                   (lambda (_id230807_ _expr230808_)
                     (let ((_compile?230810_ '#t))
                       (declare (not safe))
                       (_bind-e__241553241554_
                        _id230807_
                        _expr230808_
                        _compile?230810_))))
                  (_bind-e229750_
                   (lambda _g243891_
                     (let ((_g243890_
                            (let ()
                              (declare (not safe))
                              (##length _g243891_))))
                       (cond ((let () (declare (not safe)) (##fx= _g243890_ 2))
                              (apply (lambda (_id230807_ _expr230808_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__241555241556_
                                          _id230807_
                                          _expr230808_)))
                                     _g243891_))
                             ((let () (declare (not safe)) (##fx= _g243890_ 3))
                              (apply (lambda (_id230812_
                                              _expr230813_
                                              _compile?230814_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__241553241554_
                                          _id230812_
                                          _expr230813_
                                          _compile?230814_)))
                                     _g243891_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g243891_))))))
                  (_compile-bindings229751_
                   (lambda (_bindings230384_)
                     (let _lp230386_ ((_rest230388_ _bindings230384_)
                                      (_lift1230389_ '())
                                      (_lift2230390_ '())
                                      (_bind230391_ '()))
                       (let* ((_rest230392230400_ _rest230388_)
                              (_else230394230408_
                               (lambda ()
                                 (values (reverse _lift1230389_)
                                         (reverse _lift2230390_)
                                         (reverse _bind230391_))))
                              (_K230396230787_
                               (lambda (_rest230411_ _hd230412_)
                                 (let* ((___stx243293243294_ _hd230412_)
                                        (_g230416230452_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243293243294_)))))
                                   (let ((___kont243295243296_
                                          (lambda (_L230694_ _L230695_)
                                            (let* ((___stx243273243274_
                                                    _L230694_)
                                                   (_g230710230724_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243273243274_)))))
                                              (let ((___kont243275243276_
                                                     (lambda (_L230772_)
                                                       (let ((__tmp243892
                                                              (let ((__tmp243893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__241553241554_
                                _L230695_
                                _L230694_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp243893 _bind230391_))))
                 (declare (not safe))
                 (_lp230386_
                  _rest230411_
                  _lift1230389_
                  _lift2230390_
                  __tmp243892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243277243278_
                                                     (lambda (_L230737_)
                                                       (let ((_g243894_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx229748_
                         _L230695_
                         _L230737_
                         '#t))))
                 (begin
                   (let ((_g243895_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g243894_)
                                (##vector-length _g243894_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g243895_ 3)))
                         (error "Context expects 3 values" _g243895_)))
                   (let ((_ids230747_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243894_ 0)))
                         (_impls230748_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243894_ 1)))
                         (_clauses230749_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243894_ 2))))
                     (let* ((_g243896_
                             (for-each gx#core-bind-runtime! _ids230747_))
                            (_xbind230752_
                             (map _bind-e229750_ _ids230747_ _impls230748_))
                            (_expr*230754_
                             (let ((__tmp243898
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses230749_)))
                                   (__tmp243897
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp243898
                                __tmp243897)))
                            (_bind*230756_
                             (let ()
                               (declare (not safe))
                               (_bind-e__241553241554_
                                _L230695_
                                _expr*230754_
                                '#f))))
                       (let ((__tmp243900
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L230695_)))
                             (__tmp243899
                              (map gxc#identifier-symbol _ids230747_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp243900
                          '" => "
                          __tmp243899))
                       (let ((__tmp243902
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2230390_ _xbind230752_)))
                             (__tmp243901
                              (let ()
                                (declare (not safe))
                                (cons _bind*230756_ _bind230391_))))
                         (declare (not safe))
                         (_lp230386_
                          _rest230411_
                          _lift1230389_
                          __tmp243902
                          __tmp243901)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match243284243285_
                                                       (lambda (_e230715230764_
                                                                _hd230714230767_
                                                                _tl230713230769_)
                                                         (let ((_L230772_
                                                                _tl230713230769_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L230772_))
                       (___kont243275243276_ _L230772_)
                       (___kont243277243278_ _tl230713230769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx243273243274_))
                                                      (let ((_e230715230764_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx243273243274_))))
                (let ((_tl230713230769_
                       (let () (declare (not safe)) (##cdr _e230715230764_)))
                      (_hd230714230767_
                       (let () (declare (not safe)) (##car _e230715230764_))))
                  (___match243284243285_
                   _e230715230764_
                   _hd230714230767_
                   _tl230713230769_)))
              (let () (declare (not safe)) (_g230710230724_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont243297243298_
                                          (lambda (_L230522_ _L230523_)
                                            (let* ((_g230537230567_
                                                    (lambda (_g230538230564_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230538230564_))))
                                                   (_g230536230662_
                                                    (lambda (_g230538230570_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230538230570_))
                                                          (let ((_e230544230572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230538230570_))))
                    (let ((_hd230543230575_
                           (let ()
                             (declare (not safe))
                             (##car _e230544230572_)))
                          (_tl230542230577_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230544230572_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230542230577_))
                          (let ((_e230547230580_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230542230577_))))
                            (let ((_hd230546230583_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230547230580_)))
                                  (_tl230545230585_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230547230580_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230546230583_))
                                  (let ((_e230550230588_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230546230583_))))
                                    (let ((_hd230549230591_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230550230588_)))
                                          (_tl230548230593_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230550230588_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230549230591_))
                                          (let ((_e230553230596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230549230591_))))
                                            (let ((_hd230552230599_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230553230596_)))
                                                  (_tl230551230601_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230553230596_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230552230599_))
                                                  (let ((_e230556230604_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230552230599_))))
                                                    (let ((_hd230555230607_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230556230604_)))
                                                          (_tl230554230609_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230556230604_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230554230609_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230551230601_))
                      (let ((_e230559230612_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230551230601_))))
                        (let ((_hd230558230615_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230559230612_)))
                              (_tl230557230617_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230559230612_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230557230617_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230548230593_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230545230585_))
                                      (let ((_e230562230620_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230545230585_))))
                                        (let ((_hd230561230623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230562230620_)))
                                              (_tl230560230625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230562230620_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230560230625_))
                                              ((lambda (_L230628_
                                                        _L230629_
                                                        _L230630_)
                                                 (let* ((_lambda-id230654_
                                                         (let ((__tmp243904
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L230523_)))
                       (__tmp243903 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp243904 __tmp243903)))
                (_lambda-id230656_
                 (let ((__tmp243905
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx229748_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id230654_ __tmp243905)))
                (_g243906_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id230656_)))
                (_new-case-lambda-expr230659_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L230628_
                    _L230630_
                    _lambda-id230656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp243908
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L230523_)))
                                                         (__tmp243907
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id230656_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp243908
                                                      '" => "
                                                      __tmp243907))
                                                   (let ((__tmp243911
                                                          (let ((__tmp243912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__241553241554_
                            _L230523_
                            _new-case-lambda-expr230659_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp243912 _rest230411_)))
                 (__tmp243909
                  (let ((__tmp243910
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__241555241556_
                            _lambda-id230656_
                            _L230629_))))
                    (declare (not safe))
                    (cons __tmp243910 _lift1230389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp230386_
                                                      __tmp243911
                                                      __tmp243909
                                                      _lift2230390_
                                                      _bind230391_))))
                                               _hd230561230623_
                                               _hd230558230615_
                                               _hd230555230607_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230537230567_
                                                 _g230538230570_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230537230567_ _g230538230570_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230537230567_ _g230538230570_)))
                              (let ()
                                (declare (not safe))
                                (_g230537230567_ _g230538230570_)))))
                      (let ()
                        (declare (not safe))
                        (_g230537230567_ _g230538230570_)))
                  (let ()
                    (declare (not safe))
                    (_g230537230567_ _g230538230570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230537230567_
                                                     _g230538230570_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230537230567_
                                             _g230538230570_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230537230567_ _g230538230570_)))))
                          (let ()
                            (declare (not safe))
                            (_g230537230567_ _g230538230570_)))))
                  (let ()
                    (declare (not safe))
                    (_g230537230567_ _g230538230570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230536230662_ _L230522_))))
                                         (___kont243299243300_
                                          (lambda (_L230473_ _L230474_)
                                            (let ((__tmp243913
                                                   (let ((__tmp243914
                                                          (let ((__tmp243915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp243916
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L230473_))))
                           (declare (not safe))
                           (cons __tmp243916 '()))))
                    (declare (not safe))
                    (cons _L230474_ __tmp243915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp243914
                                                           _bind230391_))))
                                              (declare (not safe))
                                              (_lp230386_
                                               _rest230411_
                                               _lift1230389_
                                               _lift2230390_
                                               __tmp243913)))))
                                     (let* ((___match243344243345_
                                             (lambda (_e230433230498_
                                                      _hd230432230501_
                                                      _tl230431230503_
                                                      _e230436230506_
                                                      _hd230435230509_
                                                      _tl230434230511_
                                                      _e230439230514_
                                                      _hd230438230517_
                                                      _tl230437230519_)
                                               (let ((_L230522_
                                                      _hd230438230517_)
                                                     (_L230523_
                                                      _hd230435230509_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230523_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L230522_)))
                                                     (___kont243297243298_
                                                      _L230522_
                                                      _L230523_)
                                                     (___kont243299243300_
                                                      _hd230438230517_
                                                      _hd230432230501_)))))
                                            (___match243322243323_
                                             (lambda (_e230422230670_
                                                      _hd230421230673_
                                                      _tl230420230675_
                                                      _e230425230678_
                                                      _hd230424230681_
                                                      _tl230423230683_
                                                      _e230428230686_
                                                      _hd230427230689_
                                                      _tl230426230691_)
                                               (let ((_L230694_
                                                      _hd230427230689_)
                                                     (_L230695_
                                                      _hd230424230681_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230695_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L230694_)))
                                                     (___kont243295243296_
                                                      _L230694_
                                                      _L230695_)
                                                     (___match243344243345_
                                                      _e230422230670_
                                                      _hd230421230673_
                                                      _tl230420230675_
                                                      _e230425230678_
                                                      _hd230424230681_
                                                      _tl230423230683_
                                                      _e230428230686_
                                                      _hd230427230689_
                                                      _tl230426230691_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243293243294_))
                                           (let ((_e230422230670_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243293243294_))))
                                             (let ((_tl230420230675_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230422230670_)))
                                                   (_hd230421230673_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230422230670_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230421230673_))
                                                   (let ((_e230425230678_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230421230673_))))
                                                     (let ((_tl230423230683_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230425230678_)))
                                                           (_hd230424230681_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230425230678_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230423230683_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230420230675_))
                       (let ((_e230428230686_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230420230675_))))
                         (let ((_tl230426230691_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230428230686_)))
                               (_hd230427230689_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230428230686_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230426230691_))
                               (___match243322243323_
                                _e230422230670_
                                _hd230421230673_
                                _tl230420230675_
                                _e230425230678_
                                _hd230424230681_
                                _tl230423230683_
                                _e230428230686_
                                _hd230427230689_
                                _tl230426230691_)
                               (let ()
                                 (declare (not safe))
                                 (_g230416230452_)))))
                       (let () (declare (not safe)) (_g230416230452_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230420230675_))
                       (let ((_e230447230465_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230420230675_))))
                         (let ((_tl230445230470_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230447230465_)))
                               (_hd230446230468_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230447230465_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230445230470_))
                               (___kont243299243300_
                                _hd230446230468_
                                _hd230421230673_)
                               (let ()
                                 (declare (not safe))
                                 (_g230416230452_)))))
                       (let () (declare (not safe)) (_g230416230452_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230420230675_))
                                                       (let ((_e230447230465_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230420230675_))))
                 (let ((_tl230445230470_
                        (let () (declare (not safe)) (##cdr _e230447230465_)))
                       (_hd230446230468_
                        (let () (declare (not safe)) (##car _e230447230465_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230445230470_))
                       (___kont243299243300_ _hd230446230468_ _hd230421230673_)
                       (let () (declare (not safe)) (_g230416230452_)))))
               (let () (declare (not safe)) (_g230416230452_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230416230452_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230392230400_))
                             (let ((_hd230397230790_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230392230400_)))
                                   (_tl230398230792_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230392230400_))))
                               (let* ((_hd230795_ _hd230397230790_)
                                      (_rest230797_ _tl230398230792_))
                                 (declare (not safe))
                                 (_K230396230787_ _rest230797_ _hd230795_)))
                             (let ()
                               (declare (not safe))
                               (_else230394230408_)))))))
                  (_lift-kw-lambda?229752_
                   (lambda (_bind230308_)
                     (let* ((___stx243361243362_ _bind230308_)
                            (_g230311230328_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243361243362_)))))
                       (let ((___kont243363243364_
                              (lambda (_L230364_ _L230365_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L230365_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L230364_))
                                    '#f)))
                             (___kont243365243366_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx243361243362_))
                             (let ((_e230317230340_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx243361243362_))))
                               (let ((_tl230315230345_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e230317230340_)))
                                     (_hd230316230343_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e230317230340_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd230316230343_))
                                     (let ((_e230320230348_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd230316230343_))))
                                       (let ((_tl230318230353_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e230320230348_)))
                                             (_hd230319230351_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e230320230348_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl230318230353_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl230315230345_))
                                                 (let ((_e230323230356_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl230315230345_))))
                                                   (let ((_tl230321230361_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e230323230356_)))
                                                         (_hd230322230359_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e230323230356_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl230321230361_))
                                                         (___kont243363243364_
                                                          _hd230322230359_
                                                          _hd230319230351_)
                                                         (___kont243365243366_))))
                                                 (___kont243365243366_))
                                             (___kont243365243366_))))
                                     (___kont243365243366_))))
                             (___kont243365243366_))))))
                  (_lift-kw-lambda-bindings229753_
                   (lambda (_bindings229920_)
                     (let _lp229922_ ((_rest229924_ _bindings229920_)
                                      (_lift1229925_ '())
                                      (_lift2229926_ '())
                                      (_bind229927_ '()))
                       (let* ((_rest229928229936_ _rest229924_)
                              (_else229930229944_
                               (lambda ()
                                 (values (reverse _lift1229925_)
                                         (reverse _lift2229926_)
                                         (reverse _bind229927_))))
                              (_K229932230296_
                               (lambda (_rest229947_ _hd229948_)
                                 (let* ((___stx243391243392_ _hd229948_)
                                        (_g229951229976_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243391243392_)))))
                                   (let ((___kont243393243394_
                                          (lambda (_L230046_ _L230047_)
                                            (let* ((_g230061230114_
                                                    (lambda (_g230062230111_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230062230111_))))
                                                   (_g230060230290_
                                                    (lambda (_g230062230117_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230062230117_))
                                                          (let ((_e230070230119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230062230117_))))
                    (let ((_hd230069230122_
                           (let ()
                             (declare (not safe))
                             (##car _e230070230119_)))
                          (_tl230068230124_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230070230119_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230068230124_))
                          (let ((_e230073230127_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230068230124_))))
                            (let ((_hd230072230130_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230073230127_)))
                                  (_tl230071230132_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230073230127_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230072230130_))
                                  (let ((_e230076230135_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230072230130_))))
                                    (let ((_hd230075230138_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230076230135_)))
                                          (_tl230074230140_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230076230135_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230075230138_))
                                          (let ((_e230079230143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230075230138_))))
                                            (let ((_hd230078230146_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230079230143_)))
                                                  (_tl230077230148_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230079230143_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230078230146_))
                                                  (let ((_e230082230151_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230078230146_))))
                                                    (let ((_hd230081230154_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230082230151_)))
                                                          (_tl230080230156_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230082230151_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230080230156_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230077230148_))
                      (let ((_e230085230159_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230077230148_))))
                        (let ((_hd230084230162_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230085230159_)))
                              (_tl230083230164_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230085230159_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230084230162_))
                              (let ((_e230088230167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230084230162_))))
                                (let ((_hd230087230170_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230088230167_)))
                                      (_tl230086230172_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230088230167_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230086230172_))
                                      (let ((_e230091230175_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230086230172_))))
                                        (let ((_hd230090230178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230091230175_)))
                                              (_tl230089230180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230091230175_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd230090230178_))
                                              (let ((_e230094230183_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd230090230178_))))
                                                (let ((_hd230093230186_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230094230183_)))
                                                      (_tl230092230188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230094230183_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230093230186_))
                                                      (let ((_e230097230191_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230093230186_))))
                (let ((_hd230096230194_
                       (let () (declare (not safe)) (##car _e230097230191_)))
                      (_tl230095230196_
                       (let () (declare (not safe)) (##cdr _e230097230191_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230096230194_))
                      (let ((_e230100230199_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230096230194_))))
                        (let ((_hd230099230202_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230100230199_)))
                              (_tl230098230204_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230100230199_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230098230204_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230095230196_))
                                  (let ((_e230103230207_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230095230196_))))
                                    (let ((_hd230102230210_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230103230207_)))
                                          (_tl230101230212_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230103230207_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230101230212_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230092230188_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230089230180_))
                                                  (let ((_e230106230215_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230089230180_))))
                                                    (let ((_hd230105230218_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230106230215_)))
                                                          (_tl230104230220_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230106230215_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230104230220_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230083230164_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230074230140_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230071230132_))
                              (let ((_e230109230223_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230071230132_))))
                                (let ((_hd230108230226_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230109230223_)))
                                      (_tl230107230228_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230109230223_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230107230228_))
                                      ((lambda (_L230231_
                                                _L230232_
                                                _L230233_
                                                _L230234_
                                                _L230235_)
                                         (let* ((_get-kws-id230275_
                                                 (let ((__tmp243918
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230047_)))
                                                       (__tmp243917
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243918
                                                    __tmp243917)))
                                                (_get-kws-id230277_
                                                 (let ((__tmp243919
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229748_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id230275_
                                                    __tmp243919)))
                                                (_main-id230279_
                                                 (let ((__tmp243921
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230047_)))
                                                       (__tmp243920
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243921
                                                    __tmp243920)))
                                                (_main-id230281_
                                                 (let ((__tmp243922
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229748_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id230279_
                                                    __tmp243922)))
                                                (_g243923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id230277_)))
                                                (_g243924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id230281_)))
                                                (_new-kw-dispatch230285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230231_
                                                    _L230235_
                                                    _get-kws-id230277_)))
                                                (_new-get-kws230287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230232_
                                                    _L230234_
                                                    _main-id230281_))))
                                           (let ((__tmp243927
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L230047_)))
                                                 (__tmp243926
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id230277_)))
                                                 (__tmp243925
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id230281_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp243927
                                              '" => "
                                              __tmp243926
                                              '" => "
                                              __tmp243925))
                                           (let ((__tmp243932
                                                  (let ((__tmp243933
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241553241554_
                                                            _main-id230281_
                                                            _L230233_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243933
                                                          _lift1229925_)))
                                                 (__tmp243930
                                                  (let ((__tmp243931
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241553241554_
                                                            _get-kws-id230277_
                                                            _new-get-kws230287_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243931
                                                          _lift2229926_)))
                                                 (__tmp243928
                                                  (let ((__tmp243929
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241553241554_
                                                            _L230047_
                                                            _new-kw-dispatch230285_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243929
                                                          _bind229927_))))
                                             (declare (not safe))
                                             (_lp229922_
                                              _rest229947_
                                              __tmp243932
                                              __tmp243930
                                              __tmp243928))))
                                       _hd230108230226_
                                       _hd230105230218_
                                       _hd230102230210_
                                       _hd230099230202_
                                       _hd230081230154_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230061230114_ _g230062230117_)))))
                              (let ()
                                (declare (not safe))
                                (_g230061230114_ _g230062230117_)))
                          (let ()
                            (declare (not safe))
                            (_g230061230114_ _g230062230117_)))
                      (let ()
                        (declare (not safe))
                        (_g230061230114_ _g230062230117_)))
                  (let ()
                    (declare (not safe))
                    (_g230061230114_ _g230062230117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230061230114_
                                                     _g230062230117_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230061230114_
                                                 _g230062230117_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230061230114_
                                             _g230062230117_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230061230114_ _g230062230117_)))
                              (let ()
                                (declare (not safe))
                                (_g230061230114_ _g230062230117_)))))
                      (let ()
                        (declare (not safe))
                        (_g230061230114_ _g230062230117_)))))
              (let ()
                (declare (not safe))
                (_g230061230114_ _g230062230117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g230061230114_
                                                 _g230062230117_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230061230114_ _g230062230117_)))))
                              (let ()
                                (declare (not safe))
                                (_g230061230114_ _g230062230117_)))))
                      (let ()
                        (declare (not safe))
                        (_g230061230114_ _g230062230117_)))
                  (let ()
                    (declare (not safe))
                    (_g230061230114_ _g230062230117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230061230114_
                                                     _g230062230117_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230061230114_
                                             _g230062230117_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230061230114_ _g230062230117_)))))
                          (let ()
                            (declare (not safe))
                            (_g230061230114_ _g230062230117_)))))
                  (let ()
                    (declare (not safe))
                    (_g230061230114_ _g230062230117_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230060230290_ _L230046_))))
                                         (___kont243395243396_
                                          (lambda (_L229997_ _L229998_)
                                            (let ((__tmp243934
                                                   (let ((__tmp243935
                                                          (let ((__tmp243936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L229997_ '()))))
                    (declare (not safe))
                    (cons _L229998_ __tmp243936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp243935
                                                           _bind229927_))))
                                              (declare (not safe))
                                              (_lp229922_
                                               _rest229947_
                                               _lift1229925_
                                               _lift2229926_
                                               __tmp243934)))))
                                     (let ((___match243418243419_
                                            (lambda (_e229957230022_
                                                     _hd229956230025_
                                                     _tl229955230027_
                                                     _e229960230030_
                                                     _hd229959230033_
                                                     _tl229958230035_
                                                     _e229963230038_
                                                     _hd229962230041_
                                                     _tl229961230043_)
                                              (let ((_L230046_
                                                     _hd229962230041_)
                                                    (_L230047_
                                                     _hd229959230033_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L230047_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L230046_)))
                                                    (___kont243393243394_
                                                     _L230046_
                                                     _L230047_)
                                                    (___kont243395243396_
                                                     _hd229962230041_
                                                     _hd229956230025_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243391243392_))
                                           (let ((_e229957230022_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243391243392_))))
                                             (let ((_tl229955230027_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229957230022_)))
                                                   (_hd229956230025_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229957230022_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229956230025_))
                                                   (let ((_e229960230030_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229956230025_))))
                                                     (let ((_tl229958230035_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229960230030_)))
                                                           (_hd229959230033_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229960230030_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229958230035_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229955230027_))
                       (let ((_e229963230038_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229955230027_))))
                         (let ((_tl229961230043_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229963230038_)))
                               (_hd229962230041_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229963230038_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229961230043_))
                               (___match243418243419_
                                _e229957230022_
                                _hd229956230025_
                                _tl229955230027_
                                _e229960230030_
                                _hd229959230033_
                                _tl229958230035_
                                _e229963230038_
                                _hd229962230041_
                                _tl229961230043_)
                               (let ()
                                 (declare (not safe))
                                 (_g229951229976_)))))
                       (let () (declare (not safe)) (_g229951229976_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229955230027_))
                       (let ((_e229971229989_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229955230027_))))
                         (let ((_tl229969229994_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229971229989_)))
                               (_hd229970229992_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229971229989_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229969229994_))
                               (___kont243395243396_
                                _hd229970229992_
                                _hd229956230025_)
                               (let ()
                                 (declare (not safe))
                                 (_g229951229976_)))))
                       (let () (declare (not safe)) (_g229951229976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229955230027_))
                                                       (let ((_e229971229989_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229955230027_))))
                 (let ((_tl229969229994_
                        (let () (declare (not safe)) (##cdr _e229971229989_)))
                       (_hd229970229992_
                        (let () (declare (not safe)) (##car _e229971229989_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229969229994_))
                       (___kont243395243396_ _hd229970229992_ _hd229956230025_)
                       (let () (declare (not safe)) (_g229951229976_)))))
               (let () (declare (not safe)) (_g229951229976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229951229976_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229928229936_))
                             (let ((_hd229933230299_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229928229936_)))
                                   (_tl229934230301_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229928229936_))))
                               (let* ((_hd230304_ _hd229933230299_)
                                      (_rest230306_ _tl229934230301_))
                                 (declare (not safe))
                                 (_K229932230296_ _rest230306_ _hd230304_)))
                             (let ()
                               (declare (not safe))
                               (_else229930229944_))))))))
          (let* ((___stx243435243436_ _stx229748_)
                 (_g229756229782_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243435243436_)))))
            (let ((___kont243437243438_
                   (lambda (_L229842_ _L229843_)
                     (let ((__tmp243938
                            (lambda ()
                              (if (let ((__tmp243965
                                         (let ((__tmp243966
                                                (lambda (_g229871229874_
                                                         _g229872229876_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g229871229874_
                                                          _g229872229876_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp243966
                                                   '()
                                                   _L229843_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?229752_
                                            __tmp243965))
                                  (let ((_g243952_
                                         (let ((__tmp243954
                                                (let ((__tmp243955
                                                       (lambda (_g229878229881_
                                                                _g229879229883_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g229878229881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g229879229883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp243955
                                                          '()
                                                          _L229843_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings229753_
                                            __tmp243954))))
                                    (begin
                                      (let ((_g243953_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g243952_)
                                                   (##vector-length _g243952_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g243953_ 3)))
                                            (error "Context expects 3 values"
                                                   _g243953_)))
                                      (let ((_lift1229886_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243952_ 0)))
                                            (_lift2229887_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243952_ 1)))
                                            (_hd229888_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243952_ 2))))
                                        (let* ((_expr229890_
                                                (let ((__tmp243956
                                                       (let ((__tmp243957
                                                              (let ((__tmp243958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L229842_ '()))))
                        (declare (not safe))
                        (cons _hd229888_ __tmp243958))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243956
                                                   _stx229748_)))
                                               (_expr229892_
                                                (let ((__tmp243959
                                                       (let ((__tmp243960
                                                              (let ((__tmp243961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr229890_ '()))))
                        (declare (not safe))
                        (cons _lift2229887_ __tmp243961))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243959
                                                   _stx229748_)))
                                               (_expr229894_
                                                (let ((__tmp243962
                                                       (let ((__tmp243963
                                                              (let ((__tmp243964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr229892_ '()))))
                        (declare (not safe))
                        (cons _lift1229886_ __tmp243964))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243962
                                                   _stx229748_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr229894_))))))
                                  (let ((_g243939_
                                         (let ((__tmp243941
                                                (let ((__tmp243942
                                                       (lambda (_g229896229899_
                                                                _g229897229901_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g229896229899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g229897229901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp243942
                                                          '()
                                                          _L229843_))))
                                           (declare (not safe))
                                           (_compile-bindings229751_
                                            __tmp243941))))
                                    (begin
                                      (let ((_g243940_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g243939_)
                                                   (##vector-length _g243939_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g243940_ 3)))
                                            (error "Context expects 3 values"
                                                   _g243940_)))
                                      (let ((_lift1229904_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243939_ 0)))
                                            (_lift2229905_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243939_ 1)))
                                            (_hd229906_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243939_ 2))))
                                        (let* ((_body229908_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L229842_)))
                                               (_expr229910_
                                                (let ((__tmp243943
                                                       (let ((__tmp243944
                                                              (let ((__tmp243945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body229908_ '()))))
                        (declare (not safe))
                        (cons _hd229906_ __tmp243945))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243943
                                                   _stx229748_)))
                                               (_expr229912_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2229905_))
                                                    _expr229910_
                                                    (let ((__tmp243946
                                                           (let ((__tmp243947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243948
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr229910_ '()))))
                            (declare (not safe))
                            (cons _lift2229905_ __tmp243948))))
                     (declare (not safe))
                     (cons '%#let-values __tmp243947))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp243946 _stx229748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr229914_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1229904_))
                                                    _expr229912_
                                                    (let ((__tmp243949
                                                           (let ((__tmp243950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243951
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr229912_ '()))))
                            (declare (not safe))
                            (cons _lift1229904_ __tmp243951))))
                     (declare (not safe))
                     (cons '%#let-values __tmp243950))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp243949 _stx229748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr229914_)))))))
                           (__tmp243937
                            (let ((__obj243641
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj243641)
                              __obj243641)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp243938
                        gx#current-expander-context
                        __tmp243937))))
                  (___kont243441243442_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx229748_)))))
              (let ((___match243462243463_
                     (lambda (_e229762229794_
                              _hd229761229797_
                              _tl229760229799_
                              _e229765229802_
                              _hd229764229805_
                              _tl229763229807_
                              ___splice243439243440_
                              _target229766229810_
                              _tl229768229812_)
                       (letrec ((_loop229769229815_
                                 (lambda (_hd229767229818_ _bind229773229820_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd229767229818_))
                                       (let ((_e229770229823_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd229767229818_))))
                                         (let ((_lp-tl229772229828_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e229770229823_)))
                                               (_lp-hd229771229826_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e229770229823_))))
                                           (let ((__tmp243969
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd229771229826_
                                                          _bind229773229820_))))
                                             (declare (not safe))
                                             (_loop229769229815_
                                              _lp-tl229772229828_
                                              __tmp243969))))
                                       (let ((_bind229774229831_
                                              (reverse _bind229773229820_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl229763229807_))
                                             (let ((_e229777229834_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl229763229807_))))
                                               (let ((_tl229775229839_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e229777229834_)))
                                                     (_hd229776229837_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e229777229834_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl229775229839_))
                                                     (let ((_L229842_
                                                            _hd229776229837_)
                                                           (_L229843_
                                                            _bind229774229831_))
                                                       (if (let ((__tmp243967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243968
                                 (lambda (_g229863229866_ _g229864229868_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g229863229866_ _g229864229868_)))))
                            (declare (not safe))
                            (foldr1 __tmp243968 '() _L229843_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp243967))
                   (___kont243437243438_ _L229842_ _L229843_)
                   (___kont243441243442_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243441243442_))))
                                             (___kont243441243442_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop229769229815_ _target229766229810_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243435243436_))
                    (let ((_e229762229794_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243435243436_))))
                      (let ((_tl229760229799_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229762229794_)))
                            (_hd229761229797_
                             (let ()
                               (declare (not safe))
                               (##car _e229762229794_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229760229799_))
                            (let ((_e229765229802_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229760229799_))))
                              (let ((_tl229763229807_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229765229802_)))
                                    (_hd229764229805_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229765229802_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd229764229805_))
                                    (let ((___splice243439243440_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd229764229805_
                                              '0))))
                                      (let ((_tl229768229812_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243439243440_
                                                '1)))
                                            (_target229766229810_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243439243440_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229768229812_))
                                            (___match243462243463_
                                             _e229762229794_
                                             _hd229761229797_
                                             _tl229760229799_
                                             _e229765229802_
                                             _hd229764229805_
                                             _tl229763229807_
                                             ___splice243439243440_
                                             _target229766229810_
                                             _tl229768229812_)
                                            (___kont243441243442_))))
                                    (___kont243441243442_))))
                            (___kont243441243442_))))
                    (___kont243441243442_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx228892_)
        (letrec* ((_bind-e__241558241559_
                   (lambda (_id229732_ _expr229733_ _compile?229734_)
                     (let ((__tmp243972
                            (let ()
                              (declare (not safe))
                              (cons _id229732_ '())))
                           (__tmp243970
                            (let ((__tmp243971
                                   (if _compile?229734_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr229733_))
                                       _expr229733_)))
                              (declare (not safe))
                              (cons __tmp243971 '()))))
                       (declare (not safe))
                       (cons __tmp243972 __tmp243970))))
                  (_bind-e__0__241560241561_
                   (lambda (_id229739_ _expr229740_)
                     (let ((_compile?229742_ '#t))
                       (declare (not safe))
                       (_bind-e__241558241559_
                        _id229739_
                        _expr229740_
                        _compile?229742_))))
                  (_bind-e228894_
                   (lambda _g243974_
                     (let ((_g243973_
                            (let ()
                              (declare (not safe))
                              (##length _g243974_))))
                       (cond ((let () (declare (not safe)) (##fx= _g243973_ 2))
                              (apply (lambda (_id229739_ _expr229740_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__241560241561_
                                          _id229739_
                                          _expr229740_)))
                                     _g243974_))
                             ((let () (declare (not safe)) (##fx= _g243973_ 3))
                              (apply (lambda (_id229744_
                                              _expr229745_
                                              _compile?229746_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__241558241559_
                                          _id229744_
                                          _expr229745_
                                          _compile?229746_)))
                                     _g243974_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g243974_))))))
                  (_compile-bindings228895_
                   (lambda (_rest229030_)
                     (let _lp229032_ ((_rest229034_ _rest229030_)
                                      (_bind229035_ '()))
                       (let* ((_rest229036229044_ _rest229034_)
                              (_else229038229052_
                               (lambda () (reverse _bind229035_)))
                              (_K229040229719_
                               (lambda (_rest229055_ _hd229056_)
                                 (let* ((___stx243485243486_ _hd229056_)
                                        (_g229061229108_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243485243486_)))))
                                   (let ((___kont243487243488_
                                          (lambda (_L229626_ _L229627_)
                                            (let* ((___stx243465243466_
                                                    _L229626_)
                                                   (_g229642229656_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243465243466_)))))
                                              (let ((___kont243467243468_
                                                     (lambda (_L229704_)
                                                       (let ((__tmp243975
                                                              (let ((__tmp243976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__241558241559_
                                _L229627_
                                _L229626_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp243976 _bind229035_))))
                 (declare (not safe))
                 (_lp229032_ _rest229055_ __tmp243975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243469243470_
                                                     (lambda (_L229669_)
                                                       (let ((_g243977_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx228892_
                         _L229627_
                         _L229669_
                         '#t))))
                 (begin
                   (let ((_g243978_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g243977_)
                                (##vector-length _g243977_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g243978_ 3)))
                         (error "Context expects 3 values" _g243978_)))
                   (let ((_ids229679_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243977_ 0)))
                         (_impls229680_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243977_ 1)))
                         (_clauses229681_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243977_ 2))))
                     (let* ((_g243979_
                             (for-each gx#core-bind-runtime! _ids229679_))
                            (_xbind229684_
                             (map _bind-e228894_ _ids229679_ _impls229680_))
                            (_expr*229686_
                             (let ((__tmp243981
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses229681_)))
                                   (__tmp243980
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp243981
                                __tmp243980)))
                            (_bind*229688_
                             (let ()
                               (declare (not safe))
                               (_bind-e__241558241559_
                                _L229627_
                                _expr*229686_
                                '#f))))
                       (let ((__tmp243983
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L229627_)))
                             (__tmp243982
                              (map gxc#identifier-symbol _ids229679_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp243983
                          '" => "
                          __tmp243982))
                       (let ((__tmp243984
                              (let ((__tmp243985
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind229035_
                                               _xbind229684_))))
                                (declare (not safe))
                                (cons _bind*229688_ __tmp243985))))
                         (declare (not safe))
                         (_lp229032_ _rest229055_ __tmp243984)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match243476243477_
                                                       (lambda (_e229647229696_
                                                                _hd229646229699_
                                                                _tl229645229701_)
                                                         (let ((_L229704_
                                                                _tl229645229701_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L229704_))
                       (___kont243467243468_ _L229704_)
                       (___kont243469243470_ _tl229645229701_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx243465243466_))
                                                      (let ((_e229647229696_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx243465243466_))))
                (let ((_tl229645229701_
                       (let () (declare (not safe)) (##cdr _e229647229696_)))
                      (_hd229646229699_
                       (let () (declare (not safe)) (##car _e229647229696_))))
                  (___match243476243477_
                   _e229647229696_
                   _hd229646229699_
                   _tl229645229701_)))
              (let () (declare (not safe)) (_g229642229656_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont243489243490_
                                          (lambda (_L229454_ _L229455_)
                                            (let* ((_g229469229499_
                                                    (lambda (_g229470229496_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229470229496_))))
                                                   (_g229468229594_
                                                    (lambda (_g229470229502_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229470229502_))
                                                          (let ((_e229476229504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229470229502_))))
                    (let ((_hd229475229507_
                           (let ()
                             (declare (not safe))
                             (##car _e229476229504_)))
                          (_tl229474229509_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229476229504_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229474229509_))
                          (let ((_e229479229512_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229474229509_))))
                            (let ((_hd229478229515_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229479229512_)))
                                  (_tl229477229517_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229479229512_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229478229515_))
                                  (let ((_e229482229520_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229478229515_))))
                                    (let ((_hd229481229523_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229482229520_)))
                                          (_tl229480229525_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229482229520_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229481229523_))
                                          (let ((_e229485229528_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229481229523_))))
                                            (let ((_hd229484229531_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229485229528_)))
                                                  (_tl229483229533_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229485229528_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229484229531_))
                                                  (let ((_e229488229536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229484229531_))))
                                                    (let ((_hd229487229539_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229488229536_)))
                                                          (_tl229486229541_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229488229536_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229486229541_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229483229533_))
                      (let ((_e229491229544_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229483229533_))))
                        (let ((_hd229490229547_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229491229544_)))
                              (_tl229489229549_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229491229544_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229489229549_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229480229525_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229477229517_))
                                      (let ((_e229494229552_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229477229517_))))
                                        (let ((_hd229493229555_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229494229552_)))
                                              (_tl229492229557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229494229552_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229492229557_))
                                              ((lambda (_L229560_
                                                        _L229561_
                                                        _L229562_)
                                                 (let* ((_lambda-id229586_
                                                         (let ((__tmp243987
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L229455_)))
                       (__tmp243986 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp243987 __tmp243986)))
                (_lambda-id229588_
                 (let ((__tmp243988
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx228892_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id229586_ __tmp243988)))
                (_g243989_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id229588_)))
                (_new-case-lambda-expr229591_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L229560_
                    _L229562_
                    _lambda-id229588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp243991
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L229455_)))
                                                         (__tmp243990
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id229588_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp243991
                                                      '" => "
                                                      __tmp243990))
                                                   (let ((__tmp243994
                                                          (let ((__tmp243995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__241558241559_
                            _L229455_
                            _new-case-lambda-expr229591_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp243995 _rest229055_)))
                 (__tmp243992
                  (let ((__tmp243993
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__241560241561_
                            _lambda-id229588_
                            _L229561_))))
                    (declare (not safe))
                    (cons __tmp243993 _bind229035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp229032_
                                                      __tmp243994
                                                      __tmp243992))))
                                               _hd229493229555_
                                               _hd229490229547_
                                               _hd229487229539_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229469229499_
                                                 _g229470229502_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229469229499_ _g229470229502_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g229469229499_ _g229470229502_)))
                              (let ()
                                (declare (not safe))
                                (_g229469229499_ _g229470229502_)))))
                      (let ()
                        (declare (not safe))
                        (_g229469229499_ _g229470229502_)))
                  (let ()
                    (declare (not safe))
                    (_g229469229499_ _g229470229502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229469229499_
                                                     _g229470229502_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229469229499_
                                             _g229470229502_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229469229499_ _g229470229502_)))))
                          (let ()
                            (declare (not safe))
                            (_g229469229499_ _g229470229502_)))))
                  (let ()
                    (declare (not safe))
                    (_g229469229499_ _g229470229502_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229468229594_ _L229454_))))
                                         (___kont243491243492_
                                          (lambda (_L229178_ _L229179_)
                                            (let* ((_g229193229246_
                                                    (lambda (_g229194229243_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229194229243_))))
                                                   (_g229192229422_
                                                    (lambda (_g229194229249_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229194229249_))
                                                          (let ((_e229202229251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229194229249_))))
                    (let ((_hd229201229254_
                           (let ()
                             (declare (not safe))
                             (##car _e229202229251_)))
                          (_tl229200229256_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229202229251_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229200229256_))
                          (let ((_e229205229259_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229200229256_))))
                            (let ((_hd229204229262_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229205229259_)))
                                  (_tl229203229264_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229205229259_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229204229262_))
                                  (let ((_e229208229267_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229204229262_))))
                                    (let ((_hd229207229270_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229208229267_)))
                                          (_tl229206229272_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229208229267_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229207229270_))
                                          (let ((_e229211229275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229207229270_))))
                                            (let ((_hd229210229278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229211229275_)))
                                                  (_tl229209229280_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229211229275_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229210229278_))
                                                  (let ((_e229214229283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229210229278_))))
                                                    (let ((_hd229213229286_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229214229283_)))
                                                          (_tl229212229288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229214229283_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229212229288_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229209229280_))
                      (let ((_e229217229291_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229209229280_))))
                        (let ((_hd229216229294_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229217229291_)))
                              (_tl229215229296_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229217229291_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229216229294_))
                              (let ((_e229220229299_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229216229294_))))
                                (let ((_hd229219229302_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229220229299_)))
                                      (_tl229218229304_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229220229299_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229218229304_))
                                      (let ((_e229223229307_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229218229304_))))
                                        (let ((_hd229222229310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229223229307_)))
                                              (_tl229221229312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229223229307_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd229222229310_))
                                              (let ((_e229226229315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd229222229310_))))
                                                (let ((_hd229225229318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229226229315_)))
                                                      (_tl229224229320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229226229315_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229225229318_))
                                                      (let ((_e229229229323_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd229225229318_))))
                (let ((_hd229228229326_
                       (let () (declare (not safe)) (##car _e229229229323_)))
                      (_tl229227229328_
                       (let () (declare (not safe)) (##cdr _e229229229323_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229228229326_))
                      (let ((_e229232229331_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229228229326_))))
                        (let ((_hd229231229334_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229232229331_)))
                              (_tl229230229336_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229232229331_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229230229336_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229227229328_))
                                  (let ((_e229235229339_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229227229328_))))
                                    (let ((_hd229234229342_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229235229339_)))
                                          (_tl229233229344_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229235229339_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229233229344_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229224229320_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229221229312_))
                                                  (let ((_e229238229347_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229221229312_))))
                                                    (let ((_hd229237229350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229238229347_)))
                                                          (_tl229236229352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229238229347_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229236229352_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl229215229296_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229206229272_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229203229264_))
                              (let ((_e229241229355_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229203229264_))))
                                (let ((_hd229240229358_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229241229355_)))
                                      (_tl229239229360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229241229355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229239229360_))
                                      ((lambda (_L229363_
                                                _L229364_
                                                _L229365_
                                                _L229366_
                                                _L229367_)
                                         (let* ((_get-kws-id229407_
                                                 (let ((__tmp243997
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229179_)))
                                                       (__tmp243996
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243997
                                                    __tmp243996)))
                                                (_get-kws-id229409_
                                                 (let ((__tmp243998
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx228892_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id229407_
                                                    __tmp243998)))
                                                (_main-id229411_
                                                 (let ((__tmp244000
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229179_)))
                                                       (__tmp243999
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp244000
                                                    __tmp243999)))
                                                (_main-id229413_
                                                 (let ((__tmp244001
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx228892_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id229411_
                                                    __tmp244001)))
                                                (_g244002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id229409_)))
                                                (_g244003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id229413_)))
                                                (_new-kw-dispatch229417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229363_
                                                    _L229367_
                                                    _get-kws-id229409_)))
                                                (_new-get-kws229419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229364_
                                                    _L229366_
                                                    _main-id229413_))))
                                           (let ((__tmp244006
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L229179_)))
                                                 (__tmp244005
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id229409_)))
                                                 (__tmp244004
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id229413_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp244006
                                              '" => "
                                              __tmp244005
                                              '" => "
                                              __tmp244004))
                                           (let ((__tmp244007
                                                  (let ((__tmp244012
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241558241559_
                                                            _main-id229413_
                                                            _L229365_
                                                            '#f)))
                                                        (__tmp244008
                                                         (let ((__tmp244011
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__241558241559_
                           _get-kws-id229409_
                           _new-get-kws229419_
                           '#f)))
                       (__tmp244009
                        (let ((__tmp244010
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__241558241559_
                                  _L229179_
                                  _new-kw-dispatch229417_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp244010 _rest229055_))))
                   (declare (not safe))
                   (cons __tmp244011 __tmp244009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244012
                                                          __tmp244008))))
                                             (declare (not safe))
                                             (_lp229032_
                                              __tmp244007
                                              _bind229035_))))
                                       _hd229240229358_
                                       _hd229237229350_
                                       _hd229234229342_
                                       _hd229231229334_
                                       _hd229213229286_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229193229246_ _g229194229249_)))))
                              (let ()
                                (declare (not safe))
                                (_g229193229246_ _g229194229249_)))
                          (let ()
                            (declare (not safe))
                            (_g229193229246_ _g229194229249_)))
                      (let ()
                        (declare (not safe))
                        (_g229193229246_ _g229194229249_)))
                  (let ()
                    (declare (not safe))
                    (_g229193229246_ _g229194229249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229193229246_
                                                     _g229194229249_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g229193229246_
                                                 _g229194229249_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g229193229246_
                                             _g229194229249_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229193229246_ _g229194229249_)))
                              (let ()
                                (declare (not safe))
                                (_g229193229246_ _g229194229249_)))))
                      (let ()
                        (declare (not safe))
                        (_g229193229246_ _g229194229249_)))))
              (let ()
                (declare (not safe))
                (_g229193229246_ _g229194229249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229193229246_
                                                 _g229194229249_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229193229246_ _g229194229249_)))))
                              (let ()
                                (declare (not safe))
                                (_g229193229246_ _g229194229249_)))))
                      (let ()
                        (declare (not safe))
                        (_g229193229246_ _g229194229249_)))
                  (let ()
                    (declare (not safe))
                    (_g229193229246_ _g229194229249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229193229246_
                                                     _g229194229249_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229193229246_
                                             _g229194229249_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229193229246_ _g229194229249_)))))
                          (let ()
                            (declare (not safe))
                            (_g229193229246_ _g229194229249_)))))
                  (let ()
                    (declare (not safe))
                    (_g229193229246_ _g229194229249_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229192229422_ _L229178_))))
                                         (___kont243493243494_
                                          (lambda (_L229129_ _L229130_)
                                            (let ((__tmp244013
                                                   (let ((__tmp244014
                                                          (let ((__tmp244015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244016
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L229129_))))
                           (declare (not safe))
                           (cons __tmp244016 '()))))
                    (declare (not safe))
                    (cons _L229130_ __tmp244015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244014
                                                           _bind229035_))))
                                              (declare (not safe))
                                              (_lp229032_
                                               _rest229055_
                                               __tmp244013)))))
                                     (let* ((___match243560243561_
                                             (lambda (_e229089229154_
                                                      _hd229088229157_
                                                      _tl229087229159_
                                                      _e229092229162_
                                                      _hd229091229165_
                                                      _tl229090229167_
                                                      _e229095229170_
                                                      _hd229094229173_
                                                      _tl229093229175_)
                                               (let ((_L229178_
                                                      _hd229094229173_)
                                                     (_L229179_
                                                      _hd229091229165_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229179_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L229178_)))
                                                     (___kont243491243492_
                                                      _L229178_
                                                      _L229179_)
                                                     (___kont243493243494_
                                                      _hd229094229173_
                                                      _hd229088229157_)))))
                                            (___match243538243539_
                                             (lambda (_e229078229430_
                                                      _hd229077229433_
                                                      _tl229076229435_
                                                      _e229081229438_
                                                      _hd229080229441_
                                                      _tl229079229443_
                                                      _e229084229446_
                                                      _hd229083229449_
                                                      _tl229082229451_)
                                               (let ((_L229454_
                                                      _hd229083229449_)
                                                     (_L229455_
                                                      _hd229080229441_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229455_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L229454_)))
                                                     (___kont243489243490_
                                                      _L229454_
                                                      _L229455_)
                                                     (___match243560243561_
                                                      _e229078229430_
                                                      _hd229077229433_
                                                      _tl229076229435_
                                                      _e229081229438_
                                                      _hd229080229441_
                                                      _tl229079229443_
                                                      _e229084229446_
                                                      _hd229083229449_
                                                      _tl229082229451_)))))
                                            (___match243516243517_
                                             (lambda (_e229067229602_
                                                      _hd229066229605_
                                                      _tl229065229607_
                                                      _e229070229610_
                                                      _hd229069229613_
                                                      _tl229068229615_
                                                      _e229073229618_
                                                      _hd229072229621_
                                                      _tl229071229623_)
                                               (let ((_L229626_
                                                      _hd229072229621_)
                                                     (_L229627_
                                                      _hd229069229613_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229627_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L229626_)))
                                                     (___kont243487243488_
                                                      _L229626_
                                                      _L229627_)
                                                     (___match243538243539_
                                                      _e229067229602_
                                                      _hd229066229605_
                                                      _tl229065229607_
                                                      _e229070229610_
                                                      _hd229069229613_
                                                      _tl229068229615_
                                                      _e229073229618_
                                                      _hd229072229621_
                                                      _tl229071229623_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243485243486_))
                                           (let ((_e229067229602_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243485243486_))))
                                             (let ((_tl229065229607_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229067229602_)))
                                                   (_hd229066229605_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229067229602_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229066229605_))
                                                   (let ((_e229070229610_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229066229605_))))
                                                     (let ((_tl229068229615_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229070229610_)))
                                                           (_hd229069229613_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229070229610_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229068229615_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229065229607_))
                       (let ((_e229073229618_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229065229607_))))
                         (let ((_tl229071229623_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229073229618_)))
                               (_hd229072229621_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229073229618_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229071229623_))
                               (___match243516243517_
                                _e229067229602_
                                _hd229066229605_
                                _tl229065229607_
                                _e229070229610_
                                _hd229069229613_
                                _tl229068229615_
                                _e229073229618_
                                _hd229072229621_
                                _tl229071229623_)
                               (let ()
                                 (declare (not safe))
                                 (_g229061229108_)))))
                       (let () (declare (not safe)) (_g229061229108_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229065229607_))
                       (let ((_e229103229121_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229065229607_))))
                         (let ((_tl229101229126_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229103229121_)))
                               (_hd229102229124_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229103229121_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229101229126_))
                               (___kont243493243494_
                                _hd229102229124_
                                _hd229066229605_)
                               (let ()
                                 (declare (not safe))
                                 (_g229061229108_)))))
                       (let () (declare (not safe)) (_g229061229108_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229065229607_))
                                                       (let ((_e229103229121_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229065229607_))))
                 (let ((_tl229101229126_
                        (let () (declare (not safe)) (##cdr _e229103229121_)))
                       (_hd229102229124_
                        (let () (declare (not safe)) (##car _e229103229121_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229101229126_))
                       (___kont243493243494_ _hd229102229124_ _hd229066229605_)
                       (let () (declare (not safe)) (_g229061229108_)))))
               (let () (declare (not safe)) (_g229061229108_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229061229108_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229036229044_))
                             (let ((_hd229041229722_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229036229044_)))
                                   (_tl229042229724_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229036229044_))))
                               (let* ((_hd229727_ _hd229041229722_)
                                      (_rest229729_ _tl229042229724_))
                                 (declare (not safe))
                                 (_K229040229719_ _rest229729_ _hd229727_)))
                             (let ()
                               (declare (not safe))
                               (_else229038229052_))))))))
          (let* ((___stx243577243578_ _stx228892_)
                 (_g228898228925_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243577243578_)))))
            (let ((___kont243579243580_
                   (lambda (_L228985_ _L228986_ _L228987_)
                     (let ((__tmp244018
                            (lambda ()
                              (let ((_hd229024_
                                     (let ((__tmp244019
                                            (let ((__tmp244020
                                                   (lambda (_g229016229019_
                                                            _g229017229021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g229016229019_
                                                             _g229017229021_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp244020
                                                      '()
                                                      _L228986_))))
                                       (declare (not safe))
                                       (_compile-bindings228895_ __tmp244019)))
                                    (_body229025_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L228985_))))
                                (let ((__tmp244021
                                       (let ((__tmp244022
                                              (let ((__tmp244023
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body229025_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd229024_
                                                      __tmp244023))))
                                         (declare (not safe))
                                         (cons _L228987_ __tmp244022))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp244021
                                   _stx228892_)))))
                           (__tmp244017
                            (let ((__obj243642
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj243642)
                              __obj243642)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp244018
                        gx#current-expander-context
                        __tmp244017))))
                  (___kont243583243584_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx228892_)))))
              (let ((___match243604243605_
                     (lambda (_e228905228937_
                              _hd228904228940_
                              _tl228903228942_
                              _e228908228945_
                              _hd228907228948_
                              _tl228906228950_
                              ___splice243581243582_
                              _target228909228953_
                              _tl228911228955_)
                       (letrec ((_loop228912228958_
                                 (lambda (_hd228910228961_ _bind228916228963_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228910228961_))
                                       (let ((_e228913228966_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228910228961_))))
                                         (let ((_lp-tl228915228971_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228913228966_)))
                                               (_lp-hd228914228969_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228913228966_))))
                                           (let ((__tmp244026
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd228914228969_
                                                          _bind228916228963_))))
                                             (declare (not safe))
                                             (_loop228912228958_
                                              _lp-tl228915228971_
                                              __tmp244026))))
                                       (let ((_bind228917228974_
                                              (reverse _bind228916228963_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl228906228950_))
                                             (let ((_e228920228977_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl228906228950_))))
                                               (let ((_tl228918228982_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e228920228977_)))
                                                     (_hd228919228980_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e228920228977_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl228918228982_))
                                                     (let ((_L228985_
                                                            _hd228919228980_)
                                                           (_L228986_
                                                            _bind228917228974_)
                                                           (_L228987_
                                                            _hd228904228940_))
                                                       (if (let ((__tmp244024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244025
                                 (lambda (_g229008229011_ _g229009229013_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g229008229011_ _g229009229013_)))))
                            (declare (not safe))
                            (foldr1 __tmp244025 '() _L228986_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp244024))
                   (___kont243579243580_ _L228985_ _L228986_ _L228987_)
                   (___kont243583243584_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243583243584_))))
                                             (___kont243583243584_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop228912228958_ _target228909228953_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243577243578_))
                    (let ((_e228905228937_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243577243578_))))
                      (let ((_tl228903228942_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228905228937_)))
                            (_hd228904228940_
                             (let ()
                               (declare (not safe))
                               (##car _e228905228937_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228903228942_))
                            (let ((_e228908228945_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228903228942_))))
                              (let ((_tl228906228950_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228908228945_)))
                                    (_hd228907228948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228908228945_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd228907228948_))
                                    (let ((___splice243581243582_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd228907228948_
                                              '0))))
                                      (let ((_tl228911228955_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243581243582_
                                                '1)))
                                            (_target228909228953_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243581243582_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228911228955_))
                                            (___match243604243605_
                                             _e228905228937_
                                             _hd228904228940_
                                             _tl228903228942_
                                             _e228908228945_
                                             _hd228907228948_
                                             _tl228906228950_
                                             ___splice243581243582_
                                             _target228909228953_
                                             _tl228911228955_)
                                            (___kont243583243584_))))
                                    (___kont243583243584_))))
                            (___kont243583243584_))))
                    (___kont243583243584_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind228810_)
        (let* ((___stx243607243608_ _bind228810_)
               (_g228813228830_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243607243608_)))))
          (let ((___kont243609243610_
                 (lambda (_L228866_ _L228867_)
                   (if (let () (declare (not safe)) (gx#identifier? _L228867_))
                       (let ((_$e228883_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L228866_))))
                         (if _$e228883_
                             _$e228883_
                             (let ((_$e228886_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L228866_))))
                               (if _$e228886_
                                   _$e228886_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228866_))))))
                       '#f)))
                (___kont243611243612_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243607243608_))
                (let ((_e228819228842_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243607243608_))))
                  (let ((_tl228817228847_
                         (let () (declare (not safe)) (##cdr _e228819228842_)))
                        (_hd228818228845_
                         (let ()
                           (declare (not safe))
                           (##car _e228819228842_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd228818228845_))
                        (let ((_e228822228850_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd228818228845_))))
                          (let ((_tl228820228855_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228822228850_)))
                                (_hd228821228853_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228822228850_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl228820228855_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl228817228847_))
                                    (let ((_e228825228858_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl228817228847_))))
                                      (let ((_tl228823228863_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228825228858_)))
                                            (_hd228824228861_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228825228858_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228823228863_))
                                            (___kont243609243610_
                                             _hd228824228861_
                                             _hd228821228853_)
                                            (___kont243611243612_))))
                                    (___kont243611243612_))
                                (___kont243611243612_))))
                        (___kont243611243612_))))
                (___kont243611243612_))))))))
