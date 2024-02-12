(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707734705)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl236981_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243642 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl236981_ __tmp243642))
           (let ()
             (declare (not safe))
             (table-set! _tbl236981_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236981_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236981_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236981_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl236981_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx236964_ . _args236966_)
        (let ((__tmp243644
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236966_)
                     (gxc#compile-e__0 _stx236964_)
                     (let ((_arg1236971_ (car _args236966_))
                           (_rest236973_ (cdr _args236966_)))
                       (if (null? _rest236973_)
                           (gxc#compile-e__1 _stx236964_ _arg1236971_)
                           (let ((_arg2236976_ (car _rest236973_))
                                 (_rest236978_ (cdr _rest236973_)))
                             (if (null? _rest236978_)
                                 (gxc#compile-e__2
                                  _stx236964_
                                  _arg1236971_
                                  _arg2236976_)
                                 (apply gxc#compile-e
                                        _stx236964_
                                        _arg1236971_
                                        _arg2236976_
                                        _rest236978_))))))))
              (__tmp243643 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp243644
           gxc#current-compile-methods
           __tmp243643))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl236961_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243645 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl236961_ __tmp243645))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236961_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236961_ '%#call gxc#basic-expression-type-call%))
           _tbl236961_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx236944_ . _args236946_)
        (let ((__tmp243647
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236946_)
                     (gxc#compile-e__0 _stx236944_)
                     (let ((_arg1236951_ (car _args236946_))
                           (_rest236953_ (cdr _args236946_)))
                       (if (null? _rest236953_)
                           (gxc#compile-e__1 _stx236944_ _arg1236951_)
                           (let ((_arg2236956_ (car _rest236953_))
                                 (_rest236958_ (cdr _rest236953_)))
                             (if (null? _rest236958_)
                                 (gxc#compile-e__2
                                  _stx236944_
                                  _arg1236951_
                                  _arg2236956_)
                                 (apply gxc#compile-e
                                        _stx236944_
                                        _arg1236951_
                                        _arg2236956_
                                        _rest236958_))))))))
              (__tmp243646 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp243647
           gxc#current-compile-methods
           __tmp243646))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl236941_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243648 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl236941_ __tmp243648))
           (let ()
             (declare (not safe))
             (table-set! _tbl236941_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236941_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236941_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236941_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236941_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236941_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236941_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236941_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236941_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236941_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236941_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236941_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl236941_ '%#set! gxc#collect-body-setq%))
           _tbl236941_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx236924_ . _args236926_)
        (let ((__tmp243650
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236926_)
                     (gxc#compile-e__0 _stx236924_)
                     (let ((_arg1236931_ (car _args236926_))
                           (_rest236933_ (cdr _args236926_)))
                       (if (null? _rest236933_)
                           (gxc#compile-e__1 _stx236924_ _arg1236931_)
                           (let ((_arg2236936_ (car _rest236933_))
                                 (_rest236938_ (cdr _rest236933_)))
                             (if (null? _rest236938_)
                                 (gxc#compile-e__2
                                  _stx236924_
                                  _arg1236931_
                                  _arg2236936_)
                                 (apply gxc#compile-e
                                        _stx236924_
                                        _arg1236931_
                                        _arg2236936_
                                        _rest236938_))))))))
              (__tmp243649 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp243650
           gxc#current-compile-methods
           __tmp243649))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl236921_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243651 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl236921_ __tmp243651))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236921_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236921_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236921_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236921_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236921_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236921_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236921_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236921_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236921_ '%#ref gxc#basic-expression-type-ref%))
           _tbl236921_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx236904_ . _args236906_)
        (let ((__tmp243653
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236906_)
                     (gxc#compile-e__0 _stx236904_)
                     (let ((_arg1236911_ (car _args236906_))
                           (_rest236913_ (cdr _args236906_)))
                       (if (null? _rest236913_)
                           (gxc#compile-e__1 _stx236904_ _arg1236911_)
                           (let ((_arg2236916_ (car _rest236913_))
                                 (_rest236918_ (cdr _rest236913_)))
                             (if (null? _rest236918_)
                                 (gxc#compile-e__2
                                  _stx236904_
                                  _arg1236911_
                                  _arg2236916_)
                                 (apply gxc#compile-e
                                        _stx236904_
                                        _arg1236911_
                                        _arg2236916_
                                        _rest236918_))))))))
              (__tmp243652 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp243653
           gxc#current-compile-methods
           __tmp243652))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl236901_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp243654 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl236901_ __tmp243654))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236901_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236901_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236901_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236901_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl236901_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx236884_ . _args236886_)
        (let ((__tmp243656
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236886_)
                     (gxc#compile-e__0 _stx236884_)
                     (let ((_arg1236891_ (car _args236886_))
                           (_rest236893_ (cdr _args236886_)))
                       (if (null? _rest236893_)
                           (gxc#compile-e__1 _stx236884_ _arg1236891_)
                           (let ((_arg2236896_ (car _rest236893_))
                                 (_rest236898_ (cdr _rest236893_)))
                             (if (null? _rest236898_)
                                 (gxc#compile-e__2
                                  _stx236884_
                                  _arg1236891_
                                  _arg2236896_)
                                 (apply gxc#compile-e
                                        _stx236884_
                                        _arg1236891_
                                        _arg2236896_
                                        _rest236898_))))))))
              (__tmp243655 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp243656
           gxc#current-compile-methods
           __tmp243655))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx236787_)
        (let* ((___stx241562241563_ _stx236787_)
               (_g236790236810_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241562241563_)))))
          (let ((___kont241564241565_
                 (lambda (_L236854_ _L236855_)
                   (let ((_sym236873_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236855_))))
                     (if (let ((__tmp243657 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp243657 _sym236873_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym236873_))
                         (let ((_type236874236876_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L236854_))))
                           (if _type236874236876_
                               (let ((_type236879_ _type236874236876_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym236873_
                                  _type236879_))
                               '#f))))))
                (___kont241566241567_ (lambda () '#!void)))
            (let ((___match241595241596_
                   (lambda (_e236796236822_
                            _hd236795236825_
                            _tl236794236827_
                            _e236799236830_
                            _hd236798236833_
                            _tl236797236835_
                            _e236802236838_
                            _hd236801236841_
                            _tl236800236843_
                            _e236805236846_
                            _hd236804236849_
                            _tl236803236851_)
                     (let ((_L236854_ _hd236804236849_)
                           (_L236855_ _hd236801236841_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236855_))
                           (___kont241564241565_ _L236854_ _L236855_)
                           (___kont241566241567_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241562241563_))
                  (let ((_e236796236822_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241562241563_))))
                    (let ((_tl236794236827_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236796236822_)))
                          (_hd236795236825_
                           (let ()
                             (declare (not safe))
                             (##car _e236796236822_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236794236827_))
                          (let ((_e236799236830_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236794236827_))))
                            (let ((_tl236797236835_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236799236830_)))
                                  (_hd236798236833_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236799236830_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236798236833_))
                                  (let ((_e236802236838_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236798236833_))))
                                    (let ((_tl236800236843_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236802236838_)))
                                          (_hd236801236841_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236802236838_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236800236843_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236797236835_))
                                              (let ((_e236805236846_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236797236835_))))
                                                (let ((_tl236803236851_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236805236846_)))
                                                      (_hd236804236849_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236805236846_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236803236851_))
                                                      (___match241595241596_
                                                       _e236796236822_
                                                       _hd236795236825_
                                                       _tl236794236827_
                                                       _e236799236830_
                                                       _hd236798236833_
                                                       _tl236797236835_
                                                       _e236802236838_
                                                       _hd236801236841_
                                                       _tl236800236843_
                                                       _e236805236846_
                                                       _hd236804236849_
                                                       _tl236803236851_)
                                                      (___kont241566241567_))))
                                              (___kont241566241567_))
                                          (___kont241566241567_))))
                                  (___kont241566241567_))))
                          (___kont241566241567_))))
                  (___kont241566241567_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx236643_)
        (let* ((___stx241598241599_ _stx236643_)
               (_g236646236677_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241598241599_)))))
          (let ((___kont241600241601_
                 (lambda (_L236759_ _L236760_)
                   (let ((_sym236776_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236760_))))
                     (if (let ((__tmp243658 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp243658 _sym236776_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym236776_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym236776_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym236776_))
                             (let ((_type236777236779_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L236759_))))
                               (if _type236777236779_
                                   (let ((_type236782_ _type236777236779_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym236776_
                                      _type236782_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L236759_)))))
                (___kont241602241603_
                 (lambda (_L236706_ _L236707_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L236706_)))))
            (let ((___match241631241632_
                   (lambda (_e236652236727_
                            _hd236651236730_
                            _tl236650236732_
                            _e236655236735_
                            _hd236654236738_
                            _tl236653236740_
                            _e236658236743_
                            _hd236657236746_
                            _tl236656236748_
                            _e236661236751_
                            _hd236660236754_
                            _tl236659236756_)
                     (let ((_L236759_ _hd236660236754_)
                           (_L236760_ _hd236657236746_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236760_))
                           (___kont241600241601_ _L236759_ _L236760_)
                           (___kont241602241603_
                            _hd236660236754_
                            _hd236654236738_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241598241599_))
                  (let ((_e236652236727_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241598241599_))))
                    (let ((_tl236650236732_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236652236727_)))
                          (_hd236651236730_
                           (let ()
                             (declare (not safe))
                             (##car _e236652236727_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236650236732_))
                          (let ((_e236655236735_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236650236732_))))
                            (let ((_tl236653236740_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236655236735_)))
                                  (_hd236654236738_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236655236735_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236654236738_))
                                  (let ((_e236658236743_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236654236738_))))
                                    (let ((_tl236656236748_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236658236743_)))
                                          (_hd236657236746_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236658236743_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236656236748_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236653236740_))
                                              (let ((_e236661236751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236653236740_))))
                                                (let ((_tl236659236756_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236661236751_)))
                                                      (_hd236660236754_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236661236751_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236659236756_))
                                                      (___match241631241632_
                                                       _e236652236727_
                                                       _hd236651236730_
                                                       _tl236650236732_
                                                       _e236655236735_
                                                       _hd236654236738_
                                                       _tl236653236740_
                                                       _e236658236743_
                                                       _hd236657236746_
                                                       _tl236656236748_
                                                       _e236661236751_
                                                       _hd236660236754_
                                                       _tl236659236756_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236646236677_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236646236677_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236653236740_))
                                              (let ((_e236672236698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236653236740_))))
                                                (let ((_tl236670236703_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236672236698_)))
                                                      (_hd236671236701_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236672236698_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236670236703_))
                                                      (___kont241602241603_
                                                       _hd236671236701_
                                                       _hd236654236738_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g236646236677_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g236646236677_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236653236740_))
                                      (let ((_e236672236698_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236653236740_))))
                                        (let ((_tl236670236703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236672236698_)))
                                              (_hd236671236701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236672236698_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236670236703_))
                                              (___kont241602241603_
                                               _hd236671236701_
                                               _hd236654236738_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236646236677_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236646236677_))))))
                          (let () (declare (not safe)) (_g236646236677_)))))
                  (let () (declare (not safe)) (_g236646236677_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx236428_)
        (letrec ((_collect-e236430_
                  (lambda (_hd236587_ _expr236588_)
                    (let* ((___stx241654241655_ _hd236587_)
                           (_g236591236601_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx241654241655_)))))
                      (let ((___kont241656241657_
                             (lambda (_L236621_)
                               (let ((_sym236632_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L236621_))))
                                 (if (let ((__tmp243659
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp243659 _sym236632_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym236632_))
                                     (let ((_type236633236635_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr236588_))))
                                       (if _type236633236635_
                                           (let ((_type236638_
                                                  _type236633236635_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym236632_
                                              _type236638_
                                              '#t))
                                           '#f))))))
                            (___kont241658241659_ (lambda () '#!void)))
                        (let ((___match241667241668_
                               (lambda (_e236596236613_
                                        _hd236595236616_
                                        _tl236594236618_)
                                 (let ((_L236621_ _hd236595236616_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L236621_))
                                       (___kont241656241657_ _L236621_)
                                       (___kont241658241659_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx241654241655_))
                              (let ((_e236596236613_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx241654241655_))))
                                (let ((_tl236594236618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236596236613_)))
                                      (_hd236595236616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236596236613_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236594236618_))
                                      (___match241667241668_
                                       _e236596236613_
                                       _hd236595236616_
                                       _tl236594236618_)
                                      (___kont241658241659_))))
                              (___kont241658241659_))))))))
          (let* ((_g236432236467_
                  (lambda (_g236433236464_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g236433236464_))))
                 (_g236431236584_
                  (lambda (_g236433236470_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g236433236470_))
                        (let ((_e236439236472_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g236433236470_))))
                          (let ((_hd236438236475_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236439236472_)))
                                (_tl236437236477_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236439236472_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl236437236477_))
                                (let ((_e236442236480_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl236437236477_))))
                                  (let ((_hd236441236483_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236442236480_)))
                                        (_tl236440236485_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236442236480_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd236441236483_))
                                        (let ((_g243660_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd236441236483_
                                                  '0))))
                                          (begin
                                            (let ((_g243661_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g243660_)
                                                         (##vector-length
                                                          _g243660_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g243661_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g243661_)))
                                            (let ((_target236443236488_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g243660_
                                                      0)))
                                                  (_tl236445236490_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g243660_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236445236490_))
                                                  (letrec ((_loop236446236493_
                                                            (lambda (_hd236444236496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr236450236498_
                             _hd236451236500_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd236444236496_))
                          (let ((_e236447236503_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd236444236496_))))
                            (let ((_lp-hd236448236506_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236447236503_)))
                                  (_lp-tl236449236508_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236447236503_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd236448236506_))
                                  (let ((_e236456236511_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd236448236506_))))
                                    (let ((_hd236455236514_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236456236511_)))
                                          (_tl236454236516_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236456236511_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl236454236516_))
                                          (let ((_e236459236519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl236454236516_))))
                                            (let ((_hd236458236522_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236459236519_)))
                                                  (_tl236457236524_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236459236519_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236457236524_))
                                                  (let ((__tmp243666
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd236458236522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr236450236498_)))
                (__tmp243665
                 (let ()
                   (declare (not safe))
                   (cons _hd236455236514_ _hd236451236500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop236446236493_
                                                     _lp-tl236449236508_
                                                     __tmp243666
                                                     __tmp243665))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236432236467_
                                                     _g236433236470_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236432236467_
                                             _g236433236470_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236432236467_ _g236433236470_)))))
                          (let ((_expr236452236527_
                                 (reverse _expr236450236498_))
                                (_hd236453236529_ (reverse _hd236451236500_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl236440236485_))
                                (let ((_e236462236532_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl236440236485_))))
                                  (let ((_hd236461236535_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e236462236532_)))
                                        (_tl236460236537_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e236462236532_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236460236537_))
                                        ((lambda (_L236540_
                                                  _L236541_
                                                  _L236542_)
                                           (for-each
                                            _collect-e236430_
                                            (let ((__tmp243662
                                                   (lambda (_g236562236565_
                                                            _g236563236567_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236562236565_
                                                             _g236563236567_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243662
                                                      '()
                                                      _L236542_))
                                            (let ((__tmp243663
                                                   (lambda (_g236569236572_
                                                            _g236570236574_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236569236572_
                                                             _g236570236574_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243663
                                                      '()
                                                      _L236541_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp243664
                                                   (lambda (_g236576236579_
                                                            _g236577236581_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g236576236579_
                                                             _g236577236581_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp243664
                                                      '()
                                                      _L236541_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L236540_)))
                                         _hd236461236535_
                                         _expr236452236527_
                                         _hd236453236529_)
                                        (let ()
                                          (declare (not safe))
                                          (_g236432236467_ _g236433236470_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236432236467_ _g236433236470_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop236446236493_
                                                       _target236443236488_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236432236467_
                                                     _g236433236470_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g236432236467_ _g236433236470_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g236432236467_ _g236433236470_)))))
                        (let ()
                          (declare (not safe))
                          (_g236432236467_ _g236433236470_))))))
            (declare (not safe))
            (_g236431236584_ _stx236428_)))))
    (define gxc#collect-type-call%
      (lambda (_stx235920_)
        (let* ((___stx241670241671_ _stx235920_)
               (_g235924236039_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241670241671_)))))
          (let ((___kont241672241673_
                 (lambda (_L236378_ _L236379_ _L236380_ _L236381_ _L236382_)
                   (let ((__tmp243670
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236381_)))
                         (__tmp243669
                          (let () (declare (not safe)) (gx#stx-e _L236380_)))
                         (__tmp243668
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236379_)))
                         (__tmp243667
                          (let () (declare (not safe)) (gx#stx-e _L236378_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp243670
                      __tmp243669
                      __tmp243668
                      __tmp243667))))
                (___kont241674241675_
                 (lambda (_L236206_ _L236207_ _L236208_ _L236209_)
                   (let ((__tmp243673
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236208_)))
                         (__tmp243672
                          (let () (declare (not safe)) (gx#stx-e _L236207_)))
                         (__tmp243671
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236206_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp243673
                      __tmp243672
                      __tmp243671
                      '#f))))
                (___kont241676241677_
                 (lambda (_L236076_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp243674
                           (lambda (_g236089236092_ _g236090236094_)
                             (let ()
                               (declare (not safe))
                               (cons _g236089236092_ _g236090236094_)))))
                      (declare (not safe))
                      (foldr1 __tmp243674 '() _L236076_))))))
            (let* ((___match241927241928_
                    (lambda (_e236025236044_
                             _hd236024236047_
                             _tl236023236049_
                             ___splice241678241679_
                             _target236026236052_
                             _tl236028236054_)
                      (letrec ((_loop236029236057_
                                (lambda (_hd236027236060_ _expr236033236062_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd236027236060_))
                                      (let ((_e236030236065_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd236027236060_))))
                                        (let ((_lp-tl236032236070_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236030236065_)))
                                              (_lp-hd236031236068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236030236065_))))
                                          (let ((__tmp243675
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd236031236068_
                                                         _expr236033236062_))))
                                            (declare (not safe))
                                            (_loop236029236057_
                                             _lp-tl236032236070_
                                             __tmp243675))))
                                      (let ((_expr236034236073_
                                             (reverse _expr236033236062_)))
                                        (___kont241676241677_
                                         _expr236034236073_))))))
                        (let ()
                          (declare (not safe))
                          (_loop236029236057_ _target236026236052_ '())))))
                   (___match241807241808_
                    (lambda (_e235933236250_
                             _hd235932236253_
                             _tl235931236255_
                             _e235936236258_
                             _hd235935236261_
                             _tl235934236263_
                             _e235939236266_
                             _hd235938236269_
                             _tl235937236271_
                             _e235942236274_
                             _hd235941236277_
                             _tl235940236279_
                             _e235945236282_
                             _hd235944236285_
                             _tl235943236287_
                             _e235948236290_
                             _hd235947236293_
                             _tl235946236295_
                             _e235951236298_
                             _hd235950236301_
                             _tl235949236303_
                             _e235954236306_
                             _hd235953236309_
                             _tl235952236311_
                             _e235957236314_
                             _hd235956236317_
                             _tl235955236319_
                             _e235960236322_
                             _hd235959236325_
                             _tl235958236327_
                             _e235963236330_
                             _hd235962236333_
                             _tl235961236335_
                             _e235966236338_
                             _hd235965236341_
                             _tl235964236343_
                             _e235969236346_
                             _hd235968236349_
                             _tl235967236351_
                             _e235972236354_
                             _hd235971236357_
                             _tl235970236359_
                             _e235975236362_
                             _hd235974236365_
                             _tl235973236367_
                             _e235978236370_
                             _hd235977236373_
                             _tl235976236375_)
                      (let ((_L236378_ _hd235977236373_)
                            (_L236379_ _hd235968236349_)
                            (_L236380_ _hd235959236325_)
                            (_L236381_ _hd235950236301_)
                            (_L236382_ _hd235941236277_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L236382_
                               'bind-method!))
                            (___kont241672241673_
                             _L236378_
                             _L236379_
                             _L236380_
                             _L236381_
                             _L236382_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl235931236255_))
                                (let ((___splice241678241679_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl235931236255_
                                          '0))))
                                  (let ((_tl236028236054_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice241678241679_
                                            '1)))
                                        (_target236026236052_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice241678241679_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl236028236054_))
                                        (___match241927241928_
                                         _e235933236250_
                                         _hd235932236253_
                                         _tl235931236255_
                                         ___splice241678241679_
                                         _target236026236052_
                                         _tl236028236054_)
                                        (let ()
                                          (declare (not safe))
                                          (_g235924236039_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g235924236039_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241670241671_))
                  (let ((_e235933236250_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241670241671_))))
                    (let ((_tl235931236255_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235933236250_)))
                          (_hd235932236253_
                           (let ()
                             (declare (not safe))
                             (##car _e235933236250_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235931236255_))
                          (let ((_e235936236258_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235931236255_))))
                            (let ((_tl235934236263_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235936236258_)))
                                  (_hd235935236261_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235936236258_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd235935236261_))
                                  (let ((_e235939236266_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd235935236261_))))
                                    (let ((_tl235937236271_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235939236266_)))
                                          (_hd235938236269_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235939236266_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd235938236269_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd235938236269_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235937236271_))
                                                  (let ((_e235942236274_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235937236271_))))
                                                    (let ((_tl235940236279_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235942236274_)))
                                                          (_hd235941236277_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235942236274_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235940236279_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl235934236263_))
                      (let ((_e235945236282_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235934236263_))))
                        (let ((_tl235943236287_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235945236282_)))
                              (_hd235944236285_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235945236282_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd235944236285_))
                              (let ((_e235948236290_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd235944236285_))))
                                (let ((_tl235946236295_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235948236290_)))
                                      (_hd235947236293_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235948236290_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd235947236293_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd235947236293_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235946236295_))
                                              (let ((_e235951236298_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235946236295_))))
                                                (let ((_tl235949236303_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235951236298_)))
                                                      (_hd235950236301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235951236298_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235949236303_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235943236287_))
                                                          (let ((_e235954236306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235943236287_))))
                    (let ((_tl235952236311_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235954236306_)))
                          (_hd235953236309_
                           (let ()
                             (declare (not safe))
                             (##car _e235954236306_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235953236309_))
                          (let ((_e235957236314_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235953236309_))))
                            (let ((_tl235955236319_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235957236314_)))
                                  (_hd235956236317_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235957236314_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235956236317_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd235956236317_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235955236319_))
                                          (let ((_e235960236322_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235955236319_))))
                                            (let ((_tl235958236327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235960236322_)))
                                                  (_hd235959236325_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235960236322_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235958236327_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235952236311_))
                                                      (let ((_e235963236330_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235952236311_))))
                (let ((_tl235961236335_
                       (let () (declare (not safe)) (##cdr _e235963236330_)))
                      (_hd235962236333_
                       (let () (declare (not safe)) (##car _e235963236330_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235962236333_))
                      (let ((_e235966236338_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235962236333_))))
                        (let ((_tl235964236343_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235966236338_)))
                              (_hd235965236341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235966236338_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235965236341_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235965236341_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235964236343_))
                                      (let ((_e235969236346_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235964236343_))))
                                        (let ((_tl235967236351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235969236346_)))
                                              (_hd235968236349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235969236346_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235967236351_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235961236335_))
                                                  (let ((_e235972236354_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235961236335_))))
                                                    (let ((_tl235970236359_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235972236354_)))
                                                          (_hd235971236357_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235972236354_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235971236357_))
                                                          (let ((_e235975236362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235971236357_))))
                    (let ((_tl235973236367_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235975236362_)))
                          (_hd235974236365_
                           (let ()
                             (declare (not safe))
                             (##car _e235975236362_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235974236365_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd235974236365_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235973236367_))
                                  (let ((_e235978236370_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235973236367_))))
                                    (let ((_tl235976236375_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235978236370_)))
                                          (_hd235977236373_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235978236370_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235976236375_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235970236359_))
                                              (___match241807241808_
                                               _e235933236250_
                                               _hd235932236253_
                                               _tl235931236255_
                                               _e235936236258_
                                               _hd235935236261_
                                               _tl235934236263_
                                               _e235939236266_
                                               _hd235938236269_
                                               _tl235937236271_
                                               _e235942236274_
                                               _hd235941236277_
                                               _tl235940236279_
                                               _e235945236282_
                                               _hd235944236285_
                                               _tl235943236287_
                                               _e235948236290_
                                               _hd235947236293_
                                               _tl235946236295_
                                               _e235951236298_
                                               _hd235950236301_
                                               _tl235949236303_
                                               _e235954236306_
                                               _hd235953236309_
                                               _tl235952236311_
                                               _e235957236314_
                                               _hd235956236317_
                                               _tl235955236319_
                                               _e235960236322_
                                               _hd235959236325_
                                               _tl235958236327_
                                               _e235963236330_
                                               _hd235962236333_
                                               _tl235961236335_
                                               _e235966236338_
                                               _hd235965236341_
                                               _tl235964236343_
                                               _e235969236346_
                                               _hd235968236349_
                                               _tl235967236351_
                                               _e235972236354_
                                               _hd235971236357_
                                               _tl235970236359_
                                               _e235975236362_
                                               _hd235974236365_
                                               _tl235973236367_
                                               _e235978236370_
                                               _hd235977236373_
                                               _tl235976236375_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235931236255_))
                                                  (let ((___splice241678241679_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235931236255_
                                                            '0))))
                                                    (let ((_tl236028236054_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241678241679_
                                                              '1)))
                                                          (_target236026236052_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241678241679_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236028236054_))
                                                          (___match241927241928_
                                                           _e235933236250_
                                                           _hd235932236253_
                                                           _tl235931236255_
                                                           ___splice241678241679_
                                                           _target236026236052_
                                                           _tl236028236054_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235924236039_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235924236039_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235931236255_))
                                              (let ((___splice241678241679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235931236255_
                                                        '0))))
                                                (let ((_tl236028236054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241678241679_
                                                          '1)))
                                                      (_target236026236052_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241678241679_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236028236054_))
                                                      (___match241927241928_
                                                       _e235933236250_
                                                       _hd235932236253_
                                                       _tl235931236255_
                                                       ___splice241678241679_
                                                       _target236026236052_
                                                       _tl236028236054_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235924236039_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235924236039_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235931236255_))
                                      (let ((___splice241678241679_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235931236255_
                                                '0))))
                                        (let ((_tl236028236054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241678241679_
                                                  '1)))
                                              (_target236026236052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241678241679_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236028236054_))
                                              (___match241927241928_
                                               _e235933236250_
                                               _hd235932236253_
                                               _tl235931236255_
                                               ___splice241678241679_
                                               _target236026236052_
                                               _tl236028236054_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235924236039_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235924236039_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235931236255_))
                                  (let ((___splice241678241679_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235931236255_
                                            '0))))
                                    (let ((_tl236028236054_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241678241679_
                                              '1)))
                                          (_target236026236052_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241678241679_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236028236054_))
                                          (___match241927241928_
                                           _e235933236250_
                                           _hd235932236253_
                                           _tl235931236255_
                                           ___splice241678241679_
                                           _target236026236052_
                                           _tl236028236054_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235924236039_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235924236039_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235931236255_))
                              (let ((___splice241678241679_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235931236255_
                                        '0))))
                                (let ((_tl236028236054_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241678241679_
                                          '1)))
                                      (_target236026236052_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241678241679_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236028236054_))
                                      (___match241927241928_
                                       _e235933236250_
                                       _hd235932236253_
                                       _tl235931236255_
                                       ___splice241678241679_
                                       _target236026236052_
                                       _tl236028236054_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235924236039_)))))
                              (let ()
                                (declare (not safe))
                                (_g235924236039_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235931236255_))
                      (let ((___splice241678241679_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235931236255_ '0))))
                        (let ((_tl236028236054_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241678241679_ '1)))
                              (_target236026236052_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241678241679_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236028236054_))
                              (___match241927241928_
                               _e235933236250_
                               _hd235932236253_
                               _tl235931236255_
                               ___splice241678241679_
                               _target236026236052_
                               _tl236028236054_)
                              (let ()
                                (declare (not safe))
                                (_g235924236039_)))))
                      (let () (declare (not safe)) (_g235924236039_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235961236335_))
                                                      (if (let ((__tmp243676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp243676 'bind-method!))
                  (let ((_L236206_ _hd235968236349_)
                        (_L236207_ _hd235959236325_)
                        (_L236208_ _hd235950236301_)
                        (_L236209_ _hd235941236277_))
                    (___kont241674241675_
                     _L236206_
                     _L236207_
                     _L236208_
                     _L236209_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235931236255_))
                      (let ((___splice241678241679_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235931236255_ '0))))
                        (let ((_tl236028236054_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241678241679_ '1)))
                              (_target236026236052_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241678241679_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236028236054_))
                              (___match241927241928_
                               _e235933236250_
                               _hd235932236253_
                               _tl235931236255_
                               ___splice241678241679_
                               _target236026236052_
                               _tl236028236054_)
                              (let ()
                                (declare (not safe))
                                (_g235924236039_)))))
                      (let () (declare (not safe)) (_g235924236039_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235931236255_))
                  (let ((___splice241678241679_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235931236255_ '0))))
                    (let ((_tl236028236054_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241678241679_ '1)))
                          (_target236026236052_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241678241679_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236028236054_))
                          (___match241927241928_
                           _e235933236250_
                           _hd235932236253_
                           _tl235931236255_
                           ___splice241678241679_
                           _target236026236052_
                           _tl236028236054_)
                          (let () (declare (not safe)) (_g235924236039_)))))
                  (let () (declare (not safe)) (_g235924236039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235931236255_))
                                                  (let ((___splice241678241679_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235931236255_
                                                            '0))))
                                                    (let ((_tl236028236054_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241678241679_
                                                              '1)))
                                                          (_target236026236052_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241678241679_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236028236054_))
                                                          (___match241927241928_
                                                           _e235933236250_
                                                           _hd235932236253_
                                                           _tl235931236255_
                                                           ___splice241678241679_
                                                           _target236026236052_
                                                           _tl236028236054_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235924236039_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235924236039_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235931236255_))
                                          (let ((___splice241678241679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235931236255_
                                                    '0))))
                                            (let ((_tl236028236054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241678241679_
                                                      '1)))
                                                  (_target236026236052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241678241679_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236028236054_))
                                                  (___match241927241928_
                                                   _e235933236250_
                                                   _hd235932236253_
                                                   _tl235931236255_
                                                   ___splice241678241679_
                                                   _target236026236052_
                                                   _tl236028236054_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235924236039_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235924236039_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235931236255_))
                                      (let ((___splice241678241679_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235931236255_
                                                '0))))
                                        (let ((_tl236028236054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241678241679_
                                                  '1)))
                                              (_target236026236052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241678241679_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236028236054_))
                                              (___match241927241928_
                                               _e235933236250_
                                               _hd235932236253_
                                               _tl235931236255_
                                               ___splice241678241679_
                                               _target236026236052_
                                               _tl236028236054_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235924236039_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235924236039_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235931236255_))
                                  (let ((___splice241678241679_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235931236255_
                                            '0))))
                                    (let ((_tl236028236054_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241678241679_
                                              '1)))
                                          (_target236026236052_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241678241679_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236028236054_))
                                          (___match241927241928_
                                           _e235933236250_
                                           _hd235932236253_
                                           _tl235931236255_
                                           ___splice241678241679_
                                           _target236026236052_
                                           _tl236028236054_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235924236039_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235924236039_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl235931236255_))
                          (let ((___splice241678241679_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl235931236255_
                                    '0))))
                            (let ((_tl236028236054_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241678241679_ '1)))
                                  (_target236026236052_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241678241679_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236028236054_))
                                  (___match241927241928_
                                   _e235933236250_
                                   _hd235932236253_
                                   _tl235931236255_
                                   ___splice241678241679_
                                   _target236026236052_
                                   _tl236028236054_)
                                  (let ()
                                    (declare (not safe))
                                    (_g235924236039_)))))
                          (let () (declare (not safe)) (_g235924236039_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235931236255_))
                  (let ((___splice241678241679_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235931236255_ '0))))
                    (let ((_tl236028236054_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241678241679_ '1)))
                          (_target236026236052_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241678241679_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236028236054_))
                          (___match241927241928_
                           _e235933236250_
                           _hd235932236253_
                           _tl235931236255_
                           ___splice241678241679_
                           _target236026236052_
                           _tl236028236054_)
                          (let () (declare (not safe)) (_g235924236039_)))))
                  (let () (declare (not safe)) (_g235924236039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl235931236255_))
                                                      (let ((___splice241678241679_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl235931236255_ '0))))
                (let ((_tl236028236054_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241678241679_ '1)))
                      (_target236026236052_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241678241679_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236028236054_))
                      (___match241927241928_
                       _e235933236250_
                       _hd235932236253_
                       _tl235931236255_
                       ___splice241678241679_
                       _target236026236052_
                       _tl236028236054_)
                      (let () (declare (not safe)) (_g235924236039_)))))
              (let () (declare (not safe)) (_g235924236039_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235931236255_))
                                              (let ((___splice241678241679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235931236255_
                                                        '0))))
                                                (let ((_tl236028236054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241678241679_
                                                          '1)))
                                                      (_target236026236052_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241678241679_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236028236054_))
                                                      (___match241927241928_
                                                       _e235933236250_
                                                       _hd235932236253_
                                                       _tl235931236255_
                                                       ___splice241678241679_
                                                       _target236026236052_
                                                       _tl236028236054_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235924236039_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235924236039_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235931236255_))
                                          (let ((___splice241678241679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235931236255_
                                                    '0))))
                                            (let ((_tl236028236054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241678241679_
                                                      '1)))
                                                  (_target236026236052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241678241679_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236028236054_))
                                                  (___match241927241928_
                                                   _e235933236250_
                                                   _hd235932236253_
                                                   _tl235931236255_
                                                   ___splice241678241679_
                                                   _target236026236052_
                                                   _tl236028236054_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235924236039_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235924236039_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235931236255_))
                                      (let ((___splice241678241679_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235931236255_
                                                '0))))
                                        (let ((_tl236028236054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241678241679_
                                                  '1)))
                                              (_target236026236052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241678241679_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236028236054_))
                                              (___match241927241928_
                                               _e235933236250_
                                               _hd235932236253_
                                               _tl235931236255_
                                               ___splice241678241679_
                                               _target236026236052_
                                               _tl236028236054_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235924236039_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235924236039_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235931236255_))
                              (let ((___splice241678241679_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235931236255_
                                        '0))))
                                (let ((_tl236028236054_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241678241679_
                                          '1)))
                                      (_target236026236052_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241678241679_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236028236054_))
                                      (___match241927241928_
                                       _e235933236250_
                                       _hd235932236253_
                                       _tl235931236255_
                                       ___splice241678241679_
                                       _target236026236052_
                                       _tl236028236054_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235924236039_)))))
                              (let ()
                                (declare (not safe))
                                (_g235924236039_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235931236255_))
                      (let ((___splice241678241679_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235931236255_ '0))))
                        (let ((_tl236028236054_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241678241679_ '1)))
                              (_target236026236052_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241678241679_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236028236054_))
                              (___match241927241928_
                               _e235933236250_
                               _hd235932236253_
                               _tl235931236255_
                               ___splice241678241679_
                               _target236026236052_
                               _tl236028236054_)
                              (let ()
                                (declare (not safe))
                                (_g235924236039_)))))
                      (let () (declare (not safe)) (_g235924236039_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235931236255_))
                  (let ((___splice241678241679_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235931236255_ '0))))
                    (let ((_tl236028236054_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241678241679_ '1)))
                          (_target236026236052_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice241678241679_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl236028236054_))
                          (___match241927241928_
                           _e235933236250_
                           _hd235932236253_
                           _tl235931236255_
                           ___splice241678241679_
                           _target236026236052_
                           _tl236028236054_)
                          (let () (declare (not safe)) (_g235924236039_)))))
                  (let () (declare (not safe)) (_g235924236039_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235931236255_))
                                                  (let ((___splice241678241679_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235931236255_
                                                            '0))))
                                                    (let ((_tl236028236054_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241678241679_
                                                              '1)))
                                                          (_target236026236052_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241678241679_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236028236054_))
                                                          (___match241927241928_
                                                           _e235933236250_
                                                           _hd235932236253_
                                                           _tl235931236255_
                                                           ___splice241678241679_
                                                           _target236026236052_
                                                           _tl236028236054_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235924236039_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235924236039_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235931236255_))
                                              (let ((___splice241678241679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235931236255_
                                                        '0))))
                                                (let ((_tl236028236054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241678241679_
                                                          '1)))
                                                      (_target236026236052_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241678241679_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236028236054_))
                                                      (___match241927241928_
                                                       _e235933236250_
                                                       _hd235932236253_
                                                       _tl235931236255_
                                                       ___splice241678241679_
                                                       _target236026236052_
                                                       _tl236028236054_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235924236039_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235924236039_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235931236255_))
                                          (let ((___splice241678241679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235931236255_
                                                    '0))))
                                            (let ((_tl236028236054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241678241679_
                                                      '1)))
                                                  (_target236026236052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice241678241679_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl236028236054_))
                                                  (___match241927241928_
                                                   _e235933236250_
                                                   _hd235932236253_
                                                   _tl235931236255_
                                                   ___splice241678241679_
                                                   _target236026236052_
                                                   _tl236028236054_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235924236039_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235924236039_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235931236255_))
                                  (let ((___splice241678241679_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235931236255_
                                            '0))))
                                    (let ((_tl236028236054_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241678241679_
                                              '1)))
                                          (_target236026236052_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice241678241679_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236028236054_))
                                          (___match241927241928_
                                           _e235933236250_
                                           _hd235932236253_
                                           _tl235931236255_
                                           ___splice241678241679_
                                           _target236026236052_
                                           _tl236028236054_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235924236039_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235924236039_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl235931236255_))
                          (let ((___splice241678241679_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl235931236255_
                                    '0))))
                            (let ((_tl236028236054_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241678241679_ '1)))
                                  (_target236026236052_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241678241679_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236028236054_))
                                  (___match241927241928_
                                   _e235933236250_
                                   _hd235932236253_
                                   _tl235931236255_
                                   ___splice241678241679_
                                   _target236026236052_
                                   _tl236028236054_)
                                  (let ()
                                    (declare (not safe))
                                    (_g235924236039_)))))
                          (let () (declare (not safe)) (_g235924236039_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235931236255_))
                      (let ((___splice241678241679_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235931236255_ '0))))
                        (let ((_tl236028236054_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241678241679_ '1)))
                              (_target236026236052_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice241678241679_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236028236054_))
                              (___match241927241928_
                               _e235933236250_
                               _hd235932236253_
                               _tl235931236255_
                               ___splice241678241679_
                               _target236026236052_
                               _tl236028236054_)
                              (let ()
                                (declare (not safe))
                                (_g235924236039_)))))
                      (let () (declare (not safe)) (_g235924236039_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl235931236255_))
                                                      (let ((___splice241678241679_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl235931236255_ '0))))
                (let ((_tl236028236054_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241678241679_ '1)))
                      (_target236026236052_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice241678241679_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl236028236054_))
                      (___match241927241928_
                       _e235933236250_
                       _hd235932236253_
                       _tl235931236255_
                       ___splice241678241679_
                       _target236026236052_
                       _tl236028236054_)
                      (let () (declare (not safe)) (_g235924236039_)))))
              (let () (declare (not safe)) (_g235924236039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235931236255_))
                                                  (let ((___splice241678241679_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235931236255_
                                                            '0))))
                                                    (let ((_tl236028236054_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241678241679_
                                                              '1)))
                                                          (_target236026236052_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241678241679_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236028236054_))
                                                          (___match241927241928_
                                                           _e235933236250_
                                                           _hd235932236253_
                                                           _tl235931236255_
                                                           ___splice241678241679_
                                                           _target236026236052_
                                                           _tl236028236054_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235924236039_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235924236039_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235931236255_))
                                              (let ((___splice241678241679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235931236255_
                                                        '0))))
                                                (let ((_tl236028236054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241678241679_
                                                          '1)))
                                                      (_target236026236052_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice241678241679_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236028236054_))
                                                      (___match241927241928_
                                                       _e235933236250_
                                                       _hd235932236253_
                                                       _tl235931236255_
                                                       ___splice241678241679_
                                                       _target236026236052_
                                                       _tl236028236054_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235924236039_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235924236039_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235931236255_))
                                      (let ((___splice241678241679_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235931236255_
                                                '0))))
                                        (let ((_tl236028236054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241678241679_
                                                  '1)))
                                              (_target236026236052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice241678241679_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236028236054_))
                                              (___match241927241928_
                                               _e235933236250_
                                               _hd235932236253_
                                               _tl235931236255_
                                               ___splice241678241679_
                                               _target236026236052_
                                               _tl236028236054_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235924236039_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235924236039_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235931236255_))
                              (let ((___splice241678241679_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235931236255_
                                        '0))))
                                (let ((_tl236028236054_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241678241679_
                                          '1)))
                                      (_target236026236052_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice241678241679_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236028236054_))
                                      (___match241927241928_
                                       _e235933236250_
                                       _hd235932236253_
                                       _tl235931236255_
                                       ___splice241678241679_
                                       _target236026236052_
                                       _tl236028236054_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235924236039_)))))
                              (let ()
                                (declare (not safe))
                                (_g235924236039_))))))
                  (let () (declare (not safe)) (_g235924236039_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx235860_)
        (let* ((___stx241930241931_ _stx235860_)
               (_g235863235876_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241930241931_)))))
          (let ((___kont241932241933_
                 (lambda (_L235904_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L235904_))))
                (___kont241934241935_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241930241931_))
                (let ((_e235868235888_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241930241931_))))
                  (let ((_tl235866235893_
                         (let () (declare (not safe)) (##cdr _e235868235888_)))
                        (_hd235867235891_
                         (let ()
                           (declare (not safe))
                           (##car _e235868235888_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235866235893_))
                        (let ((_e235871235896_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235866235893_))))
                          (let ((_tl235869235901_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235871235896_)))
                                (_hd235870235899_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235871235896_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl235869235901_))
                                (___kont241932241933_ _hd235870235899_)
                                (___kont241934241935_))))
                        (___kont241934241935_))))
                (___kont241934241935_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx235740_)
        (let* ((_g235742235759_
                (lambda (_g235743235756_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235743235756_))))
               (_g235741235857_
                (lambda (_g235743235762_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235743235762_))
                      (let ((_e235748235764_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235743235762_))))
                        (let ((_hd235747235767_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235748235764_)))
                              (_tl235746235769_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235748235764_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235746235769_))
                              (let ((_e235751235772_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235746235769_))))
                                (let ((_hd235750235775_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235751235772_)))
                                      (_tl235749235777_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235751235772_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235749235777_))
                                      (let ((_e235754235780_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235749235777_))))
                                        (let ((_hd235753235783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235754235780_)))
                                              (_tl235752235785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235754235780_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235752235785_))
                                              ((lambda (_L235788_ _L235789_)
                                                 (let* ((___stx241952241953_
                                                         _L235789_)
                                                        (_g235805235816_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx241952241953_)))))
                                                   (let ((___kont241954241955_
                                                          (lambda (_L235836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L235837_)
                    (let ((_$e235849_
                           (let ((__tmp243677
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L235837_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp243677
                              '#f))))
                      (if _$e235849_
                          ((lambda (_type-e235852_)
                             (_type-e235852_ _stx235740_ _L235789_))
                           _$e235849_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L235788_))))))
                 (___kont241956241957_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L235788_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match241963241964_
                                                            (lambda (_e235811235828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd235810235831_
                             _tl235809235833_)
                      (let ((_L235836_ _tl235809235833_)
                            (_L235837_ _hd235810235831_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L235837_))
                            (___kont241954241955_ _L235836_ _L235837_)
                            (___kont241956241957_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx241952241953_))
                   (let ((_e235811235828_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx241952241953_))))
                     (let ((_tl235809235833_
                            (let ()
                              (declare (not safe))
                              (##cdr _e235811235828_)))
                           (_hd235810235831_
                            (let ()
                              (declare (not safe))
                              (##car _e235811235828_))))
                       (___match241963241964_
                        _e235811235828_
                        _hd235810235831_
                        _tl235809235833_)))
                   (___kont241956241957_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd235753235783_
                                               _hd235750235775_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235742235759_
                                                 _g235743235762_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235742235759_ _g235743235762_)))))
                              (let ()
                                (declare (not safe))
                                (_g235742235759_ _g235743235762_)))))
                      (let ()
                        (declare (not safe))
                        (_g235742235759_ _g235743235762_))))))
          (declare (not safe))
          (_g235741235857_ _stx235740_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx235601_ _ann235602_)
        (let* ((_g235604235637_
                (lambda (_g235605235634_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235605235634_))))
               (_g235603235737_
                (lambda (_g235605235640_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235605235640_))
                      (let ((_e235614235642_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235605235640_))))
                        (let ((_hd235613235645_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235614235642_)))
                              (_tl235612235647_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235614235642_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235612235647_))
                              (let ((_e235617235650_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235612235647_))))
                                (let ((_hd235616235653_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235617235650_)))
                                      (_tl235615235655_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235617235650_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235615235655_))
                                      (let ((_e235620235658_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235615235655_))))
                                        (let ((_hd235619235661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235620235658_)))
                                              (_tl235618235663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235620235658_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235618235663_))
                                              (let ((_e235623235666_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235618235663_))))
                                                (let ((_hd235622235669_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235623235666_)))
                                                      (_tl235621235671_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235623235666_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235621235671_))
                                                      (let ((_e235626235674_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235621235671_))))
                (let ((_hd235625235677_
                       (let () (declare (not safe)) (##car _e235626235674_)))
                      (_tl235624235679_
                       (let () (declare (not safe)) (##cdr _e235626235674_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl235624235679_))
                      (let ((_e235629235682_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235624235679_))))
                        (let ((_hd235628235685_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235629235682_)))
                              (_tl235627235687_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235629235682_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235627235687_))
                              (let ((_e235632235690_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235627235687_))))
                                (let ((_hd235631235693_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235632235690_)))
                                      (_tl235630235695_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235632235690_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235630235695_))
                                      ((lambda (_L235698_
                                                _L235699_
                                                _L235700_
                                                _L235701_
                                                _L235702_
                                                _L235703_)
                                         (let ((_type-id235730_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235703_)))
                                               (_super235731_
                                                (map gxc#identifier-symbol
                                                     _L235702_))
                                               (_slots235732_
                                                (map gx#stx-e _L235701_))
                                               (_ctor-method235733_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235700_)))
                                               (_struct?235734_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235699_)))
                                               (_final?235735_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L235698_))))
                                           (let ((__obj243635
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
                                              __obj243635
                                              _type-id235730_
                                              _super235731_
                                              _slots235732_
                                              _ctor-method235733_
                                              _struct?235734_
                                              _final?235735_)
                                             __obj243635)))
                                       _hd235631235693_
                                       _hd235628235685_
                                       _hd235625235677_
                                       _hd235622235669_
                                       _hd235619235661_
                                       _hd235616235653_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235604235637_ _g235605235640_)))))
                              (let ()
                                (declare (not safe))
                                (_g235604235637_ _g235605235640_)))))
                      (let ()
                        (declare (not safe))
                        (_g235604235637_ _g235605235640_)))))
              (let ()
                (declare (not safe))
                (_g235604235637_ _g235605235640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235604235637_
                                                 _g235605235640_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235604235637_ _g235605235640_)))))
                              (let ()
                                (declare (not safe))
                                (_g235604235637_ _g235605235640_)))))
                      (let ()
                        (declare (not safe))
                        (_g235604235637_ _g235605235640_))))))
          (declare (not safe))
          (_g235603235737_ _ann235602_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx235549_ _ann235550_)
        (let* ((_g235552235565_
                (lambda (_g235553235562_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235553235562_))))
               (_g235551235598_
                (lambda (_g235553235568_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235553235568_))
                      (let ((_e235557235570_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235553235568_))))
                        (let ((_hd235556235573_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235557235570_)))
                              (_tl235555235575_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235557235570_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235555235575_))
                              (let ((_e235560235578_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235555235575_))))
                                (let ((_hd235559235581_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235560235578_)))
                                      (_tl235558235583_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235560235578_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235558235583_))
                                      ((lambda (_L235586_)
                                         (let ((__tmp243678
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235586_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp243678)))
                                       _hd235559235581_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235552235565_ _g235553235568_)))))
                              (let ()
                                (declare (not safe))
                                (_g235552235565_ _g235553235568_)))))
                      (let ()
                        (declare (not safe))
                        (_g235552235565_ _g235553235568_))))))
          (declare (not safe))
          (_g235551235598_ _ann235550_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx235497_ _ann235498_)
        (let* ((_g235500235513_
                (lambda (_g235501235510_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235501235510_))))
               (_g235499235546_
                (lambda (_g235501235516_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235501235516_))
                      (let ((_e235505235518_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235501235516_))))
                        (let ((_hd235504235521_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235505235518_)))
                              (_tl235503235523_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235505235518_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235503235523_))
                              (let ((_e235508235526_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235503235523_))))
                                (let ((_hd235507235529_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235508235526_)))
                                      (_tl235506235531_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235508235526_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235506235531_))
                                      ((lambda (_L235534_)
                                         (let ((__tmp243679
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L235534_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp243679)))
                                       _hd235507235529_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235500235513_ _g235501235516_)))))
                              (let ()
                                (declare (not safe))
                                (_g235500235513_ _g235501235516_)))))
                      (let ()
                        (declare (not safe))
                        (_g235500235513_ _g235501235516_))))))
          (declare (not safe))
          (_g235499235546_ _ann235498_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx235413_ _ann235414_)
        (let* ((_g235416235437_
                (lambda (_g235417235434_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235417235434_))))
               (_g235415235494_
                (lambda (_g235417235440_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235417235440_))
                      (let ((_e235423235442_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235417235440_))))
                        (let ((_hd235422235445_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235423235442_)))
                              (_tl235421235447_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235423235442_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235421235447_))
                              (let ((_e235426235450_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235421235447_))))
                                (let ((_hd235425235453_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235426235450_)))
                                      (_tl235424235455_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235426235450_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235424235455_))
                                      (let ((_e235429235458_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235424235455_))))
                                        (let ((_hd235428235461_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235429235458_)))
                                              (_tl235427235463_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235429235458_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235427235463_))
                                              (let ((_e235432235466_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235427235463_))))
                                                (let ((_hd235431235469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235432235466_)))
                                                      (_tl235430235471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235432235466_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235430235471_))
                                                      ((lambda (_L235474_
                                                                _L235475_
                                                                _L235476_)
                                                         (let ((__tmp243682
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L235476_)))
                       (__tmp243681
                        (let () (declare (not safe)) (gx#stx-e _L235475_)))
                       (__tmp243680
                        (let () (declare (not safe)) (gx#stx-e _L235474_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp243682
                    __tmp243681
                    __tmp243680)))
               _hd235431235469_
               _hd235428235461_
               _hd235425235453_)
              (let ()
                (declare (not safe))
                (_g235416235437_ _g235417235440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235416235437_
                                                 _g235417235440_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235416235437_ _g235417235440_)))))
                              (let ()
                                (declare (not safe))
                                (_g235416235437_ _g235417235440_)))))
                      (let ()
                        (declare (not safe))
                        (_g235416235437_ _g235417235440_))))))
          (declare (not safe))
          (_g235415235494_ _ann235414_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx235329_ _ann235330_)
        (let* ((_g235332235353_
                (lambda (_g235333235350_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235333235350_))))
               (_g235331235410_
                (lambda (_g235333235356_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235333235356_))
                      (let ((_e235339235358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235333235356_))))
                        (let ((_hd235338235361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235339235358_)))
                              (_tl235337235363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235339235358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235337235363_))
                              (let ((_e235342235366_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235337235363_))))
                                (let ((_hd235341235369_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235342235366_)))
                                      (_tl235340235371_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235342235366_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235340235371_))
                                      (let ((_e235345235374_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235340235371_))))
                                        (let ((_hd235344235377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235345235374_)))
                                              (_tl235343235379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235345235374_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235343235379_))
                                              (let ((_e235348235382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235343235379_))))
                                                (let ((_hd235347235385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235348235382_)))
                                                      (_tl235346235387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235348235382_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235346235387_))
                                                      ((lambda (_L235390_
                                                                _L235391_
                                                                _L235392_)
                                                         (let ((__tmp243685
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L235392_)))
                       (__tmp243684
                        (let () (declare (not safe)) (gx#stx-e _L235391_)))
                       (__tmp243683
                        (let () (declare (not safe)) (gx#stx-e _L235390_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp243685
                    __tmp243684
                    __tmp243683)))
               _hd235347235385_
               _hd235344235377_
               _hd235341235369_)
              (let ()
                (declare (not safe))
                (_g235332235353_ _g235333235356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235332235353_
                                                 _g235333235356_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235332235353_ _g235333235356_)))))
                              (let ()
                                (declare (not safe))
                                (_g235332235353_ _g235333235356_)))))
                      (let ()
                        (declare (not safe))
                        (_g235332235353_ _g235333235356_))))))
          (declare (not safe))
          (_g235331235410_ _ann235330_))))
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
      (lambda (_stx234449_)
        (let* ((___stx241966241967_ _stx234449_)
               (_g234455234651_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241966241967_)))))
          (let ((___kont241968241969_
                 (lambda (_L235317_)
                   (let ((__obj243636
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243636
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L235317_))
                      '#f)
                     __obj243636)))
                (___kont241970241971_
                 (lambda (_L235244_
                          _L235245_
                          _L235246_
                          _L235247_
                          _L235248_
                          _L235249_)
                   (let* ((_tab235299_
                           (let () (declare (not safe)) (gx#stx-e _L235246_)))
                          (_keys235301_
                           (if _tab235299_
                               (let ((__tmp243686 (vector->list _tab235299_)))
                                 (declare (not safe))
                                 (filter values __tmp243686))
                               '#f)))
                     (let ((__tmp243687
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L235245_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys235301_
                        __tmp243687)))))
                (___kont241972241973_
                 (lambda (_L234977_
                          _L234978_
                          _L234979_
                          _L234980_
                          _L234981_
                          _L234982_
                          _L234983_
                          _L234984_
                          _L234985_
                          _L234986_)
                   (let ((__tmp243689
                          (map gx#stx-e
                               (let ((__tmp243690
                                      (lambda (_g235079235082_ _g235080235084_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g235079235082_
                                                _g235080235084_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp243690 '() _L234979_))))
                         (__tmp243688
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234983_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp243689
                      __tmp243688))))
                (___kont241976241977_
                 (lambda (_L234687_)
                   (let ((__obj243637
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243637
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234687_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L234687_)))
                     __obj243637)))
                (___kont241978241979_
                 (lambda (_L234664_)
                   (let ((__obj243638
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj243638
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234664_))
                      '#f)
                     __obj243638))))
            (let* ((___match242285242286_
                    (lambda (_e234642234679_ _hd234641234682_ _tl234640234684_)
                      (let ((_L234687_ _tl234640234684_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L234687_))
                            (___kont241976241977_ _L234687_)
                            (___kont241978241979_ _tl234640234684_)))))
                   (___match242279242280_
                    (lambda (_e234536234701_
                             _hd234535234704_
                             _tl234534234706_
                             _e234539234709_
                             _hd234538234712_
                             _tl234537234714_
                             _e234542234717_
                             _hd234541234720_
                             _tl234540234722_
                             _e234545234725_
                             _hd234544234728_
                             _tl234543234730_
                             _e234548234733_
                             _hd234547234736_
                             _tl234546234738_
                             _e234551234741_
                             _hd234550234744_
                             _tl234549234746_
                             _e234554234749_
                             _hd234553234752_
                             _tl234552234754_
                             _e234557234757_
                             _hd234556234760_
                             _tl234555234762_
                             _e234560234765_
                             _hd234559234768_
                             _tl234558234770_
                             _e234563234773_
                             _hd234562234776_
                             _tl234561234778_
                             _e234566234781_
                             _hd234565234784_
                             _tl234564234786_
                             _e234569234789_
                             _hd234568234792_
                             _tl234567234794_
                             _e234572234797_
                             _hd234571234800_
                             _tl234570234802_
                             _e234575234805_
                             _hd234574234808_
                             _tl234573234810_
                             ___splice241974241975_
                             _target234576234813_
                             _tl234578234815_
                             _e234593234818_
                             _hd234592234821_
                             _tl234591234823_
                             _e234596234826_
                             _hd234595234829_
                             _tl234594234831_
                             _e234599234834_
                             _hd234598234837_
                             _tl234597234839_)
                      (letrec ((_loop234579234842_
                                (lambda (_hd234577234845_
                                         _-absent-value234583234847_
                                         _key234584234849_
                                         _-xkwvar234585234851_
                                         _-hash-ref234586234853_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd234577234845_))
                                      (let ((_e234580234856_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd234577234845_))))
                                        (let ((_lp-tl234582234861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234580234856_)))
                                              (_lp-hd234581234859_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234580234856_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd234581234859_))
                                              (let ((_e234602234864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd234581234859_))))
                                                (let ((_tl234600234869_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234602234864_)))
                                                      (_hd234601234867_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234602234864_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd234601234867_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd234601234867_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl234600234869_))
                      (let ((_e234605234872_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl234600234869_))))
                        (let ((_tl234603234877_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234605234872_)))
                              (_hd234604234875_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234605234872_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd234604234875_))
                              (let ((_e234608234880_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd234604234875_))))
                                (let ((_tl234606234885_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234608234880_)))
                                      (_hd234607234883_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234608234880_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd234607234883_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd234607234883_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234606234885_))
                                              (let ((_e234611234888_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234606234885_))))
                                                (let ((_tl234609234893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234611234888_)))
                                                      (_hd234610234891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234611234888_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234609234893_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234603234877_))
                                                          (let ((_e234614234896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234603234877_))))
                    (let ((_tl234612234901_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234614234896_)))
                          (_hd234613234899_
                           (let ()
                             (declare (not safe))
                             (##car _e234614234896_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234613234899_))
                          (let ((_e234617234904_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234613234899_))))
                            (let ((_tl234615234909_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234617234904_)))
                                  (_hd234616234907_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234617234904_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234616234907_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234616234907_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234615234909_))
                                          (let ((_e234620234912_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234615234909_))))
                                            (let ((_tl234618234917_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234620234912_)))
                                                  (_hd234619234915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234620234912_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234618234917_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234612234901_))
                                                      (let ((_e234623234920_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234612234901_))))
                (let ((_tl234621234925_
                       (let () (declare (not safe)) (##cdr _e234623234920_)))
                      (_hd234622234923_
                       (let () (declare (not safe)) (##car _e234623234920_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234622234923_))
                      (let ((_e234626234928_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234622234923_))))
                        (let ((_tl234624234933_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234626234928_)))
                              (_hd234625234931_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234626234928_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234625234931_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd234625234931_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234624234933_))
                                      (let ((_e234629234936_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234624234933_))))
                                        (let ((_tl234627234941_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234629234936_)))
                                              (_hd234628234939_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234629234936_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234627234941_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234621234925_))
                                                  (let ((_e234632234944_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234621234925_))))
                                                    (let ((_tl234630234949_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234632234944_)))
                                                          (_hd234631234947_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234632234944_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234631234947_))
                                                          (let ((_e234635234952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234631234947_))))
                    (let ((_tl234633234957_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234635234952_)))
                          (_hd234634234955_
                           (let ()
                             (declare (not safe))
                             (##car _e234635234952_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234634234955_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234634234955_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234633234957_))
                                  (let ((_e234638234960_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234633234957_))))
                                    (let ((_tl234636234965_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234638234960_)))
                                          (_hd234637234963_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234638234960_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234636234965_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234630234949_))
                                              (let ((__tmp243705
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234637234963_
                                                             _-absent-value234583234847_)))
                                                    (__tmp243704
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234628234939_
                                                             _key234584234849_)))
                                                    (__tmp243703
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234619234915_
                                                             _-xkwvar234585234851_)))
                                                    (__tmp243702
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd234610234891_
                                                             _-hash-ref234586234853_))))
                                                (declare (not safe))
                                                (_loop234579234842_
                                                 _lp-tl234582234861_
                                                 __tmp243705
                                                 __tmp243704
                                                 __tmp243703
                                                 __tmp243702))
                                              (___match242285242286_
                                               _e234536234701_
                                               _hd234535234704_
                                               _tl234534234706_))
                                          (___match242285242286_
                                           _e234536234701_
                                           _hd234535234704_
                                           _tl234534234706_))))
                                  (___match242285242286_
                                   _e234536234701_
                                   _hd234535234704_
                                   _tl234534234706_))
                              (___match242285242286_
                               _e234536234701_
                               _hd234535234704_
                               _tl234534234706_))
                          (___match242285242286_
                           _e234536234701_
                           _hd234535234704_
                           _tl234534234706_))))
                  (___match242285242286_
                   _e234536234701_
                   _hd234535234704_
                   _tl234534234706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242285242286_
                                                   _e234536234701_
                                                   _hd234535234704_
                                                   _tl234534234706_))
                                              (___match242285242286_
                                               _e234536234701_
                                               _hd234535234704_
                                               _tl234534234706_))))
                                      (___match242285242286_
                                       _e234536234701_
                                       _hd234535234704_
                                       _tl234534234706_))
                                  (___match242285242286_
                                   _e234536234701_
                                   _hd234535234704_
                                   _tl234534234706_))
                              (___match242285242286_
                               _e234536234701_
                               _hd234535234704_
                               _tl234534234706_))))
                      (___match242285242286_
                       _e234536234701_
                       _hd234535234704_
                       _tl234534234706_))))
              (___match242285242286_
               _e234536234701_
               _hd234535234704_
               _tl234534234706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242285242286_
                                                   _e234536234701_
                                                   _hd234535234704_
                                                   _tl234534234706_))))
                                          (___match242285242286_
                                           _e234536234701_
                                           _hd234535234704_
                                           _tl234534234706_))
                                      (___match242285242286_
                                       _e234536234701_
                                       _hd234535234704_
                                       _tl234534234706_))
                                  (___match242285242286_
                                   _e234536234701_
                                   _hd234535234704_
                                   _tl234534234706_))))
                          (___match242285242286_
                           _e234536234701_
                           _hd234535234704_
                           _tl234534234706_))))
                  (___match242285242286_
                   _e234536234701_
                   _hd234535234704_
                   _tl234534234706_))
              (___match242285242286_
               _e234536234701_
               _hd234535234704_
               _tl234534234706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242285242286_
                                               _e234536234701_
                                               _hd234535234704_
                                               _tl234534234706_))
                                          (___match242285242286_
                                           _e234536234701_
                                           _hd234535234704_
                                           _tl234534234706_))
                                      (___match242285242286_
                                       _e234536234701_
                                       _hd234535234704_
                                       _tl234534234706_))))
                              (___match242285242286_
                               _e234536234701_
                               _hd234535234704_
                               _tl234534234706_))))
                      (___match242285242286_
                       _e234536234701_
                       _hd234535234704_
                       _tl234534234706_))
                  (___match242285242286_
                   _e234536234701_
                   _hd234535234704_
                   _tl234534234706_))
              (___match242285242286_
               _e234536234701_
               _hd234535234704_
               _tl234534234706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242285242286_
                                               _e234536234701_
                                               _hd234535234704_
                                               _tl234534234706_))))
                                      (let ((_-hash-ref234590234974_
                                             (reverse _-hash-ref234586234853_))
                                            (_-xkwvar234589234972_
                                             (reverse _-xkwvar234585234851_))
                                            (_key234588234970_
                                             (reverse _key234584234849_))
                                            (_-absent-value234587234968_
                                             (reverse _-absent-value234583234847_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl234543234730_))
                                            (let ((_L234977_ _hd234598234837_)
                                                  (_L234978_
                                                   _-absent-value234587234968_)
                                                  (_L234979_ _key234588234970_)
                                                  (_L234980_
                                                   _-xkwvar234589234972_)
                                                  (_L234981_
                                                   _-hash-ref234590234974_)
                                                  (_L234982_ _hd234574234808_)
                                                  (_L234983_ _hd234565234784_)
                                                  (_L234984_ _hd234556234760_)
                                                  (_L234985_ _tl234540234722_)
                                                  (_L234986_ _hd234541234720_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L234986_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L234985_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L234984_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L234986_
                                                          _L234982_))
                                                       (let ((__tmp243700
                                                              (let ((__tmp243701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g235039235042_ _g235040235044_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235039235042_ _g235040235044_)))))
                        (declare (not safe))
                        (foldr1 __tmp243701 '() _L234979_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp243700))
               (let ((__tmp243699
                      (lambda (_g235046235048_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235046235048_
                           'hash-ref))))
                     (__tmp243697
                      (let ((__tmp243698
                             (lambda (_g235050235053_ _g235051235055_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235050235053_ _g235051235055_)))))
                        (declare (not safe))
                        (foldr1 __tmp243698 '() _L234981_))))
                 (declare (not safe))
                 (andmap1 __tmp243699 __tmp243697))
               (let ((__tmp243696
                      (lambda (_g235057235059_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g235057235059_
                           'absent-value))))
                     (__tmp243694
                      (let ((__tmp243695
                             (lambda (_g235061235064_ _g235062235066_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235061235064_ _g235062235066_)))))
                        (declare (not safe))
                        (foldr1 __tmp243695 '() _L234978_))))
                 (declare (not safe))
                 (andmap1 __tmp243696 __tmp243694))
               (let ((__tmp243693
                      (lambda (_g235068235070_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g235068235070_ _L234986_))))
                     (__tmp243691
                      (let ((__tmp243692
                             (lambda (_g235072235075_ _g235073235077_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g235072235075_ _g235073235077_)))))
                        (declare (not safe))
                        (foldr1 __tmp243692 '() _L234980_))))
                 (declare (not safe))
                 (andmap1 __tmp243693 __tmp243691)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont241972241973_
                                                   _L234977_
                                                   _L234978_
                                                   _L234979_
                                                   _L234980_
                                                   _L234981_
                                                   _L234982_
                                                   _L234983_
                                                   _L234984_
                                                   _L234985_
                                                   _L234986_)
                                                  (___match242285242286_
                                                   _e234536234701_
                                                   _hd234535234704_
                                                   _tl234534234706_)))
                                            (___match242285242286_
                                             _e234536234701_
                                             _hd234535234704_
                                             _tl234534234706_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop234579234842_
                           _target234576234813_
                           '()
                           '()
                           '()
                           '())))))
                   (___match242151242152_
                    (lambda (_e234536234701_
                             _hd234535234704_
                             _tl234534234706_
                             _e234539234709_
                             _hd234538234712_
                             _tl234537234714_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234538234712_))
                          (let ((_e234542234717_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234538234712_))))
                            (let ((_tl234540234722_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234542234717_)))
                                  (_hd234541234720_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234542234717_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234537234714_))
                                  (let ((_e234545234725_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234537234714_))))
                                    (let ((_tl234543234730_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234545234725_)))
                                          (_hd234544234728_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234545234725_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234544234728_))
                                          (let ((_e234548234733_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234544234728_))))
                                            (let ((_tl234546234738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234548234733_)))
                                                  (_hd234547234736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234548234733_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd234547234736_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd234547234736_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234546234738_))
                                                          (let ((_e234551234741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234546234738_))))
                    (let ((_tl234549234746_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234551234741_)))
                          (_hd234550234744_
                           (let ()
                             (declare (not safe))
                             (##car _e234551234741_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234550234744_))
                          (let ((_e234554234749_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234550234744_))))
                            (let ((_tl234552234754_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234554234749_)))
                                  (_hd234553234752_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234554234749_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234553234752_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234553234752_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234552234754_))
                                          (let ((_e234557234757_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234552234754_))))
                                            (let ((_tl234555234762_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234557234757_)))
                                                  (_hd234556234760_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234557234757_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234555234762_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234549234746_))
                                                      (let ((_e234560234765_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234549234746_))))
                (let ((_tl234558234770_
                       (let () (declare (not safe)) (##cdr _e234560234765_)))
                      (_hd234559234768_
                       (let () (declare (not safe)) (##car _e234560234765_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234559234768_))
                      (let ((_e234563234773_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234559234768_))))
                        (let ((_tl234561234778_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234563234773_)))
                              (_hd234562234776_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234563234773_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234562234776_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234562234776_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234561234778_))
                                      (let ((_e234566234781_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234561234778_))))
                                        (let ((_tl234564234786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234566234781_)))
                                              (_hd234565234784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234566234781_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234564234786_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234558234770_))
                                                  (let ((_e234569234789_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234558234770_))))
                                                    (let ((_tl234567234794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234569234789_)))
                                                          (_hd234568234792_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234569234789_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234568234792_))
                                                          (let ((_e234572234797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234568234792_))))
                    (let ((_tl234570234802_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234572234797_)))
                          (_hd234571234800_
                           (let ()
                             (declare (not safe))
                             (##car _e234572234797_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234571234800_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd234571234800_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234570234802_))
                                  (let ((_e234575234805_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234570234802_))))
                                    (let ((_tl234573234810_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234575234805_)))
                                          (_hd234574234808_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234575234805_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234573234810_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl234567234794_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl234567234794_))
                                                        '1)
                                                  (let ((___splice241974241975_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl234567234794_
                                                            '1))))
                                                    (let ((_tl234578234815_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241974241975_
                                                              '1)))
                                                          (_target234576234813_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice241974241975_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234578234815_))
                                                          (let ((_e234593234818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234578234815_))))
                    (let ((_tl234591234823_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234593234818_)))
                          (_hd234592234821_
                           (let ()
                             (declare (not safe))
                             (##car _e234593234818_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234592234821_))
                          (let ((_e234596234826_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234592234821_))))
                            (let ((_tl234594234831_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234596234826_)))
                                  (_hd234595234829_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234596234826_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234595234829_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234595234829_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234594234831_))
                                          (let ((_e234599234834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234594234831_))))
                                            (let ((_tl234597234839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234599234834_)))
                                                  (_hd234598234837_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234599234834_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234597234839_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234591234823_))
                                                      (___match242279242280_
                                                       _e234536234701_
                                                       _hd234535234704_
                                                       _tl234534234706_
                                                       _e234539234709_
                                                       _hd234538234712_
                                                       _tl234537234714_
                                                       _e234542234717_
                                                       _hd234541234720_
                                                       _tl234540234722_
                                                       _e234545234725_
                                                       _hd234544234728_
                                                       _tl234543234730_
                                                       _e234548234733_
                                                       _hd234547234736_
                                                       _tl234546234738_
                                                       _e234551234741_
                                                       _hd234550234744_
                                                       _tl234549234746_
                                                       _e234554234749_
                                                       _hd234553234752_
                                                       _tl234552234754_
                                                       _e234557234757_
                                                       _hd234556234760_
                                                       _tl234555234762_
                                                       _e234560234765_
                                                       _hd234559234768_
                                                       _tl234558234770_
                                                       _e234563234773_
                                                       _hd234562234776_
                                                       _tl234561234778_
                                                       _e234566234781_
                                                       _hd234565234784_
                                                       _tl234564234786_
                                                       _e234569234789_
                                                       _hd234568234792_
                                                       _tl234567234794_
                                                       _e234572234797_
                                                       _hd234571234800_
                                                       _tl234570234802_
                                                       _e234575234805_
                                                       _hd234574234808_
                                                       _tl234573234810_
                                                       ___splice241974241975_
                                                       _target234576234813_
                                                       _tl234578234815_
                                                       _e234593234818_
                                                       _hd234592234821_
                                                       _tl234591234823_
                                                       _e234596234826_
                                                       _hd234595234829_
                                                       _tl234594234831_
                                                       _e234599234834_
                                                       _hd234598234837_
                                                       _tl234597234839_)
                                                      (___match242285242286_
                                                       _e234536234701_
                                                       _hd234535234704_
                                                       _tl234534234706_))
                                                  (___match242285242286_
                                                   _e234536234701_
                                                   _hd234535234704_
                                                   _tl234534234706_))))
                                          (___match242285242286_
                                           _e234536234701_
                                           _hd234535234704_
                                           _tl234534234706_))
                                      (___match242285242286_
                                       _e234536234701_
                                       _hd234535234704_
                                       _tl234534234706_))
                                  (___match242285242286_
                                   _e234536234701_
                                   _hd234535234704_
                                   _tl234534234706_))))
                          (___match242285242286_
                           _e234536234701_
                           _hd234535234704_
                           _tl234534234706_))))
                  (___match242285242286_
                   _e234536234701_
                   _hd234535234704_
                   _tl234534234706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242285242286_
                                                   _e234536234701_
                                                   _hd234535234704_
                                                   _tl234534234706_))
                                              (___match242285242286_
                                               _e234536234701_
                                               _hd234535234704_
                                               _tl234534234706_))
                                          (___match242285242286_
                                           _e234536234701_
                                           _hd234535234704_
                                           _tl234534234706_))))
                                  (___match242285242286_
                                   _e234536234701_
                                   _hd234535234704_
                                   _tl234534234706_))
                              (___match242285242286_
                               _e234536234701_
                               _hd234535234704_
                               _tl234534234706_))
                          (___match242285242286_
                           _e234536234701_
                           _hd234535234704_
                           _tl234534234706_))))
                  (___match242285242286_
                   _e234536234701_
                   _hd234535234704_
                   _tl234534234706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242285242286_
                                                   _e234536234701_
                                                   _hd234535234704_
                                                   _tl234534234706_))
                                              (___match242285242286_
                                               _e234536234701_
                                               _hd234535234704_
                                               _tl234534234706_))))
                                      (___match242285242286_
                                       _e234536234701_
                                       _hd234535234704_
                                       _tl234534234706_))
                                  (___match242285242286_
                                   _e234536234701_
                                   _hd234535234704_
                                   _tl234534234706_))
                              (___match242285242286_
                               _e234536234701_
                               _hd234535234704_
                               _tl234534234706_))))
                      (___match242285242286_
                       _e234536234701_
                       _hd234535234704_
                       _tl234534234706_))))
              (___match242285242286_
               _e234536234701_
               _hd234535234704_
               _tl234534234706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242285242286_
                                                   _e234536234701_
                                                   _hd234535234704_
                                                   _tl234534234706_))))
                                          (___match242285242286_
                                           _e234536234701_
                                           _hd234535234704_
                                           _tl234534234706_))
                                      (___match242285242286_
                                       _e234536234701_
                                       _hd234535234704_
                                       _tl234534234706_))
                                  (___match242285242286_
                                   _e234536234701_
                                   _hd234535234704_
                                   _tl234534234706_))))
                          (___match242285242286_
                           _e234536234701_
                           _hd234535234704_
                           _tl234534234706_))))
                  (___match242285242286_
                   _e234536234701_
                   _hd234535234704_
                   _tl234534234706_))
              (___match242285242286_
               _e234536234701_
               _hd234535234704_
               _tl234534234706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242285242286_
                                                   _e234536234701_
                                                   _hd234535234704_
                                                   _tl234534234706_))))
                                          (___match242285242286_
                                           _e234536234701_
                                           _hd234535234704_
                                           _tl234534234706_))))
                                  (___match242285242286_
                                   _e234536234701_
                                   _hd234535234704_
                                   _tl234534234706_))))
                          (___match242285242286_
                           _e234536234701_
                           _hd234535234704_
                           _tl234534234706_))))
                   (___match242139242140_
                    (lambda (_e234469235092_
                             _hd234468235095_
                             _tl234467235097_
                             _e234472235100_
                             _hd234471235103_
                             _tl234470235105_
                             _e234475235108_
                             _hd234474235111_
                             _tl234473235113_
                             _e234478235116_
                             _hd234477235119_
                             _tl234476235121_
                             _e234481235124_
                             _hd234480235127_
                             _tl234479235129_
                             _e234484235132_
                             _hd234483235135_
                             _tl234482235137_
                             _e234487235140_
                             _hd234486235143_
                             _tl234485235145_
                             _e234490235148_
                             _hd234489235151_
                             _tl234488235153_
                             _e234493235156_
                             _hd234492235159_
                             _tl234491235161_
                             _e234496235164_
                             _hd234495235167_
                             _tl234494235169_
                             _e234499235172_
                             _hd234498235175_
                             _tl234497235177_
                             _e234502235180_
                             _hd234501235183_
                             _tl234500235185_
                             _e234505235188_
                             _hd234504235191_
                             _tl234503235193_
                             _e234508235196_
                             _hd234507235199_
                             _tl234506235201_
                             _e234511235204_
                             _hd234510235207_
                             _tl234509235209_
                             _e234514235212_
                             _hd234513235215_
                             _tl234512235217_
                             _e234517235220_
                             _hd234516235223_
                             _tl234515235225_
                             _e234520235228_
                             _hd234519235231_
                             _tl234518235233_
                             _e234523235236_
                             _hd234522235239_
                             _tl234521235241_)
                      (let ((_L235244_ _hd234522235239_)
                            (_L235245_ _hd234513235215_)
                            (_L235246_ _hd234504235191_)
                            (_L235247_ _hd234495235167_)
                            (_L235248_ _hd234486235143_)
                            (_L235249_ _hd234471235103_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L235249_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L235248_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L235247_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L235249_ _L235244_)))
                            (___kont241970241971_
                             _L235244_
                             _L235245_
                             _L235246_
                             _L235247_
                             _L235248_
                             _L235249_)
                            (___match242151242152_
                             _e234469235092_
                             _hd234468235095_
                             _tl234467235097_
                             _e234472235100_
                             _hd234471235103_
                             _tl234470235105_)))))
                   (___match241993241994_
                    (lambda (_e234469235092_ _hd234468235095_ _tl234467235097_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234467235097_))
                          (let ((_e234472235100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234467235097_))))
                            (let ((_tl234470235105_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234472235100_)))
                                  (_hd234471235103_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234472235100_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234470235105_))
                                  (let ((_e234475235108_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234470235105_))))
                                    (let ((_tl234473235113_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234475235108_)))
                                          (_hd234474235111_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234475235108_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234474235111_))
                                          (let ((_e234478235116_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234474235111_))))
                                            (let ((_tl234476235121_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234478235116_)))
                                                  (_hd234477235119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234478235116_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd234477235119_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd234477235119_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl234476235121_))
                                                          (let ((_e234481235124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl234476235121_))))
                    (let ((_tl234479235129_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234481235124_)))
                          (_hd234480235127_
                           (let ()
                             (declare (not safe))
                             (##car _e234481235124_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234480235127_))
                          (let ((_e234484235132_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234480235127_))))
                            (let ((_tl234482235137_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234484235132_)))
                                  (_hd234483235135_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234484235132_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd234483235135_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd234483235135_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234482235137_))
                                          (let ((_e234487235140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234482235137_))))
                                            (let ((_tl234485235145_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234487235140_)))
                                                  (_hd234486235143_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234487235140_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234485235145_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234479235129_))
                                                      (let ((_e234490235148_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234479235129_))))
                (let ((_tl234488235153_
                       (let () (declare (not safe)) (##cdr _e234490235148_)))
                      (_hd234489235151_
                       (let () (declare (not safe)) (##car _e234490235148_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234489235151_))
                      (let ((_e234493235156_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234489235151_))))
                        (let ((_tl234491235161_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234493235156_)))
                              (_hd234492235159_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234493235156_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd234492235159_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd234492235159_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234491235161_))
                                      (let ((_e234496235164_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234491235161_))))
                                        (let ((_tl234494235169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234496235164_)))
                                              (_hd234495235167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234496235164_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234494235169_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234488235153_))
                                                  (let ((_e234499235172_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234488235153_))))
                                                    (let ((_tl234497235177_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234499235172_)))
                                                          (_hd234498235175_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234499235172_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd234498235175_))
                                                          (let ((_e234502235180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd234498235175_))))
                    (let ((_tl234500235185_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234502235180_)))
                          (_hd234501235183_
                           (let ()
                             (declare (not safe))
                             (##car _e234502235180_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd234501235183_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd234501235183_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234500235185_))
                                  (let ((_e234505235188_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234500235185_))))
                                    (let ((_tl234503235193_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234505235188_)))
                                          (_hd234504235191_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234505235188_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234503235193_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234497235177_))
                                              (let ((_e234508235196_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234497235177_))))
                                                (let ((_tl234506235201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234508235196_)))
                                                      (_hd234507235199_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234508235196_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234507235199_))
                                                      (let ((_e234511235204_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd234507235199_))))
                (let ((_tl234509235209_
                       (let () (declare (not safe)) (##cdr _e234511235204_)))
                      (_hd234510235207_
                       (let () (declare (not safe)) (##car _e234511235204_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd234510235207_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd234510235207_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234509235209_))
                              (let ((_e234514235212_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234509235209_))))
                                (let ((_tl234512235217_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234514235212_)))
                                      (_hd234513235215_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234514235212_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234512235217_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234506235201_))
                                          (let ((_e234517235220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234506235201_))))
                                            (let ((_tl234515235225_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234517235220_)))
                                                  (_hd234516235223_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234517235220_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd234516235223_))
                                                  (let ((_e234520235228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd234516235223_))))
                                                    (let ((_tl234518235233_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234520235228_)))
                                                          (_hd234519235231_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234520235228_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd234519235231_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd234519235231_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234518235233_))
                          (let ((_e234523235236_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234518235233_))))
                            (let ((_tl234521235241_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234523235236_)))
                                  (_hd234522235239_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234523235236_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234521235241_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234515235225_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234473235113_))
                                          (___match242139242140_
                                           _e234469235092_
                                           _hd234468235095_
                                           _tl234467235097_
                                           _e234472235100_
                                           _hd234471235103_
                                           _tl234470235105_
                                           _e234475235108_
                                           _hd234474235111_
                                           _tl234473235113_
                                           _e234478235116_
                                           _hd234477235119_
                                           _tl234476235121_
                                           _e234481235124_
                                           _hd234480235127_
                                           _tl234479235129_
                                           _e234484235132_
                                           _hd234483235135_
                                           _tl234482235137_
                                           _e234487235140_
                                           _hd234486235143_
                                           _tl234485235145_
                                           _e234490235148_
                                           _hd234489235151_
                                           _tl234488235153_
                                           _e234493235156_
                                           _hd234492235159_
                                           _tl234491235161_
                                           _e234496235164_
                                           _hd234495235167_
                                           _tl234494235169_
                                           _e234499235172_
                                           _hd234498235175_
                                           _tl234497235177_
                                           _e234502235180_
                                           _hd234501235183_
                                           _tl234500235185_
                                           _e234505235188_
                                           _hd234504235191_
                                           _tl234503235193_
                                           _e234508235196_
                                           _hd234507235199_
                                           _tl234506235201_
                                           _e234511235204_
                                           _hd234510235207_
                                           _tl234509235209_
                                           _e234514235212_
                                           _hd234513235215_
                                           _tl234512235217_
                                           _e234517235220_
                                           _hd234516235223_
                                           _tl234515235225_
                                           _e234520235228_
                                           _hd234519235231_
                                           _tl234518235233_
                                           _e234523235236_
                                           _hd234522235239_
                                           _tl234521235241_)
                                          (___match242151242152_
                                           _e234469235092_
                                           _hd234468235095_
                                           _tl234467235097_
                                           _e234472235100_
                                           _hd234471235103_
                                           _tl234470235105_))
                                      (___match242151242152_
                                       _e234469235092_
                                       _hd234468235095_
                                       _tl234467235097_
                                       _e234472235100_
                                       _hd234471235103_
                                       _tl234470235105_))
                                  (___match242151242152_
                                   _e234469235092_
                                   _hd234468235095_
                                   _tl234467235097_
                                   _e234472235100_
                                   _hd234471235103_
                                   _tl234470235105_))))
                          (___match242151242152_
                           _e234469235092_
                           _hd234468235095_
                           _tl234467235097_
                           _e234472235100_
                           _hd234471235103_
                           _tl234470235105_))
                      (___match242151242152_
                       _e234469235092_
                       _hd234468235095_
                       _tl234467235097_
                       _e234472235100_
                       _hd234471235103_
                       _tl234470235105_))
                  (___match242151242152_
                   _e234469235092_
                   _hd234468235095_
                   _tl234467235097_
                   _e234472235100_
                   _hd234471235103_
                   _tl234470235105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242151242152_
                                                   _e234469235092_
                                                   _hd234468235095_
                                                   _tl234467235097_
                                                   _e234472235100_
                                                   _hd234471235103_
                                                   _tl234470235105_))))
                                          (___match242151242152_
                                           _e234469235092_
                                           _hd234468235095_
                                           _tl234467235097_
                                           _e234472235100_
                                           _hd234471235103_
                                           _tl234470235105_))
                                      (___match242151242152_
                                       _e234469235092_
                                       _hd234468235095_
                                       _tl234467235097_
                                       _e234472235100_
                                       _hd234471235103_
                                       _tl234470235105_))))
                              (___match242151242152_
                               _e234469235092_
                               _hd234468235095_
                               _tl234467235097_
                               _e234472235100_
                               _hd234471235103_
                               _tl234470235105_))
                          (___match242151242152_
                           _e234469235092_
                           _hd234468235095_
                           _tl234467235097_
                           _e234472235100_
                           _hd234471235103_
                           _tl234470235105_))
                      (___match242151242152_
                       _e234469235092_
                       _hd234468235095_
                       _tl234467235097_
                       _e234472235100_
                       _hd234471235103_
                       _tl234470235105_))))
              (___match242151242152_
               _e234469235092_
               _hd234468235095_
               _tl234467235097_
               _e234472235100_
               _hd234471235103_
               _tl234470235105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match242151242152_
                                               _e234469235092_
                                               _hd234468235095_
                                               _tl234467235097_
                                               _e234472235100_
                                               _hd234471235103_
                                               _tl234470235105_))
                                          (___match242151242152_
                                           _e234469235092_
                                           _hd234468235095_
                                           _tl234467235097_
                                           _e234472235100_
                                           _hd234471235103_
                                           _tl234470235105_))))
                                  (___match242151242152_
                                   _e234469235092_
                                   _hd234468235095_
                                   _tl234467235097_
                                   _e234472235100_
                                   _hd234471235103_
                                   _tl234470235105_))
                              (___match242151242152_
                               _e234469235092_
                               _hd234468235095_
                               _tl234467235097_
                               _e234472235100_
                               _hd234471235103_
                               _tl234470235105_))
                          (___match242151242152_
                           _e234469235092_
                           _hd234468235095_
                           _tl234467235097_
                           _e234472235100_
                           _hd234471235103_
                           _tl234470235105_))))
                  (___match242151242152_
                   _e234469235092_
                   _hd234468235095_
                   _tl234467235097_
                   _e234472235100_
                   _hd234471235103_
                   _tl234470235105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242151242152_
                                                   _e234469235092_
                                                   _hd234468235095_
                                                   _tl234467235097_
                                                   _e234472235100_
                                                   _hd234471235103_
                                                   _tl234470235105_))
                                              (___match242151242152_
                                               _e234469235092_
                                               _hd234468235095_
                                               _tl234467235097_
                                               _e234472235100_
                                               _hd234471235103_
                                               _tl234470235105_))))
                                      (___match242151242152_
                                       _e234469235092_
                                       _hd234468235095_
                                       _tl234467235097_
                                       _e234472235100_
                                       _hd234471235103_
                                       _tl234470235105_))
                                  (___match242151242152_
                                   _e234469235092_
                                   _hd234468235095_
                                   _tl234467235097_
                                   _e234472235100_
                                   _hd234471235103_
                                   _tl234470235105_))
                              (___match242151242152_
                               _e234469235092_
                               _hd234468235095_
                               _tl234467235097_
                               _e234472235100_
                               _hd234471235103_
                               _tl234470235105_))))
                      (___match242151242152_
                       _e234469235092_
                       _hd234468235095_
                       _tl234467235097_
                       _e234472235100_
                       _hd234471235103_
                       _tl234470235105_))))
              (___match242151242152_
               _e234469235092_
               _hd234468235095_
               _tl234467235097_
               _e234472235100_
               _hd234471235103_
               _tl234470235105_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242151242152_
                                                   _e234469235092_
                                                   _hd234468235095_
                                                   _tl234467235097_
                                                   _e234472235100_
                                                   _hd234471235103_
                                                   _tl234470235105_))))
                                          (___match242151242152_
                                           _e234469235092_
                                           _hd234468235095_
                                           _tl234467235097_
                                           _e234472235100_
                                           _hd234471235103_
                                           _tl234470235105_))
                                      (___match242151242152_
                                       _e234469235092_
                                       _hd234468235095_
                                       _tl234467235097_
                                       _e234472235100_
                                       _hd234471235103_
                                       _tl234470235105_))
                                  (___match242151242152_
                                   _e234469235092_
                                   _hd234468235095_
                                   _tl234467235097_
                                   _e234472235100_
                                   _hd234471235103_
                                   _tl234470235105_))))
                          (___match242151242152_
                           _e234469235092_
                           _hd234468235095_
                           _tl234467235097_
                           _e234472235100_
                           _hd234471235103_
                           _tl234470235105_))))
                  (___match242151242152_
                   _e234469235092_
                   _hd234468235095_
                   _tl234467235097_
                   _e234472235100_
                   _hd234471235103_
                   _tl234470235105_))
              (___match242151242152_
               _e234469235092_
               _hd234468235095_
               _tl234467235097_
               _e234472235100_
               _hd234471235103_
               _tl234470235105_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242151242152_
                                                   _e234469235092_
                                                   _hd234468235095_
                                                   _tl234467235097_
                                                   _e234472235100_
                                                   _hd234471235103_
                                                   _tl234470235105_))))
                                          (___match242151242152_
                                           _e234469235092_
                                           _hd234468235095_
                                           _tl234467235097_
                                           _e234472235100_
                                           _hd234471235103_
                                           _tl234470235105_))))
                                  (___match242151242152_
                                   _e234469235092_
                                   _hd234468235095_
                                   _tl234467235097_
                                   _e234472235100_
                                   _hd234471235103_
                                   _tl234470235105_))))
                          (___match242285242286_
                           _e234469235092_
                           _hd234468235095_
                           _tl234467235097_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241966241967_))
                  (let ((_e234460235309_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241966241967_))))
                    (let ((_tl234458235314_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234460235309_)))
                          (_hd234459235312_
                           (let ()
                             (declare (not safe))
                             (##car _e234460235309_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L235317_ _tl234458235314_))
                            (___kont241968241969_ _L235317_))
                          (___match241993241994_
                           _e234460235309_
                           _hd234459235312_
                           _tl234458235314_))))
                  (let () (declare (not safe)) (_g234455234651_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx234404_)
        (letrec ((_clause-e234406_
                  (lambda (_form234447_)
                    (let ((__obj243639
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
                       __obj243639
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form234447_))
                       (if (let ((__tmp243706
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp243706))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form234447_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form234447_))
                               '#f)
                           '#f))
                      __obj243639))))
          (let* ((_g234408234418_
                  (lambda (_g234409234415_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g234409234415_))))
                 (_g234407234444_
                  (lambda (_g234409234421_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g234409234421_))
                        (let ((_e234413234423_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g234409234421_))))
                          (let ((_hd234412234426_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234413234423_)))
                                (_tl234411234428_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234413234423_))))
                            ((lambda (_L234431_)
                               (let ((_clauses234442_
                                      (map _clause-e234406_ _L234431_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses234442_)))
                             _tl234411234428_)))
                        (let ()
                          (declare (not safe))
                          (_g234408234418_ _g234409234421_))))))
            (declare (not safe))
            (_g234407234444_ _stx234404_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx234336_)
        (let* ((_g234338234355_
                (lambda (_g234339234352_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234339234352_))))
               (_g234337234401_
                (lambda (_g234339234358_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234339234358_))
                      (let ((_e234344234360_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234339234358_))))
                        (let ((_hd234343234363_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234344234360_)))
                              (_tl234342234365_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234344234360_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234342234365_))
                              (let ((_e234347234368_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234342234365_))))
                                (let ((_hd234346234371_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234347234368_)))
                                      (_tl234345234373_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234347234368_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234345234373_))
                                      (let ((_e234350234376_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234345234373_))))
                                        (let ((_hd234349234379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234350234376_)))
                                              (_tl234348234381_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234350234376_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234348234381_))
                                              ((lambda (_L234384_ _L234385_)
                                                 (let ((__tmp243707
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L234384_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp243707
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd234349234379_
                                               _hd234346234371_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234338234355_
                                                 _g234339234358_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234338234355_ _g234339234358_)))))
                              (let ()
                                (declare (not safe))
                                (_g234338234355_ _g234339234358_)))))
                      (let ()
                        (declare (not safe))
                        (_g234338234355_ _g234339234358_))))))
          (declare (not safe))
          (_g234337234401_ _stx234336_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx234241_)
        (let* ((___stx242294242295_ _stx234241_)
               (_g234244234264_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242294242295_)))))
          (let ((___kont242296242297_
                 (lambda (_L234308_ _L234309_)
                   (let ((_type-e234326234328_
                          (let ((__tmp243708
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L234309_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp243708
                             '#f))))
                     (if _type-e234326234328_
                         (let ((_type-e234331_ _type-e234326234328_))
                           (_type-e234331_ _stx234241_ _L234308_))
                         '#f))))
                (___kont242298242299_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242294242295_))
                (let ((_e234250234276_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242294242295_))))
                  (let ((_tl234248234281_
                         (let () (declare (not safe)) (##cdr _e234250234276_)))
                        (_hd234249234279_
                         (let ()
                           (declare (not safe))
                           (##car _e234250234276_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl234248234281_))
                        (let ((_e234253234284_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl234248234281_))))
                          (let ((_tl234251234289_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234253234284_)))
                                (_hd234252234287_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234253234284_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd234252234287_))
                                (let ((_e234256234292_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd234252234287_))))
                                  (let ((_tl234254234297_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234256234292_)))
                                        (_hd234255234295_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234256234292_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd234255234295_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd234255234295_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl234254234297_))
                                                (let ((_e234259234300_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl234254234297_))))
                                                  (let ((_tl234257234305_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e234259234300_)))
                                                        (_hd234258234303_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e234259234300_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl234257234305_))
                                                        (___kont242296242297_
                                                         _tl234251234289_
                                                         _hd234258234303_)
                                                        (___kont242298242299_))))
                                                (___kont242298242299_))
                                            (___kont242298242299_))
                                        (___kont242298242299_))))
                                (___kont242298242299_))))
                        (___kont242298242299_))))
                (___kont242298242299_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx234190_)
        (let* ((_g234192234205_
                (lambda (_g234193234202_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234193234202_))))
               (_g234191234238_
                (lambda (_g234193234208_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234193234208_))
                      (let ((_e234197234210_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234193234208_))))
                        (let ((_hd234196234213_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234197234210_)))
                              (_tl234195234215_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234197234210_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234195234215_))
                              (let ((_e234200234218_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234195234215_))))
                                (let ((_hd234199234221_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234200234218_)))
                                      (_tl234198234223_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234200234218_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234198234223_))
                                      ((lambda (_L234226_)
                                         (let ((__tmp243709
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L234226_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp243709)))
                                       _hd234199234221_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234192234205_ _g234193234208_)))))
                              (let ()
                                (declare (not safe))
                                (_g234192234205_ _g234193234208_)))))
                      (let ()
                        (declare (not safe))
                        (_g234192234205_ _g234193234208_))))))
          (declare (not safe))
          (_g234191234238_ _stx234190_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form233424_)
        (let* ((___stx242332242333_ _form233424_)
               (_g233429233586_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242332242333_)))))
          (let ((___kont242334242335_
                 (lambda (_L234110_ _L234111_ _L234112_) '#t))
                (___kont242340242341_
                 (lambda (_L233898_
                          _L233899_
                          _L233900_
                          _L233901_
                          _L233902_
                          _L233903_)
                   '#t))
                (___kont242346242347_
                 (lambda (_L233694_ _L233695_ _L233696_ _L233697_) '#t))
                (___kont242348242349_ (lambda () '#f)))
            (let* ((___match242473242474_
                    (lambda (_e233548233598_
                             _hd233547233601_
                             _tl233546233603_
                             _e233551233606_
                             _hd233550233609_
                             _tl233549233611_
                             _e233554233614_
                             _hd233553233617_
                             _tl233552233619_
                             _e233557233622_
                             _hd233556233625_
                             _tl233555233627_
                             _e233560233630_
                             _hd233559233633_
                             _tl233558233635_
                             _e233563233638_
                             _hd233562233641_
                             _tl233561233643_
                             _e233566233646_
                             _hd233565233649_
                             _tl233564233651_
                             _e233569233654_
                             _hd233568233657_
                             _tl233567233659_
                             _e233572233662_
                             _hd233571233665_
                             _tl233570233667_
                             _e233575233670_
                             _hd233574233673_
                             _tl233573233675_
                             _e233578233678_
                             _hd233577233681_
                             _tl233576233683_
                             _e233581233686_
                             _hd233580233689_
                             _tl233579233691_)
                      (let ((_L233694_ _hd233580233689_)
                            (_L233695_ _hd233571233665_)
                            (_L233696_ _hd233562233641_)
                            (_L233697_ _hd233547233601_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L233697_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L233696_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L233697_ _L233694_))
                                 (let ((__tmp243710
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L233695_
                                           _L233697_))))
                                   (declare (not safe))
                                   (not __tmp243710)))
                            (___kont242346242347_
                             _L233694_
                             _L233695_
                             _L233696_
                             _L233697_)
                            (___kont242348242349_)))))
                   (___match242445242446_
                    (lambda (_e233548233598_
                             _hd233547233601_
                             _tl233546233603_
                             _e233551233606_
                             _hd233550233609_
                             _tl233549233611_
                             _e233554233614_
                             _hd233553233617_
                             _tl233552233619_
                             _e233557233622_
                             _hd233556233625_
                             _tl233555233627_
                             _e233560233630_
                             _hd233559233633_
                             _tl233558233635_
                             _e233563233638_
                             _hd233562233641_
                             _tl233561233643_
                             _e233566233646_
                             _hd233565233649_
                             _tl233564233651_
                             _e233569233654_
                             _hd233568233657_
                             _tl233567233659_
                             _e233572233662_
                             _hd233571233665_
                             _tl233570233667_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233564233651_))
                          (let ((_e233575233670_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233564233651_))))
                            (let ((_tl233573233675_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233575233670_)))
                                  (_hd233574233673_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233575233670_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233574233673_))
                                  (let ((_e233578233678_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233574233673_))))
                                    (let ((_tl233576233683_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233578233678_)))
                                          (_hd233577233681_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233578233678_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233577233681_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233577233681_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233576233683_))
                                                  (let ((_e233581233686_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233576233683_))))
                                                    (let ((_tl233579233691_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233581233686_)))
                                                          (_hd233580233689_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233581233686_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233579233691_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl233573233675_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233549233611_))
                          (___match242473242474_
                           _e233548233598_
                           _hd233547233601_
                           _tl233546233603_
                           _e233551233606_
                           _hd233550233609_
                           _tl233549233611_
                           _e233554233614_
                           _hd233553233617_
                           _tl233552233619_
                           _e233557233622_
                           _hd233556233625_
                           _tl233555233627_
                           _e233560233630_
                           _hd233559233633_
                           _tl233558233635_
                           _e233563233638_
                           _hd233562233641_
                           _tl233561233643_
                           _e233566233646_
                           _hd233565233649_
                           _tl233564233651_
                           _e233569233654_
                           _hd233568233657_
                           _tl233567233659_
                           _e233572233662_
                           _hd233571233665_
                           _tl233570233667_
                           _e233575233670_
                           _hd233574233673_
                           _tl233573233675_
                           _e233578233678_
                           _hd233577233681_
                           _tl233576233683_
                           _e233581233686_
                           _hd233580233689_
                           _tl233579233691_)
                          (___kont242348242349_))
                      (___kont242348242349_))
                  (___kont242348242349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242348242349_))
                                              (___kont242348242349_))
                                          (___kont242348242349_))))
                                  (___kont242348242349_))))
                          (___kont242348242349_))))
                   (___match242375242376_
                    (lambda (_e233484233738_
                             _hd233483233741_
                             _tl233482233743_
                             ___splice242342242343_
                             _target233485233746_
                             _tl233487233748_)
                      (letrec ((_loop233488233751_
                                (lambda (_hd233486233754_ _arg233492233756_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233486233754_))
                                      (let ((_e233489233759_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233486233754_))))
                                        (let ((_lp-tl233491233764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233489233759_)))
                                              (_lp-hd233490233762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233489233759_))))
                                          (let ((__tmp243725
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233490233762_
                                                         _arg233492233756_))))
                                            (declare (not safe))
                                            (_loop233488233751_
                                             _lp-tl233491233764_
                                             __tmp243725))))
                                      (let ((_arg233493233767_
                                             (reverse _arg233492233756_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233482233743_))
                                            (let ((_e233496233770_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233482233743_))))
                                              (let ((_tl233494233775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233496233770_)))
                                                    (_hd233495233773_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233496233770_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233495233773_))
                                                    (let ((_e233499233778_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233495233773_))))
                                                      (let ((_tl233497233783_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233499233778_)))
                    (_hd233498233781_
                     (let () (declare (not safe)) (##car _e233499233778_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233498233781_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233498233781_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233497233783_))
                            (let ((_e233502233786_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233497233783_))))
                              (let ((_tl233500233791_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233502233786_)))
                                    (_hd233501233789_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233502233786_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233501233789_))
                                    (let ((_e233505233794_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233501233789_))))
                                      (let ((_tl233503233799_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233505233794_)))
                                            (_hd233504233797_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233505233794_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233504233797_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233504233797_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233503233799_))
                                                    (let ((_e233508233802_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233503233799_))))
                                                      (let ((_tl233506233807_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233508233802_)))
                    (_hd233507233805_
                     (let () (declare (not safe)) (##car _e233508233802_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233506233807_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233500233791_))
                        (let ((_e233511233810_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233500233791_))))
                          (let ((_tl233509233815_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233511233810_)))
                                (_hd233510233813_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233511233810_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233510233813_))
                                (let ((_e233514233818_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233510233813_))))
                                  (let ((_tl233512233823_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233514233818_)))
                                        (_hd233513233821_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233514233818_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233513233821_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233513233821_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233512233823_))
                                                (let ((_e233517233826_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233512233823_))))
                                                  (let ((_tl233515233831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233517233826_)))
                                                        (_hd233516233829_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233517233826_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233515233831_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl233509233815_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl233509233815_))
                              '1)
                        (let ((___splice242344242345_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233509233815_
                                  '1))))
                          (let ((_tl233520233836_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242344242345_ '1)))
                                (_target233518233834_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242344242345_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233520233836_))
                                (let ((_e233529233839_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233520233836_))))
                                  (let ((_tl233527233844_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233529233839_)))
                                        (_hd233528233842_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233529233839_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd233528233842_))
                                        (let ((_e233532233847_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd233528233842_))))
                                          (let ((_tl233530233852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e233532233847_)))
                                                (_hd233531233850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e233532233847_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd233531233850_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd233531233850_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl233530233852_))
                                                        (let ((_e233535233855_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl233530233852_))))
                  (let ((_tl233533233860_
                         (let () (declare (not safe)) (##cdr _e233535233855_)))
                        (_hd233534233858_
                         (let ()
                           (declare (not safe))
                           (##car _e233535233855_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl233533233860_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl233527233844_))
                            (letrec ((_loop233521233863_
                                      (lambda (_hd233519233866_
                                               _xarg233525233868_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd233519233866_))
                                            (let ((_e233522233871_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd233519233866_))))
                                              (let ((_lp-tl233524233876_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233522233871_)))
                                                    (_lp-hd233523233874_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233522233871_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd233523233874_))
                                                    (let ((_e233538233879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd233523233874_))))
                                                      (let ((_tl233536233884_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233538233879_)))
                    (_hd233537233882_
                     (let () (declare (not safe)) (##car _e233538233879_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233537233882_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd233537233882_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233536233884_))
                            (let ((_e233541233887_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233536233884_))))
                              (let ((_tl233539233892_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233541233887_)))
                                    (_hd233540233890_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233541233887_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl233539233892_))
                                    (let ((__tmp243724
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd233540233890_
                                                   _xarg233525233868_))))
                                      (declare (not safe))
                                      (_loop233521233863_
                                       _lp-tl233524233876_
                                       __tmp243724))
                                    (___match242445242446_
                                     _e233484233738_
                                     _hd233483233741_
                                     _tl233482233743_
                                     _e233496233770_
                                     _hd233495233773_
                                     _tl233494233775_
                                     _e233499233778_
                                     _hd233498233781_
                                     _tl233497233783_
                                     _e233502233786_
                                     _hd233501233789_
                                     _tl233500233791_
                                     _e233505233794_
                                     _hd233504233797_
                                     _tl233503233799_
                                     _e233508233802_
                                     _hd233507233805_
                                     _tl233506233807_
                                     _e233511233810_
                                     _hd233510233813_
                                     _tl233509233815_
                                     _e233514233818_
                                     _hd233513233821_
                                     _tl233512233823_
                                     _e233517233826_
                                     _hd233516233829_
                                     _tl233515233831_))))
                            (___match242445242446_
                             _e233484233738_
                             _hd233483233741_
                             _tl233482233743_
                             _e233496233770_
                             _hd233495233773_
                             _tl233494233775_
                             _e233499233778_
                             _hd233498233781_
                             _tl233497233783_
                             _e233502233786_
                             _hd233501233789_
                             _tl233500233791_
                             _e233505233794_
                             _hd233504233797_
                             _tl233503233799_
                             _e233508233802_
                             _hd233507233805_
                             _tl233506233807_
                             _e233511233810_
                             _hd233510233813_
                             _tl233509233815_
                             _e233514233818_
                             _hd233513233821_
                             _tl233512233823_
                             _e233517233826_
                             _hd233516233829_
                             _tl233515233831_))
                        (___match242445242446_
                         _e233484233738_
                         _hd233483233741_
                         _tl233482233743_
                         _e233496233770_
                         _hd233495233773_
                         _tl233494233775_
                         _e233499233778_
                         _hd233498233781_
                         _tl233497233783_
                         _e233502233786_
                         _hd233501233789_
                         _tl233500233791_
                         _e233505233794_
                         _hd233504233797_
                         _tl233503233799_
                         _e233508233802_
                         _hd233507233805_
                         _tl233506233807_
                         _e233511233810_
                         _hd233510233813_
                         _tl233509233815_
                         _e233514233818_
                         _hd233513233821_
                         _tl233512233823_
                         _e233517233826_
                         _hd233516233829_
                         _tl233515233831_))
                    (___match242445242446_
                     _e233484233738_
                     _hd233483233741_
                     _tl233482233743_
                     _e233496233770_
                     _hd233495233773_
                     _tl233494233775_
                     _e233499233778_
                     _hd233498233781_
                     _tl233497233783_
                     _e233502233786_
                     _hd233501233789_
                     _tl233500233791_
                     _e233505233794_
                     _hd233504233797_
                     _tl233503233799_
                     _e233508233802_
                     _hd233507233805_
                     _tl233506233807_
                     _e233511233810_
                     _hd233510233813_
                     _tl233509233815_
                     _e233514233818_
                     _hd233513233821_
                     _tl233512233823_
                     _e233517233826_
                     _hd233516233829_
                     _tl233515233831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242445242446_
                                                     _e233484233738_
                                                     _hd233483233741_
                                                     _tl233482233743_
                                                     _e233496233770_
                                                     _hd233495233773_
                                                     _tl233494233775_
                                                     _e233499233778_
                                                     _hd233498233781_
                                                     _tl233497233783_
                                                     _e233502233786_
                                                     _hd233501233789_
                                                     _tl233500233791_
                                                     _e233505233794_
                                                     _hd233504233797_
                                                     _tl233503233799_
                                                     _e233508233802_
                                                     _hd233507233805_
                                                     _tl233506233807_
                                                     _e233511233810_
                                                     _hd233510233813_
                                                     _tl233509233815_
                                                     _e233514233818_
                                                     _hd233513233821_
                                                     _tl233512233823_
                                                     _e233517233826_
                                                     _hd233516233829_
                                                     _tl233515233831_))))
                                            (let ((_xarg233526233895_
                                                   (reverse _xarg233525233868_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233494233775_))
                                                  (let ((_L233898_
                                                         _hd233534233858_)
                                                        (_L233899_
                                                         _xarg233526233895_)
                                                        (_L233900_
                                                         _hd233516233829_)
                                                        (_L233901_
                                                         _hd233507233805_)
                                                        (_L233902_
                                                         _tl233487233748_)
                                                        (_L233903_
                                                         _arg233493233767_))
                                                    (if (and (let ((__tmp243722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp243723
                                   (lambda (_g233946233949_ _g233947233951_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233946233949_
                                             _g233947233951_)))))
                              (declare (not safe))
                              (foldr1 __tmp243723 '() _L233903_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp243722))
                     (let () (declare (not safe)) (gx#identifier? _L233902_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L233901_ 'apply))
                     (fx= (length (let ((__tmp243720
                                         (lambda (_g233953233956_
                                                  _g233954233958_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g233953233956_
                                                   _g233954233958_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp243720 '() _L233903_)))
                          (length (let ((__tmp243721
                                         (lambda (_g233960233963_
                                                  _g233961233965_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g233960233963_
                                                   _g233961233965_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp243721 '() _L233899_))))
                     (let ((__tmp243718
                            (let ((__tmp243719
                                   (lambda (_g233967233970_ _g233968233972_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233967233970_
                                             _g233968233972_)))))
                              (declare (not safe))
                              (foldr1 __tmp243719 '() _L233903_)))
                           (__tmp243716
                            (let ((__tmp243717
                                   (lambda (_g233974233977_ _g233975233979_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233974233977_
                                             _g233975233979_)))))
                              (declare (not safe))
                              (foldr1 __tmp243717 '() _L233899_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp243718 __tmp243716))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L233902_ _L233898_))
                     (let ((__tmp243711
                            (let ((__tmp243715
                                   (lambda (_g233981233983_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g233981233983_
                                        _L233900_))))
                                  (__tmp243712
                                   (let ((__tmp243714
                                          (lambda (_g233985233988_
                                                   _g233986233990_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g233985233988_
                                                    _g233986233990_))))
                                         (__tmp243713
                                          (let ()
                                            (declare (not safe))
                                            (cons _L233902_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp243714
                                             __tmp243713
                                             _L233903_))))
                              (declare (not safe))
                              (find __tmp243715 __tmp243712))))
                       (declare (not safe))
                       (not __tmp243711)))
                (___kont242340242341_
                 _L233898_
                 _L233899_
                 _L233900_
                 _L233901_
                 _L233902_
                 _L233903_)
                (___match242445242446_
                 _e233484233738_
                 _hd233483233741_
                 _tl233482233743_
                 _e233496233770_
                 _hd233495233773_
                 _tl233494233775_
                 _e233499233778_
                 _hd233498233781_
                 _tl233497233783_
                 _e233502233786_
                 _hd233501233789_
                 _tl233500233791_
                 _e233505233794_
                 _hd233504233797_
                 _tl233503233799_
                 _e233508233802_
                 _hd233507233805_
                 _tl233506233807_
                 _e233511233810_
                 _hd233510233813_
                 _tl233509233815_
                 _e233514233818_
                 _hd233513233821_
                 _tl233512233823_
                 _e233517233826_
                 _hd233516233829_
                 _tl233515233831_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match242445242446_
                                                   _e233484233738_
                                                   _hd233483233741_
                                                   _tl233482233743_
                                                   _e233496233770_
                                                   _hd233495233773_
                                                   _tl233494233775_
                                                   _e233499233778_
                                                   _hd233498233781_
                                                   _tl233497233783_
                                                   _e233502233786_
                                                   _hd233501233789_
                                                   _tl233500233791_
                                                   _e233505233794_
                                                   _hd233504233797_
                                                   _tl233503233799_
                                                   _e233508233802_
                                                   _hd233507233805_
                                                   _tl233506233807_
                                                   _e233511233810_
                                                   _hd233510233813_
                                                   _tl233509233815_
                                                   _e233514233818_
                                                   _hd233513233821_
                                                   _tl233512233823_
                                                   _e233517233826_
                                                   _hd233516233829_
                                                   _tl233515233831_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop233521233863_ _target233518233834_ '())))
                            (___match242445242446_
                             _e233484233738_
                             _hd233483233741_
                             _tl233482233743_
                             _e233496233770_
                             _hd233495233773_
                             _tl233494233775_
                             _e233499233778_
                             _hd233498233781_
                             _tl233497233783_
                             _e233502233786_
                             _hd233501233789_
                             _tl233500233791_
                             _e233505233794_
                             _hd233504233797_
                             _tl233503233799_
                             _e233508233802_
                             _hd233507233805_
                             _tl233506233807_
                             _e233511233810_
                             _hd233510233813_
                             _tl233509233815_
                             _e233514233818_
                             _hd233513233821_
                             _tl233512233823_
                             _e233517233826_
                             _hd233516233829_
                             _tl233515233831_))
                        (___match242445242446_
                         _e233484233738_
                         _hd233483233741_
                         _tl233482233743_
                         _e233496233770_
                         _hd233495233773_
                         _tl233494233775_
                         _e233499233778_
                         _hd233498233781_
                         _tl233497233783_
                         _e233502233786_
                         _hd233501233789_
                         _tl233500233791_
                         _e233505233794_
                         _hd233504233797_
                         _tl233503233799_
                         _e233508233802_
                         _hd233507233805_
                         _tl233506233807_
                         _e233511233810_
                         _hd233510233813_
                         _tl233509233815_
                         _e233514233818_
                         _hd233513233821_
                         _tl233512233823_
                         _e233517233826_
                         _hd233516233829_
                         _tl233515233831_))))
                (___match242445242446_
                 _e233484233738_
                 _hd233483233741_
                 _tl233482233743_
                 _e233496233770_
                 _hd233495233773_
                 _tl233494233775_
                 _e233499233778_
                 _hd233498233781_
                 _tl233497233783_
                 _e233502233786_
                 _hd233501233789_
                 _tl233500233791_
                 _e233505233794_
                 _hd233504233797_
                 _tl233503233799_
                 _e233508233802_
                 _hd233507233805_
                 _tl233506233807_
                 _e233511233810_
                 _hd233510233813_
                 _tl233509233815_
                 _e233514233818_
                 _hd233513233821_
                 _tl233512233823_
                 _e233517233826_
                 _hd233516233829_
                 _tl233515233831_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242445242446_
                                                     _e233484233738_
                                                     _hd233483233741_
                                                     _tl233482233743_
                                                     _e233496233770_
                                                     _hd233495233773_
                                                     _tl233494233775_
                                                     _e233499233778_
                                                     _hd233498233781_
                                                     _tl233497233783_
                                                     _e233502233786_
                                                     _hd233501233789_
                                                     _tl233500233791_
                                                     _e233505233794_
                                                     _hd233504233797_
                                                     _tl233503233799_
                                                     _e233508233802_
                                                     _hd233507233805_
                                                     _tl233506233807_
                                                     _e233511233810_
                                                     _hd233510233813_
                                                     _tl233509233815_
                                                     _e233514233818_
                                                     _hd233513233821_
                                                     _tl233512233823_
                                                     _e233517233826_
                                                     _hd233516233829_
                                                     _tl233515233831_))
                                                (___match242445242446_
                                                 _e233484233738_
                                                 _hd233483233741_
                                                 _tl233482233743_
                                                 _e233496233770_
                                                 _hd233495233773_
                                                 _tl233494233775_
                                                 _e233499233778_
                                                 _hd233498233781_
                                                 _tl233497233783_
                                                 _e233502233786_
                                                 _hd233501233789_
                                                 _tl233500233791_
                                                 _e233505233794_
                                                 _hd233504233797_
                                                 _tl233503233799_
                                                 _e233508233802_
                                                 _hd233507233805_
                                                 _tl233506233807_
                                                 _e233511233810_
                                                 _hd233510233813_
                                                 _tl233509233815_
                                                 _e233514233818_
                                                 _hd233513233821_
                                                 _tl233512233823_
                                                 _e233517233826_
                                                 _hd233516233829_
                                                 _tl233515233831_))))
                                        (___match242445242446_
                                         _e233484233738_
                                         _hd233483233741_
                                         _tl233482233743_
                                         _e233496233770_
                                         _hd233495233773_
                                         _tl233494233775_
                                         _e233499233778_
                                         _hd233498233781_
                                         _tl233497233783_
                                         _e233502233786_
                                         _hd233501233789_
                                         _tl233500233791_
                                         _e233505233794_
                                         _hd233504233797_
                                         _tl233503233799_
                                         _e233508233802_
                                         _hd233507233805_
                                         _tl233506233807_
                                         _e233511233810_
                                         _hd233510233813_
                                         _tl233509233815_
                                         _e233514233818_
                                         _hd233513233821_
                                         _tl233512233823_
                                         _e233517233826_
                                         _hd233516233829_
                                         _tl233515233831_))))
                                (___match242445242446_
                                 _e233484233738_
                                 _hd233483233741_
                                 _tl233482233743_
                                 _e233496233770_
                                 _hd233495233773_
                                 _tl233494233775_
                                 _e233499233778_
                                 _hd233498233781_
                                 _tl233497233783_
                                 _e233502233786_
                                 _hd233501233789_
                                 _tl233500233791_
                                 _e233505233794_
                                 _hd233504233797_
                                 _tl233503233799_
                                 _e233508233802_
                                 _hd233507233805_
                                 _tl233506233807_
                                 _e233511233810_
                                 _hd233510233813_
                                 _tl233509233815_
                                 _e233514233818_
                                 _hd233513233821_
                                 _tl233512233823_
                                 _e233517233826_
                                 _hd233516233829_
                                 _tl233515233831_))))
                        (___match242445242446_
                         _e233484233738_
                         _hd233483233741_
                         _tl233482233743_
                         _e233496233770_
                         _hd233495233773_
                         _tl233494233775_
                         _e233499233778_
                         _hd233498233781_
                         _tl233497233783_
                         _e233502233786_
                         _hd233501233789_
                         _tl233500233791_
                         _e233505233794_
                         _hd233504233797_
                         _tl233503233799_
                         _e233508233802_
                         _hd233507233805_
                         _tl233506233807_
                         _e233511233810_
                         _hd233510233813_
                         _tl233509233815_
                         _e233514233818_
                         _hd233513233821_
                         _tl233512233823_
                         _e233517233826_
                         _hd233516233829_
                         _tl233515233831_))
                    (___match242445242446_
                     _e233484233738_
                     _hd233483233741_
                     _tl233482233743_
                     _e233496233770_
                     _hd233495233773_
                     _tl233494233775_
                     _e233499233778_
                     _hd233498233781_
                     _tl233497233783_
                     _e233502233786_
                     _hd233501233789_
                     _tl233500233791_
                     _e233505233794_
                     _hd233504233797_
                     _tl233503233799_
                     _e233508233802_
                     _hd233507233805_
                     _tl233506233807_
                     _e233511233810_
                     _hd233510233813_
                     _tl233509233815_
                     _e233514233818_
                     _hd233513233821_
                     _tl233512233823_
                     _e233517233826_
                     _hd233516233829_
                     _tl233515233831_))
                (___kont242348242349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242348242349_))
                                            (___kont242348242349_))
                                        (___kont242348242349_))))
                                (___kont242348242349_))))
                        (___kont242348242349_))
                    (___kont242348242349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242348242349_))
                                                (___kont242348242349_))
                                            (___kont242348242349_))))
                                    (___kont242348242349_))))
                            (___kont242348242349_))
                        (___kont242348242349_))
                    (___kont242348242349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242348242349_))))
                                            (___kont242348242349_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233488233751_ _target233485233746_ '())))))
                   (___match242363242364_
                    (lambda (_e233436233998_
                             _hd233435234001_
                             _tl233434234003_
                             ___splice242336242337_
                             _target233437234006_
                             _tl233439234008_)
                      (letrec ((_loop233440234011_
                                (lambda (_hd233438234014_ _arg233444234016_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233438234014_))
                                      (let ((_e233441234019_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233438234014_))))
                                        (let ((_lp-tl233443234024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233441234019_)))
                                              (_lp-hd233442234022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233441234019_))))
                                          (let ((__tmp243739
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233442234022_
                                                         _arg233444234016_))))
                                            (declare (not safe))
                                            (_loop233440234011_
                                             _lp-tl233443234024_
                                             __tmp243739))))
                                      (let ((_arg233445234027_
                                             (reverse _arg233444234016_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl233434234003_))
                                            (let ((_e233448234030_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl233434234003_))))
                                              (let ((_tl233446234035_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e233448234030_)))
                                                    (_hd233447234033_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e233448234030_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd233447234033_))
                                                    (let ((_e233451234038_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd233447234033_))))
                                                      (let ((_tl233449234043_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233451234038_)))
                    (_hd233450234041_
                     (let () (declare (not safe)) (##car _e233451234038_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd233450234041_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd233450234041_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl233449234043_))
                            (let ((_e233454234046_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl233449234043_))))
                              (let ((_tl233452234051_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e233454234046_)))
                                    (_hd233453234049_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e233454234046_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd233453234049_))
                                    (let ((_e233457234054_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd233453234049_))))
                                      (let ((_tl233455234059_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e233457234054_)))
                                            (_hd233456234057_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e233457234054_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd233456234057_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd233456234057_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl233455234059_))
                                                    (let ((_e233460234062_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl233455234059_))))
                                                      (let ((_tl233458234067_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e233460234062_)))
                    (_hd233459234065_
                     (let () (declare (not safe)) (##car _e233460234062_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl233458234067_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl233452234051_))
                        (let ((___splice242338242339_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl233452234051_
                                  '0))))
                          (let ((_tl233463234072_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242338242339_ '1)))
                                (_target233461234070_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242338242339_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233463234072_))
                                (letrec ((_loop233464234075_
                                          (lambda (_hd233462234078_
                                                   _xarg233468234080_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd233462234078_))
                                                (let ((_e233465234083_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd233462234078_))))
                                                  (let ((_lp-tl233467234088_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233465234083_)))
                                                        (_lp-hd233466234086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233465234083_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd233466234086_))
                                                        (let ((_e233472234091_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd233466234086_))))
                  (let ((_tl233470234096_
                         (let () (declare (not safe)) (##cdr _e233472234091_)))
                        (_hd233471234094_
                         (let ()
                           (declare (not safe))
                           (##car _e233472234091_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd233471234094_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd233471234094_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl233470234096_))
                                (let ((_e233475234099_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl233470234096_))))
                                  (let ((_tl233473234104_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233475234099_)))
                                        (_hd233474234102_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233475234099_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233473234104_))
                                        (let ((__tmp243738
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd233474234102_
                                                       _xarg233468234080_))))
                                          (declare (not safe))
                                          (_loop233464234075_
                                           _lp-tl233467234088_
                                           __tmp243738))
                                        (___match242375242376_
                                         _e233436233998_
                                         _hd233435234001_
                                         _tl233434234003_
                                         ___splice242336242337_
                                         _target233437234006_
                                         _tl233439234008_))))
                                (___match242375242376_
                                 _e233436233998_
                                 _hd233435234001_
                                 _tl233434234003_
                                 ___splice242336242337_
                                 _target233437234006_
                                 _tl233439234008_))
                            (___match242375242376_
                             _e233436233998_
                             _hd233435234001_
                             _tl233434234003_
                             ___splice242336242337_
                             _target233437234006_
                             _tl233439234008_))
                        (___match242375242376_
                         _e233436233998_
                         _hd233435234001_
                         _tl233434234003_
                         ___splice242336242337_
                         _target233437234006_
                         _tl233439234008_))))
                (___match242375242376_
                 _e233436233998_
                 _hd233435234001_
                 _tl233434234003_
                 ___splice242336242337_
                 _target233437234006_
                 _tl233439234008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg233469234107_
                                                       (reverse _xarg233468234080_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233446234035_))
                                                      (let ((_L234110_
                                                             _xarg233469234107_)
                                                            (_L234111_
                                                             _hd233459234065_)
                                                            (_L234112_
                                                             _arg233445234027_))
                                                        (if (and (let ((__tmp243736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp243737
                                       (lambda (_g234140234143_
                                                _g234141234145_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234140234143_
                                                 _g234141234145_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243737 '() _L234112_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp243736))
                         (fx= (length (let ((__tmp243734
                                             (lambda (_g234147234150_
                                                      _g234148234152_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234147234150_
                                                       _g234148234152_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp243734 '() _L234112_)))
                              (length (let ((__tmp243735
                                             (lambda (_g234154234157_
                                                      _g234155234159_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g234154234157_
                                                       _g234155234159_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp243735 '() _L234110_))))
                         (let ((__tmp243732
                                (let ((__tmp243733
                                       (lambda (_g234161234164_
                                                _g234162234166_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234161234164_
                                                 _g234162234166_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243733 '() _L234112_)))
                               (__tmp243730
                                (let ((__tmp243731
                                       (lambda (_g234168234171_
                                                _g234169234173_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g234168234171_
                                                 _g234169234173_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp243731 '() _L234110_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp243732
                                    __tmp243730))
                         (let ((__tmp243726
                                (let ((__tmp243729
                                       (lambda (_g234175234177_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g234175234177_
                                            _L234111_))))
                                      (__tmp243727
                                       (let ((__tmp243728
                                              (lambda (_g234179234182_
                                                       _g234180234184_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g234179234182_
                                                        _g234180234184_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp243728 '() _L234112_))))
                                  (declare (not safe))
                                  (find __tmp243729 __tmp243727))))
                           (declare (not safe))
                           (not __tmp243726)))
                    (___kont242334242335_ _L234110_ _L234111_ _L234112_)
                    (___match242375242376_
                     _e233436233998_
                     _hd233435234001_
                     _tl233434234003_
                     ___splice242336242337_
                     _target233437234006_
                     _tl233439234008_)))
              (___match242375242376_
               _e233436233998_
               _hd233435234001_
               _tl233434234003_
               ___splice242336242337_
               _target233437234006_
               _tl233439234008_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop233464234075_
                                     _target233461234070_
                                     '())))
                                (___match242375242376_
                                 _e233436233998_
                                 _hd233435234001_
                                 _tl233434234003_
                                 ___splice242336242337_
                                 _target233437234006_
                                 _tl233439234008_))))
                        (___match242375242376_
                         _e233436233998_
                         _hd233435234001_
                         _tl233434234003_
                         ___splice242336242337_
                         _target233437234006_
                         _tl233439234008_))
                    (___match242375242376_
                     _e233436233998_
                     _hd233435234001_
                     _tl233434234003_
                     ___splice242336242337_
                     _target233437234006_
                     _tl233439234008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242375242376_
                                                     _e233436233998_
                                                     _hd233435234001_
                                                     _tl233434234003_
                                                     ___splice242336242337_
                                                     _target233437234006_
                                                     _tl233439234008_))
                                                (___match242375242376_
                                                 _e233436233998_
                                                 _hd233435234001_
                                                 _tl233434234003_
                                                 ___splice242336242337_
                                                 _target233437234006_
                                                 _tl233439234008_))
                                            (___match242375242376_
                                             _e233436233998_
                                             _hd233435234001_
                                             _tl233434234003_
                                             ___splice242336242337_
                                             _target233437234006_
                                             _tl233439234008_))))
                                    (___match242375242376_
                                     _e233436233998_
                                     _hd233435234001_
                                     _tl233434234003_
                                     ___splice242336242337_
                                     _target233437234006_
                                     _tl233439234008_))))
                            (___match242375242376_
                             _e233436233998_
                             _hd233435234001_
                             _tl233434234003_
                             ___splice242336242337_
                             _target233437234006_
                             _tl233439234008_))
                        (___match242375242376_
                         _e233436233998_
                         _hd233435234001_
                         _tl233434234003_
                         ___splice242336242337_
                         _target233437234006_
                         _tl233439234008_))
                    (___match242375242376_
                     _e233436233998_
                     _hd233435234001_
                     _tl233434234003_
                     ___splice242336242337_
                     _target233437234006_
                     _tl233439234008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242375242376_
                                                     _e233436233998_
                                                     _hd233435234001_
                                                     _tl233434234003_
                                                     ___splice242336242337_
                                                     _target233437234006_
                                                     _tl233439234008_))))
                                            (___match242375242376_
                                             _e233436233998_
                                             _hd233435234001_
                                             _tl233434234003_
                                             ___splice242336242337_
                                             _target233437234006_
                                             _tl233439234008_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233440234011_ _target233437234006_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242332242333_))
                  (let ((_e233436233998_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242332242333_))))
                    (let ((_tl233434234003_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233436233998_)))
                          (_hd233435234001_
                           (let ()
                             (declare (not safe))
                             (##car _e233436233998_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd233435234001_))
                          (let ((___splice242336242337_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd233435234001_
                                    '0))))
                            (let ((_tl233439234008_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242336242337_ '1)))
                                  (_target233437234006_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242336242337_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233439234008_))
                                  (___match242363242364_
                                   _e233436233998_
                                   _hd233435234001_
                                   _tl233434234003_
                                   ___splice242336242337_
                                   _target233437234006_
                                   _tl233439234008_)
                                  (___match242375242376_
                                   _e233436233998_
                                   _hd233435234001_
                                   _tl233434234003_
                                   ___splice242336242337_
                                   _target233437234006_
                                   _tl233439234008_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233434234003_))
                              (let ((_e233551233606_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233434234003_))))
                                (let ((_tl233549233611_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233551233606_)))
                                      (_hd233550233609_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233551233606_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233550233609_))
                                      (let ((_e233554233614_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233550233609_))))
                                        (let ((_tl233552233619_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233554233614_)))
                                              (_hd233553233617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233554233614_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd233553233617_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd233553233617_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233552233619_))
                                                      (let ((_e233557233622_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233552233619_))))
                (let ((_tl233555233627_
                       (let () (declare (not safe)) (##cdr _e233557233622_)))
                      (_hd233556233625_
                       (let () (declare (not safe)) (##car _e233557233622_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233556233625_))
                      (let ((_e233560233630_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233556233625_))))
                        (let ((_tl233558233635_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233560233630_)))
                              (_hd233559233633_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233560233630_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233559233633_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233559233633_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233558233635_))
                                      (let ((_e233563233638_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233558233635_))))
                                        (let ((_tl233561233643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233563233638_)))
                                              (_hd233562233641_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233563233638_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233561233643_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233555233627_))
                                                  (let ((_e233566233646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233555233627_))))
                                                    (let ((_tl233564233651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233566233646_)))
                                                          (_hd233565233649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233566233646_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233565233649_))
                                                          (let ((_e233569233654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233565233649_))))
                    (let ((_tl233567233659_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233569233654_)))
                          (_hd233568233657_
                           (let ()
                             (declare (not safe))
                             (##car _e233569233654_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233568233657_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233568233657_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233567233659_))
                                  (let ((_e233572233662_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233567233659_))))
                                    (let ((_tl233570233667_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233572233662_)))
                                          (_hd233571233665_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233572233662_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233570233667_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233564233651_))
                                              (let ((_e233575233670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233564233651_))))
                                                (let ((_tl233573233675_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233575233670_)))
                                                      (_hd233574233673_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233575233670_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd233574233673_))
                                                      (let ((_e233578233678_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd233574233673_))))
                (let ((_tl233576233683_
                       (let () (declare (not safe)) (##cdr _e233578233678_)))
                      (_hd233577233681_
                       (let () (declare (not safe)) (##car _e233578233678_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd233577233681_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd233577233681_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233576233683_))
                              (let ((_e233581233686_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233576233683_))))
                                (let ((_tl233579233691_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233581233686_)))
                                      (_hd233580233689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233581233686_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233579233691_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233573233675_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233549233611_))
                                              (___match242473242474_
                                               _e233436233998_
                                               _hd233435234001_
                                               _tl233434234003_
                                               _e233551233606_
                                               _hd233550233609_
                                               _tl233549233611_
                                               _e233554233614_
                                               _hd233553233617_
                                               _tl233552233619_
                                               _e233557233622_
                                               _hd233556233625_
                                               _tl233555233627_
                                               _e233560233630_
                                               _hd233559233633_
                                               _tl233558233635_
                                               _e233563233638_
                                               _hd233562233641_
                                               _tl233561233643_
                                               _e233566233646_
                                               _hd233565233649_
                                               _tl233564233651_
                                               _e233569233654_
                                               _hd233568233657_
                                               _tl233567233659_
                                               _e233572233662_
                                               _hd233571233665_
                                               _tl233570233667_
                                               _e233575233670_
                                               _hd233574233673_
                                               _tl233573233675_
                                               _e233578233678_
                                               _hd233577233681_
                                               _tl233576233683_
                                               _e233581233686_
                                               _hd233580233689_
                                               _tl233579233691_)
                                              (___kont242348242349_))
                                          (___kont242348242349_))
                                      (___kont242348242349_))))
                              (___kont242348242349_))
                          (___kont242348242349_))
                      (___kont242348242349_))))
              (___kont242348242349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont242348242349_))
                                          (___kont242348242349_))))
                                  (___kont242348242349_))
                              (___kont242348242349_))
                          (___kont242348242349_))))
                  (___kont242348242349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242348242349_))
                                              (___kont242348242349_))))
                                      (___kont242348242349_))
                                  (___kont242348242349_))
                              (___kont242348242349_))))
                      (___kont242348242349_))))
              (___kont242348242349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont242348242349_))
                                              (___kont242348242349_))))
                                      (___kont242348242349_))))
                              (___kont242348242349_)))))
                  (___kont242348242349_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form232892_)
        (let* ((___stx242476242477_ _form232892_)
               (_g232896233020_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242476242477_)))))
          (let ((___kont242478242479_
                 (lambda (_L233390_ _L233391_ _L233392_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233391_))))
                (___kont242484242485_
                 (lambda (_L233238_ _L233239_ _L233240_ _L233241_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233238_))))
                (___kont242488242489_
                 (lambda (_L233105_ _L233106_ _L233107_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L233105_)))))
            (let* ((___match242585242586_
                    (lambda (_e232988233025_
                             _hd232987233028_
                             _tl232986233030_
                             _e232991233033_
                             _hd232990233036_
                             _tl232989233038_
                             _e232994233041_
                             _hd232993233044_
                             _tl232992233046_
                             _e232997233049_
                             _hd232996233052_
                             _tl232995233054_
                             _e233000233057_
                             _hd232999233060_
                             _tl232998233062_
                             _e233003233065_
                             _hd233002233068_
                             _tl233001233070_
                             _e233006233073_
                             _hd233005233076_
                             _tl233004233078_
                             _e233009233081_
                             _hd233008233084_
                             _tl233007233086_
                             _e233012233089_
                             _hd233011233092_
                             _tl233010233094_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233004233078_))
                          (let ((_e233015233097_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233004233078_))))
                            (let ((_tl233013233102_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233015233097_)))
                                  (_hd233014233100_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233015233097_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233013233102_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232989233038_))
                                      (___kont242488242489_
                                       _hd233011233092_
                                       _hd233002233068_
                                       _hd232987233028_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232896233020_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232896233020_)))))
                          (let () (declare (not safe)) (_g232896233020_)))))
                   (___match242515242516_
                    (lambda (_e232949233142_
                             _hd232948233145_
                             _tl232947233147_
                             ___splice242486242487_
                             _target232950233150_
                             _tl232952233152_)
                      (letrec ((_loop232953233155_
                                (lambda (_hd232951233158_ _arg232957233160_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232951233158_))
                                      (let ((_e232954233163_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232951233158_))))
                                        (let ((_lp-tl232956233168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232954233163_)))
                                              (_lp-hd232955233166_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232954233163_))))
                                          (let ((__tmp243740
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232955233166_
                                                         _arg232957233160_))))
                                            (declare (not safe))
                                            (_loop232953233155_
                                             _lp-tl232956233168_
                                             __tmp243740))))
                                      (let ((_arg232958233171_
                                             (reverse _arg232957233160_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232947233147_))
                                            (let ((_e232961233174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232947233147_))))
                                              (let ((_tl232959233179_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232961233174_)))
                                                    (_hd232960233177_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232961233174_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232960233177_))
                                                    (let ((_e232964233182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232960233177_))))
                                                      (let ((_tl232962233187_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232964233182_)))
                    (_hd232963233185_
                     (let () (declare (not safe)) (##car _e232964233182_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232963233185_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232963233185_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232962233187_))
                            (let ((_e232967233190_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232962233187_))))
                              (let ((_tl232965233195_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232967233190_)))
                                    (_hd232966233193_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232967233190_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232966233193_))
                                    (let ((_e232970233198_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232966233193_))))
                                      (let ((_tl232968233203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232970233198_)))
                                            (_hd232969233201_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232970233198_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232969233201_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232969233201_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232968233203_))
                                                    (let ((_e232973233206_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232968233203_))))
                                                      (let ((_tl232971233211_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232973233206_)))
                    (_hd232972233209_
                     (let () (declare (not safe)) (##car _e232973233206_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232971233211_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl232965233195_))
                        (let ((_e232976233214_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232965233195_))))
                          (let ((_tl232974233219_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232976233214_)))
                                (_hd232975233217_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232976233214_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232975233217_))
                                (let ((_e232979233222_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232975233217_))))
                                  (let ((_tl232977233227_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232979233222_)))
                                        (_hd232978233225_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232979233222_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232978233225_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd232978233225_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232977233227_))
                                                (let ((_e232982233230_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232977233227_))))
                                                  (let ((_tl232980233235_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232982233230_)))
                                                        (_hd232981233233_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232982233230_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232980233235_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl232959233179_))
                                                            (___kont242484242485_
                                                             _hd232981233233_
                                                             _hd232972233209_
                                                             _tl232952233152_
                                                             _arg232958233171_)
                                                            (___match242585242586_
                                                             _e232949233142_
                                                             _hd232948233145_
                                                             _tl232947233147_
                                                             _e232961233174_
                                                             _hd232960233177_
                                                             _tl232959233179_
                                                             _e232964233182_
                                                             _hd232963233185_
                                                             _tl232962233187_
                                                             _e232967233190_
                                                             _hd232966233193_
                                                             _tl232965233195_
                                                             _e232970233198_
                                                             _hd232969233201_
                                                             _tl232968233203_
                                                             _e232973233206_
                                                             _hd232972233209_
                                                             _tl232971233211_
                                                             _e232976233214_
                                                             _hd232975233217_
                                                             _tl232974233219_
                                                             _e232979233222_
                                                             _hd232978233225_
                                                             _tl232977233227_
                                                             _e232982233230_
                                                             _hd232981233233_
                                                             _tl232980233235_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232896233020_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232896233020_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g232896233020_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g232896233020_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g232896233020_)))))
                        (let () (declare (not safe)) (_g232896233020_)))
                    (let () (declare (not safe)) (_g232896233020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g232896233020_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232896233020_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g232896233020_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g232896233020_)))))
                            (let () (declare (not safe)) (_g232896233020_)))
                        (let () (declare (not safe)) (_g232896233020_)))
                    (let () (declare (not safe)) (_g232896233020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g232896233020_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g232896233020_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop232953233155_ _target232950233150_ '())))))
                   (___match242503242504_
                    (lambda (_e232903233278_
                             _hd232902233281_
                             _tl232901233283_
                             ___splice242480242481_
                             _target232904233286_
                             _tl232906233288_)
                      (letrec ((_loop232907233291_
                                (lambda (_hd232905233294_ _arg232911233296_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232905233294_))
                                      (let ((_e232908233299_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232905233294_))))
                                        (let ((_lp-tl232910233304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232908233299_)))
                                              (_lp-hd232909233302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232908233299_))))
                                          (let ((__tmp243742
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232909233302_
                                                         _arg232911233296_))))
                                            (declare (not safe))
                                            (_loop232907233291_
                                             _lp-tl232910233304_
                                             __tmp243742))))
                                      (let ((_arg232912233307_
                                             (reverse _arg232911233296_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232901233283_))
                                            (let ((_e232915233310_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232901233283_))))
                                              (let ((_tl232913233315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232915233310_)))
                                                    (_hd232914233313_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232915233310_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232914233313_))
                                                    (let ((_e232918233318_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232914233313_))))
                                                      (let ((_tl232916233323_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232918233318_)))
                    (_hd232917233321_
                     (let () (declare (not safe)) (##car _e232918233318_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232917233321_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232917233321_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232916233323_))
                            (let ((_e232921233326_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232916233323_))))
                              (let ((_tl232919233331_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232921233326_)))
                                    (_hd232920233329_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232921233326_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232920233329_))
                                    (let ((_e232924233334_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232920233329_))))
                                      (let ((_tl232922233339_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232924233334_)))
                                            (_hd232923233337_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232924233334_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232923233337_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232923233337_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232922233339_))
                                                    (let ((_e232927233342_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232922233339_))))
                                                      (let ((_tl232925233347_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232927233342_)))
                    (_hd232926233345_
                     (let () (declare (not safe)) (##car _e232927233342_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232925233347_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl232919233331_))
                        (let ((___splice242482242483_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl232919233331_
                                  '0))))
                          (let ((_tl232930233352_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242482242483_ '1)))
                                (_target232928233350_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice242482242483_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl232930233352_))
                                (letrec ((_loop232931233355_
                                          (lambda (_hd232929233358_
                                                   _xarg232935233360_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232929233358_))
                                                (let ((_e232932233363_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232929233358_))))
                                                  (let ((_lp-tl232934233368_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232932233363_)))
                                                        (_lp-hd232933233366_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232932233363_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd232933233366_))
                                                        (let ((_e232939233371_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd232933233366_))))
                  (let ((_tl232937233376_
                         (let () (declare (not safe)) (##cdr _e232939233371_)))
                        (_hd232938233374_
                         (let ()
                           (declare (not safe))
                           (##car _e232939233371_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232938233374_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd232938233374_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232937233376_))
                                (let ((_e232942233379_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232937233376_))))
                                  (let ((_tl232940233384_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232942233379_)))
                                        (_hd232941233382_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232942233379_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232940233384_))
                                        (let ((__tmp243741
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd232941233382_
                                                       _xarg232935233360_))))
                                          (declare (not safe))
                                          (_loop232931233355_
                                           _lp-tl232934233368_
                                           __tmp243741))
                                        (___match242515242516_
                                         _e232903233278_
                                         _hd232902233281_
                                         _tl232901233283_
                                         ___splice242480242481_
                                         _target232904233286_
                                         _tl232906233288_))))
                                (___match242515242516_
                                 _e232903233278_
                                 _hd232902233281_
                                 _tl232901233283_
                                 ___splice242480242481_
                                 _target232904233286_
                                 _tl232906233288_))
                            (___match242515242516_
                             _e232903233278_
                             _hd232902233281_
                             _tl232901233283_
                             ___splice242480242481_
                             _target232904233286_
                             _tl232906233288_))
                        (___match242515242516_
                         _e232903233278_
                         _hd232902233281_
                         _tl232901233283_
                         ___splice242480242481_
                         _target232904233286_
                         _tl232906233288_))))
                (___match242515242516_
                 _e232903233278_
                 _hd232902233281_
                 _tl232901233283_
                 ___splice242480242481_
                 _target232904233286_
                 _tl232906233288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg232936233387_
                                                       (reverse _xarg232935233360_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232913233315_))
                                                      (___kont242478242479_
                                                       _xarg232936233387_
                                                       _hd232926233345_
                                                       _arg232912233307_)
                                                      (___match242515242516_
                                                       _e232903233278_
                                                       _hd232902233281_
                                                       _tl232901233283_
                                                       ___splice242480242481_
                                                       _target232904233286_
                                                       _tl232906233288_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop232931233355_
                                     _target232928233350_
                                     '())))
                                (___match242515242516_
                                 _e232903233278_
                                 _hd232902233281_
                                 _tl232901233283_
                                 ___splice242480242481_
                                 _target232904233286_
                                 _tl232906233288_))))
                        (___match242515242516_
                         _e232903233278_
                         _hd232902233281_
                         _tl232901233283_
                         ___splice242480242481_
                         _target232904233286_
                         _tl232906233288_))
                    (___match242515242516_
                     _e232903233278_
                     _hd232902233281_
                     _tl232901233283_
                     ___splice242480242481_
                     _target232904233286_
                     _tl232906233288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242515242516_
                                                     _e232903233278_
                                                     _hd232902233281_
                                                     _tl232901233283_
                                                     ___splice242480242481_
                                                     _target232904233286_
                                                     _tl232906233288_))
                                                (___match242515242516_
                                                 _e232903233278_
                                                 _hd232902233281_
                                                 _tl232901233283_
                                                 ___splice242480242481_
                                                 _target232904233286_
                                                 _tl232906233288_))
                                            (___match242515242516_
                                             _e232903233278_
                                             _hd232902233281_
                                             _tl232901233283_
                                             ___splice242480242481_
                                             _target232904233286_
                                             _tl232906233288_))))
                                    (___match242515242516_
                                     _e232903233278_
                                     _hd232902233281_
                                     _tl232901233283_
                                     ___splice242480242481_
                                     _target232904233286_
                                     _tl232906233288_))))
                            (___match242515242516_
                             _e232903233278_
                             _hd232902233281_
                             _tl232901233283_
                             ___splice242480242481_
                             _target232904233286_
                             _tl232906233288_))
                        (___match242515242516_
                         _e232903233278_
                         _hd232902233281_
                         _tl232901233283_
                         ___splice242480242481_
                         _target232904233286_
                         _tl232906233288_))
                    (___match242515242516_
                     _e232903233278_
                     _hd232902233281_
                     _tl232901233283_
                     ___splice242480242481_
                     _target232904233286_
                     _tl232906233288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242515242516_
                                                     _e232903233278_
                                                     _hd232902233281_
                                                     _tl232901233283_
                                                     ___splice242480242481_
                                                     _target232904233286_
                                                     _tl232906233288_))))
                                            (___match242515242516_
                                             _e232903233278_
                                             _hd232902233281_
                                             _tl232901233283_
                                             ___splice242480242481_
                                             _target232904233286_
                                             _tl232906233288_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232907233291_ _target232904233286_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx242476242477_))
                  (let ((_e232903233278_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx242476242477_))))
                    (let ((_tl232901233283_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232903233278_)))
                          (_hd232902233281_
                           (let ()
                             (declare (not safe))
                             (##car _e232903233278_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd232902233281_))
                          (let ((___splice242480242481_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd232902233281_
                                    '0))))
                            (let ((_tl232906233288_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice242480242481_ '1)))
                                  (_target232904233286_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice242480242481_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232906233288_))
                                  (___match242503242504_
                                   _e232903233278_
                                   _hd232902233281_
                                   _tl232901233283_
                                   ___splice242480242481_
                                   _target232904233286_
                                   _tl232906233288_)
                                  (___match242515242516_
                                   _e232903233278_
                                   _hd232902233281_
                                   _tl232901233283_
                                   ___splice242480242481_
                                   _target232904233286_
                                   _tl232906233288_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232901233283_))
                              (let ((_e232991233033_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232901233283_))))
                                (let ((_tl232989233038_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232991233033_)))
                                      (_hd232990233036_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232991233033_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232990233036_))
                                      (let ((_e232994233041_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232990233036_))))
                                        (let ((_tl232992233046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232994233041_)))
                                              (_hd232993233044_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232994233041_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd232993233044_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd232993233044_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232992233046_))
                                                      (let ((_e232997233049_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232992233046_))))
                (let ((_tl232995233054_
                       (let () (declare (not safe)) (##cdr _e232997233049_)))
                      (_hd232996233052_
                       (let () (declare (not safe)) (##car _e232997233049_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232996233052_))
                      (let ((_e233000233057_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232996233052_))))
                        (let ((_tl232998233062_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233000233057_)))
                              (_hd232999233060_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233000233057_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232999233060_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232999233060_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232998233062_))
                                      (let ((_e233003233065_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232998233062_))))
                                        (let ((_tl233001233070_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233003233065_)))
                                              (_hd233002233068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233003233065_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233001233070_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232995233054_))
                                                  (let ((_e233006233073_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232995233054_))))
                                                    (let ((_tl233004233078_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233006233073_)))
                                                          (_hd233005233076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233006233073_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233005233076_))
                                                          (let ((_e233009233081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233005233076_))))
                    (let ((_tl233007233086_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233009233081_)))
                          (_hd233008233084_
                           (let ()
                             (declare (not safe))
                             (##car _e233009233081_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233008233084_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233008233084_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233007233086_))
                                  (let ((_e233012233089_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233007233086_))))
                                    (let ((_tl233010233094_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233012233089_)))
                                          (_hd233011233092_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233012233089_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233010233094_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233004233078_))
                                              (let ((_e233015233097_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233004233078_))))
                                                (let ((_tl233013233102_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233015233097_)))
                                                      (_hd233014233100_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233015233097_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233013233102_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl232989233038_))
                                                          (___kont242488242489_
                                                           _hd233011233092_
                                                           _hd233002233068_
                                                           _hd232902233281_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g232896233020_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g232896233020_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g232896233020_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g232896233020_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g232896233020_)))
                              (let () (declare (not safe)) (_g232896233020_)))
                          (let () (declare (not safe)) (_g232896233020_)))))
                  (let () (declare (not safe)) (_g232896233020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232896233020_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g232896233020_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232896233020_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232896233020_)))
                              (let ()
                                (declare (not safe))
                                (_g232896233020_)))))
                      (let () (declare (not safe)) (_g232896233020_)))))
              (let () (declare (not safe)) (_g232896233020_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232896233020_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g232896233020_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232896233020_)))))
                              (let ()
                                (declare (not safe))
                                (_g232896233020_))))))
                  (let () (declare (not safe)) (_g232896233020_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form232696_)
        (let* ((_g232698232712_
                (lambda (_g232699232709_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232699232709_))))
               (_g232697232889_
                (lambda (_g232699232715_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232699232715_))
                      (let ((_e232704232717_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232699232715_))))
                        (let ((_hd232703232720_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232704232717_)))
                              (_tl232702232722_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232704232717_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232702232722_))
                              (let ((_e232707232725_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232702232722_))))
                                (let ((_hd232706232728_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232707232725_)))
                                      (_tl232705232730_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232707232725_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232705232730_))
                                      ((lambda (_L232733_ _L232734_)
                                         (let* ((___stx242598242599_ _L232734_)
                                                (_g232749232777_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx242598242599_)))))
                                           (let ((___kont242600242601_
                                                  (lambda (_L232868_)
                                                    (length (let ((__tmp243743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g232878232881_ _g232879232883_)
                             (let ()
                               (declare (not safe))
                               (cons _g232878232881_ _g232879232883_)))))
                      (declare (not safe))
                      (foldr1 __tmp243743 '() _L232868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont242604242605_
                                                  (lambda (_L232819_ _L232820_)
                                                    (let ((__tmp243744
                                                           (length (let ((__tmp243745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g232831232834_ _g232832232836_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g232831232834_
                                            _g232832232836_)))))
                             (declare (not safe))
                             (foldr1 __tmp243745 '() _L232820_)))))
              (declare (not safe))
              (cons __tmp243744 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont242608242609_
                                                  (lambda (_L232782_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match242623242624_
                                                     (lambda (___splice242606242607_
                                                              _target232763232795_
                                                              _tl232765232797_)
                                                       (letrec ((_loop232766232800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232764232803_ _arg232770232805_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232764232803_))
                               (let ((_e232767232808_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232764232803_))))
                                 (let ((_lp-tl232769232813_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232767232808_)))
                                       (_lp-hd232768232811_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232767232808_))))
                                   (let ((__tmp243746
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232768232811_
                                                  _arg232770232805_))))
                                     (declare (not safe))
                                     (_loop232766232800_
                                      _lp-tl232769232813_
                                      __tmp243746))))
                               (let ((_arg232771232816_
                                      (reverse _arg232770232805_)))
                                 (___kont242604242605_
                                  _tl232765232797_
                                  _arg232771232816_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232766232800_ _target232763232795_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match242617242618_
                                                     (lambda (___splice242602242603_
                                                              _target232752232844_
                                                              _tl232754232846_)
                                                       (letrec ((_loop232755232849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232753232852_ _arg232759232854_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232753232852_))
                               (let ((_e232756232857_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232753232852_))))
                                 (let ((_lp-tl232758232862_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232756232857_)))
                                       (_lp-hd232757232860_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232756232857_))))
                                   (let ((__tmp243747
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232757232860_
                                                  _arg232759232854_))))
                                     (declare (not safe))
                                     (_loop232755232849_
                                      _lp-tl232758232862_
                                      __tmp243747))))
                               (let ((_arg232760232865_
                                      (reverse _arg232759232854_)))
                                 (___kont242600242601_ _arg232760232865_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232755232849_ _target232752232844_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx242598242599_))
                                                   (let ((___splice242602242603_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx242598242599_
                                                             '0))))
                                                     (let ((_tl232754232846_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice242602242603_
                                                               '1)))
                                                           (_target232752232844_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice242602242603_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl232754232846_))
                                                           (___match242617242618_
                                                            ___splice242602242603_
                                                            _target232752232844_
                                                            _tl232754232846_)
                                                           (___match242623242624_
                                                            ___splice242602242603_
                                                            _target232752232844_
                                                            _tl232754232846_))))
                                                   (___kont242608242609_
                                                    ___stx242598242599_))))))
                                       _hd232706232728_
                                       _hd232703232720_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232698232712_ _g232699232715_)))))
                              (let ()
                                (declare (not safe))
                                (_g232698232712_ _g232699232715_)))))
                      (let ()
                        (declare (not safe))
                        (_g232698232712_ _g232699232715_))))))
          (declare (not safe))
          (_g232697232889_ _form232696_))))
    (define gxc#lambda-expr?
      (lambda (_expr232649_)
        (let* ((___stx242626242627_ _expr232649_)
               (_g232652232662_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242626242627_)))))
          (let ((___kont242628242629_ (lambda (_L232682_) '#t))
                (___kont242630242631_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242626242627_))
                (let ((_e232657232674_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242626242627_))))
                  (let ((_tl232655232679_
                         (let () (declare (not safe)) (##cdr _e232657232674_)))
                        (_hd232656232677_
                         (let ()
                           (declare (not safe))
                           (##car _e232657232674_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232656232677_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd232656232677_))
                            (___kont242628242629_ _tl232655232679_)
                            (___kont242630242631_))
                        (___kont242630242631_))))
                (___kont242630242631_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr232602_)
        (let* ((___stx242644242645_ _expr232602_)
               (_g232605232615_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242644242645_)))))
          (let ((___kont242646242647_ (lambda (_L232635_) '#t))
                (___kont242648242649_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242644242645_))
                (let ((_e232610232627_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242644242645_))))
                  (let ((_tl232608232632_
                         (let () (declare (not safe)) (##cdr _e232610232627_)))
                        (_hd232609232630_
                         (let ()
                           (declare (not safe))
                           (##car _e232610232627_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232609232630_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd232609232630_))
                            (___kont242646242647_ _tl232608232632_)
                            (___kont242648242649_))
                        (___kont242648242649_))))
                (___kont242648242649_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr232471_)
        (let* ((___stx242662242663_ _expr232471_)
               (_g232474232504_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242662242663_)))))
          (let ((___kont242664242665_
                 (lambda (_L232572_ _L232573_ _L232574_)
                   (if (let () (declare (not safe)) (gx#identifier? _L232574_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L232573_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L232572_))
                           '#f)
                       '#f)))
                (___kont242666242667_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242662242663_))
                (let ((_e232481232516_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242662242663_))))
                  (let ((_tl232479232521_
                         (let () (declare (not safe)) (##cdr _e232481232516_)))
                        (_hd232480232519_
                         (let ()
                           (declare (not safe))
                           (##car _e232481232516_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232480232519_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd232480232519_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232479232521_))
                                (let ((_e232484232524_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232479232521_))))
                                  (let ((_tl232482232529_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232484232524_)))
                                        (_hd232483232527_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232484232524_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd232483232527_))
                                        (let ((_e232487232532_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd232483232527_))))
                                          (let ((_tl232485232537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232487232532_)))
                                                (_hd232486232535_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232487232532_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232486232535_))
                                                (let ((_e232490232540_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232486232535_))))
                                                  (let ((_tl232488232545_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232490232540_)))
                                                        (_hd232489232543_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232490232540_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd232489232543_))
                                                        (let ((_e232493232548_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd232489232543_))))
                  (let ((_tl232491232553_
                         (let () (declare (not safe)) (##cdr _e232493232548_)))
                        (_hd232492232551_
                         (let ()
                           (declare (not safe))
                           (##car _e232493232548_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl232491232553_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232488232545_))
                            (let ((_e232496232556_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232488232545_))))
                              (let ((_tl232494232561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232496232556_)))
                                    (_hd232495232559_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232496232556_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl232494232561_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232485232537_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232482232529_))
                                            (let ((_e232499232564_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232482232529_))))
                                              (let ((_tl232497232569_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232499232564_)))
                                                    (_hd232498232567_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232499232564_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl232497232569_))
                                                    (___kont242664242665_
                                                     _hd232498232567_
                                                     _hd232495232559_
                                                     _hd232492232551_)
                                                    (___kont242666242667_))))
                                            (___kont242666242667_))
                                        (___kont242666242667_))
                                    (___kont242666242667_))))
                            (___kont242666242667_))
                        (___kont242666242667_))))
                (___kont242666242667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242666242667_))))
                                        (___kont242666242667_))))
                                (___kont242666242667_))
                            (___kont242666242667_))
                        (___kont242666242667_))))
                (___kont242666242667_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr231796_)
        (let* ((___stx242724242725_ _expr231796_)
               (_g231799231957_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242724242725_)))))
          (let ((___kont242726242727_
                 (lambda (_L232345_
                          _L232346_
                          _L232347_
                          _L232348_
                          _L232349_
                          _L232350_
                          _L232351_
                          _L232352_
                          _L232353_
                          _L232354_
                          _L232355_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L232352_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L232348_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L232347_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L232355_
                                      _L232346_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L232354_
                                          _L232351_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L232349_
                                              _L232345_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L232353_
                                              _L232350_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont242728242729_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242724242725_))
                (let ((_e231814231969_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242724242725_))))
                  (let ((_tl231812231974_
                         (let () (declare (not safe)) (##cdr _e231814231969_)))
                        (_hd231813231972_
                         (let ()
                           (declare (not safe))
                           (##car _e231814231969_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231813231972_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd231813231972_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231812231974_))
                                (let ((_e231817231977_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231812231974_))))
                                  (let ((_tl231815231982_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231817231977_)))
                                        (_hd231816231980_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231817231977_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd231816231980_))
                                        (let ((_e231820231985_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd231816231980_))))
                                          (let ((_tl231818231990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231820231985_)))
                                                (_hd231819231988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231820231985_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231819231988_))
                                                (let ((_e231823231993_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231819231988_))))
                                                  (let ((_tl231821231998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231823231993_)))
                                                        (_hd231822231996_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231823231993_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231822231996_))
                                                        (let ((_e231826232001_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231822231996_))))
                  (let ((_tl231824232006_
                         (let () (declare (not safe)) (##cdr _e231826232001_)))
                        (_hd231825232004_
                         (let ()
                           (declare (not safe))
                           (##car _e231826232001_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl231824232006_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231821231998_))
                            (let ((_e231829232009_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231821231998_))))
                              (let ((_tl231827232014_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231829232009_)))
                                    (_hd231828232012_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231829232009_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231828232012_))
                                    (let ((_e231832232017_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231828232012_))))
                                      (let ((_tl231830232022_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231832232017_)))
                                            (_hd231831232020_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231832232017_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231831232020_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd231831232020_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231830232022_))
                                                    (let ((_e231835232025_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231830232022_))))
                                                      (let ((_tl231833232030_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231835232025_)))
                    (_hd231834232028_
                     (let () (declare (not safe)) (##car _e231835232025_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231834232028_))
                    (let ((_e231838232033_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231834232028_))))
                      (let ((_tl231836232038_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231838232033_)))
                            (_hd231837232036_
                             (let ()
                               (declare (not safe))
                               (##car _e231838232033_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd231837232036_))
                            (let ((_e231841232041_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd231837232036_))))
                              (let ((_tl231839232046_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231841232041_)))
                                    (_hd231840232044_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231841232041_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231840232044_))
                                    (let ((_e231844232049_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231840232044_))))
                                      (let ((_tl231842232054_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231844232049_)))
                                            (_hd231843232052_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231844232049_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231842232054_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231839232046_))
                                                (let ((_e231847232057_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231839232046_))))
                                                  (let ((_tl231845232062_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231847232057_)))
                                                        (_hd231846232060_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231847232057_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231845232062_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl231836232038_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl231833232030_))
                        (let ((_e231850232065_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231833232030_))))
                          (let ((_tl231848232070_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231850232065_)))
                                (_hd231849232068_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231850232065_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231849232068_))
                                (let ((_e231853232073_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231849232068_))))
                                  (let ((_tl231851232078_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231853232073_)))
                                        (_hd231852232076_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231853232073_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231852232076_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd231852232076_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231851232078_))
                                                (let ((_e231856232081_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231851232078_))))
                                                  (let ((_tl231854232086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231856232081_)))
                                                        (_hd231855232084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231856232081_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231855232084_))
                                                        (let ((_e231859232089_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231855232084_))))
                  (let ((_tl231857232094_
                         (let () (declare (not safe)) (##cdr _e231859232089_)))
                        (_hd231858232092_
                         (let ()
                           (declare (not safe))
                           (##car _e231859232089_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231854232086_))
                        (let ((_e231862232097_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231854232086_))))
                          (let ((_tl231860232102_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231862232097_)))
                                (_hd231861232100_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231862232097_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231861232100_))
                                (let ((_e231865232105_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231861232100_))))
                                  (let ((_tl231863232110_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231865232105_)))
                                        (_hd231864232108_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231865232105_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231864232108_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd231864232108_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231863232110_))
                                                (let ((_e231868232113_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231863232110_))))
                                                  (let ((_tl231866232118_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231868232113_)))
                                                        (_hd231867232116_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231868232113_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231867232116_))
                                                        (let ((_e231871232121_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231867232116_))))
                  (let ((_tl231869232126_
                         (let () (declare (not safe)) (##cdr _e231871232121_)))
                        (_hd231870232124_
                         (let ()
                           (declare (not safe))
                           (##car _e231871232121_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231870232124_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd231870232124_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231869232126_))
                                (let ((_e231874232129_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231869232126_))))
                                  (let ((_tl231872232134_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231874232129_)))
                                        (_hd231873232132_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231874232129_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231872232134_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231866232118_))
                                            (let ((_e231877232137_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231866232118_))))
                                              (let ((_tl231875232142_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231877232137_)))
                                                    (_hd231876232140_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231877232137_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231876232140_))
                                                    (let ((_e231880232145_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231876232140_))))
                                                      (let ((_tl231878232150_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231880232145_)))
                    (_hd231879232148_
                     (let () (declare (not safe)) (##car _e231880232145_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231879232148_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd231879232148_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231878232150_))
                            (let ((_e231883232153_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231878232150_))))
                              (let ((_tl231881232158_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231883232153_)))
                                    (_hd231882232156_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231883232153_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231881232158_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231875232142_))
                                        (let ((_e231886232161_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231875232142_))))
                                          (let ((_tl231884232166_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231886232161_)))
                                                (_hd231885232164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231886232161_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231885232164_))
                                                (let ((_e231889232169_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231885232164_))))
                                                  (let ((_tl231887232174_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231889232169_)))
                                                        (_hd231888232172_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231889232169_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd231888232172_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd231888232172_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl231887232174_))
                        (let ((_e231892232177_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231887232174_))))
                          (let ((_tl231890232182_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231892232177_)))
                                (_hd231891232180_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231892232177_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl231890232182_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231860232102_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231848232070_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231827232014_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231818231990_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231815231982_))
                                                    (let ((_e231895232185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231815231982_))))
                                                      (let ((_tl231893232190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231895232185_)))
                    (_hd231894232188_
                     (let () (declare (not safe)) (##car _e231895232185_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231894232188_))
                    (let ((_e231898232193_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231894232188_))))
                      (let ((_tl231896232198_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231898232193_)))
                            (_hd231897232196_
                             (let ()
                               (declare (not safe))
                               (##car _e231898232193_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd231897232196_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd231897232196_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl231896232198_))
                                    (let ((_e231901232201_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl231896232198_))))
                                      (let ((_tl231899232206_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231901232201_)))
                                            (_hd231900232204_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231901232201_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231899232206_))
                                            (let ((_e231904232209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231899232206_))))
                                              (let ((_tl231902232214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231904232209_)))
                                                    (_hd231903232212_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231904232209_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231903232212_))
                                                    (let ((_e231907232217_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231903232212_))))
                                                      (let ((_tl231905232222_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231907232217_)))
                    (_hd231906232220_
                     (let () (declare (not safe)) (##car _e231907232217_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231906232220_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231906232220_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231905232222_))
                            (let ((_e231910232225_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231905232222_))))
                              (let ((_tl231908232230_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231910232225_)))
                                    (_hd231909232228_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231910232225_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231909232228_))
                                    (let ((_e231913232233_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231909232228_))))
                                      (let ((_tl231911232238_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231913232233_)))
                                            (_hd231912232236_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231913232233_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231912232236_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231912232236_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231911232238_))
                                                    (let ((_e231916232241_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231911232238_))))
                                                      (let ((_tl231914232246_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231916232241_)))
                    (_hd231915232244_
                     (let () (declare (not safe)) (##car _e231916232241_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231914232246_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231908232230_))
                        (let ((_e231919232249_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231908232230_))))
                          (let ((_tl231917232254_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231919232249_)))
                                (_hd231918232252_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231919232249_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231918232252_))
                                (let ((_e231922232257_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231918232252_))))
                                  (let ((_tl231920232262_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231922232257_)))
                                        (_hd231921232260_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231922232257_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231921232260_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231921232260_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231920232262_))
                                                (let ((_e231925232265_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231920232262_))))
                                                  (let ((_tl231923232270_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231925232265_)))
                                                        (_hd231924232268_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231925232265_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231923232270_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl231917232254_))
                                                            (let ((_e231928232273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl231917232254_))))
                      (let ((_tl231926232278_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231928232273_)))
                            (_hd231927232276_
                             (let ()
                               (declare (not safe))
                               (##car _e231928232273_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd231927232276_))
                            (let ((_e231931232281_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd231927232276_))))
                              (let ((_tl231929232286_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231931232281_)))
                                    (_hd231930232284_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231931232281_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd231930232284_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd231930232284_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231929232286_))
                                            (let ((_e231934232289_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231929232286_))))
                                              (let ((_tl231932232294_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231934232289_)))
                                                    (_hd231933232292_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231934232289_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231932232294_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl231926232278_))
                                                        (let ((_e231937232297_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl231926232278_))))
                  (let ((_tl231935232302_
                         (let () (declare (not safe)) (##cdr _e231937232297_)))
                        (_hd231936232300_
                         (let ()
                           (declare (not safe))
                           (##car _e231937232297_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd231936232300_))
                        (let ((_e231940232305_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd231936232300_))))
                          (let ((_tl231938232310_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231940232305_)))
                                (_hd231939232308_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231940232305_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd231939232308_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd231939232308_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231938232310_))
                                        (let ((_e231943232313_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231938232310_))))
                                          (let ((_tl231941232318_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231943232313_)))
                                                (_hd231942232316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231943232313_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231941232318_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231935232302_))
                                                    (let ((_e231946232321_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231935232302_))))
                                                      (let ((_tl231944232326_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231946232321_)))
                    (_hd231945232324_
                     (let () (declare (not safe)) (##car _e231946232321_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231945232324_))
                    (let ((_e231949232329_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231945232324_))))
                      (let ((_tl231947232334_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231949232329_)))
                            (_hd231948232332_
                             (let ()
                               (declare (not safe))
                               (##car _e231949232329_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd231948232332_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd231948232332_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl231947232334_))
                                    (let ((_e231952232337_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl231947232334_))))
                                      (let ((_tl231950232342_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231952232337_)))
                                            (_hd231951232340_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231952232337_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231950232342_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231944232326_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231902232214_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231893232190_))
                                                        (___kont242726242727_
                                                         _hd231951232340_
                                                         _hd231942232316_
                                                         _hd231924232268_
                                                         _hd231915232244_
                                                         _hd231900232204_
                                                         _hd231891232180_
                                                         _hd231882232156_
                                                         _hd231873232132_
                                                         _hd231858232092_
                                                         _hd231843232052_
                                                         _hd231825232004_)
                                                        (___kont242728242729_))
                                                    (___kont242728242729_))
                                                (___kont242728242729_))
                                            (___kont242728242729_))))
                                    (___kont242728242729_))
                                (___kont242728242729_))
                            (___kont242728242729_))))
                    (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242728242729_))
                                                (___kont242728242729_))))
                                        (___kont242728242729_))
                                    (___kont242728242729_))
                                (___kont242728242729_))))
                        (___kont242728242729_))))
                (___kont242728242729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242728242729_))))
                                            (___kont242728242729_))
                                        (___kont242728242729_))
                                    (___kont242728242729_))))
                            (___kont242728242729_))))
                    (___kont242728242729_))
                (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242728242729_))
                                            (___kont242728242729_))
                                        (___kont242728242729_))))
                                (___kont242728242729_))))
                        (___kont242728242729_))
                    (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242728242729_))
                                                (___kont242728242729_))
                                            (___kont242728242729_))))
                                    (___kont242728242729_))))
                            (___kont242728242729_))
                        (___kont242728242729_))
                    (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242728242729_))))
                                            (___kont242728242729_))))
                                    (___kont242728242729_))
                                (___kont242728242729_))
                            (___kont242728242729_))))
                    (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242728242729_))
                                                (___kont242728242729_))
                                            (___kont242728242729_))
                                        (___kont242728242729_))
                                    (___kont242728242729_))
                                (___kont242728242729_))))
                        (___kont242728242729_))
                    (___kont242728242729_))
                (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242728242729_))))
                                        (___kont242728242729_))
                                    (___kont242728242729_))))
                            (___kont242728242729_))
                        (___kont242728242729_))
                    (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242728242729_))))
                                            (___kont242728242729_))
                                        (___kont242728242729_))))
                                (___kont242728242729_))
                            (___kont242728242729_))
                        (___kont242728242729_))))
                (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242728242729_))
                                            (___kont242728242729_))
                                        (___kont242728242729_))))
                                (___kont242728242729_))))
                        (___kont242728242729_))))
                (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242728242729_))
                                            (___kont242728242729_))
                                        (___kont242728242729_))))
                                (___kont242728242729_))))
                        (___kont242728242729_))
                    (___kont242728242729_))
                (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242728242729_))
                                            (___kont242728242729_))))
                                    (___kont242728242729_))))
                            (___kont242728242729_))))
                    (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242728242729_))
                                                (___kont242728242729_))
                                            (___kont242728242729_))))
                                    (___kont242728242729_))))
                            (___kont242728242729_))
                        (___kont242728242729_))))
                (___kont242728242729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont242728242729_))))
                                        (___kont242728242729_))))
                                (___kont242728242729_))
                            (___kont242728242729_))
                        (___kont242728242729_))))
                (___kont242728242729_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx231538_ _id231539_ _clauses231540_ _gensym?231541_)
        (let _lp231543_ ((_rest231545_ _clauses231540_)
                         (_ids231546_ '())
                         (_impls231547_ '())
                         (_clauses231548_ '()))
          (let* ((_rest231549231557_ _rest231545_)
                 (_else231551231565_
                  (lambda ()
                    (values (reverse _ids231546_)
                            (reverse _impls231547_)
                            (reverse _clauses231548_))))
                 (_K231553231770_
                  (lambda (_rest231568_ _clause231569_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause231569_))
                        (let ((__tmp243803
                               (let ()
                                 (declare (not safe))
                                 (cons _clause231569_ _clauses231548_))))
                          (declare (not safe))
                          (_lp231543_
                           _rest231568_
                           _ids231546_
                           _impls231547_
                           __tmp243803))
                        (let* ((_g231571231582_
                                (lambda (_g231572231579_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g231572231579_))))
                               (_g231570231767_
                                (lambda (_g231572231585_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g231572231585_))
                                      (let ((_e231577231587_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g231572231585_))))
                                        (let ((_hd231576231590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231577231587_)))
                                              (_tl231575231592_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231577231587_))))
                                          ((lambda (_L231595_ _L231596_)
                                             (let* ((_id231613_
                                                     (let ((__tmp243750
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id231539_)))
                                                           (__tmp243749
                                                            (length _clauses231548_))
                                                           (__tmp243748
                                                            (if _gensym?231541_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp243750
                                                        '"__"
                                                        __tmp243749
                                                        __tmp243748)))
                                                    (_id231615_
                                                     (let ((__tmp243751
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx231538_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id231613_
                                                        __tmp243751)))
                                                    (_impl231617_
                                                     (let ((__tmp243752
                                                            (let ((__tmp243754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp243753
                           (let ()
                             (declare (not safe))
                             (cons _L231596_ _L231595_))))
                      (declare (not safe))
                      (cons __tmp243754 __tmp243753))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp243752 _stx231538_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause231764_
                                                     (let* ((___stx243108243109_
                                                             _L231596_)
                                                            (_g231621231649_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx243108243109_)))))
               (let ((___kont243110243111_
                      (lambda (_L231743_)
                        (let ((__tmp243755
                               (let ((__tmp243756
                                      (let ((__tmp243757
                                             (let ((__tmp243758
                                                    (let ((__tmp243764
                                                           (let ((__tmp243765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id231615_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243765)))
                  (__tmp243759
                   (let ((__tmp243760
                          (lambda (_g231753231756_ _g231754231758_)
                            (let ((__tmp243761
                                   (let ((__tmp243763
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp243762
                                          (let ()
                                            (declare (not safe))
                                            (cons _g231753231756_ '()))))
                                     (declare (not safe))
                                     (cons __tmp243763 __tmp243762))))
                              (declare (not safe))
                              (cons __tmp243761 _g231754231758_)))))
                     (declare (not safe))
                     (foldr1 __tmp243760 '() _L231743_))))
              (declare (not safe))
              (cons __tmp243764 __tmp243759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243758))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243757
                                         _stx231538_))))
                                 (declare (not safe))
                                 (cons __tmp243756 '()))))
                          (declare (not safe))
                          (cons _L231596_ __tmp243755))))
                     (___kont243114243115_
                      (lambda (_L231694_ _L231695_)
                        (let ((__tmp243766
                               (let ((__tmp243767
                                      (let ((__tmp243768
                                             (let ((__tmp243769
                                                    (let ((__tmp243783
                                                           (let ((__tmp243784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243784)))
                  (__tmp243770
                   (let ((__tmp243781
                          (let ((__tmp243782
                                 (let ()
                                   (declare (not safe))
                                   (cons _id231615_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp243782)))
                         (__tmp243771
                          (let ((__tmp243777
                                 (let ((__tmp243778
                                        (let ((__tmp243780
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp243779
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L231694_ '()))))
                                          (declare (not safe))
                                          (cons __tmp243780 __tmp243779))))
                                   (declare (not safe))
                                   (cons __tmp243778 '())))
                                (__tmp243772
                                 (let ((__tmp243773
                                        (lambda (_g231706231709_
                                                 _g231707231711_)
                                          (let ((__tmp243774
                                                 (let ((__tmp243776
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp243775
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g231706231709_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp243776
                                                         __tmp243775))))
                                            (declare (not safe))
                                            (cons __tmp243774
                                                  _g231707231711_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp243773 '() _L231695_))))
                            (declare (not safe))
                            (foldr1 cons __tmp243777 __tmp243772))))
                     (declare (not safe))
                     (cons __tmp243781 __tmp243771))))
              (declare (not safe))
              (cons __tmp243783 __tmp243770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243769))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243768
                                         _stx231538_))))
                                 (declare (not safe))
                                 (cons __tmp243767 '()))))
                          (declare (not safe))
                          (cons _L231596_ __tmp243766))))
                     (___kont243118243119_
                      (lambda (_L231654_)
                        (let ((__tmp243785
                               (let ((__tmp243786
                                      (let ((__tmp243787
                                             (let ((__tmp243788
                                                    (let ((__tmp243796
                                                           (let ((__tmp243797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp243797)))
                  (__tmp243789
                   (let ((__tmp243794
                          (let ((__tmp243795
                                 (let ()
                                   (declare (not safe))
                                   (cons _id231615_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp243795)))
                         (__tmp243790
                          (let ((__tmp243791
                                 (let ((__tmp243793
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp243792
                                        (let ()
                                          (declare (not safe))
                                          (cons _L231654_ '()))))
                                   (declare (not safe))
                                   (cons __tmp243793 __tmp243792))))
                            (declare (not safe))
                            (cons __tmp243791 '()))))
                     (declare (not safe))
                     (cons __tmp243794 __tmp243790))))
              (declare (not safe))
              (cons __tmp243796 __tmp243789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp243788))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp243787
                                         _stx231538_))))
                                 (declare (not safe))
                                 (cons __tmp243786 '()))))
                          (declare (not safe))
                          (cons _L231596_ __tmp243785)))))
                 (let* ((___match243133243134_
                         (lambda (___splice243116243117_
                                  _target231635231670_
                                  _tl231637231672_)
                           (letrec ((_loop231638231675_
                                     (lambda (_hd231636231678_
                                              _arg231642231680_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd231636231678_))
                                           (let ((_e231639231683_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd231636231678_))))
                                             (let ((_lp-tl231641231688_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231639231683_)))
                                                   (_lp-hd231640231686_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231639231683_))))
                                               (let ((__tmp243798
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd231640231686_
                                                              _arg231642231680_))))
                                                 (declare (not safe))
                                                 (_loop231638231675_
                                                  _lp-tl231641231688_
                                                  __tmp243798))))
                                           (let ((_arg231643231691_
                                                  (reverse _arg231642231680_)))
                                             (___kont243114243115_
                                              _tl231637231672_
                                              _arg231643231691_))))))
                             (let ()
                               (declare (not safe))
                               (_loop231638231675_
                                _target231635231670_
                                '())))))
                        (___match243127243128_
                         (lambda (___splice243112243113_
                                  _target231624231719_
                                  _tl231626231721_)
                           (letrec ((_loop231627231724_
                                     (lambda (_hd231625231727_
                                              _arg231631231729_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd231625231727_))
                                           (let ((_e231628231732_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd231625231727_))))
                                             (let ((_lp-tl231630231737_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231628231732_)))
                                                   (_lp-hd231629231735_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231628231732_))))
                                               (let ((__tmp243799
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd231629231735_
                                                              _arg231631231729_))))
                                                 (declare (not safe))
                                                 (_loop231627231724_
                                                  _lp-tl231630231737_
                                                  __tmp243799))))
                                           (let ((_arg231632231740_
                                                  (reverse _arg231631231729_)))
                                             (___kont243110243111_
                                              _arg231632231740_))))))
                             (let ()
                               (declare (not safe))
                               (_loop231627231724_
                                _target231624231719_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx243108243109_))
                       (let ((___splice243112243113_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx243108243109_
                                 '0))))
                         (let ((_tl231626231721_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243112243113_ '1)))
                               (_target231624231719_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice243112243113_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl231626231721_))
                               (___match243127243128_
                                ___splice243112243113_
                                _target231624231719_
                                _tl231626231721_)
                               (___match243133243134_
                                ___splice243112243113_
                                _target231624231719_
                                _tl231626231721_))))
                       (___kont243118243119_ ___stx243108243109_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp243802
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id231615_
                                                              _ids231546_)))
                                                     (__tmp243801
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl231617_
                                                              _impls231547_)))
                                                     (__tmp243800
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause231764_
                                                              _clauses231548_))))
                                                 (declare (not safe))
                                                 (_lp231543_
                                                  _rest231568_
                                                  __tmp243802
                                                  __tmp243801
                                                  __tmp243800))))
                                           _tl231575231592_
                                           _hd231576231590_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g231571231582_ _g231572231585_))))))
                          (declare (not safe))
                          (_g231570231767_ _clause231569_))))))
            (if (let () (declare (not safe)) (##pair? _rest231549231557_))
                (let ((_hd231554231773_
                       (let ()
                         (declare (not safe))
                         (##car _rest231549231557_)))
                      (_tl231555231775_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest231549231557_))))
                  (let* ((_clause231778_ _hd231554231773_)
                         (_rest231780_ _tl231555231775_))
                    (declare (not safe))
                    (_K231553231770_ _rest231780_ _clause231778_)))
                (let () (declare (not safe)) (_else231551231565_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx231785_ _id231786_ _clauses231787_)
        (let ((_gensym?231789_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx231785_
           _id231786_
           _clauses231787_
           _gensym?231789_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g243805_
        (let ((_g243804_ (let () (declare (not safe)) (##length _g243805_))))
          (cond ((let () (declare (not safe)) (##fx= _g243804_ 3))
                 (apply (lambda (_stx231785_ _id231786_ _clauses231787_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx231785_
                             _id231786_
                             _clauses231787_)))
                        _g243805_))
                ((let () (declare (not safe)) (##fx= _g243804_ 4))
                 (apply (lambda (_stx231791_
                                 _id231792_
                                 _clauses231793_
                                 _gensym?231794_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx231791_
                             _id231792_
                             _clauses231793_
                             _gensym?231794_)))
                        _g243805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g243805_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx230815_)
        (letrec ((_case-lambda-clause-def230817_
                  (lambda (_id231534_ _impl231535_)
                    (let ((__tmp243806
                           (let ((__tmp243807
                                  (let ((__tmp243810
                                         (let ()
                                           (declare (not safe))
                                           (cons _id231534_ '())))
                                        (__tmp243808
                                         (let ((__tmp243809
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl231535_))))
                                           (declare (not safe))
                                           (cons __tmp243809 '()))))
                                    (declare (not safe))
                                    (cons __tmp243810 __tmp243808))))
                             (declare (not safe))
                             (cons '%#define-values __tmp243807))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp243806 _stx230815_))))
                 (_opt-lambda-dispatch-name230818_
                  (lambda (_id231530_)
                    (if (uninterned-symbol? _id231530_)
                        (let ((_str231532_ (symbol->string _id231530_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str231532_))
                              '"%"
                              _id231530_))
                        _id231530_)))
                 (_kw-lambda-dispatch-name230819_
                  (lambda (_id231525_ _name231526_)
                    (if (uninterned-symbol? _id231525_)
                        (let ((_str231528_ (symbol->string _id231525_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str231528_))
                              _name231526_
                              _id231525_))
                        _id231525_))))
          (let* ((___stx243156243157_ _stx230815_)
                 (_g230824230883_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243156243157_)))))
            (let ((___kont243158243159_
                   (lambda (_L231434_ _L231435_)
                     (let* ((___stx243136243137_ _L231434_)
                            (_g231452231466_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243136243137_)))))
                       (let ((___kont243138243139_
                              (lambda (_L231510_) _stx230815_))
                             (___kont243140243141_
                              (lambda (_L231479_)
                                (let ((_g243811_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx230815_
                                          _L231435_
                                          _L231479_))))
                                  (begin
                                    (let ((_g243812_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g243811_)
                                                 (##vector-length _g243811_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g243812_ 3)))
                                          (error "Context expects 3 values"
                                                 _g243812_)))
                                    (let ((_ids231489_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243811_ 0)))
                                          (_impls231490_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243811_ 1)))
                                          (_clauses231491_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g243811_ 2))))
                                      (let* ((_g243813_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids231489_))
                                             (_defs231494_
                                              (map _case-lambda-clause-def230817_
                                                   _ids231489_
                                                   _impls231490_)))
                                        (let ((__tmp243815
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L231435_)))
                                              (__tmp243814
                                               (map gxc#identifier-symbol
                                                    _ids231489_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp243815
                                           '" => "
                                           __tmp243814))
                                        (let ((__tmp243816
                                               (let ((__tmp243817
                                                      (let ((__tmp243818
                                                             (let ((__tmp243819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp243820
                                   (let ((__tmp243821
                                          (let ((__tmp243826
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L231435_ '())))
                                                (__tmp243822
                                                 (let ((__tmp243823
                                                        (let ((__tmp243825
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses231491_)))
                      (__tmp243824
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp243825 __tmp243824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp243823 '()))))
                                            (declare (not safe))
                                            (cons __tmp243826 __tmp243822))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp243821))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp243820
                               _stx230815_))))
                       (declare (not safe))
                       (cons __tmp243819 '()))))
                (declare (not safe))
                (foldr1 cons __tmp243818 _defs231494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp243817))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp243816
                                           _stx230815_)))))))))
                         (let ((___match243147243148_
                                (lambda (_e231457231502_
                                         _hd231456231505_
                                         _tl231455231507_)
                                  (let ((_L231510_ _tl231455231507_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L231510_))
                                        (___kont243138243139_ _L231510_)
                                        (___kont243140243141_
                                         _tl231455231507_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx243136243137_))
                               (let ((_e231457231502_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx243136243137_))))
                                 (let ((_tl231455231507_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231457231502_)))
                                       (_hd231456231505_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231457231502_))))
                                   (___match243147243148_
                                    _e231457231502_
                                    _hd231456231505_
                                    _tl231455231507_)))
                               (let ()
                                 (declare (not safe))
                                 (_g231452231466_))))))))
                  (___kont243160243161_
                   (lambda (_L231252_ _L231253_)
                     (let* ((_g231269231299_
                             (lambda (_g231270231296_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g231270231296_))))
                            (_g231268231394_
                             (lambda (_g231270231302_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g231270231302_))
                                   (let ((_e231276231304_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g231270231302_))))
                                     (let ((_hd231275231307_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e231276231304_)))
                                           (_tl231274231309_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e231276231304_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl231274231309_))
                                           (let ((_e231279231312_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl231274231309_))))
                                             (let ((_hd231278231315_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e231279231312_)))
                                                   (_tl231277231317_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e231279231312_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd231278231315_))
                                                   (let ((_e231282231320_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd231278231315_))))
                                                     (let ((_hd231281231323_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231282231320_)))
                                                           (_tl231280231325_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231282231320_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd231281231323_))
                                                           (let ((_e231285231328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd231281231323_))))
                     (let ((_hd231284231331_
                            (let ()
                              (declare (not safe))
                              (##car _e231285231328_)))
                           (_tl231283231333_
                            (let ()
                              (declare (not safe))
                              (##cdr _e231285231328_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd231284231331_))
                           (let ((_e231288231336_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd231284231331_))))
                             (let ((_hd231287231339_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231288231336_)))
                                   (_tl231286231341_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231288231336_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231286231341_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl231283231333_))
                                       (let ((_e231291231344_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl231283231333_))))
                                         (let ((_hd231290231347_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231291231344_)))
                                               (_tl231289231349_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231291231344_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231289231349_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl231280231325_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231277231317_))
                                                       (let ((_e231294231352_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231277231317_))))
                 (let ((_hd231293231355_
                        (let () (declare (not safe)) (##car _e231294231352_)))
                       (_tl231292231357_
                        (let () (declare (not safe)) (##cdr _e231294231352_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl231292231357_))
                       ((lambda (_L231360_ _L231361_ _L231362_)
                          (let* ((_lambda-id231386_
                                  (let ((__tmp243829
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L231253_)))
                                        (__tmp243827
                                         (let ((__tmp243828
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L231362_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name230818_
                                            __tmp243828))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp243829
                                     '"__"
                                     __tmp243827)))
                                 (_lambda-id231388_
                                  (let ((__tmp243830
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx230815_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id231386_
                                     __tmp243830)))
                                 (_g243831_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id231388_)))
                                 (_new-case-lambda-expr231391_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L231360_
                                     _L231362_
                                     _lambda-id231388_))))
                            (let ((__tmp243833
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L231253_)))
                                  (__tmp243832
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id231388_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp243833
                               '" => "
                               __tmp243832))
                            (let ((__tmp243834
                                   (let ((__tmp243835
                                          (let ((__tmp243843
                                                 (let ((__tmp243844
                                                        (let ((__tmp243845
                                                               (let ((__tmp243848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id231388_ '())))
                             (__tmp243846
                              (let ((__tmp243847
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L231361_))))
                                (declare (not safe))
                                (cons __tmp243847 '()))))
                         (declare (not safe))
                         (cons __tmp243848 __tmp243846))))
                  (declare (not safe))
                  (cons '%#define-values __tmp243845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp243844
                                                    _stx230815_)))
                                                (__tmp243836
                                                 (let ((__tmp243837
                                                        (let ((__tmp243838
                                                               (let ((__tmp243839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp243840
                                     (let ((__tmp243842
                                            (let ()
                                              (declare (not safe))
                                              (cons _L231253_ '())))
                                           (__tmp243841
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr231391_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp243842 __tmp243841))))
                                (declare (not safe))
                                (cons '%#define-values __tmp243840))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp243839 _stx230815_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp243838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp243837 '()))))
                                            (declare (not safe))
                                            (cons __tmp243843 __tmp243836))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp243835))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp243834
                               _stx230815_))))
                        _hd231293231355_
                        _hd231290231347_
                        _hd231287231339_)
                       (let ()
                         (declare (not safe))
                         (_g231269231299_ _g231270231302_)))))
               (let () (declare (not safe)) (_g231269231299_ _g231270231302_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231269231299_
                                                      _g231270231302_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g231269231299_
                                                  _g231270231302_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g231269231299_ _g231270231302_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g231269231299_ _g231270231302_)))))
                           (let ()
                             (declare (not safe))
                             (_g231269231299_ _g231270231302_)))))
                   (let ()
                     (declare (not safe))
                     (_g231269231299_ _g231270231302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g231269231299_
                                                      _g231270231302_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g231269231299_
                                              _g231270231302_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g231269231299_ _g231270231302_))))))
                       (declare (not safe))
                       (_g231268231394_ _L231252_))))
                  (___kont243162243163_
                   (lambda (_L230966_ _L230967_)
                     (let* ((_g230983231036_
                             (lambda (_g230984231033_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g230984231033_))))
                            (_g230982231212_
                             (lambda (_g230984231039_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g230984231039_))
                                   (let ((_e230992231041_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g230984231039_))))
                                     (let ((_hd230991231044_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e230992231041_)))
                                           (_tl230990231046_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e230992231041_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl230990231046_))
                                           (let ((_e230995231049_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl230990231046_))))
                                             (let ((_hd230994231052_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230995231049_)))
                                                   (_tl230993231054_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230995231049_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230994231052_))
                                                   (let ((_e230998231057_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230994231052_))))
                                                     (let ((_hd230997231060_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230998231057_)))
                                                           (_tl230996231062_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230998231057_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd230997231060_))
                                                           (let ((_e231001231065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd230997231060_))))
                     (let ((_hd231000231068_
                            (let ()
                              (declare (not safe))
                              (##car _e231001231065_)))
                           (_tl230999231070_
                            (let ()
                              (declare (not safe))
                              (##cdr _e231001231065_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd231000231068_))
                           (let ((_e231004231073_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd231000231068_))))
                             (let ((_hd231003231076_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231004231073_)))
                                   (_tl231002231078_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231004231073_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231002231078_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl230999231070_))
                                       (let ((_e231007231081_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl230999231070_))))
                                         (let ((_hd231006231084_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231007231081_)))
                                               (_tl231005231086_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231007231081_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd231006231084_))
                                               (let ((_e231010231089_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd231006231084_))))
                                                 (let ((_hd231009231092_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231010231089_)))
                                                       (_tl231008231094_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231010231089_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl231008231094_))
                                                       (let ((_e231013231097_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl231008231094_))))
                 (let ((_hd231012231100_
                        (let () (declare (not safe)) (##car _e231013231097_)))
                       (_tl231011231102_
                        (let () (declare (not safe)) (##cdr _e231013231097_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd231012231100_))
                       (let ((_e231016231105_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd231012231100_))))
                         (let ((_hd231015231108_
                                (let ()
                                  (declare (not safe))
                                  (##car _e231016231105_)))
                               (_tl231014231110_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e231016231105_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd231015231108_))
                               (let ((_e231019231113_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd231015231108_))))
                                 (let ((_hd231018231116_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e231019231113_)))
                                       (_tl231017231118_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e231019231113_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd231018231116_))
                                       (let ((_e231022231121_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd231018231116_))))
                                         (let ((_hd231021231124_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e231022231121_)))
                                               (_tl231020231126_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e231022231121_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl231020231126_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl231017231118_))
                                                   (let ((_e231025231129_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl231017231118_))))
                                                     (let ((_hd231024231132_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e231025231129_)))
                                                           (_tl231023231134_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e231025231129_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl231023231134_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl231014231110_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl231011231102_))
                           (let ((_e231028231137_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl231011231102_))))
                             (let ((_hd231027231140_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e231028231137_)))
                                   (_tl231026231142_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e231028231137_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl231026231142_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl231005231086_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl230996231062_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl230993231054_))
                                               (let ((_e231031231145_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl230993231054_))))
                                                 (let ((_hd231030231148_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e231031231145_)))
                                                       (_tl231029231150_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e231031231145_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl231029231150_))
                                                       ((lambda (_L231153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L231154_
                         _L231155_
                         _L231156_
                         _L231157_)
                  (let* ((_get-kws-id231197_
                          (let ((__tmp243851
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L230967_)))
                                (__tmp243849
                                 (let ((__tmp243850
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231157_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name230819_
                                    __tmp243850
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp243851 '"__" __tmp243849)))
                         (_get-kws-id231199_
                          (let ((__tmp243852
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx230815_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id231197_
                             __tmp243852)))
                         (_main-id231201_
                          (let ((__tmp243855
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L230967_)))
                                (__tmp243853
                                 (let ((__tmp243854
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L231156_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name230819_
                                    __tmp243854
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp243855 '"__" __tmp243853)))
                         (_main-id231203_
                          (let ((__tmp243856
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx230815_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id231201_
                             __tmp243856)))
                         (_g243857_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id231199_)))
                         (_g243858_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id231203_)))
                         (_new-kw-dispatch231207_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231153_
                             _L231157_
                             _get-kws-id231199_)))
                         (_new-get-kws231209_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L231154_
                             _L231156_
                             _main-id231203_))))
                    (let ((__tmp243861
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L230967_)))
                          (__tmp243860
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id231199_)))
                          (__tmp243859
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id231203_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp243861
                       '" => "
                       __tmp243860
                       '" => "
                       __tmp243859))
                    (let ((__tmp243862
                           (let ((__tmp243863
                                  (let ((__tmp243876
                                         (let ((__tmp243877
                                                (let ((__tmp243878
                                                       (let ((__tmp243879
                                                              (let ((__tmp243881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id231203_ '())))
                            (__tmp243880
                             (let ()
                               (declare (not safe))
                               (cons _L231155_ '()))))
                        (declare (not safe))
                        (cons __tmp243881 __tmp243880))))
                 (declare (not safe))
                 (cons '%#define-values __tmp243879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243878
                                                   _stx230815_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp243877)))
                                        (__tmp243864
                                         (let ((__tmp243871
                                                (let ((__tmp243872
                                                       (let ((__tmp243873
                                                              (let ((__tmp243875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id231199_ '())))
                            (__tmp243874
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws231209_ '()))))
                        (declare (not safe))
                        (cons __tmp243875 __tmp243874))))
                 (declare (not safe))
                 (cons '%#define-values __tmp243873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243872
                                                   _stx230815_)))
                                               (__tmp243865
                                                (let ((__tmp243866
                                                       (let ((__tmp243867
                                                              (let ((__tmp243868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp243870
                                    (let ()
                                      (declare (not safe))
                                      (cons _L230967_ '())))
                                   (__tmp243869
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch231207_ '()))))
                               (declare (not safe))
                               (cons __tmp243870 __tmp243869))))
                        (declare (not safe))
                        (cons '%#define-values __tmp243868))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp243867 _stx230815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp243866 '()))))
                                           (declare (not safe))
                                           (cons __tmp243871 __tmp243865))))
                                    (declare (not safe))
                                    (cons __tmp243876 __tmp243864))))
                             (declare (not safe))
                             (cons '%#begin __tmp243863))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp243862 _stx230815_))))
                _hd231030231148_
                _hd231027231140_
                _hd231024231132_
                _hd231021231124_
                _hd231003231076_)
               (let ()
                 (declare (not safe))
                 (_g230983231036_ _g230984231039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230983231036_
                                                  _g230984231039_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g230983231036_
                                              _g230984231039_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g230983231036_ _g230984231039_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230983231036_ _g230984231039_)))))
                           (let ()
                             (declare (not safe))
                             (_g230983231036_ _g230984231039_)))
                       (let ()
                         (declare (not safe))
                         (_g230983231036_ _g230984231039_)))
                   (let ()
                     (declare (not safe))
                     (_g230983231036_ _g230984231039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230983231036_
                                                      _g230984231039_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230983231036_
                                                  _g230984231039_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230983231036_ _g230984231039_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g230983231036_ _g230984231039_)))))
                       (let ()
                         (declare (not safe))
                         (_g230983231036_ _g230984231039_)))))
               (let ()
                 (declare (not safe))
                 (_g230983231036_ _g230984231039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230983231036_
                                                  _g230984231039_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230983231036_ _g230984231039_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230983231036_ _g230984231039_)))))
                           (let ()
                             (declare (not safe))
                             (_g230983231036_ _g230984231039_)))))
                   (let ()
                     (declare (not safe))
                     (_g230983231036_ _g230984231039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230983231036_
                                                      _g230984231039_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g230983231036_
                                              _g230984231039_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g230983231036_ _g230984231039_))))))
                       (declare (not safe))
                       (_g230982231212_ _L230966_))))
                  (___kont243164243165_
                   (lambda (_L230912_ _L230913_)
                     (let ((__tmp243882
                            (let ((__tmp243883
                                   (let ((__tmp243884
                                          (let ((__tmp243885
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L230912_))))
                                            (declare (not safe))
                                            (cons __tmp243885 '()))))
                                     (declare (not safe))
                                     (cons _L230913_ __tmp243884))))
                              (declare (not safe))
                              (cons '%#define-values __tmp243883))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp243882 _stx230815_)))))
              (let* ((___match243249243250_
                      (lambda (_e230858230934_
                               _hd230857230937_
                               _tl230856230939_
                               _e230861230942_
                               _hd230860230945_
                               _tl230859230947_
                               _e230864230950_
                               _hd230863230953_
                               _tl230862230955_
                               _e230867230958_
                               _hd230866230961_
                               _tl230865230963_)
                        (let ((_L230966_ _hd230866230961_)
                              (_L230967_ _hd230863230953_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L230967_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L230966_)))
                              (___kont243162243163_ _L230966_ _L230967_)
                              (___kont243164243165_
                               _hd230866230961_
                               _hd230860230945_)))))
                     (___match243221243222_
                      (lambda (_e230844231220_
                               _hd230843231223_
                               _tl230842231225_
                               _e230847231228_
                               _hd230846231231_
                               _tl230845231233_
                               _e230850231236_
                               _hd230849231239_
                               _tl230848231241_
                               _e230853231244_
                               _hd230852231247_
                               _tl230851231249_)
                        (let ((_L231252_ _hd230852231247_)
                              (_L231253_ _hd230849231239_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231253_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L231252_)))
                              (___kont243160243161_ _L231252_ _L231253_)
                              (___match243249243250_
                               _e230844231220_
                               _hd230843231223_
                               _tl230842231225_
                               _e230847231228_
                               _hd230846231231_
                               _tl230845231233_
                               _e230850231236_
                               _hd230849231239_
                               _tl230848231241_
                               _e230853231244_
                               _hd230852231247_
                               _tl230851231249_)))))
                     (___match243193243194_
                      (lambda (_e230830231402_
                               _hd230829231405_
                               _tl230828231407_
                               _e230833231410_
                               _hd230832231413_
                               _tl230831231415_
                               _e230836231418_
                               _hd230835231421_
                               _tl230834231423_
                               _e230839231426_
                               _hd230838231429_
                               _tl230837231431_)
                        (let ((_L231434_ _hd230838231429_)
                              (_L231435_ _hd230835231421_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L231435_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L231434_)))
                              (___kont243158243159_ _L231434_ _L231435_)
                              (___match243221243222_
                               _e230830231402_
                               _hd230829231405_
                               _tl230828231407_
                               _e230833231410_
                               _hd230832231413_
                               _tl230831231415_
                               _e230836231418_
                               _hd230835231421_
                               _tl230834231423_
                               _e230839231426_
                               _hd230838231429_
                               _tl230837231431_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243156243157_))
                    (let ((_e230830231402_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243156243157_))))
                      (let ((_tl230828231407_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230830231402_)))
                            (_hd230829231405_
                             (let ()
                               (declare (not safe))
                               (##car _e230830231402_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230828231407_))
                            (let ((_e230833231410_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230828231407_))))
                              (let ((_tl230831231415_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230833231410_)))
                                    (_hd230832231413_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230833231410_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230832231413_))
                                    (let ((_e230836231418_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230832231413_))))
                                      (let ((_tl230834231423_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230836231418_)))
                                            (_hd230835231421_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230836231418_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230834231423_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230831231415_))
                                                (let ((_e230839231426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230831231415_))))
                                                  (let ((_tl230837231431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230839231426_)))
                                                        (_hd230838231429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230839231426_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230837231431_))
                                                        (___match243193243194_
                                                         _e230830231402_
                                                         _hd230829231405_
                                                         _tl230828231407_
                                                         _e230833231410_
                                                         _hd230832231413_
                                                         _tl230831231415_
                                                         _e230836231418_
                                                         _hd230835231421_
                                                         _tl230834231423_
                                                         _e230839231426_
                                                         _hd230838231429_
                                                         _tl230837231431_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230824230883_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230824230883_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230831231415_))
                                                (let ((_e230878230904_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230831231415_))))
                                                  (let ((_tl230876230909_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230878230904_)))
                                                        (_hd230877230907_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230878230904_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230876230909_))
                                                        (___kont243164243165_
                                                         _hd230877230907_
                                                         _hd230832231413_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230824230883_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230824230883_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl230831231415_))
                                        (let ((_e230878230904_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl230831231415_))))
                                          (let ((_tl230876230909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230878230904_)))
                                                (_hd230877230907_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230878230904_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230876230909_))
                                                (___kont243164243165_
                                                 _hd230877230907_
                                                 _hd230832231413_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230824230883_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g230824230883_))))))
                            (let () (declare (not safe)) (_g230824230883_)))))
                    (let () (declare (not safe)) (_g230824230883_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx229747_)
        (letrec* ((_bind-e__241552241553_
                   (lambda (_id230799_ _expr230800_ _compile?230801_)
                     (let ((__tmp243888
                            (let ()
                              (declare (not safe))
                              (cons _id230799_ '())))
                           (__tmp243886
                            (let ((__tmp243887
                                   (if _compile?230801_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr230800_))
                                       _expr230800_)))
                              (declare (not safe))
                              (cons __tmp243887 '()))))
                       (declare (not safe))
                       (cons __tmp243888 __tmp243886))))
                  (_bind-e__0__241554241555_
                   (lambda (_id230806_ _expr230807_)
                     (let ((_compile?230809_ '#t))
                       (declare (not safe))
                       (_bind-e__241552241553_
                        _id230806_
                        _expr230807_
                        _compile?230809_))))
                  (_bind-e229749_
                   (lambda _g243890_
                     (let ((_g243889_
                            (let ()
                              (declare (not safe))
                              (##length _g243890_))))
                       (cond ((let () (declare (not safe)) (##fx= _g243889_ 2))
                              (apply (lambda (_id230806_ _expr230807_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__241554241555_
                                          _id230806_
                                          _expr230807_)))
                                     _g243890_))
                             ((let () (declare (not safe)) (##fx= _g243889_ 3))
                              (apply (lambda (_id230811_
                                              _expr230812_
                                              _compile?230813_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__241552241553_
                                          _id230811_
                                          _expr230812_
                                          _compile?230813_)))
                                     _g243890_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g243890_))))))
                  (_compile-bindings229750_
                   (lambda (_bindings230383_)
                     (let _lp230385_ ((_rest230387_ _bindings230383_)
                                      (_lift1230388_ '())
                                      (_lift2230389_ '())
                                      (_bind230390_ '()))
                       (let* ((_rest230391230399_ _rest230387_)
                              (_else230393230407_
                               (lambda ()
                                 (values (reverse _lift1230388_)
                                         (reverse _lift2230389_)
                                         (reverse _bind230390_))))
                              (_K230395230786_
                               (lambda (_rest230410_ _hd230411_)
                                 (let* ((___stx243292243293_ _hd230411_)
                                        (_g230415230451_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243292243293_)))))
                                   (let ((___kont243294243295_
                                          (lambda (_L230693_ _L230694_)
                                            (let* ((___stx243272243273_
                                                    _L230693_)
                                                   (_g230709230723_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243272243273_)))))
                                              (let ((___kont243274243275_
                                                     (lambda (_L230771_)
                                                       (let ((__tmp243891
                                                              (let ((__tmp243892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__241552241553_
                                _L230694_
                                _L230693_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp243892 _bind230390_))))
                 (declare (not safe))
                 (_lp230385_
                  _rest230410_
                  _lift1230388_
                  _lift2230389_
                  __tmp243891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243276243277_
                                                     (lambda (_L230736_)
                                                       (let ((_g243893_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx229747_
                         _L230694_
                         _L230736_
                         '#t))))
                 (begin
                   (let ((_g243894_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g243893_)
                                (##vector-length _g243893_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g243894_ 3)))
                         (error "Context expects 3 values" _g243894_)))
                   (let ((_ids230746_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243893_ 0)))
                         (_impls230747_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243893_ 1)))
                         (_clauses230748_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243893_ 2))))
                     (let* ((_g243895_
                             (for-each gx#core-bind-runtime! _ids230746_))
                            (_xbind230751_
                             (map _bind-e229749_ _ids230746_ _impls230747_))
                            (_expr*230753_
                             (let ((__tmp243897
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses230748_)))
                                   (__tmp243896
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp243897
                                __tmp243896)))
                            (_bind*230755_
                             (let ()
                               (declare (not safe))
                               (_bind-e__241552241553_
                                _L230694_
                                _expr*230753_
                                '#f))))
                       (let ((__tmp243899
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L230694_)))
                             (__tmp243898
                              (map gxc#identifier-symbol _ids230746_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp243899
                          '" => "
                          __tmp243898))
                       (let ((__tmp243901
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2230389_ _xbind230751_)))
                             (__tmp243900
                              (let ()
                                (declare (not safe))
                                (cons _bind*230755_ _bind230390_))))
                         (declare (not safe))
                         (_lp230385_
                          _rest230410_
                          _lift1230388_
                          __tmp243901
                          __tmp243900)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match243283243284_
                                                       (lambda (_e230714230763_
                                                                _hd230713230766_
                                                                _tl230712230768_)
                                                         (let ((_L230771_
                                                                _tl230712230768_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L230771_))
                       (___kont243274243275_ _L230771_)
                       (___kont243276243277_ _tl230712230768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx243272243273_))
                                                      (let ((_e230714230763_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx243272243273_))))
                (let ((_tl230712230768_
                       (let () (declare (not safe)) (##cdr _e230714230763_)))
                      (_hd230713230766_
                       (let () (declare (not safe)) (##car _e230714230763_))))
                  (___match243283243284_
                   _e230714230763_
                   _hd230713230766_
                   _tl230712230768_)))
              (let () (declare (not safe)) (_g230709230723_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont243296243297_
                                          (lambda (_L230521_ _L230522_)
                                            (let* ((_g230536230566_
                                                    (lambda (_g230537230563_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230537230563_))))
                                                   (_g230535230661_
                                                    (lambda (_g230537230569_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230537230569_))
                                                          (let ((_e230543230571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230537230569_))))
                    (let ((_hd230542230574_
                           (let ()
                             (declare (not safe))
                             (##car _e230543230571_)))
                          (_tl230541230576_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230543230571_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230541230576_))
                          (let ((_e230546230579_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230541230576_))))
                            (let ((_hd230545230582_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230546230579_)))
                                  (_tl230544230584_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230546230579_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230545230582_))
                                  (let ((_e230549230587_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230545230582_))))
                                    (let ((_hd230548230590_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230549230587_)))
                                          (_tl230547230592_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230549230587_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230548230590_))
                                          (let ((_e230552230595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230548230590_))))
                                            (let ((_hd230551230598_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230552230595_)))
                                                  (_tl230550230600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230552230595_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230551230598_))
                                                  (let ((_e230555230603_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230551230598_))))
                                                    (let ((_hd230554230606_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230555230603_)))
                                                          (_tl230553230608_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230555230603_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230553230608_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230550230600_))
                      (let ((_e230558230611_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230550230600_))))
                        (let ((_hd230557230614_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230558230611_)))
                              (_tl230556230616_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230558230611_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230556230616_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230547230592_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230544230584_))
                                      (let ((_e230561230619_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230544230584_))))
                                        (let ((_hd230560230622_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230561230619_)))
                                              (_tl230559230624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230561230619_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230559230624_))
                                              ((lambda (_L230627_
                                                        _L230628_
                                                        _L230629_)
                                                 (let* ((_lambda-id230653_
                                                         (let ((__tmp243903
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L230522_)))
                       (__tmp243902 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp243903 __tmp243902)))
                (_lambda-id230655_
                 (let ((__tmp243904
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx229747_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id230653_ __tmp243904)))
                (_g243905_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id230655_)))
                (_new-case-lambda-expr230658_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L230627_
                    _L230629_
                    _lambda-id230655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp243907
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L230522_)))
                                                         (__tmp243906
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id230655_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp243907
                                                      '" => "
                                                      __tmp243906))
                                                   (let ((__tmp243910
                                                          (let ((__tmp243911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__241552241553_
                            _L230522_
                            _new-case-lambda-expr230658_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp243911 _rest230410_)))
                 (__tmp243908
                  (let ((__tmp243909
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__241554241555_
                            _lambda-id230655_
                            _L230628_))))
                    (declare (not safe))
                    (cons __tmp243909 _lift1230388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp230385_
                                                      __tmp243910
                                                      __tmp243908
                                                      _lift2230389_
                                                      _bind230390_))))
                                               _hd230560230622_
                                               _hd230557230614_
                                               _hd230554230606_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230536230566_
                                                 _g230537230569_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230536230566_ _g230537230569_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230536230566_ _g230537230569_)))
                              (let ()
                                (declare (not safe))
                                (_g230536230566_ _g230537230569_)))))
                      (let ()
                        (declare (not safe))
                        (_g230536230566_ _g230537230569_)))
                  (let ()
                    (declare (not safe))
                    (_g230536230566_ _g230537230569_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230536230566_
                                                     _g230537230569_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230536230566_
                                             _g230537230569_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230536230566_ _g230537230569_)))))
                          (let ()
                            (declare (not safe))
                            (_g230536230566_ _g230537230569_)))))
                  (let ()
                    (declare (not safe))
                    (_g230536230566_ _g230537230569_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230535230661_ _L230521_))))
                                         (___kont243298243299_
                                          (lambda (_L230472_ _L230473_)
                                            (let ((__tmp243912
                                                   (let ((__tmp243913
                                                          (let ((__tmp243914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp243915
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L230472_))))
                           (declare (not safe))
                           (cons __tmp243915 '()))))
                    (declare (not safe))
                    (cons _L230473_ __tmp243914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp243913
                                                           _bind230390_))))
                                              (declare (not safe))
                                              (_lp230385_
                                               _rest230410_
                                               _lift1230388_
                                               _lift2230389_
                                               __tmp243912)))))
                                     (let* ((___match243343243344_
                                             (lambda (_e230432230497_
                                                      _hd230431230500_
                                                      _tl230430230502_
                                                      _e230435230505_
                                                      _hd230434230508_
                                                      _tl230433230510_
                                                      _e230438230513_
                                                      _hd230437230516_
                                                      _tl230436230518_)
                                               (let ((_L230521_
                                                      _hd230437230516_)
                                                     (_L230522_
                                                      _hd230434230508_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230522_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L230521_)))
                                                     (___kont243296243297_
                                                      _L230521_
                                                      _L230522_)
                                                     (___kont243298243299_
                                                      _hd230437230516_
                                                      _hd230431230500_)))))
                                            (___match243321243322_
                                             (lambda (_e230421230669_
                                                      _hd230420230672_
                                                      _tl230419230674_
                                                      _e230424230677_
                                                      _hd230423230680_
                                                      _tl230422230682_
                                                      _e230427230685_
                                                      _hd230426230688_
                                                      _tl230425230690_)
                                               (let ((_L230693_
                                                      _hd230426230688_)
                                                     (_L230694_
                                                      _hd230423230680_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230694_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L230693_)))
                                                     (___kont243294243295_
                                                      _L230693_
                                                      _L230694_)
                                                     (___match243343243344_
                                                      _e230421230669_
                                                      _hd230420230672_
                                                      _tl230419230674_
                                                      _e230424230677_
                                                      _hd230423230680_
                                                      _tl230422230682_
                                                      _e230427230685_
                                                      _hd230426230688_
                                                      _tl230425230690_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243292243293_))
                                           (let ((_e230421230669_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243292243293_))))
                                             (let ((_tl230419230674_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230421230669_)))
                                                   (_hd230420230672_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230421230669_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230420230672_))
                                                   (let ((_e230424230677_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230420230672_))))
                                                     (let ((_tl230422230682_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230424230677_)))
                                                           (_hd230423230680_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230424230677_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230422230682_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl230419230674_))
                       (let ((_e230427230685_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230419230674_))))
                         (let ((_tl230425230690_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230427230685_)))
                               (_hd230426230688_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230427230685_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230425230690_))
                               (___match243321243322_
                                _e230421230669_
                                _hd230420230672_
                                _tl230419230674_
                                _e230424230677_
                                _hd230423230680_
                                _tl230422230682_
                                _e230427230685_
                                _hd230426230688_
                                _tl230425230690_)
                               (let ()
                                 (declare (not safe))
                                 (_g230415230451_)))))
                       (let () (declare (not safe)) (_g230415230451_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl230419230674_))
                       (let ((_e230446230464_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl230419230674_))))
                         (let ((_tl230444230469_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230446230464_)))
                               (_hd230445230467_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230446230464_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230444230469_))
                               (___kont243298243299_
                                _hd230445230467_
                                _hd230420230672_)
                               (let ()
                                 (declare (not safe))
                                 (_g230415230451_)))))
                       (let () (declare (not safe)) (_g230415230451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230419230674_))
                                                       (let ((_e230446230464_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230419230674_))))
                 (let ((_tl230444230469_
                        (let () (declare (not safe)) (##cdr _e230446230464_)))
                       (_hd230445230467_
                        (let () (declare (not safe)) (##car _e230446230464_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230444230469_))
                       (___kont243298243299_ _hd230445230467_ _hd230420230672_)
                       (let () (declare (not safe)) (_g230415230451_)))))
               (let () (declare (not safe)) (_g230415230451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g230415230451_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest230391230399_))
                             (let ((_hd230396230789_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest230391230399_)))
                                   (_tl230397230791_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest230391230399_))))
                               (let* ((_hd230794_ _hd230396230789_)
                                      (_rest230796_ _tl230397230791_))
                                 (declare (not safe))
                                 (_K230395230786_ _rest230796_ _hd230794_)))
                             (let ()
                               (declare (not safe))
                               (_else230393230407_)))))))
                  (_lift-kw-lambda?229751_
                   (lambda (_bind230307_)
                     (let* ((___stx243360243361_ _bind230307_)
                            (_g230310230327_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx243360243361_)))))
                       (let ((___kont243362243363_
                              (lambda (_L230363_ _L230364_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L230364_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L230363_))
                                    '#f)))
                             (___kont243364243365_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx243360243361_))
                             (let ((_e230316230339_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx243360243361_))))
                               (let ((_tl230314230344_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e230316230339_)))
                                     (_hd230315230342_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e230316230339_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd230315230342_))
                                     (let ((_e230319230347_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd230315230342_))))
                                       (let ((_tl230317230352_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e230319230347_)))
                                             (_hd230318230350_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e230319230347_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl230317230352_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl230314230344_))
                                                 (let ((_e230322230355_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl230314230344_))))
                                                   (let ((_tl230320230360_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e230322230355_)))
                                                         (_hd230321230358_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e230322230355_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl230320230360_))
                                                         (___kont243362243363_
                                                          _hd230321230358_
                                                          _hd230318230350_)
                                                         (___kont243364243365_))))
                                                 (___kont243364243365_))
                                             (___kont243364243365_))))
                                     (___kont243364243365_))))
                             (___kont243364243365_))))))
                  (_lift-kw-lambda-bindings229752_
                   (lambda (_bindings229919_)
                     (let _lp229921_ ((_rest229923_ _bindings229919_)
                                      (_lift1229924_ '())
                                      (_lift2229925_ '())
                                      (_bind229926_ '()))
                       (let* ((_rest229927229935_ _rest229923_)
                              (_else229929229943_
                               (lambda ()
                                 (values (reverse _lift1229924_)
                                         (reverse _lift2229925_)
                                         (reverse _bind229926_))))
                              (_K229931230295_
                               (lambda (_rest229946_ _hd229947_)
                                 (let* ((___stx243390243391_ _hd229947_)
                                        (_g229950229975_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243390243391_)))))
                                   (let ((___kont243392243393_
                                          (lambda (_L230045_ _L230046_)
                                            (let* ((_g230060230113_
                                                    (lambda (_g230061230110_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g230061230110_))))
                                                   (_g230059230289_
                                                    (lambda (_g230061230116_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g230061230116_))
                                                          (let ((_e230069230118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g230061230116_))))
                    (let ((_hd230068230121_
                           (let ()
                             (declare (not safe))
                             (##car _e230069230118_)))
                          (_tl230067230123_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230069230118_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230067230123_))
                          (let ((_e230072230126_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230067230123_))))
                            (let ((_hd230071230129_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230072230126_)))
                                  (_tl230070230131_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230072230126_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230071230129_))
                                  (let ((_e230075230134_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230071230129_))))
                                    (let ((_hd230074230137_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230075230134_)))
                                          (_tl230073230139_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230075230134_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd230074230137_))
                                          (let ((_e230078230142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd230074230137_))))
                                            (let ((_hd230077230145_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230078230142_)))
                                                  (_tl230076230147_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230078230142_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd230077230145_))
                                                  (let ((_e230081230150_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd230077230145_))))
                                                    (let ((_hd230080230153_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230081230150_)))
                                                          (_tl230079230155_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230081230150_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230079230155_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230076230147_))
                      (let ((_e230084230158_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230076230147_))))
                        (let ((_hd230083230161_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230084230158_)))
                              (_tl230082230163_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230084230158_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230083230161_))
                              (let ((_e230087230166_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230083230161_))))
                                (let ((_hd230086230169_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230087230166_)))
                                      (_tl230085230171_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230087230166_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230085230171_))
                                      (let ((_e230090230174_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230085230171_))))
                                        (let ((_hd230089230177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230090230174_)))
                                              (_tl230088230179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230090230174_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd230089230177_))
                                              (let ((_e230093230182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd230089230177_))))
                                                (let ((_hd230092230185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230093230182_)))
                                                      (_tl230091230187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230093230182_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd230092230185_))
                                                      (let ((_e230096230190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd230092230185_))))
                (let ((_hd230095230193_
                       (let () (declare (not safe)) (##car _e230096230190_)))
                      (_tl230094230195_
                       (let () (declare (not safe)) (##cdr _e230096230190_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230095230193_))
                      (let ((_e230099230198_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230095230193_))))
                        (let ((_hd230098230201_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230099230198_)))
                              (_tl230097230203_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230099230198_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl230097230203_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230094230195_))
                                  (let ((_e230102230206_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230094230195_))))
                                    (let ((_hd230101230209_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230102230206_)))
                                          (_tl230100230211_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230102230206_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230100230211_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230091230187_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230088230179_))
                                                  (let ((_e230105230214_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230088230179_))))
                                                    (let ((_hd230104230217_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230105230214_)))
                                                          (_tl230103230219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230105230214_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230103230219_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl230082230163_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl230073230139_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230070230131_))
                              (let ((_e230108230222_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230070230131_))))
                                (let ((_hd230107230225_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230108230222_)))
                                      (_tl230106230227_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230108230222_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230106230227_))
                                      ((lambda (_L230230_
                                                _L230231_
                                                _L230232_
                                                _L230233_
                                                _L230234_)
                                         (let* ((_get-kws-id230274_
                                                 (let ((__tmp243917
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230046_)))
                                                       (__tmp243916
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243917
                                                    __tmp243916)))
                                                (_get-kws-id230276_
                                                 (let ((__tmp243918
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229747_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id230274_
                                                    __tmp243918)))
                                                (_main-id230278_
                                                 (let ((__tmp243920
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L230046_)))
                                                       (__tmp243919
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243920
                                                    __tmp243919)))
                                                (_main-id230280_
                                                 (let ((__tmp243921
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229747_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id230278_
                                                    __tmp243921)))
                                                (_g243922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id230276_)))
                                                (_g243923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id230280_)))
                                                (_new-kw-dispatch230284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230230_
                                                    _L230234_
                                                    _get-kws-id230276_)))
                                                (_new-get-kws230286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L230231_
                                                    _L230233_
                                                    _main-id230280_))))
                                           (let ((__tmp243926
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L230046_)))
                                                 (__tmp243925
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id230276_)))
                                                 (__tmp243924
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id230280_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp243926
                                              '" => "
                                              __tmp243925
                                              '" => "
                                              __tmp243924))
                                           (let ((__tmp243931
                                                  (let ((__tmp243932
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241552241553_
                                                            _main-id230280_
                                                            _L230232_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243932
                                                          _lift1229924_)))
                                                 (__tmp243929
                                                  (let ((__tmp243930
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241552241553_
                                                            _get-kws-id230276_
                                                            _new-get-kws230286_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243930
                                                          _lift2229925_)))
                                                 (__tmp243927
                                                  (let ((__tmp243928
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241552241553_
                                                            _L230046_
                                                            _new-kw-dispatch230284_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp243928
                                                          _bind229926_))))
                                             (declare (not safe))
                                             (_lp229921_
                                              _rest229946_
                                              __tmp243931
                                              __tmp243929
                                              __tmp243927))))
                                       _hd230107230225_
                                       _hd230104230217_
                                       _hd230101230209_
                                       _hd230098230201_
                                       _hd230080230153_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230060230113_ _g230061230116_)))))
                              (let ()
                                (declare (not safe))
                                (_g230060230113_ _g230061230116_)))
                          (let ()
                            (declare (not safe))
                            (_g230060230113_ _g230061230116_)))
                      (let ()
                        (declare (not safe))
                        (_g230060230113_ _g230061230116_)))
                  (let ()
                    (declare (not safe))
                    (_g230060230113_ _g230061230116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230060230113_
                                                     _g230061230116_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230060230113_
                                                 _g230061230116_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230060230113_
                                             _g230061230116_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230060230113_ _g230061230116_)))
                              (let ()
                                (declare (not safe))
                                (_g230060230113_ _g230061230116_)))))
                      (let ()
                        (declare (not safe))
                        (_g230060230113_ _g230061230116_)))))
              (let ()
                (declare (not safe))
                (_g230060230113_ _g230061230116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g230060230113_
                                                 _g230061230116_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230060230113_ _g230061230116_)))))
                              (let ()
                                (declare (not safe))
                                (_g230060230113_ _g230061230116_)))))
                      (let ()
                        (declare (not safe))
                        (_g230060230113_ _g230061230116_)))
                  (let ()
                    (declare (not safe))
                    (_g230060230113_ _g230061230116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230060230113_
                                                     _g230061230116_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g230060230113_
                                             _g230061230116_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230060230113_ _g230061230116_)))))
                          (let ()
                            (declare (not safe))
                            (_g230060230113_ _g230061230116_)))))
                  (let ()
                    (declare (not safe))
                    (_g230060230113_ _g230061230116_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g230059230289_ _L230045_))))
                                         (___kont243394243395_
                                          (lambda (_L229996_ _L229997_)
                                            (let ((__tmp243933
                                                   (let ((__tmp243934
                                                          (let ((__tmp243935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L229996_ '()))))
                    (declare (not safe))
                    (cons _L229997_ __tmp243935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp243934
                                                           _bind229926_))))
                                              (declare (not safe))
                                              (_lp229921_
                                               _rest229946_
                                               _lift1229924_
                                               _lift2229925_
                                               __tmp243933)))))
                                     (let ((___match243417243418_
                                            (lambda (_e229956230021_
                                                     _hd229955230024_
                                                     _tl229954230026_
                                                     _e229959230029_
                                                     _hd229958230032_
                                                     _tl229957230034_
                                                     _e229962230037_
                                                     _hd229961230040_
                                                     _tl229960230042_)
                                              (let ((_L230045_
                                                     _hd229961230040_)
                                                    (_L230046_
                                                     _hd229958230032_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L230046_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L230045_)))
                                                    (___kont243392243393_
                                                     _L230045_
                                                     _L230046_)
                                                    (___kont243394243395_
                                                     _hd229961230040_
                                                     _hd229955230024_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243390243391_))
                                           (let ((_e229956230021_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243390243391_))))
                                             (let ((_tl229954230026_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229956230021_)))
                                                   (_hd229955230024_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229956230021_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229955230024_))
                                                   (let ((_e229959230029_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229955230024_))))
                                                     (let ((_tl229957230034_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229959230029_)))
                                                           (_hd229958230032_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229959230029_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229957230034_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229954230026_))
                       (let ((_e229962230037_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229954230026_))))
                         (let ((_tl229960230042_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229962230037_)))
                               (_hd229961230040_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229962230037_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229960230042_))
                               (___match243417243418_
                                _e229956230021_
                                _hd229955230024_
                                _tl229954230026_
                                _e229959230029_
                                _hd229958230032_
                                _tl229957230034_
                                _e229962230037_
                                _hd229961230040_
                                _tl229960230042_)
                               (let ()
                                 (declare (not safe))
                                 (_g229950229975_)))))
                       (let () (declare (not safe)) (_g229950229975_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229954230026_))
                       (let ((_e229970229988_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229954230026_))))
                         (let ((_tl229968229993_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229970229988_)))
                               (_hd229969229991_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229970229988_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229968229993_))
                               (___kont243394243395_
                                _hd229969229991_
                                _hd229955230024_)
                               (let ()
                                 (declare (not safe))
                                 (_g229950229975_)))))
                       (let () (declare (not safe)) (_g229950229975_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229954230026_))
                                                       (let ((_e229970229988_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229954230026_))))
                 (let ((_tl229968229993_
                        (let () (declare (not safe)) (##cdr _e229970229988_)))
                       (_hd229969229991_
                        (let () (declare (not safe)) (##car _e229970229988_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229968229993_))
                       (___kont243394243395_ _hd229969229991_ _hd229955230024_)
                       (let () (declare (not safe)) (_g229950229975_)))))
               (let () (declare (not safe)) (_g229950229975_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229950229975_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229927229935_))
                             (let ((_hd229932230298_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229927229935_)))
                                   (_tl229933230300_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229927229935_))))
                               (let* ((_hd230303_ _hd229932230298_)
                                      (_rest230305_ _tl229933230300_))
                                 (declare (not safe))
                                 (_K229931230295_ _rest230305_ _hd230303_)))
                             (let ()
                               (declare (not safe))
                               (_else229929229943_))))))))
          (let* ((___stx243434243435_ _stx229747_)
                 (_g229755229781_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243434243435_)))))
            (let ((___kont243436243437_
                   (lambda (_L229841_ _L229842_)
                     (let ((__tmp243937
                            (lambda ()
                              (if (let ((__tmp243964
                                         (let ((__tmp243965
                                                (lambda (_g229870229873_
                                                         _g229871229875_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g229870229873_
                                                          _g229871229875_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp243965
                                                   '()
                                                   _L229842_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?229751_
                                            __tmp243964))
                                  (let ((_g243951_
                                         (let ((__tmp243953
                                                (let ((__tmp243954
                                                       (lambda (_g229877229880_
                                                                _g229878229882_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g229877229880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g229878229882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp243954
                                                          '()
                                                          _L229842_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings229752_
                                            __tmp243953))))
                                    (begin
                                      (let ((_g243952_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g243951_)
                                                   (##vector-length _g243951_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g243952_ 3)))
                                            (error "Context expects 3 values"
                                                   _g243952_)))
                                      (let ((_lift1229885_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243951_ 0)))
                                            (_lift2229886_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243951_ 1)))
                                            (_hd229887_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243951_ 2))))
                                        (let* ((_expr229889_
                                                (let ((__tmp243955
                                                       (let ((__tmp243956
                                                              (let ((__tmp243957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L229841_ '()))))
                        (declare (not safe))
                        (cons _hd229887_ __tmp243957))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243955
                                                   _stx229747_)))
                                               (_expr229891_
                                                (let ((__tmp243958
                                                       (let ((__tmp243959
                                                              (let ((__tmp243960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr229889_ '()))))
                        (declare (not safe))
                        (cons _lift2229886_ __tmp243960))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243958
                                                   _stx229747_)))
                                               (_expr229893_
                                                (let ((__tmp243961
                                                       (let ((__tmp243962
                                                              (let ((__tmp243963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr229891_ '()))))
                        (declare (not safe))
                        (cons _lift1229885_ __tmp243963))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243961
                                                   _stx229747_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr229893_))))))
                                  (let ((_g243938_
                                         (let ((__tmp243940
                                                (let ((__tmp243941
                                                       (lambda (_g229895229898_
                                                                _g229896229900_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g229895229898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g229896229900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp243941
                                                          '()
                                                          _L229842_))))
                                           (declare (not safe))
                                           (_compile-bindings229750_
                                            __tmp243940))))
                                    (begin
                                      (let ((_g243939_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g243938_)
                                                   (##vector-length _g243938_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g243939_ 3)))
                                            (error "Context expects 3 values"
                                                   _g243939_)))
                                      (let ((_lift1229903_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243938_ 0)))
                                            (_lift2229904_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243938_ 1)))
                                            (_hd229905_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g243938_ 2))))
                                        (let* ((_body229907_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L229841_)))
                                               (_expr229909_
                                                (let ((__tmp243942
                                                       (let ((__tmp243943
                                                              (let ((__tmp243944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body229907_ '()))))
                        (declare (not safe))
                        (cons _hd229905_ __tmp243944))))
                 (declare (not safe))
                 (cons '%#let-values __tmp243943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp243942
                                                   _stx229747_)))
                                               (_expr229911_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2229904_))
                                                    _expr229909_
                                                    (let ((__tmp243945
                                                           (let ((__tmp243946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243947
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr229909_ '()))))
                            (declare (not safe))
                            (cons _lift2229904_ __tmp243947))))
                     (declare (not safe))
                     (cons '%#let-values __tmp243946))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp243945 _stx229747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr229913_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1229903_))
                                                    _expr229911_
                                                    (let ((__tmp243948
                                                           (let ((__tmp243949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243950
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr229911_ '()))))
                            (declare (not safe))
                            (cons _lift1229903_ __tmp243950))))
                     (declare (not safe))
                     (cons '%#let-values __tmp243949))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp243948 _stx229747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr229913_)))))))
                           (__tmp243936
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
                        __tmp243937
                        gx#current-expander-context
                        __tmp243936))))
                  (___kont243440243441_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx229747_)))))
              (let ((___match243461243462_
                     (lambda (_e229761229793_
                              _hd229760229796_
                              _tl229759229798_
                              _e229764229801_
                              _hd229763229804_
                              _tl229762229806_
                              ___splice243438243439_
                              _target229765229809_
                              _tl229767229811_)
                       (letrec ((_loop229768229814_
                                 (lambda (_hd229766229817_ _bind229772229819_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd229766229817_))
                                       (let ((_e229769229822_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd229766229817_))))
                                         (let ((_lp-tl229771229827_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e229769229822_)))
                                               (_lp-hd229770229825_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e229769229822_))))
                                           (let ((__tmp243968
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd229770229825_
                                                          _bind229772229819_))))
                                             (declare (not safe))
                                             (_loop229768229814_
                                              _lp-tl229771229827_
                                              __tmp243968))))
                                       (let ((_bind229773229830_
                                              (reverse _bind229772229819_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl229762229806_))
                                             (let ((_e229776229833_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl229762229806_))))
                                               (let ((_tl229774229838_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e229776229833_)))
                                                     (_hd229775229836_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e229776229833_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl229774229838_))
                                                     (let ((_L229841_
                                                            _hd229775229836_)
                                                           (_L229842_
                                                            _bind229773229830_))
                                                       (if (let ((__tmp243966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp243967
                                 (lambda (_g229862229865_ _g229863229867_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g229862229865_ _g229863229867_)))))
                            (declare (not safe))
                            (foldr1 __tmp243967 '() _L229842_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp243966))
                   (___kont243436243437_ _L229841_ _L229842_)
                   (___kont243440243441_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243440243441_))))
                                             (___kont243440243441_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop229768229814_ _target229765229809_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243434243435_))
                    (let ((_e229761229793_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243434243435_))))
                      (let ((_tl229759229798_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229761229793_)))
                            (_hd229760229796_
                             (let ()
                               (declare (not safe))
                               (##car _e229761229793_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229759229798_))
                            (let ((_e229764229801_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229759229798_))))
                              (let ((_tl229762229806_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229764229801_)))
                                    (_hd229763229804_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229764229801_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd229763229804_))
                                    (let ((___splice243438243439_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd229763229804_
                                              '0))))
                                      (let ((_tl229767229811_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243438243439_
                                                '1)))
                                            (_target229765229809_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243438243439_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229767229811_))
                                            (___match243461243462_
                                             _e229761229793_
                                             _hd229760229796_
                                             _tl229759229798_
                                             _e229764229801_
                                             _hd229763229804_
                                             _tl229762229806_
                                             ___splice243438243439_
                                             _target229765229809_
                                             _tl229767229811_)
                                            (___kont243440243441_))))
                                    (___kont243440243441_))))
                            (___kont243440243441_))))
                    (___kont243440243441_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx228891_)
        (letrec* ((_bind-e__241557241558_
                   (lambda (_id229731_ _expr229732_ _compile?229733_)
                     (let ((__tmp243971
                            (let ()
                              (declare (not safe))
                              (cons _id229731_ '())))
                           (__tmp243969
                            (let ((__tmp243970
                                   (if _compile?229733_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr229732_))
                                       _expr229732_)))
                              (declare (not safe))
                              (cons __tmp243970 '()))))
                       (declare (not safe))
                       (cons __tmp243971 __tmp243969))))
                  (_bind-e__0__241559241560_
                   (lambda (_id229738_ _expr229739_)
                     (let ((_compile?229741_ '#t))
                       (declare (not safe))
                       (_bind-e__241557241558_
                        _id229738_
                        _expr229739_
                        _compile?229741_))))
                  (_bind-e228893_
                   (lambda _g243973_
                     (let ((_g243972_
                            (let ()
                              (declare (not safe))
                              (##length _g243973_))))
                       (cond ((let () (declare (not safe)) (##fx= _g243972_ 2))
                              (apply (lambda (_id229738_ _expr229739_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__241559241560_
                                          _id229738_
                                          _expr229739_)))
                                     _g243973_))
                             ((let () (declare (not safe)) (##fx= _g243972_ 3))
                              (apply (lambda (_id229743_
                                              _expr229744_
                                              _compile?229745_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__241557241558_
                                          _id229743_
                                          _expr229744_
                                          _compile?229745_)))
                                     _g243973_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g243973_))))))
                  (_compile-bindings228894_
                   (lambda (_rest229029_)
                     (let _lp229031_ ((_rest229033_ _rest229029_)
                                      (_bind229034_ '()))
                       (let* ((_rest229035229043_ _rest229033_)
                              (_else229037229051_
                               (lambda () (reverse _bind229034_)))
                              (_K229039229718_
                               (lambda (_rest229054_ _hd229055_)
                                 (let* ((___stx243484243485_ _hd229055_)
                                        (_g229060229107_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx243484243485_)))))
                                   (let ((___kont243486243487_
                                          (lambda (_L229625_ _L229626_)
                                            (let* ((___stx243464243465_
                                                    _L229625_)
                                                   (_g229641229655_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx243464243465_)))))
                                              (let ((___kont243466243467_
                                                     (lambda (_L229703_)
                                                       (let ((__tmp243974
                                                              (let ((__tmp243975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__241557241558_
                                _L229626_
                                _L229625_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp243975 _bind229034_))))
                 (declare (not safe))
                 (_lp229031_ _rest229054_ __tmp243974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont243468243469_
                                                     (lambda (_L229668_)
                                                       (let ((_g243976_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx228891_
                         _L229626_
                         _L229668_
                         '#t))))
                 (begin
                   (let ((_g243977_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g243976_)
                                (##vector-length _g243976_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g243977_ 3)))
                         (error "Context expects 3 values" _g243977_)))
                   (let ((_ids229678_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243976_ 0)))
                         (_impls229679_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243976_ 1)))
                         (_clauses229680_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g243976_ 2))))
                     (let* ((_g243978_
                             (for-each gx#core-bind-runtime! _ids229678_))
                            (_xbind229683_
                             (map _bind-e228893_ _ids229678_ _impls229679_))
                            (_expr*229685_
                             (let ((__tmp243980
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses229680_)))
                                   (__tmp243979
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp243980
                                __tmp243979)))
                            (_bind*229687_
                             (let ()
                               (declare (not safe))
                               (_bind-e__241557241558_
                                _L229626_
                                _expr*229685_
                                '#f))))
                       (let ((__tmp243982
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L229626_)))
                             (__tmp243981
                              (map gxc#identifier-symbol _ids229678_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp243982
                          '" => "
                          __tmp243981))
                       (let ((__tmp243983
                              (let ((__tmp243984
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind229034_
                                               _xbind229683_))))
                                (declare (not safe))
                                (cons _bind*229687_ __tmp243984))))
                         (declare (not safe))
                         (_lp229031_ _rest229054_ __tmp243983)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match243475243476_
                                                       (lambda (_e229646229695_
                                                                _hd229645229698_
                                                                _tl229644229700_)
                                                         (let ((_L229703_
                                                                _tl229644229700_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L229703_))
                       (___kont243466243467_ _L229703_)
                       (___kont243468243469_ _tl229644229700_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx243464243465_))
                                                      (let ((_e229646229695_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx243464243465_))))
                (let ((_tl229644229700_
                       (let () (declare (not safe)) (##cdr _e229646229695_)))
                      (_hd229645229698_
                       (let () (declare (not safe)) (##car _e229646229695_))))
                  (___match243475243476_
                   _e229646229695_
                   _hd229645229698_
                   _tl229644229700_)))
              (let () (declare (not safe)) (_g229641229655_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont243488243489_
                                          (lambda (_L229453_ _L229454_)
                                            (let* ((_g229468229498_
                                                    (lambda (_g229469229495_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229469229495_))))
                                                   (_g229467229593_
                                                    (lambda (_g229469229501_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229469229501_))
                                                          (let ((_e229475229503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229469229501_))))
                    (let ((_hd229474229506_
                           (let ()
                             (declare (not safe))
                             (##car _e229475229503_)))
                          (_tl229473229508_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229475229503_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229473229508_))
                          (let ((_e229478229511_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229473229508_))))
                            (let ((_hd229477229514_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229478229511_)))
                                  (_tl229476229516_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229478229511_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229477229514_))
                                  (let ((_e229481229519_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229477229514_))))
                                    (let ((_hd229480229522_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229481229519_)))
                                          (_tl229479229524_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229481229519_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229480229522_))
                                          (let ((_e229484229527_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229480229522_))))
                                            (let ((_hd229483229530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229484229527_)))
                                                  (_tl229482229532_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229484229527_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229483229530_))
                                                  (let ((_e229487229535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229483229530_))))
                                                    (let ((_hd229486229538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229487229535_)))
                                                          (_tl229485229540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229487229535_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229485229540_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229482229532_))
                      (let ((_e229490229543_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229482229532_))))
                        (let ((_hd229489229546_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229490229543_)))
                              (_tl229488229548_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229490229543_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229488229548_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229479229524_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229476229516_))
                                      (let ((_e229493229551_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229476229516_))))
                                        (let ((_hd229492229554_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229493229551_)))
                                              (_tl229491229556_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229493229551_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229491229556_))
                                              ((lambda (_L229559_
                                                        _L229560_
                                                        _L229561_)
                                                 (let* ((_lambda-id229585_
                                                         (let ((__tmp243986
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L229454_)))
                       (__tmp243985 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp243986 __tmp243985)))
                (_lambda-id229587_
                 (let ((__tmp243987
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx228891_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id229585_ __tmp243987)))
                (_g243988_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id229587_)))
                (_new-case-lambda-expr229590_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L229559_
                    _L229561_
                    _lambda-id229587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp243990
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L229454_)))
                                                         (__tmp243989
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id229587_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp243990
                                                      '" => "
                                                      __tmp243989))
                                                   (let ((__tmp243993
                                                          (let ((__tmp243994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__241557241558_
                            _L229454_
                            _new-case-lambda-expr229590_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp243994 _rest229054_)))
                 (__tmp243991
                  (let ((__tmp243992
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__241559241560_
                            _lambda-id229587_
                            _L229560_))))
                    (declare (not safe))
                    (cons __tmp243992 _bind229034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp229031_
                                                      __tmp243993
                                                      __tmp243991))))
                                               _hd229492229554_
                                               _hd229489229546_
                                               _hd229486229538_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229468229498_
                                                 _g229469229501_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229468229498_ _g229469229501_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g229468229498_ _g229469229501_)))
                              (let ()
                                (declare (not safe))
                                (_g229468229498_ _g229469229501_)))))
                      (let ()
                        (declare (not safe))
                        (_g229468229498_ _g229469229501_)))
                  (let ()
                    (declare (not safe))
                    (_g229468229498_ _g229469229501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229468229498_
                                                     _g229469229501_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229468229498_
                                             _g229469229501_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229468229498_ _g229469229501_)))))
                          (let ()
                            (declare (not safe))
                            (_g229468229498_ _g229469229501_)))))
                  (let ()
                    (declare (not safe))
                    (_g229468229498_ _g229469229501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229467229593_ _L229453_))))
                                         (___kont243490243491_
                                          (lambda (_L229177_ _L229178_)
                                            (let* ((_g229192229245_
                                                    (lambda (_g229193229242_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229193229242_))))
                                                   (_g229191229421_
                                                    (lambda (_g229193229248_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229193229248_))
                                                          (let ((_e229201229250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229193229248_))))
                    (let ((_hd229200229253_
                           (let ()
                             (declare (not safe))
                             (##car _e229201229250_)))
                          (_tl229199229255_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229201229250_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229199229255_))
                          (let ((_e229204229258_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229199229255_))))
                            (let ((_hd229203229261_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229204229258_)))
                                  (_tl229202229263_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229204229258_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229203229261_))
                                  (let ((_e229207229266_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229203229261_))))
                                    (let ((_hd229206229269_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229207229266_)))
                                          (_tl229205229271_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229207229266_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229206229269_))
                                          (let ((_e229210229274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229206229269_))))
                                            (let ((_hd229209229277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229210229274_)))
                                                  (_tl229208229279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229210229274_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229209229277_))
                                                  (let ((_e229213229282_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229209229277_))))
                                                    (let ((_hd229212229285_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229213229282_)))
                                                          (_tl229211229287_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229213229282_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229211229287_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229208229279_))
                      (let ((_e229216229290_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229208229279_))))
                        (let ((_hd229215229293_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229216229290_)))
                              (_tl229214229295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229216229290_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229215229293_))
                              (let ((_e229219229298_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229215229293_))))
                                (let ((_hd229218229301_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229219229298_)))
                                      (_tl229217229303_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229219229298_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229217229303_))
                                      (let ((_e229222229306_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229217229303_))))
                                        (let ((_hd229221229309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229222229306_)))
                                              (_tl229220229311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229222229306_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd229221229309_))
                                              (let ((_e229225229314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd229221229309_))))
                                                (let ((_hd229224229317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229225229314_)))
                                                      (_tl229223229319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229225229314_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229224229317_))
                                                      (let ((_e229228229322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd229224229317_))))
                (let ((_hd229227229325_
                       (let () (declare (not safe)) (##car _e229228229322_)))
                      (_tl229226229327_
                       (let () (declare (not safe)) (##cdr _e229228229322_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229227229325_))
                      (let ((_e229231229330_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229227229325_))))
                        (let ((_hd229230229333_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229231229330_)))
                              (_tl229229229335_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229231229330_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229229229335_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229226229327_))
                                  (let ((_e229234229338_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229226229327_))))
                                    (let ((_hd229233229341_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229234229338_)))
                                          (_tl229232229343_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229234229338_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229232229343_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229223229319_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229220229311_))
                                                  (let ((_e229237229346_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229220229311_))))
                                                    (let ((_hd229236229349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229237229346_)))
                                                          (_tl229235229351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229237229346_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229235229351_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl229214229295_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229205229271_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229202229263_))
                              (let ((_e229240229354_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229202229263_))))
                                (let ((_hd229239229357_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229240229354_)))
                                      (_tl229238229359_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229240229354_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229238229359_))
                                      ((lambda (_L229362_
                                                _L229363_
                                                _L229364_
                                                _L229365_
                                                _L229366_)
                                         (let* ((_get-kws-id229406_
                                                 (let ((__tmp243996
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229178_)))
                                                       (__tmp243995
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243996
                                                    __tmp243995)))
                                                (_get-kws-id229408_
                                                 (let ((__tmp243997
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx228891_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id229406_
                                                    __tmp243997)))
                                                (_main-id229410_
                                                 (let ((__tmp243999
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229178_)))
                                                       (__tmp243998
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp243999
                                                    __tmp243998)))
                                                (_main-id229412_
                                                 (let ((__tmp244000
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx228891_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id229410_
                                                    __tmp244000)))
                                                (_g244001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id229408_)))
                                                (_g244002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id229412_)))
                                                (_new-kw-dispatch229416_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229362_
                                                    _L229366_
                                                    _get-kws-id229408_)))
                                                (_new-get-kws229418_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229363_
                                                    _L229365_
                                                    _main-id229412_))))
                                           (let ((__tmp244005
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L229178_)))
                                                 (__tmp244004
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id229408_)))
                                                 (__tmp244003
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id229412_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp244005
                                              '" => "
                                              __tmp244004
                                              '" => "
                                              __tmp244003))
                                           (let ((__tmp244006
                                                  (let ((__tmp244011
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__241557241558_
                                                            _main-id229412_
                                                            _L229364_
                                                            '#f)))
                                                        (__tmp244007
                                                         (let ((__tmp244010
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__241557241558_
                           _get-kws-id229408_
                           _new-get-kws229418_
                           '#f)))
                       (__tmp244008
                        (let ((__tmp244009
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__241557241558_
                                  _L229178_
                                  _new-kw-dispatch229416_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp244009 _rest229054_))))
                   (declare (not safe))
                   (cons __tmp244010 __tmp244008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp244011
                                                          __tmp244007))))
                                             (declare (not safe))
                                             (_lp229031_
                                              __tmp244006
                                              _bind229034_))))
                                       _hd229239229357_
                                       _hd229236229349_
                                       _hd229233229341_
                                       _hd229230229333_
                                       _hd229212229285_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229192229245_ _g229193229248_)))))
                              (let ()
                                (declare (not safe))
                                (_g229192229245_ _g229193229248_)))
                          (let ()
                            (declare (not safe))
                            (_g229192229245_ _g229193229248_)))
                      (let ()
                        (declare (not safe))
                        (_g229192229245_ _g229193229248_)))
                  (let ()
                    (declare (not safe))
                    (_g229192229245_ _g229193229248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229192229245_
                                                     _g229193229248_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g229192229245_
                                                 _g229193229248_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g229192229245_
                                             _g229193229248_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229192229245_ _g229193229248_)))
                              (let ()
                                (declare (not safe))
                                (_g229192229245_ _g229193229248_)))))
                      (let ()
                        (declare (not safe))
                        (_g229192229245_ _g229193229248_)))))
              (let ()
                (declare (not safe))
                (_g229192229245_ _g229193229248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229192229245_
                                                 _g229193229248_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229192229245_ _g229193229248_)))))
                              (let ()
                                (declare (not safe))
                                (_g229192229245_ _g229193229248_)))))
                      (let ()
                        (declare (not safe))
                        (_g229192229245_ _g229193229248_)))
                  (let ()
                    (declare (not safe))
                    (_g229192229245_ _g229193229248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229192229245_
                                                     _g229193229248_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229192229245_
                                             _g229193229248_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229192229245_ _g229193229248_)))))
                          (let ()
                            (declare (not safe))
                            (_g229192229245_ _g229193229248_)))))
                  (let ()
                    (declare (not safe))
                    (_g229192229245_ _g229193229248_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229191229421_ _L229177_))))
                                         (___kont243492243493_
                                          (lambda (_L229128_ _L229129_)
                                            (let ((__tmp244012
                                                   (let ((__tmp244013
                                                          (let ((__tmp244014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp244015
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L229128_))))
                           (declare (not safe))
                           (cons __tmp244015 '()))))
                    (declare (not safe))
                    (cons _L229129_ __tmp244014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp244013
                                                           _bind229034_))))
                                              (declare (not safe))
                                              (_lp229031_
                                               _rest229054_
                                               __tmp244012)))))
                                     (let* ((___match243559243560_
                                             (lambda (_e229088229153_
                                                      _hd229087229156_
                                                      _tl229086229158_
                                                      _e229091229161_
                                                      _hd229090229164_
                                                      _tl229089229166_
                                                      _e229094229169_
                                                      _hd229093229172_
                                                      _tl229092229174_)
                                               (let ((_L229177_
                                                      _hd229093229172_)
                                                     (_L229178_
                                                      _hd229090229164_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229178_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L229177_)))
                                                     (___kont243490243491_
                                                      _L229177_
                                                      _L229178_)
                                                     (___kont243492243493_
                                                      _hd229093229172_
                                                      _hd229087229156_)))))
                                            (___match243537243538_
                                             (lambda (_e229077229429_
                                                      _hd229076229432_
                                                      _tl229075229434_
                                                      _e229080229437_
                                                      _hd229079229440_
                                                      _tl229078229442_
                                                      _e229083229445_
                                                      _hd229082229448_
                                                      _tl229081229450_)
                                               (let ((_L229453_
                                                      _hd229082229448_)
                                                     (_L229454_
                                                      _hd229079229440_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229454_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L229453_)))
                                                     (___kont243488243489_
                                                      _L229453_
                                                      _L229454_)
                                                     (___match243559243560_
                                                      _e229077229429_
                                                      _hd229076229432_
                                                      _tl229075229434_
                                                      _e229080229437_
                                                      _hd229079229440_
                                                      _tl229078229442_
                                                      _e229083229445_
                                                      _hd229082229448_
                                                      _tl229081229450_)))))
                                            (___match243515243516_
                                             (lambda (_e229066229601_
                                                      _hd229065229604_
                                                      _tl229064229606_
                                                      _e229069229609_
                                                      _hd229068229612_
                                                      _tl229067229614_
                                                      _e229072229617_
                                                      _hd229071229620_
                                                      _tl229070229622_)
                                               (let ((_L229625_
                                                      _hd229071229620_)
                                                     (_L229626_
                                                      _hd229068229612_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229626_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L229625_)))
                                                     (___kont243486243487_
                                                      _L229625_
                                                      _L229626_)
                                                     (___match243537243538_
                                                      _e229066229601_
                                                      _hd229065229604_
                                                      _tl229064229606_
                                                      _e229069229609_
                                                      _hd229068229612_
                                                      _tl229067229614_
                                                      _e229072229617_
                                                      _hd229071229620_
                                                      _tl229070229622_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx243484243485_))
                                           (let ((_e229066229601_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx243484243485_))))
                                             (let ((_tl229064229606_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229066229601_)))
                                                   (_hd229065229604_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229066229601_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229065229604_))
                                                   (let ((_e229069229609_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229065229604_))))
                                                     (let ((_tl229067229614_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229069229609_)))
                                                           (_hd229068229612_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229069229609_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229067229614_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229064229606_))
                       (let ((_e229072229617_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229064229606_))))
                         (let ((_tl229070229622_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229072229617_)))
                               (_hd229071229620_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229072229617_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229070229622_))
                               (___match243515243516_
                                _e229066229601_
                                _hd229065229604_
                                _tl229064229606_
                                _e229069229609_
                                _hd229068229612_
                                _tl229067229614_
                                _e229072229617_
                                _hd229071229620_
                                _tl229070229622_)
                               (let ()
                                 (declare (not safe))
                                 (_g229060229107_)))))
                       (let () (declare (not safe)) (_g229060229107_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229064229606_))
                       (let ((_e229102229120_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229064229606_))))
                         (let ((_tl229100229125_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229102229120_)))
                               (_hd229101229123_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229102229120_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229100229125_))
                               (___kont243492243493_
                                _hd229101229123_
                                _hd229065229604_)
                               (let ()
                                 (declare (not safe))
                                 (_g229060229107_)))))
                       (let () (declare (not safe)) (_g229060229107_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229064229606_))
                                                       (let ((_e229102229120_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229064229606_))))
                 (let ((_tl229100229125_
                        (let () (declare (not safe)) (##cdr _e229102229120_)))
                       (_hd229101229123_
                        (let () (declare (not safe)) (##car _e229102229120_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229100229125_))
                       (___kont243492243493_ _hd229101229123_ _hd229065229604_)
                       (let () (declare (not safe)) (_g229060229107_)))))
               (let () (declare (not safe)) (_g229060229107_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229060229107_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229035229043_))
                             (let ((_hd229040229721_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229035229043_)))
                                   (_tl229041229723_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229035229043_))))
                               (let* ((_hd229726_ _hd229040229721_)
                                      (_rest229728_ _tl229041229723_))
                                 (declare (not safe))
                                 (_K229039229718_ _rest229728_ _hd229726_)))
                             (let ()
                               (declare (not safe))
                               (_else229037229051_))))))))
          (let* ((___stx243576243577_ _stx228891_)
                 (_g228897228924_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx243576243577_)))))
            (let ((___kont243578243579_
                   (lambda (_L228984_ _L228985_ _L228986_)
                     (let ((__tmp244017
                            (lambda ()
                              (let ((_hd229023_
                                     (let ((__tmp244018
                                            (let ((__tmp244019
                                                   (lambda (_g229015229018_
                                                            _g229016229020_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g229015229018_
                                                             _g229016229020_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp244019
                                                      '()
                                                      _L228985_))))
                                       (declare (not safe))
                                       (_compile-bindings228894_ __tmp244018)))
                                    (_body229024_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L228984_))))
                                (let ((__tmp244020
                                       (let ((__tmp244021
                                              (let ((__tmp244022
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body229024_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd229023_
                                                      __tmp244022))))
                                         (declare (not safe))
                                         (cons _L228986_ __tmp244021))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp244020
                                   _stx228891_)))))
                           (__tmp244016
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
                        __tmp244017
                        gx#current-expander-context
                        __tmp244016))))
                  (___kont243582243583_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx228891_)))))
              (let ((___match243603243604_
                     (lambda (_e228904228936_
                              _hd228903228939_
                              _tl228902228941_
                              _e228907228944_
                              _hd228906228947_
                              _tl228905228949_
                              ___splice243580243581_
                              _target228908228952_
                              _tl228910228954_)
                       (letrec ((_loop228911228957_
                                 (lambda (_hd228909228960_ _bind228915228962_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228909228960_))
                                       (let ((_e228912228965_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228909228960_))))
                                         (let ((_lp-tl228914228970_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228912228965_)))
                                               (_lp-hd228913228968_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228912228965_))))
                                           (let ((__tmp244025
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd228913228968_
                                                          _bind228915228962_))))
                                             (declare (not safe))
                                             (_loop228911228957_
                                              _lp-tl228914228970_
                                              __tmp244025))))
                                       (let ((_bind228916228973_
                                              (reverse _bind228915228962_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl228905228949_))
                                             (let ((_e228919228976_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl228905228949_))))
                                               (let ((_tl228917228981_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e228919228976_)))
                                                     (_hd228918228979_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e228919228976_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl228917228981_))
                                                     (let ((_L228984_
                                                            _hd228918228979_)
                                                           (_L228985_
                                                            _bind228916228973_)
                                                           (_L228986_
                                                            _hd228903228939_))
                                                       (if (let ((__tmp244023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244024
                                 (lambda (_g229007229010_ _g229008229012_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g229007229010_ _g229008229012_)))))
                            (declare (not safe))
                            (foldr1 __tmp244024 '() _L228985_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp244023))
                   (___kont243578243579_ _L228984_ _L228985_ _L228986_)
                   (___kont243582243583_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont243582243583_))))
                                             (___kont243582243583_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop228911228957_ _target228908228952_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx243576243577_))
                    (let ((_e228904228936_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx243576243577_))))
                      (let ((_tl228902228941_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228904228936_)))
                            (_hd228903228939_
                             (let ()
                               (declare (not safe))
                               (##car _e228904228936_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228902228941_))
                            (let ((_e228907228944_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228902228941_))))
                              (let ((_tl228905228949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228907228944_)))
                                    (_hd228906228947_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228907228944_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd228906228947_))
                                    (let ((___splice243580243581_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd228906228947_
                                              '0))))
                                      (let ((_tl228910228954_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243580243581_
                                                '1)))
                                            (_target228908228952_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice243580243581_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228910228954_))
                                            (___match243603243604_
                                             _e228904228936_
                                             _hd228903228939_
                                             _tl228902228941_
                                             _e228907228944_
                                             _hd228906228947_
                                             _tl228905228949_
                                             ___splice243580243581_
                                             _target228908228952_
                                             _tl228910228954_)
                                            (___kont243582243583_))))
                                    (___kont243582243583_))))
                            (___kont243582243583_))))
                    (___kont243582243583_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind228809_)
        (let* ((___stx243606243607_ _bind228809_)
               (_g228812228829_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx243606243607_)))))
          (let ((___kont243608243609_
                 (lambda (_L228865_ _L228866_)
                   (if (let () (declare (not safe)) (gx#identifier? _L228866_))
                       (let ((_$e228882_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L228865_))))
                         (if _$e228882_
                             _$e228882_
                             (let ((_$e228885_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L228865_))))
                               (if _$e228885_
                                   _$e228885_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228865_))))))
                       '#f)))
                (___kont243610243611_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx243606243607_))
                (let ((_e228818228841_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx243606243607_))))
                  (let ((_tl228816228846_
                         (let () (declare (not safe)) (##cdr _e228818228841_)))
                        (_hd228817228844_
                         (let ()
                           (declare (not safe))
                           (##car _e228818228841_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd228817228844_))
                        (let ((_e228821228849_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd228817228844_))))
                          (let ((_tl228819228854_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228821228849_)))
                                (_hd228820228852_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228821228849_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl228819228854_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl228816228846_))
                                    (let ((_e228824228857_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl228816228846_))))
                                      (let ((_tl228822228862_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228824228857_)))
                                            (_hd228823228860_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228824228857_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228822228862_))
                                            (___kont243608243609_
                                             _hd228823228860_
                                             _hd228820228852_)
                                            (___kont243610243611_))))
                                    (___kont243610243611_))
                                (___kont243610243611_))))
                        (___kont243610243611_))))
                (___kont243610243611_))))))))
