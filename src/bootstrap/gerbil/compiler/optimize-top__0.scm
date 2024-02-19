(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708334577)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl245087_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp251247 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl245087_ __tmp251247))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245087_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245087_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245087_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245087_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl245087_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx245070_ . _args245072_)
        (let ((__tmp251249
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245072_)
                     (gxc#compile-e__0 _stx245070_)
                     (let ((_arg1245077_ (car _args245072_))
                           (_rest245079_ (cdr _args245072_)))
                       (if (null? _rest245079_)
                           (gxc#compile-e__1 _stx245070_ _arg1245077_)
                           (let ((_arg2245082_ (car _rest245079_))
                                 (_rest245084_ (cdr _rest245079_)))
                             (if (null? _rest245084_)
                                 (gxc#compile-e__2
                                  _stx245070_
                                  _arg1245077_
                                  _arg2245082_)
                                 (apply gxc#compile-e
                                        _stx245070_
                                        _arg1245077_
                                        _arg2245082_
                                        _rest245084_))))))))
              (__tmp251248 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp251249
           gxc#current-compile-methods
           __tmp251248))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl245067_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp251250 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl245067_ __tmp251250))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245067_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245067_ '%#call gxc#basic-expression-type-call%))
           _tbl245067_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx245050_ . _args245052_)
        (let ((__tmp251252
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245052_)
                     (gxc#compile-e__0 _stx245050_)
                     (let ((_arg1245057_ (car _args245052_))
                           (_rest245059_ (cdr _args245052_)))
                       (if (null? _rest245059_)
                           (gxc#compile-e__1 _stx245050_ _arg1245057_)
                           (let ((_arg2245062_ (car _rest245059_))
                                 (_rest245064_ (cdr _rest245059_)))
                             (if (null? _rest245064_)
                                 (gxc#compile-e__2
                                  _stx245050_
                                  _arg1245057_
                                  _arg2245062_)
                                 (apply gxc#compile-e
                                        _stx245050_
                                        _arg1245057_
                                        _arg2245062_
                                        _rest245064_))))))))
              (__tmp251251 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp251252
           gxc#current-compile-methods
           __tmp251251))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl245047_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp251253 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl245047_ __tmp251253))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245047_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245047_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245047_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245047_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245047_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245047_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245047_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245047_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245047_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245047_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245047_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245047_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245047_ '%#set! gxc#collect-body-setq%))
           _tbl245047_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx245030_ . _args245032_)
        (let ((__tmp251255
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245032_)
                     (gxc#compile-e__0 _stx245030_)
                     (let ((_arg1245037_ (car _args245032_))
                           (_rest245039_ (cdr _args245032_)))
                       (if (null? _rest245039_)
                           (gxc#compile-e__1 _stx245030_ _arg1245037_)
                           (let ((_arg2245042_ (car _rest245039_))
                                 (_rest245044_ (cdr _rest245039_)))
                             (if (null? _rest245044_)
                                 (gxc#compile-e__2
                                  _stx245030_
                                  _arg1245037_
                                  _arg2245042_)
                                 (apply gxc#compile-e
                                        _stx245030_
                                        _arg1245037_
                                        _arg2245042_
                                        _rest245044_))))))))
              (__tmp251254 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp251255
           gxc#current-compile-methods
           __tmp251254))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl245027_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp251256 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl245027_ __tmp251256))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245027_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245027_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245027_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245027_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245027_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245027_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245027_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245027_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl245027_ '%#ref gxc#basic-expression-type-ref%))
           _tbl245027_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx245010_ . _args245012_)
        (let ((__tmp251258
               (lambda ()
                 (declare (not safe))
                 (if (null? _args245012_)
                     (gxc#compile-e__0 _stx245010_)
                     (let ((_arg1245017_ (car _args245012_))
                           (_rest245019_ (cdr _args245012_)))
                       (if (null? _rest245019_)
                           (gxc#compile-e__1 _stx245010_ _arg1245017_)
                           (let ((_arg2245022_ (car _rest245019_))
                                 (_rest245024_ (cdr _rest245019_)))
                             (if (null? _rest245024_)
                                 (gxc#compile-e__2
                                  _stx245010_
                                  _arg1245017_
                                  _arg2245022_)
                                 (apply gxc#compile-e
                                        _stx245010_
                                        _arg1245017_
                                        _arg2245022_
                                        _rest245024_))))))))
              (__tmp251257 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp251258
           gxc#current-compile-methods
           __tmp251257))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl245007_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp251259 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl245007_ __tmp251259))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245007_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245007_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245007_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl245007_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl245007_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx244990_ . _args244992_)
        (let ((__tmp251261
               (lambda ()
                 (declare (not safe))
                 (if (null? _args244992_)
                     (gxc#compile-e__0 _stx244990_)
                     (let ((_arg1244997_ (car _args244992_))
                           (_rest244999_ (cdr _args244992_)))
                       (if (null? _rest244999_)
                           (gxc#compile-e__1 _stx244990_ _arg1244997_)
                           (let ((_arg2245002_ (car _rest244999_))
                                 (_rest245004_ (cdr _rest244999_)))
                             (if (null? _rest245004_)
                                 (gxc#compile-e__2
                                  _stx244990_
                                  _arg1244997_
                                  _arg2245002_)
                                 (apply gxc#compile-e
                                        _stx244990_
                                        _arg1244997_
                                        _arg2245002_
                                        _rest245004_))))))))
              (__tmp251260 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp251261
           gxc#current-compile-methods
           __tmp251260))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx244893_)
        (let* ((___stx249167249168_ _stx244893_)
               (_g244896244916_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249167249168_)))))
          (let ((___kont249169249170_
                 (lambda (_L244960_ _L244961_)
                   (let ((_sym244979_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244961_))))
                     (if (let ((__tmp251262 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp251262 _sym244979_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym244979_))
                         (let ((_type244980244982_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L244960_))))
                           (if _type244980244982_
                               (let ((_type244985_ _type244980244982_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym244979_
                                  _type244985_))
                               '#f))))))
                (___kont249171249172_ (lambda () '#!void)))
            (let ((___match249200249201_
                   (lambda (_e244902244928_
                            _hd244901244931_
                            _tl244900244933_
                            _e244905244936_
                            _hd244904244939_
                            _tl244903244941_
                            _e244908244944_
                            _hd244907244947_
                            _tl244906244949_
                            _e244911244952_
                            _hd244910244955_
                            _tl244909244957_)
                     (let ((_L244960_ _hd244910244955_)
                           (_L244961_ _hd244907244947_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L244961_))
                           (___kont249169249170_ _L244960_ _L244961_)
                           (___kont249171249172_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249167249168_))
                  (let ((_e244902244928_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249167249168_))))
                    (let ((_tl244900244933_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244902244928_)))
                          (_hd244901244931_
                           (let ()
                             (declare (not safe))
                             (##car _e244902244928_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244900244933_))
                          (let ((_e244905244936_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244900244933_))))
                            (let ((_tl244903244941_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244905244936_)))
                                  (_hd244904244939_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244905244936_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd244904244939_))
                                  (let ((_e244908244944_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd244904244939_))))
                                    (let ((_tl244906244949_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244908244944_)))
                                          (_hd244907244947_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244908244944_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244906244949_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244903244941_))
                                              (let ((_e244911244952_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244903244941_))))
                                                (let ((_tl244909244957_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244911244952_)))
                                                      (_hd244910244955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244911244952_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244909244957_))
                                                      (___match249200249201_
                                                       _e244902244928_
                                                       _hd244901244931_
                                                       _tl244900244933_
                                                       _e244905244936_
                                                       _hd244904244939_
                                                       _tl244903244941_
                                                       _e244908244944_
                                                       _hd244907244947_
                                                       _tl244906244949_
                                                       _e244911244952_
                                                       _hd244910244955_
                                                       _tl244909244957_)
                                                      (___kont249171249172_))))
                                              (___kont249171249172_))
                                          (___kont249171249172_))))
                                  (___kont249171249172_))))
                          (___kont249171249172_))))
                  (___kont249171249172_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx244749_)
        (let* ((___stx249203249204_ _stx244749_)
               (_g244752244783_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249203249204_)))))
          (let ((___kont249205249206_
                 (lambda (_L244865_ _L244866_)
                   (let ((_sym244882_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244866_))))
                     (if (let ((__tmp251263 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp251263 _sym244882_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym244882_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym244882_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym244882_))
                             (let ((_type244883244885_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L244865_))))
                               (if _type244883244885_
                                   (let ((_type244888_ _type244883244885_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym244882_
                                      _type244888_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L244865_)))))
                (___kont249207249208_
                 (lambda (_L244812_ _L244813_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L244812_)))))
            (let ((___match249236249237_
                   (lambda (_e244758244833_
                            _hd244757244836_
                            _tl244756244838_
                            _e244761244841_
                            _hd244760244844_
                            _tl244759244846_
                            _e244764244849_
                            _hd244763244852_
                            _tl244762244854_
                            _e244767244857_
                            _hd244766244860_
                            _tl244765244862_)
                     (let ((_L244865_ _hd244766244860_)
                           (_L244866_ _hd244763244852_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L244866_))
                           (___kont249205249206_ _L244865_ _L244866_)
                           (___kont249207249208_
                            _hd244766244860_
                            _hd244760244844_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249203249204_))
                  (let ((_e244758244833_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249203249204_))))
                    (let ((_tl244756244838_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244758244833_)))
                          (_hd244757244836_
                           (let ()
                             (declare (not safe))
                             (##car _e244758244833_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244756244838_))
                          (let ((_e244761244841_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244756244838_))))
                            (let ((_tl244759244846_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244761244841_)))
                                  (_hd244760244844_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244761244841_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd244760244844_))
                                  (let ((_e244764244849_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd244760244844_))))
                                    (let ((_tl244762244854_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244764244849_)))
                                          (_hd244763244852_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244764244849_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244762244854_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244759244846_))
                                              (let ((_e244767244857_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244759244846_))))
                                                (let ((_tl244765244862_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244767244857_)))
                                                      (_hd244766244860_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244767244857_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244765244862_))
                                                      (___match249236249237_
                                                       _e244758244833_
                                                       _hd244757244836_
                                                       _tl244756244838_
                                                       _e244761244841_
                                                       _hd244760244844_
                                                       _tl244759244846_
                                                       _e244764244849_
                                                       _hd244763244852_
                                                       _tl244762244854_
                                                       _e244767244857_
                                                       _hd244766244860_
                                                       _tl244765244862_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244752244783_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244752244783_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244759244846_))
                                              (let ((_e244778244804_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244759244846_))))
                                                (let ((_tl244776244809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244778244804_)))
                                                      (_hd244777244807_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244778244804_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244776244809_))
                                                      (___kont249207249208_
                                                       _hd244777244807_
                                                       _hd244760244844_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244752244783_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244752244783_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl244759244846_))
                                      (let ((_e244778244804_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl244759244846_))))
                                        (let ((_tl244776244809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244778244804_)))
                                              (_hd244777244807_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244778244804_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244776244809_))
                                              (___kont249207249208_
                                               _hd244777244807_
                                               _hd244760244844_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244752244783_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244752244783_))))))
                          (let () (declare (not safe)) (_g244752244783_)))))
                  (let () (declare (not safe)) (_g244752244783_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx244534_)
        (letrec ((_collect-e244536_
                  (lambda (_hd244693_ _expr244694_)
                    (let* ((___stx249259249260_ _hd244693_)
                           (_g244697244707_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx249259249260_)))))
                      (let ((___kont249261249262_
                             (lambda (_L244727_)
                               (let ((_sym244738_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L244727_))))
                                 (if (let ((__tmp251264
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp251264 _sym244738_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym244738_))
                                     (let ((_type244739244741_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr244694_))))
                                       (if _type244739244741_
                                           (let ((_type244744_
                                                  _type244739244741_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym244738_
                                              _type244744_
                                              '#t))
                                           '#f))))))
                            (___kont249263249264_ (lambda () '#!void)))
                        (let ((___match249272249273_
                               (lambda (_e244702244719_
                                        _hd244701244722_
                                        _tl244700244724_)
                                 (let ((_L244727_ _hd244701244722_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L244727_))
                                       (___kont249261249262_ _L244727_)
                                       (___kont249263249264_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx249259249260_))
                              (let ((_e244702244719_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx249259249260_))))
                                (let ((_tl244700244724_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244702244719_)))
                                      (_hd244701244722_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244702244719_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244700244724_))
                                      (___match249272249273_
                                       _e244702244719_
                                       _hd244701244722_
                                       _tl244700244724_)
                                      (___kont249263249264_))))
                              (___kont249263249264_))))))))
          (let* ((_g244538244573_
                  (lambda (_g244539244570_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g244539244570_))))
                 (_g244537244690_
                  (lambda (_g244539244576_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g244539244576_))
                        (let ((_e244545244578_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g244539244576_))))
                          (let ((_hd244544244581_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244545244578_)))
                                (_tl244543244583_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244545244578_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244543244583_))
                                (let ((_e244548244586_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244543244583_))))
                                  (let ((_hd244547244589_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244548244586_)))
                                        (_tl244546244591_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244548244586_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd244547244589_))
                                        (let ((_g251265_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd244547244589_
                                                  '0))))
                                          (begin
                                            (let ((_g251266_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g251265_)
                                                         (##vector-length
                                                          _g251265_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g251266_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g251266_)))
                                            (let ((_target244549244594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g251265_
                                                      0)))
                                                  (_tl244551244596_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g251265_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244551244596_))
                                                  (letrec ((_loop244552244599_
                                                            (lambda (_hd244550244602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr244556244604_
                             _hd244557244606_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd244550244602_))
                          (let ((_e244553244609_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd244550244602_))))
                            (let ((_lp-hd244554244612_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244553244609_)))
                                  (_lp-tl244555244614_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244553244609_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd244554244612_))
                                  (let ((_e244562244617_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd244554244612_))))
                                    (let ((_hd244561244620_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244562244617_)))
                                          (_tl244560244622_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244562244617_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl244560244622_))
                                          (let ((_e244565244625_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl244560244622_))))
                                            (let ((_hd244564244628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e244565244625_)))
                                                  (_tl244563244630_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e244565244625_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244563244630_))
                                                  (let ((__tmp251271
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd244564244628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr244556244604_)))
                (__tmp251270
                 (let ()
                   (declare (not safe))
                   (cons _hd244561244620_ _hd244557244606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop244552244599_
                                                     _lp-tl244555244614_
                                                     __tmp251271
                                                     __tmp251270))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244538244573_
                                                     _g244539244576_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g244538244573_
                                             _g244539244576_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g244538244573_ _g244539244576_)))))
                          (let ((_expr244558244633_
                                 (reverse _expr244556244604_))
                                (_hd244559244635_ (reverse _hd244557244606_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244546244591_))
                                (let ((_e244568244638_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244546244591_))))
                                  (let ((_hd244567244641_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244568244638_)))
                                        (_tl244566244643_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244568244638_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244566244643_))
                                        ((lambda (_L244646_
                                                  _L244647_
                                                  _L244648_)
                                           (for-each
                                            _collect-e244536_
                                            (let ((__tmp251267
                                                   (lambda (_g244668244671_
                                                            _g244669244673_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244668244671_
                                                             _g244669244673_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251267
                                                      '()
                                                      _L244648_))
                                            (let ((__tmp251268
                                                   (lambda (_g244675244678_
                                                            _g244676244680_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244675244678_
                                                             _g244676244680_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251268
                                                      '()
                                                      _L244647_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp251269
                                                   (lambda (_g244682244685_
                                                            _g244683244687_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g244682244685_
                                                             _g244683244687_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251269
                                                      '()
                                                      _L244647_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L244646_)))
                                         _hd244567244641_
                                         _expr244558244633_
                                         _hd244559244635_)
                                        (let ()
                                          (declare (not safe))
                                          (_g244538244573_ _g244539244576_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244538244573_ _g244539244576_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop244552244599_
                                                       _target244549244594_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244538244573_
                                                     _g244539244576_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g244538244573_ _g244539244576_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244538244573_ _g244539244576_)))))
                        (let ()
                          (declare (not safe))
                          (_g244538244573_ _g244539244576_))))))
            (declare (not safe))
            (_g244537244690_ _stx244534_)))))
    (define gxc#collect-type-call%
      (lambda (_stx244026_)
        (let* ((___stx249275249276_ _stx244026_)
               (_g244030244145_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249275249276_)))))
          (let ((___kont249277249278_
                 (lambda (_L244484_ _L244485_ _L244486_ _L244487_ _L244488_)
                   (let ((__tmp251275
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244487_)))
                         (__tmp251274
                          (let () (declare (not safe)) (gx#stx-e _L244486_)))
                         (__tmp251273
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244485_)))
                         (__tmp251272
                          (let () (declare (not safe)) (gx#stx-e _L244484_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp251275
                      __tmp251274
                      __tmp251273
                      __tmp251272))))
                (___kont249279249280_
                 (lambda (_L244312_ _L244313_ _L244314_ _L244315_)
                   (let ((__tmp251278
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244314_)))
                         (__tmp251277
                          (let () (declare (not safe)) (gx#stx-e _L244313_)))
                         (__tmp251276
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L244312_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp251278
                      __tmp251277
                      __tmp251276
                      '#f))))
                (___kont249281249282_
                 (lambda (_L244182_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp251279
                           (lambda (_g244195244198_ _g244196244200_)
                             (let ()
                               (declare (not safe))
                               (cons _g244195244198_ _g244196244200_)))))
                      (declare (not safe))
                      (foldr1 __tmp251279 '() _L244182_))))))
            (let* ((___match249532249533_
                    (lambda (_e244131244150_
                             _hd244130244153_
                             _tl244129244155_
                             ___splice249283249284_
                             _target244132244158_
                             _tl244134244160_)
                      (letrec ((_loop244135244163_
                                (lambda (_hd244133244166_ _expr244139244168_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd244133244166_))
                                      (let ((_e244136244171_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd244133244166_))))
                                        (let ((_lp-tl244138244176_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244136244171_)))
                                              (_lp-hd244137244174_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244136244171_))))
                                          (let ((__tmp251280
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd244137244174_
                                                         _expr244139244168_))))
                                            (declare (not safe))
                                            (_loop244135244163_
                                             _lp-tl244138244176_
                                             __tmp251280))))
                                      (let ((_expr244140244179_
                                             (reverse _expr244139244168_)))
                                        (___kont249281249282_
                                         _expr244140244179_))))))
                        (let ()
                          (declare (not safe))
                          (_loop244135244163_ _target244132244158_ '())))))
                   (___match249412249413_
                    (lambda (_e244039244356_
                             _hd244038244359_
                             _tl244037244361_
                             _e244042244364_
                             _hd244041244367_
                             _tl244040244369_
                             _e244045244372_
                             _hd244044244375_
                             _tl244043244377_
                             _e244048244380_
                             _hd244047244383_
                             _tl244046244385_
                             _e244051244388_
                             _hd244050244391_
                             _tl244049244393_
                             _e244054244396_
                             _hd244053244399_
                             _tl244052244401_
                             _e244057244404_
                             _hd244056244407_
                             _tl244055244409_
                             _e244060244412_
                             _hd244059244415_
                             _tl244058244417_
                             _e244063244420_
                             _hd244062244423_
                             _tl244061244425_
                             _e244066244428_
                             _hd244065244431_
                             _tl244064244433_
                             _e244069244436_
                             _hd244068244439_
                             _tl244067244441_
                             _e244072244444_
                             _hd244071244447_
                             _tl244070244449_
                             _e244075244452_
                             _hd244074244455_
                             _tl244073244457_
                             _e244078244460_
                             _hd244077244463_
                             _tl244076244465_
                             _e244081244468_
                             _hd244080244471_
                             _tl244079244473_
                             _e244084244476_
                             _hd244083244479_
                             _tl244082244481_)
                      (let ((_L244484_ _hd244083244479_)
                            (_L244485_ _hd244074244455_)
                            (_L244486_ _hd244065244431_)
                            (_L244487_ _hd244056244407_)
                            (_L244488_ _hd244047244383_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L244488_
                               'bind-method!))
                            (___kont249277249278_
                             _L244484_
                             _L244485_
                             _L244486_
                             _L244487_
                             _L244488_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl244037244361_))
                                (let ((___splice249283249284_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl244037244361_
                                          '0))))
                                  (let ((_tl244134244160_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice249283249284_
                                            '1)))
                                        (_target244132244158_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice249283249284_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244134244160_))
                                        (___match249532249533_
                                         _e244039244356_
                                         _hd244038244359_
                                         _tl244037244361_
                                         ___splice249283249284_
                                         _target244132244158_
                                         _tl244134244160_)
                                        (let ()
                                          (declare (not safe))
                                          (_g244030244145_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g244030244145_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249275249276_))
                  (let ((_e244039244356_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249275249276_))))
                    (let ((_tl244037244361_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244039244356_)))
                          (_hd244038244359_
                           (let ()
                             (declare (not safe))
                             (##car _e244039244356_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl244037244361_))
                          (let ((_e244042244364_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl244037244361_))))
                            (let ((_tl244040244369_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244042244364_)))
                                  (_hd244041244367_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244042244364_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd244041244367_))
                                  (let ((_e244045244372_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd244041244367_))))
                                    (let ((_tl244043244377_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244045244372_)))
                                          (_hd244044244375_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244045244372_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd244044244375_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd244044244375_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl244043244377_))
                                                  (let ((_e244048244380_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl244043244377_))))
                                                    (let ((_tl244046244385_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e244048244380_)))
                                                          (_hd244047244383_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e244048244380_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl244046244385_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl244040244369_))
                      (let ((_e244051244388_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl244040244369_))))
                        (let ((_tl244049244393_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e244051244388_)))
                              (_hd244050244391_
                               (let ()
                                 (declare (not safe))
                                 (##car _e244051244388_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd244050244391_))
                              (let ((_e244054244396_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd244050244391_))))
                                (let ((_tl244052244401_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e244054244396_)))
                                      (_hd244053244399_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e244054244396_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd244053244399_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd244053244399_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl244052244401_))
                                              (let ((_e244057244404_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl244052244401_))))
                                                (let ((_tl244055244409_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e244057244404_)))
                                                      (_hd244056244407_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e244057244404_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244055244409_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl244049244393_))
                                                          (let ((_e244060244412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl244049244393_))))
                    (let ((_tl244058244417_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244060244412_)))
                          (_hd244059244415_
                           (let ()
                             (declare (not safe))
                             (##car _e244060244412_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd244059244415_))
                          (let ((_e244063244420_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd244059244415_))))
                            (let ((_tl244061244425_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e244063244420_)))
                                  (_hd244062244423_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e244063244420_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd244062244423_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd244062244423_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl244061244425_))
                                          (let ((_e244066244428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl244061244425_))))
                                            (let ((_tl244064244433_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e244066244428_)))
                                                  (_hd244065244431_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e244066244428_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244064244433_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl244058244417_))
                                                      (let ((_e244069244436_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl244058244417_))))
                (let ((_tl244067244441_
                       (let () (declare (not safe)) (##cdr _e244069244436_)))
                      (_hd244068244439_
                       (let () (declare (not safe)) (##car _e244069244436_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd244068244439_))
                      (let ((_e244072244444_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd244068244439_))))
                        (let ((_tl244070244449_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e244072244444_)))
                              (_hd244071244447_
                               (let ()
                                 (declare (not safe))
                                 (##car _e244072244444_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd244071244447_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd244071244447_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl244070244449_))
                                      (let ((_e244075244452_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl244070244449_))))
                                        (let ((_tl244073244457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e244075244452_)))
                                              (_hd244074244455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e244075244452_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244073244457_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl244067244441_))
                                                  (let ((_e244078244460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl244067244441_))))
                                                    (let ((_tl244076244465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e244078244460_)))
                                                          (_hd244077244463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e244078244460_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd244077244463_))
                                                          (let ((_e244081244468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd244077244463_))))
                    (let ((_tl244079244473_
                           (let ()
                             (declare (not safe))
                             (##cdr _e244081244468_)))
                          (_hd244080244471_
                           (let ()
                             (declare (not safe))
                             (##car _e244081244468_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd244080244471_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd244080244471_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl244079244473_))
                                  (let ((_e244084244476_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl244079244473_))))
                                    (let ((_tl244082244481_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e244084244476_)))
                                          (_hd244083244479_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e244084244476_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244082244481_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244076244465_))
                                              (___match249412249413_
                                               _e244039244356_
                                               _hd244038244359_
                                               _tl244037244361_
                                               _e244042244364_
                                               _hd244041244367_
                                               _tl244040244369_
                                               _e244045244372_
                                               _hd244044244375_
                                               _tl244043244377_
                                               _e244048244380_
                                               _hd244047244383_
                                               _tl244046244385_
                                               _e244051244388_
                                               _hd244050244391_
                                               _tl244049244393_
                                               _e244054244396_
                                               _hd244053244399_
                                               _tl244052244401_
                                               _e244057244404_
                                               _hd244056244407_
                                               _tl244055244409_
                                               _e244060244412_
                                               _hd244059244415_
                                               _tl244058244417_
                                               _e244063244420_
                                               _hd244062244423_
                                               _tl244061244425_
                                               _e244066244428_
                                               _hd244065244431_
                                               _tl244064244433_
                                               _e244069244436_
                                               _hd244068244439_
                                               _tl244067244441_
                                               _e244072244444_
                                               _hd244071244447_
                                               _tl244070244449_
                                               _e244075244452_
                                               _hd244074244455_
                                               _tl244073244457_
                                               _e244078244460_
                                               _hd244077244463_
                                               _tl244076244465_
                                               _e244081244468_
                                               _hd244080244471_
                                               _tl244079244473_
                                               _e244084244476_
                                               _hd244083244479_
                                               _tl244082244481_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl244037244361_))
                                                  (let ((___splice249283249284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl244037244361_
                                                            '0))))
                                                    (let ((_tl244134244160_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249283249284_
                                                              '1)))
                                                          (_target244132244158_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249283249284_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl244134244160_))
                                                          (___match249532249533_
                                                           _e244039244356_
                                                           _hd244038244359_
                                                           _tl244037244361_
                                                           ___splice249283249284_
                                                           _target244132244158_
                                                           _tl244134244160_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g244030244145_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244030244145_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl244037244361_))
                                              (let ((___splice249283249284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl244037244361_
                                                        '0))))
                                                (let ((_tl244134244160_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249283249284_
                                                          '1)))
                                                      (_target244132244158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249283249284_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244134244160_))
                                                      (___match249532249533_
                                                       _e244039244356_
                                                       _hd244038244359_
                                                       _tl244037244361_
                                                       ___splice249283249284_
                                                       _target244132244158_
                                                       _tl244134244160_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244030244145_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244030244145_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244037244361_))
                                      (let ((___splice249283249284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244037244361_
                                                '0))))
                                        (let ((_tl244134244160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249283249284_
                                                  '1)))
                                              (_target244132244158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249283249284_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244134244160_))
                                              (___match249532249533_
                                               _e244039244356_
                                               _hd244038244359_
                                               _tl244037244361_
                                               ___splice249283249284_
                                               _target244132244158_
                                               _tl244134244160_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244030244145_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244030244145_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl244037244361_))
                                  (let ((___splice249283249284_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl244037244361_
                                            '0))))
                                    (let ((_tl244134244160_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249283249284_
                                              '1)))
                                          (_target244132244158_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249283249284_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244134244160_))
                                          (___match249532249533_
                                           _e244039244356_
                                           _hd244038244359_
                                           _tl244037244361_
                                           ___splice249283249284_
                                           _target244132244158_
                                           _tl244134244160_)
                                          (let ()
                                            (declare (not safe))
                                            (_g244030244145_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g244030244145_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl244037244361_))
                              (let ((___splice249283249284_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl244037244361_
                                        '0))))
                                (let ((_tl244134244160_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249283249284_
                                          '1)))
                                      (_target244132244158_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249283249284_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244134244160_))
                                      (___match249532249533_
                                       _e244039244356_
                                       _hd244038244359_
                                       _tl244037244361_
                                       ___splice249283249284_
                                       _target244132244158_
                                       _tl244134244160_)
                                      (let ()
                                        (declare (not safe))
                                        (_g244030244145_)))))
                              (let ()
                                (declare (not safe))
                                (_g244030244145_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl244037244361_))
                      (let ((___splice249283249284_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl244037244361_ '0))))
                        (let ((_tl244134244160_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249283249284_ '1)))
                              (_target244132244158_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249283249284_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl244134244160_))
                              (___match249532249533_
                               _e244039244356_
                               _hd244038244359_
                               _tl244037244361_
                               ___splice249283249284_
                               _target244132244158_
                               _tl244134244160_)
                              (let ()
                                (declare (not safe))
                                (_g244030244145_)))))
                      (let () (declare (not safe)) (_g244030244145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244067244441_))
                                                      (if (let ((__tmp251281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp251281 'bind-method!))
                  (let ((_L244312_ _hd244074244455_)
                        (_L244313_ _hd244065244431_)
                        (_L244314_ _hd244056244407_)
                        (_L244315_ _hd244047244383_))
                    (___kont249279249280_
                     _L244312_
                     _L244313_
                     _L244314_
                     _L244315_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl244037244361_))
                      (let ((___splice249283249284_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl244037244361_ '0))))
                        (let ((_tl244134244160_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249283249284_ '1)))
                              (_target244132244158_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249283249284_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl244134244160_))
                              (___match249532249533_
                               _e244039244356_
                               _hd244038244359_
                               _tl244037244361_
                               ___splice249283249284_
                               _target244132244158_
                               _tl244134244160_)
                              (let ()
                                (declare (not safe))
                                (_g244030244145_)))))
                      (let () (declare (not safe)) (_g244030244145_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl244037244361_))
                  (let ((___splice249283249284_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl244037244361_ '0))))
                    (let ((_tl244134244160_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249283249284_ '1)))
                          (_target244132244158_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249283249284_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl244134244160_))
                          (___match249532249533_
                           _e244039244356_
                           _hd244038244359_
                           _tl244037244361_
                           ___splice249283249284_
                           _target244132244158_
                           _tl244134244160_)
                          (let () (declare (not safe)) (_g244030244145_)))))
                  (let () (declare (not safe)) (_g244030244145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl244037244361_))
                                                  (let ((___splice249283249284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl244037244361_
                                                            '0))))
                                                    (let ((_tl244134244160_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249283249284_
                                                              '1)))
                                                          (_target244132244158_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249283249284_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl244134244160_))
                                                          (___match249532249533_
                                                           _e244039244356_
                                                           _hd244038244359_
                                                           _tl244037244361_
                                                           ___splice249283249284_
                                                           _target244132244158_
                                                           _tl244134244160_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g244030244145_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244030244145_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl244037244361_))
                                          (let ((___splice249283249284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl244037244361_
                                                    '0))))
                                            (let ((_tl244134244160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249283249284_
                                                      '1)))
                                                  (_target244132244158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249283249284_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244134244160_))
                                                  (___match249532249533_
                                                   _e244039244356_
                                                   _hd244038244359_
                                                   _tl244037244361_
                                                   ___splice249283249284_
                                                   _target244132244158_
                                                   _tl244134244160_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244030244145_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g244030244145_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244037244361_))
                                      (let ((___splice249283249284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244037244361_
                                                '0))))
                                        (let ((_tl244134244160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249283249284_
                                                  '1)))
                                              (_target244132244158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249283249284_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244134244160_))
                                              (___match249532249533_
                                               _e244039244356_
                                               _hd244038244359_
                                               _tl244037244361_
                                               ___splice249283249284_
                                               _target244132244158_
                                               _tl244134244160_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244030244145_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244030244145_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl244037244361_))
                                  (let ((___splice249283249284_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl244037244361_
                                            '0))))
                                    (let ((_tl244134244160_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249283249284_
                                              '1)))
                                          (_target244132244158_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249283249284_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244134244160_))
                                          (___match249532249533_
                                           _e244039244356_
                                           _hd244038244359_
                                           _tl244037244361_
                                           ___splice249283249284_
                                           _target244132244158_
                                           _tl244134244160_)
                                          (let ()
                                            (declare (not safe))
                                            (_g244030244145_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g244030244145_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl244037244361_))
                          (let ((___splice249283249284_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl244037244361_
                                    '0))))
                            (let ((_tl244134244160_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249283249284_ '1)))
                                  (_target244132244158_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249283249284_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244134244160_))
                                  (___match249532249533_
                                   _e244039244356_
                                   _hd244038244359_
                                   _tl244037244361_
                                   ___splice249283249284_
                                   _target244132244158_
                                   _tl244134244160_)
                                  (let ()
                                    (declare (not safe))
                                    (_g244030244145_)))))
                          (let () (declare (not safe)) (_g244030244145_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl244037244361_))
                  (let ((___splice249283249284_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl244037244361_ '0))))
                    (let ((_tl244134244160_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249283249284_ '1)))
                          (_target244132244158_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249283249284_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl244134244160_))
                          (___match249532249533_
                           _e244039244356_
                           _hd244038244359_
                           _tl244037244361_
                           ___splice249283249284_
                           _target244132244158_
                           _tl244134244160_)
                          (let () (declare (not safe)) (_g244030244145_)))))
                  (let () (declare (not safe)) (_g244030244145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl244037244361_))
                                                      (let ((___splice249283249284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl244037244361_ '0))))
                (let ((_tl244134244160_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249283249284_ '1)))
                      (_target244132244158_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249283249284_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl244134244160_))
                      (___match249532249533_
                       _e244039244356_
                       _hd244038244359_
                       _tl244037244361_
                       ___splice249283249284_
                       _target244132244158_
                       _tl244134244160_)
                      (let () (declare (not safe)) (_g244030244145_)))))
              (let () (declare (not safe)) (_g244030244145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl244037244361_))
                                              (let ((___splice249283249284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl244037244361_
                                                        '0))))
                                                (let ((_tl244134244160_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249283249284_
                                                          '1)))
                                                      (_target244132244158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249283249284_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244134244160_))
                                                      (___match249532249533_
                                                       _e244039244356_
                                                       _hd244038244359_
                                                       _tl244037244361_
                                                       ___splice249283249284_
                                                       _target244132244158_
                                                       _tl244134244160_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244030244145_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244030244145_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl244037244361_))
                                          (let ((___splice249283249284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl244037244361_
                                                    '0))))
                                            (let ((_tl244134244160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249283249284_
                                                      '1)))
                                                  (_target244132244158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249283249284_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244134244160_))
                                                  (___match249532249533_
                                                   _e244039244356_
                                                   _hd244038244359_
                                                   _tl244037244361_
                                                   ___splice249283249284_
                                                   _target244132244158_
                                                   _tl244134244160_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244030244145_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g244030244145_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244037244361_))
                                      (let ((___splice249283249284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244037244361_
                                                '0))))
                                        (let ((_tl244134244160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249283249284_
                                                  '1)))
                                              (_target244132244158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249283249284_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244134244160_))
                                              (___match249532249533_
                                               _e244039244356_
                                               _hd244038244359_
                                               _tl244037244361_
                                               ___splice249283249284_
                                               _target244132244158_
                                               _tl244134244160_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244030244145_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244030244145_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl244037244361_))
                              (let ((___splice249283249284_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl244037244361_
                                        '0))))
                                (let ((_tl244134244160_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249283249284_
                                          '1)))
                                      (_target244132244158_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249283249284_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244134244160_))
                                      (___match249532249533_
                                       _e244039244356_
                                       _hd244038244359_
                                       _tl244037244361_
                                       ___splice249283249284_
                                       _target244132244158_
                                       _tl244134244160_)
                                      (let ()
                                        (declare (not safe))
                                        (_g244030244145_)))))
                              (let ()
                                (declare (not safe))
                                (_g244030244145_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl244037244361_))
                      (let ((___splice249283249284_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl244037244361_ '0))))
                        (let ((_tl244134244160_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249283249284_ '1)))
                              (_target244132244158_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249283249284_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl244134244160_))
                              (___match249532249533_
                               _e244039244356_
                               _hd244038244359_
                               _tl244037244361_
                               ___splice249283249284_
                               _target244132244158_
                               _tl244134244160_)
                              (let ()
                                (declare (not safe))
                                (_g244030244145_)))))
                      (let () (declare (not safe)) (_g244030244145_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl244037244361_))
                  (let ((___splice249283249284_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl244037244361_ '0))))
                    (let ((_tl244134244160_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249283249284_ '1)))
                          (_target244132244158_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice249283249284_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl244134244160_))
                          (___match249532249533_
                           _e244039244356_
                           _hd244038244359_
                           _tl244037244361_
                           ___splice249283249284_
                           _target244132244158_
                           _tl244134244160_)
                          (let () (declare (not safe)) (_g244030244145_)))))
                  (let () (declare (not safe)) (_g244030244145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl244037244361_))
                                                  (let ((___splice249283249284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl244037244361_
                                                            '0))))
                                                    (let ((_tl244134244160_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249283249284_
                                                              '1)))
                                                          (_target244132244158_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249283249284_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl244134244160_))
                                                          (___match249532249533_
                                                           _e244039244356_
                                                           _hd244038244359_
                                                           _tl244037244361_
                                                           ___splice249283249284_
                                                           _target244132244158_
                                                           _tl244134244160_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g244030244145_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244030244145_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl244037244361_))
                                              (let ((___splice249283249284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl244037244361_
                                                        '0))))
                                                (let ((_tl244134244160_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249283249284_
                                                          '1)))
                                                      (_target244132244158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249283249284_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244134244160_))
                                                      (___match249532249533_
                                                       _e244039244356_
                                                       _hd244038244359_
                                                       _tl244037244361_
                                                       ___splice249283249284_
                                                       _target244132244158_
                                                       _tl244134244160_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244030244145_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244030244145_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl244037244361_))
                                          (let ((___splice249283249284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl244037244361_
                                                    '0))))
                                            (let ((_tl244134244160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249283249284_
                                                      '1)))
                                                  (_target244132244158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice249283249284_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl244134244160_))
                                                  (___match249532249533_
                                                   _e244039244356_
                                                   _hd244038244359_
                                                   _tl244037244361_
                                                   ___splice249283249284_
                                                   _target244132244158_
                                                   _tl244134244160_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244030244145_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g244030244145_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl244037244361_))
                                  (let ((___splice249283249284_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl244037244361_
                                            '0))))
                                    (let ((_tl244134244160_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249283249284_
                                              '1)))
                                          (_target244132244158_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice249283249284_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl244134244160_))
                                          (___match249532249533_
                                           _e244039244356_
                                           _hd244038244359_
                                           _tl244037244361_
                                           ___splice249283249284_
                                           _target244132244158_
                                           _tl244134244160_)
                                          (let ()
                                            (declare (not safe))
                                            (_g244030244145_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g244030244145_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl244037244361_))
                          (let ((___splice249283249284_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl244037244361_
                                    '0))))
                            (let ((_tl244134244160_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249283249284_ '1)))
                                  (_target244132244158_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249283249284_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl244134244160_))
                                  (___match249532249533_
                                   _e244039244356_
                                   _hd244038244359_
                                   _tl244037244361_
                                   ___splice249283249284_
                                   _target244132244158_
                                   _tl244134244160_)
                                  (let ()
                                    (declare (not safe))
                                    (_g244030244145_)))))
                          (let () (declare (not safe)) (_g244030244145_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl244037244361_))
                      (let ((___splice249283249284_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl244037244361_ '0))))
                        (let ((_tl244134244160_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249283249284_ '1)))
                              (_target244132244158_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice249283249284_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl244134244160_))
                              (___match249532249533_
                               _e244039244356_
                               _hd244038244359_
                               _tl244037244361_
                               ___splice249283249284_
                               _target244132244158_
                               _tl244134244160_)
                              (let ()
                                (declare (not safe))
                                (_g244030244145_)))))
                      (let () (declare (not safe)) (_g244030244145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl244037244361_))
                                                      (let ((___splice249283249284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl244037244361_ '0))))
                (let ((_tl244134244160_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249283249284_ '1)))
                      (_target244132244158_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice249283249284_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl244134244160_))
                      (___match249532249533_
                       _e244039244356_
                       _hd244038244359_
                       _tl244037244361_
                       ___splice249283249284_
                       _target244132244158_
                       _tl244134244160_)
                      (let () (declare (not safe)) (_g244030244145_)))))
              (let () (declare (not safe)) (_g244030244145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl244037244361_))
                                                  (let ((___splice249283249284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl244037244361_
                                                            '0))))
                                                    (let ((_tl244134244160_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249283249284_
                                                              '1)))
                                                          (_target244132244158_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249283249284_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl244134244160_))
                                                          (___match249532249533_
                                                           _e244039244356_
                                                           _hd244038244359_
                                                           _tl244037244361_
                                                           ___splice249283249284_
                                                           _target244132244158_
                                                           _tl244134244160_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g244030244145_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g244030244145_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl244037244361_))
                                              (let ((___splice249283249284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl244037244361_
                                                        '0))))
                                                (let ((_tl244134244160_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249283249284_
                                                          '1)))
                                                      (_target244132244158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice249283249284_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl244134244160_))
                                                      (___match249532249533_
                                                       _e244039244356_
                                                       _hd244038244359_
                                                       _tl244037244361_
                                                       ___splice249283249284_
                                                       _target244132244158_
                                                       _tl244134244160_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g244030244145_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g244030244145_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl244037244361_))
                                      (let ((___splice249283249284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl244037244361_
                                                '0))))
                                        (let ((_tl244134244160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249283249284_
                                                  '1)))
                                              (_target244132244158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice249283249284_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl244134244160_))
                                              (___match249532249533_
                                               _e244039244356_
                                               _hd244038244359_
                                               _tl244037244361_
                                               ___splice249283249284_
                                               _target244132244158_
                                               _tl244134244160_)
                                              (let ()
                                                (declare (not safe))
                                                (_g244030244145_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g244030244145_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl244037244361_))
                              (let ((___splice249283249284_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl244037244361_
                                        '0))))
                                (let ((_tl244134244160_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249283249284_
                                          '1)))
                                      (_target244132244158_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice249283249284_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl244134244160_))
                                      (___match249532249533_
                                       _e244039244356_
                                       _hd244038244359_
                                       _tl244037244361_
                                       ___splice249283249284_
                                       _target244132244158_
                                       _tl244134244160_)
                                      (let ()
                                        (declare (not safe))
                                        (_g244030244145_)))))
                              (let ()
                                (declare (not safe))
                                (_g244030244145_))))))
                  (let () (declare (not safe)) (_g244030244145_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx243966_)
        (let* ((___stx249535249536_ _stx243966_)
               (_g243969243982_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249535249536_)))))
          (let ((___kont249537249538_
                 (lambda (_L244010_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L244010_))))
                (___kont249539249540_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249535249536_))
                (let ((_e243974243994_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249535249536_))))
                  (let ((_tl243972243999_
                         (let () (declare (not safe)) (##cdr _e243974243994_)))
                        (_hd243973243997_
                         (let ()
                           (declare (not safe))
                           (##car _e243974243994_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl243972243999_))
                        (let ((_e243977244002_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl243972243999_))))
                          (let ((_tl243975244007_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e243977244002_)))
                                (_hd243976244005_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e243977244002_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl243975244007_))
                                (___kont249537249538_ _hd243976244005_)
                                (___kont249539249540_))))
                        (___kont249539249540_))))
                (___kont249539249540_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx243846_)
        (let* ((_g243848243865_
                (lambda (_g243849243862_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243849243862_))))
               (_g243847243963_
                (lambda (_g243849243868_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243849243868_))
                      (let ((_e243854243870_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243849243868_))))
                        (let ((_hd243853243873_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243854243870_)))
                              (_tl243852243875_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243854243870_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243852243875_))
                              (let ((_e243857243878_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243852243875_))))
                                (let ((_hd243856243881_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243857243878_)))
                                      (_tl243855243883_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243857243878_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243855243883_))
                                      (let ((_e243860243886_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243855243883_))))
                                        (let ((_hd243859243889_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243860243886_)))
                                              (_tl243858243891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243860243886_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243858243891_))
                                              ((lambda (_L243894_ _L243895_)
                                                 (let* ((___stx249557249558_
                                                         _L243895_)
                                                        (_g243911243922_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx249557249558_)))))
                                                   (let ((___kont249559249560_
                                                          (lambda (_L243942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L243943_)
                    (let ((_$e243955_
                           (let ((__tmp251282
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L243943_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp251282))))
                      (if _$e243955_
                          ((lambda (_type-e243958_)
                             (_type-e243958_ _stx243846_ _L243895_))
                           _$e243955_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L243894_))))))
                 (___kont249561249562_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L243894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match249568249569_
                                                            (lambda (_e243917243934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd243916243937_
                             _tl243915243939_)
                      (let ((_L243942_ _tl243915243939_)
                            (_L243943_ _hd243916243937_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L243943_))
                            (___kont249559249560_ _L243942_ _L243943_)
                            (___kont249561249562_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx249557249558_))
                   (let ((_e243917243934_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx249557249558_))))
                     (let ((_tl243915243939_
                            (let ()
                              (declare (not safe))
                              (##cdr _e243917243934_)))
                           (_hd243916243937_
                            (let ()
                              (declare (not safe))
                              (##car _e243917243934_))))
                       (___match249568249569_
                        _e243917243934_
                        _hd243916243937_
                        _tl243915243939_)))
                   (___kont249561249562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd243859243889_
                                               _hd243856243881_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243848243865_
                                                 _g243849243868_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243848243865_ _g243849243868_)))))
                              (let ()
                                (declare (not safe))
                                (_g243848243865_ _g243849243868_)))))
                      (let ()
                        (declare (not safe))
                        (_g243848243865_ _g243849243868_))))))
          (declare (not safe))
          (_g243847243963_ _stx243846_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx243690_ _ann243691_)
        (let* ((_g243693243730_
                (lambda (_g243694243727_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243694243727_))))
               (_g243692243843_
                (lambda (_g243694243733_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243694243733_))
                      (let ((_e243704243735_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243694243733_))))
                        (let ((_hd243703243738_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243704243735_)))
                              (_tl243702243740_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243704243735_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243702243740_))
                              (let ((_e243707243743_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243702243740_))))
                                (let ((_hd243706243746_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243707243743_)))
                                      (_tl243705243748_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243707243743_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243705243748_))
                                      (let ((_e243710243751_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243705243748_))))
                                        (let ((_hd243709243754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243710243751_)))
                                              (_tl243708243756_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243710243751_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243708243756_))
                                              (let ((_e243713243759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243708243756_))))
                                                (let ((_hd243712243762_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243713243759_)))
                                                      (_tl243711243764_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243713243759_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl243711243764_))
                                                      (let ((_e243716243767_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl243711243764_))))
                (let ((_hd243715243770_
                       (let () (declare (not safe)) (##car _e243716243767_)))
                      (_tl243714243772_
                       (let () (declare (not safe)) (##cdr _e243716243767_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl243714243772_))
                      (let ((_e243719243775_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl243714243772_))))
                        (let ((_hd243718243778_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243719243775_)))
                              (_tl243717243780_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243719243775_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243717243780_))
                              (let ((_e243722243783_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243717243780_))))
                                (let ((_hd243721243786_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243722243783_)))
                                      (_tl243720243788_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243722243783_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243720243788_))
                                      (let ((_e243725243791_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243720243788_))))
                                        (let ((_hd243724243794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243725243791_)))
                                              (_tl243723243796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243725243791_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl243723243796_))
                                              ((lambda (_L243799_
                                                        _L243800_
                                                        _L243801_
                                                        _L243802_
                                                        _L243803_
                                                        _L243804_
                                                        _L243805_)
                                                 (let ((_type-id243835_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243805_)))
                                                       (_super243836_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L243804_)))
                                                       (_slots243837_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L243803_)))
                                                       (_ctor-method243838_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243802_)))
                                                       (_struct?243839_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243801_)))
                                                       (_final?243840_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L243800_)))
                                                       (_metaclass243841_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L243799_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L243799_))
                                                            '#f)))
                                                   (let ((__obj251240
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
                                                      __obj251240
                                                      _type-id243835_
                                                      _super243836_
                                                      _slots243837_
                                                      _ctor-method243838_
                                                      _struct?243839_
                                                      _final?243840_
                                                      _metaclass243841_)
                                                     __obj251240)))
                                               _hd243724243794_
                                               _hd243721243786_
                                               _hd243718243778_
                                               _hd243715243770_
                                               _hd243712243762_
                                               _hd243709243754_
                                               _hd243706243746_)
                                              (let ()
                                                (declare (not safe))
                                                (_g243693243730_
                                                 _g243694243733_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243693243730_ _g243694243733_)))))
                              (let ()
                                (declare (not safe))
                                (_g243693243730_ _g243694243733_)))))
                      (let ()
                        (declare (not safe))
                        (_g243693243730_ _g243694243733_)))))
              (let ()
                (declare (not safe))
                (_g243693243730_ _g243694243733_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243693243730_
                                                 _g243694243733_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243693243730_ _g243694243733_)))))
                              (let ()
                                (declare (not safe))
                                (_g243693243730_ _g243694243733_)))))
                      (let ()
                        (declare (not safe))
                        (_g243693243730_ _g243694243733_))))))
          (declare (not safe))
          (_g243692243843_ _ann243691_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx243638_ _ann243639_)
        (let* ((_g243641243654_
                (lambda (_g243642243651_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243642243651_))))
               (_g243640243687_
                (lambda (_g243642243657_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243642243657_))
                      (let ((_e243646243659_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243642243657_))))
                        (let ((_hd243645243662_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243646243659_)))
                              (_tl243644243664_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243646243659_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243644243664_))
                              (let ((_e243649243667_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243644243664_))))
                                (let ((_hd243648243670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243649243667_)))
                                      (_tl243647243672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243649243667_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243647243672_))
                                      ((lambda (_L243675_)
                                         (let ((__tmp251283
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L243675_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp251283)))
                                       _hd243648243670_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243641243654_ _g243642243657_)))))
                              (let ()
                                (declare (not safe))
                                (_g243641243654_ _g243642243657_)))))
                      (let ()
                        (declare (not safe))
                        (_g243641243654_ _g243642243657_))))))
          (declare (not safe))
          (_g243640243687_ _ann243639_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx243586_ _ann243587_)
        (let* ((_g243589243602_
                (lambda (_g243590243599_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243590243599_))))
               (_g243588243635_
                (lambda (_g243590243605_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243590243605_))
                      (let ((_e243594243607_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243590243605_))))
                        (let ((_hd243593243610_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243594243607_)))
                              (_tl243592243612_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243594243607_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243592243612_))
                              (let ((_e243597243615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243592243612_))))
                                (let ((_hd243596243618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243597243615_)))
                                      (_tl243595243620_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243597243615_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl243595243620_))
                                      ((lambda (_L243623_)
                                         (let ((__tmp251284
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L243623_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp251284)))
                                       _hd243596243618_)
                                      (let ()
                                        (declare (not safe))
                                        (_g243589243602_ _g243590243605_)))))
                              (let ()
                                (declare (not safe))
                                (_g243589243602_ _g243590243605_)))))
                      (let ()
                        (declare (not safe))
                        (_g243589243602_ _g243590243605_))))))
          (declare (not safe))
          (_g243588243635_ _ann243587_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx243502_ _ann243503_)
        (let* ((_g243505243526_
                (lambda (_g243506243523_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243506243523_))))
               (_g243504243583_
                (lambda (_g243506243529_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243506243529_))
                      (let ((_e243512243531_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243506243529_))))
                        (let ((_hd243511243534_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243512243531_)))
                              (_tl243510243536_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243512243531_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243510243536_))
                              (let ((_e243515243539_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243510243536_))))
                                (let ((_hd243514243542_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243515243539_)))
                                      (_tl243513243544_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243515243539_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243513243544_))
                                      (let ((_e243518243547_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243513243544_))))
                                        (let ((_hd243517243550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243518243547_)))
                                              (_tl243516243552_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243518243547_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243516243552_))
                                              (let ((_e243521243555_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243516243552_))))
                                                (let ((_hd243520243558_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243521243555_)))
                                                      (_tl243519243560_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243521243555_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243519243560_))
                                                      ((lambda (_L243563_
                                                                _L243564_
                                                                _L243565_)
                                                         (let ((__tmp251287
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L243565_)))
                       (__tmp251286
                        (let () (declare (not safe)) (gx#stx-e _L243564_)))
                       (__tmp251285
                        (let () (declare (not safe)) (gx#stx-e _L243563_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp251287
                    __tmp251286
                    __tmp251285)))
               _hd243520243558_
               _hd243517243550_
               _hd243514243542_)
              (let ()
                (declare (not safe))
                (_g243505243526_ _g243506243529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243505243526_
                                                 _g243506243529_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243505243526_ _g243506243529_)))))
                              (let ()
                                (declare (not safe))
                                (_g243505243526_ _g243506243529_)))))
                      (let ()
                        (declare (not safe))
                        (_g243505243526_ _g243506243529_))))))
          (declare (not safe))
          (_g243504243583_ _ann243503_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx243418_ _ann243419_)
        (let* ((_g243421243442_
                (lambda (_g243422243439_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g243422243439_))))
               (_g243420243499_
                (lambda (_g243422243445_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g243422243445_))
                      (let ((_e243428243447_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g243422243445_))))
                        (let ((_hd243427243450_
                               (let ()
                                 (declare (not safe))
                                 (##car _e243428243447_)))
                              (_tl243426243452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e243428243447_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl243426243452_))
                              (let ((_e243431243455_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl243426243452_))))
                                (let ((_hd243430243458_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e243431243455_)))
                                      (_tl243429243460_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e243431243455_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl243429243460_))
                                      (let ((_e243434243463_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl243429243460_))))
                                        (let ((_hd243433243466_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e243434243463_)))
                                              (_tl243432243468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e243434243463_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl243432243468_))
                                              (let ((_e243437243471_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl243432243468_))))
                                                (let ((_hd243436243474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e243437243471_)))
                                                      (_tl243435243476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e243437243471_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl243435243476_))
                                                      ((lambda (_L243479_
                                                                _L243480_
                                                                _L243481_)
                                                         (let ((__tmp251290
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L243481_)))
                       (__tmp251289
                        (let () (declare (not safe)) (gx#stx-e _L243480_)))
                       (__tmp251288
                        (let () (declare (not safe)) (gx#stx-e _L243479_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp251290
                    __tmp251289
                    __tmp251288)))
               _hd243436243474_
               _hd243433243466_
               _hd243430243458_)
              (let ()
                (declare (not safe))
                (_g243421243442_ _g243422243445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g243421243442_
                                                 _g243422243445_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g243421243442_ _g243422243445_)))))
                              (let ()
                                (declare (not safe))
                                (_g243421243442_ _g243422243445_)))))
                      (let ()
                        (declare (not safe))
                        (_g243421243442_ _g243422243445_))))))
          (declare (not safe))
          (_g243420243499_ _ann243419_))))
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
      (lambda (_stx242538_)
        (let* ((___stx249571249572_ _stx242538_)
               (_g242544242740_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249571249572_)))))
          (let ((___kont249573249574_
                 (lambda (_L243406_)
                   (let ((__obj251241
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251241
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L243406_))
                      '#f)
                     __obj251241)))
                (___kont249575249576_
                 (lambda (_L243333_
                          _L243334_
                          _L243335_
                          _L243336_
                          _L243337_
                          _L243338_)
                   (let* ((_tab243388_
                           (let () (declare (not safe)) (gx#stx-e _L243335_)))
                          (_keys243390_
                           (if _tab243388_
                               (let ((__tmp251291 (vector->list _tab243388_)))
                                 (declare (not safe))
                                 (filter values __tmp251291))
                               '#f)))
                     (let ((__tmp251292
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L243334_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys243390_
                        __tmp251292)))))
                (___kont249577249578_
                 (lambda (_L243066_
                          _L243067_
                          _L243068_
                          _L243069_
                          _L243070_
                          _L243071_
                          _L243072_
                          _L243073_
                          _L243074_
                          _L243075_)
                   (let ((__tmp251294
                          (map gx#stx-e
                               (let ((__tmp251295
                                      (lambda (_g243168243171_ _g243169243173_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g243168243171_
                                                _g243169243173_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp251295 '() _L243068_))))
                         (__tmp251293
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L243072_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp251294
                      __tmp251293))))
                (___kont249581249582_
                 (lambda (_L242776_)
                   (let ((__obj251242
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251242
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L242776_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L242776_)))
                     __obj251242)))
                (___kont249583249584_
                 (lambda (_L242753_)
                   (let ((__obj251243
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj251243
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L242753_))
                      '#f)
                     __obj251243))))
            (let* ((___match249890249891_
                    (lambda (_e242731242768_ _hd242730242771_ _tl242729242773_)
                      (let ((_L242776_ _tl242729242773_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L242776_))
                            (___kont249581249582_ _L242776_)
                            (___kont249583249584_ _tl242729242773_)))))
                   (___match249884249885_
                    (lambda (_e242625242790_
                             _hd242624242793_
                             _tl242623242795_
                             _e242628242798_
                             _hd242627242801_
                             _tl242626242803_
                             _e242631242806_
                             _hd242630242809_
                             _tl242629242811_
                             _e242634242814_
                             _hd242633242817_
                             _tl242632242819_
                             _e242637242822_
                             _hd242636242825_
                             _tl242635242827_
                             _e242640242830_
                             _hd242639242833_
                             _tl242638242835_
                             _e242643242838_
                             _hd242642242841_
                             _tl242641242843_
                             _e242646242846_
                             _hd242645242849_
                             _tl242644242851_
                             _e242649242854_
                             _hd242648242857_
                             _tl242647242859_
                             _e242652242862_
                             _hd242651242865_
                             _tl242650242867_
                             _e242655242870_
                             _hd242654242873_
                             _tl242653242875_
                             _e242658242878_
                             _hd242657242881_
                             _tl242656242883_
                             _e242661242886_
                             _hd242660242889_
                             _tl242659242891_
                             _e242664242894_
                             _hd242663242897_
                             _tl242662242899_
                             ___splice249579249580_
                             _target242665242902_
                             _tl242667242904_
                             _e242682242907_
                             _hd242681242910_
                             _tl242680242912_
                             _e242685242915_
                             _hd242684242918_
                             _tl242683242920_
                             _e242688242923_
                             _hd242687242926_
                             _tl242686242928_)
                      (letrec ((_loop242668242931_
                                (lambda (_hd242666242934_
                                         _-absent-value242672242936_
                                         _key242673242938_
                                         _-xkwvar242674242940_
                                         _-hash-ref242675242942_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242666242934_))
                                      (let ((_e242669242945_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242666242934_))))
                                        (let ((_lp-tl242671242950_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242669242945_)))
                                              (_lp-hd242670242948_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242669242945_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd242670242948_))
                                              (let ((_e242691242953_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd242670242948_))))
                                                (let ((_tl242689242958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242691242953_)))
                                                      (_hd242690242956_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242691242953_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd242690242956_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd242690242956_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242689242958_))
                      (let ((_e242694242961_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242689242958_))))
                        (let ((_tl242692242966_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242694242961_)))
                              (_hd242693242964_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242694242961_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242693242964_))
                              (let ((_e242697242969_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242693242964_))))
                                (let ((_tl242695242974_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242697242969_)))
                                      (_hd242696242972_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242697242969_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242696242972_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242696242972_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242695242974_))
                                              (let ((_e242700242977_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242695242974_))))
                                                (let ((_tl242698242982_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242700242977_)))
                                                      (_hd242699242980_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242700242977_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242698242982_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242692242966_))
                                                          (let ((_e242703242985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242692242966_))))
                    (let ((_tl242701242990_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242703242985_)))
                          (_hd242702242988_
                           (let ()
                             (declare (not safe))
                             (##car _e242703242985_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242702242988_))
                          (let ((_e242706242993_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242702242988_))))
                            (let ((_tl242704242998_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242706242993_)))
                                  (_hd242705242996_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242706242993_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242705242996_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242705242996_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242704242998_))
                                          (let ((_e242709243001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242704242998_))))
                                            (let ((_tl242707243006_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242709243001_)))
                                                  (_hd242708243004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242709243001_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242707243006_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242701242990_))
                                                      (let ((_e242712243009_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242701242990_))))
                (let ((_tl242710243014_
                       (let () (declare (not safe)) (##cdr _e242712243009_)))
                      (_hd242711243012_
                       (let () (declare (not safe)) (##car _e242712243009_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242711243012_))
                      (let ((_e242715243017_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242711243012_))))
                        (let ((_tl242713243022_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242715243017_)))
                              (_hd242714243020_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242715243017_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242714243020_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd242714243020_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242713243022_))
                                      (let ((_e242718243025_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242713243022_))))
                                        (let ((_tl242716243030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242718243025_)))
                                              (_hd242717243028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242718243025_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242716243030_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242710243014_))
                                                  (let ((_e242721243033_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242710243014_))))
                                                    (let ((_tl242719243038_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242721243033_)))
                                                          (_hd242720243036_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242721243033_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242720243036_))
                                                          (let ((_e242724243041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242720243036_))))
                    (let ((_tl242722243046_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242724243041_)))
                          (_hd242723243044_
                           (let ()
                             (declare (not safe))
                             (##car _e242724243041_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242723243044_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd242723243044_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242722243046_))
                                  (let ((_e242727243049_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242722243046_))))
                                    (let ((_tl242725243054_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242727243049_)))
                                          (_hd242726243052_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242727243049_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242725243054_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242719243038_))
                                              (let ((__tmp251310
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242726243052_
                                                             _-absent-value242672242936_)))
                                                    (__tmp251309
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242717243028_
                                                             _key242673242938_)))
                                                    (__tmp251308
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242708243004_
                                                             _-xkwvar242674242940_)))
                                                    (__tmp251307
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd242699242980_
                                                             _-hash-ref242675242942_))))
                                                (declare (not safe))
                                                (_loop242668242931_
                                                 _lp-tl242671242950_
                                                 __tmp251310
                                                 __tmp251309
                                                 __tmp251308
                                                 __tmp251307))
                                              (___match249890249891_
                                               _e242625242790_
                                               _hd242624242793_
                                               _tl242623242795_))
                                          (___match249890249891_
                                           _e242625242790_
                                           _hd242624242793_
                                           _tl242623242795_))))
                                  (___match249890249891_
                                   _e242625242790_
                                   _hd242624242793_
                                   _tl242623242795_))
                              (___match249890249891_
                               _e242625242790_
                               _hd242624242793_
                               _tl242623242795_))
                          (___match249890249891_
                           _e242625242790_
                           _hd242624242793_
                           _tl242623242795_))))
                  (___match249890249891_
                   _e242625242790_
                   _hd242624242793_
                   _tl242623242795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249890249891_
                                                   _e242625242790_
                                                   _hd242624242793_
                                                   _tl242623242795_))
                                              (___match249890249891_
                                               _e242625242790_
                                               _hd242624242793_
                                               _tl242623242795_))))
                                      (___match249890249891_
                                       _e242625242790_
                                       _hd242624242793_
                                       _tl242623242795_))
                                  (___match249890249891_
                                   _e242625242790_
                                   _hd242624242793_
                                   _tl242623242795_))
                              (___match249890249891_
                               _e242625242790_
                               _hd242624242793_
                               _tl242623242795_))))
                      (___match249890249891_
                       _e242625242790_
                       _hd242624242793_
                       _tl242623242795_))))
              (___match249890249891_
               _e242625242790_
               _hd242624242793_
               _tl242623242795_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249890249891_
                                                   _e242625242790_
                                                   _hd242624242793_
                                                   _tl242623242795_))))
                                          (___match249890249891_
                                           _e242625242790_
                                           _hd242624242793_
                                           _tl242623242795_))
                                      (___match249890249891_
                                       _e242625242790_
                                       _hd242624242793_
                                       _tl242623242795_))
                                  (___match249890249891_
                                   _e242625242790_
                                   _hd242624242793_
                                   _tl242623242795_))))
                          (___match249890249891_
                           _e242625242790_
                           _hd242624242793_
                           _tl242623242795_))))
                  (___match249890249891_
                   _e242625242790_
                   _hd242624242793_
                   _tl242623242795_))
              (___match249890249891_
               _e242625242790_
               _hd242624242793_
               _tl242623242795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match249890249891_
                                               _e242625242790_
                                               _hd242624242793_
                                               _tl242623242795_))
                                          (___match249890249891_
                                           _e242625242790_
                                           _hd242624242793_
                                           _tl242623242795_))
                                      (___match249890249891_
                                       _e242625242790_
                                       _hd242624242793_
                                       _tl242623242795_))))
                              (___match249890249891_
                               _e242625242790_
                               _hd242624242793_
                               _tl242623242795_))))
                      (___match249890249891_
                       _e242625242790_
                       _hd242624242793_
                       _tl242623242795_))
                  (___match249890249891_
                   _e242625242790_
                   _hd242624242793_
                   _tl242623242795_))
              (___match249890249891_
               _e242625242790_
               _hd242624242793_
               _tl242623242795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match249890249891_
                                               _e242625242790_
                                               _hd242624242793_
                                               _tl242623242795_))))
                                      (let ((_-hash-ref242679243063_
                                             (reverse _-hash-ref242675242942_))
                                            (_-xkwvar242678243061_
                                             (reverse _-xkwvar242674242940_))
                                            (_key242677243059_
                                             (reverse _key242673242938_))
                                            (_-absent-value242676243057_
                                             (reverse _-absent-value242672242936_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl242632242819_))
                                            (let ((_L243066_ _hd242687242926_)
                                                  (_L243067_
                                                   _-absent-value242676243057_)
                                                  (_L243068_ _key242677243059_)
                                                  (_L243069_
                                                   _-xkwvar242678243061_)
                                                  (_L243070_
                                                   _-hash-ref242679243063_)
                                                  (_L243071_ _hd242663242897_)
                                                  (_L243072_ _hd242654242873_)
                                                  (_L243073_ _hd242645242849_)
                                                  (_L243074_ _tl242629242811_)
                                                  (_L243075_ _hd242630242809_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L243075_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L243074_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L243073_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L243075_
                                                          _L243071_))
                                                       (let ((__tmp251305
                                                              (let ((__tmp251306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g243128243131_ _g243129243133_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g243128243131_ _g243129243133_)))))
                        (declare (not safe))
                        (foldr1 __tmp251306 '() _L243068_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp251305))
               (let ((__tmp251304
                      (lambda (_g243135243137_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g243135243137_
                           'hash-ref))))
                     (__tmp251302
                      (let ((__tmp251303
                             (lambda (_g243139243142_ _g243140243144_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g243139243142_ _g243140243144_)))))
                        (declare (not safe))
                        (foldr1 __tmp251303 '() _L243070_))))
                 (declare (not safe))
                 (andmap1 __tmp251304 __tmp251302))
               (let ((__tmp251301
                      (lambda (_g243146243148_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g243146243148_
                           'absent-value))))
                     (__tmp251299
                      (let ((__tmp251300
                             (lambda (_g243150243153_ _g243151243155_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g243150243153_ _g243151243155_)))))
                        (declare (not safe))
                        (foldr1 __tmp251300 '() _L243067_))))
                 (declare (not safe))
                 (andmap1 __tmp251301 __tmp251299))
               (let ((__tmp251298
                      (lambda (_g243157243159_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g243157243159_ _L243075_))))
                     (__tmp251296
                      (let ((__tmp251297
                             (lambda (_g243161243164_ _g243162243166_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g243161243164_ _g243162243166_)))))
                        (declare (not safe))
                        (foldr1 __tmp251297 '() _L243069_))))
                 (declare (not safe))
                 (andmap1 __tmp251298 __tmp251296)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont249577249578_
                                                   _L243066_
                                                   _L243067_
                                                   _L243068_
                                                   _L243069_
                                                   _L243070_
                                                   _L243071_
                                                   _L243072_
                                                   _L243073_
                                                   _L243074_
                                                   _L243075_)
                                                  (___match249890249891_
                                                   _e242625242790_
                                                   _hd242624242793_
                                                   _tl242623242795_)))
                                            (___match249890249891_
                                             _e242625242790_
                                             _hd242624242793_
                                             _tl242623242795_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop242668242931_
                           _target242665242902_
                           '()
                           '()
                           '()
                           '())))))
                   (___match249756249757_
                    (lambda (_e242625242790_
                             _hd242624242793_
                             _tl242623242795_
                             _e242628242798_
                             _hd242627242801_
                             _tl242626242803_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242627242801_))
                          (let ((_e242631242806_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242627242801_))))
                            (let ((_tl242629242811_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242631242806_)))
                                  (_hd242630242809_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242631242806_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242626242803_))
                                  (let ((_e242634242814_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242626242803_))))
                                    (let ((_tl242632242819_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242634242814_)))
                                          (_hd242633242817_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242634242814_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd242633242817_))
                                          (let ((_e242637242822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd242633242817_))))
                                            (let ((_tl242635242827_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242637242822_)))
                                                  (_hd242636242825_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242637242822_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd242636242825_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd242636242825_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242635242827_))
                                                          (let ((_e242640242830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242635242827_))))
                    (let ((_tl242638242835_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242640242830_)))
                          (_hd242639242833_
                           (let ()
                             (declare (not safe))
                             (##car _e242640242830_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242639242833_))
                          (let ((_e242643242838_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242639242833_))))
                            (let ((_tl242641242843_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242643242838_)))
                                  (_hd242642242841_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242643242838_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242642242841_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242642242841_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242641242843_))
                                          (let ((_e242646242846_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242641242843_))))
                                            (let ((_tl242644242851_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242646242846_)))
                                                  (_hd242645242849_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242646242846_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242644242851_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242638242835_))
                                                      (let ((_e242649242854_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242638242835_))))
                (let ((_tl242647242859_
                       (let () (declare (not safe)) (##cdr _e242649242854_)))
                      (_hd242648242857_
                       (let () (declare (not safe)) (##car _e242649242854_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242648242857_))
                      (let ((_e242652242862_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242648242857_))))
                        (let ((_tl242650242867_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242652242862_)))
                              (_hd242651242865_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242652242862_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242651242865_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd242651242865_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242650242867_))
                                      (let ((_e242655242870_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242650242867_))))
                                        (let ((_tl242653242875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242655242870_)))
                                              (_hd242654242873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242655242870_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242653242875_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242647242859_))
                                                  (let ((_e242658242878_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242647242859_))))
                                                    (let ((_tl242656242883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242658242878_)))
                                                          (_hd242657242881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242658242878_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242657242881_))
                                                          (let ((_e242661242886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242657242881_))))
                    (let ((_tl242659242891_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242661242886_)))
                          (_hd242660242889_
                           (let ()
                             (declare (not safe))
                             (##car _e242661242886_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242660242889_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd242660242889_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242659242891_))
                                  (let ((_e242664242894_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242659242891_))))
                                    (let ((_tl242662242899_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242664242894_)))
                                          (_hd242663242897_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242664242894_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242662242899_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl242656242883_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl242656242883_))
                                                        '1)
                                                  (let ((___splice249579249580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl242656242883_
                                                            '1))))
                                                    (let ((_tl242667242904_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249579249580_
                                                              '1)))
                                                          (_target242665242902_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice249579249580_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242667242904_))
                                                          (let ((_e242682242907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242667242904_))))
                    (let ((_tl242680242912_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242682242907_)))
                          (_hd242681242910_
                           (let ()
                             (declare (not safe))
                             (##car _e242682242907_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242681242910_))
                          (let ((_e242685242915_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242681242910_))))
                            (let ((_tl242683242920_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242685242915_)))
                                  (_hd242684242918_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242685242915_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242684242918_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242684242918_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242683242920_))
                                          (let ((_e242688242923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242683242920_))))
                                            (let ((_tl242686242928_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242688242923_)))
                                                  (_hd242687242926_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242688242923_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242686242928_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242680242912_))
                                                      (___match249884249885_
                                                       _e242625242790_
                                                       _hd242624242793_
                                                       _tl242623242795_
                                                       _e242628242798_
                                                       _hd242627242801_
                                                       _tl242626242803_
                                                       _e242631242806_
                                                       _hd242630242809_
                                                       _tl242629242811_
                                                       _e242634242814_
                                                       _hd242633242817_
                                                       _tl242632242819_
                                                       _e242637242822_
                                                       _hd242636242825_
                                                       _tl242635242827_
                                                       _e242640242830_
                                                       _hd242639242833_
                                                       _tl242638242835_
                                                       _e242643242838_
                                                       _hd242642242841_
                                                       _tl242641242843_
                                                       _e242646242846_
                                                       _hd242645242849_
                                                       _tl242644242851_
                                                       _e242649242854_
                                                       _hd242648242857_
                                                       _tl242647242859_
                                                       _e242652242862_
                                                       _hd242651242865_
                                                       _tl242650242867_
                                                       _e242655242870_
                                                       _hd242654242873_
                                                       _tl242653242875_
                                                       _e242658242878_
                                                       _hd242657242881_
                                                       _tl242656242883_
                                                       _e242661242886_
                                                       _hd242660242889_
                                                       _tl242659242891_
                                                       _e242664242894_
                                                       _hd242663242897_
                                                       _tl242662242899_
                                                       ___splice249579249580_
                                                       _target242665242902_
                                                       _tl242667242904_
                                                       _e242682242907_
                                                       _hd242681242910_
                                                       _tl242680242912_
                                                       _e242685242915_
                                                       _hd242684242918_
                                                       _tl242683242920_
                                                       _e242688242923_
                                                       _hd242687242926_
                                                       _tl242686242928_)
                                                      (___match249890249891_
                                                       _e242625242790_
                                                       _hd242624242793_
                                                       _tl242623242795_))
                                                  (___match249890249891_
                                                   _e242625242790_
                                                   _hd242624242793_
                                                   _tl242623242795_))))
                                          (___match249890249891_
                                           _e242625242790_
                                           _hd242624242793_
                                           _tl242623242795_))
                                      (___match249890249891_
                                       _e242625242790_
                                       _hd242624242793_
                                       _tl242623242795_))
                                  (___match249890249891_
                                   _e242625242790_
                                   _hd242624242793_
                                   _tl242623242795_))))
                          (___match249890249891_
                           _e242625242790_
                           _hd242624242793_
                           _tl242623242795_))))
                  (___match249890249891_
                   _e242625242790_
                   _hd242624242793_
                   _tl242623242795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249890249891_
                                                   _e242625242790_
                                                   _hd242624242793_
                                                   _tl242623242795_))
                                              (___match249890249891_
                                               _e242625242790_
                                               _hd242624242793_
                                               _tl242623242795_))
                                          (___match249890249891_
                                           _e242625242790_
                                           _hd242624242793_
                                           _tl242623242795_))))
                                  (___match249890249891_
                                   _e242625242790_
                                   _hd242624242793_
                                   _tl242623242795_))
                              (___match249890249891_
                               _e242625242790_
                               _hd242624242793_
                               _tl242623242795_))
                          (___match249890249891_
                           _e242625242790_
                           _hd242624242793_
                           _tl242623242795_))))
                  (___match249890249891_
                   _e242625242790_
                   _hd242624242793_
                   _tl242623242795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249890249891_
                                                   _e242625242790_
                                                   _hd242624242793_
                                                   _tl242623242795_))
                                              (___match249890249891_
                                               _e242625242790_
                                               _hd242624242793_
                                               _tl242623242795_))))
                                      (___match249890249891_
                                       _e242625242790_
                                       _hd242624242793_
                                       _tl242623242795_))
                                  (___match249890249891_
                                   _e242625242790_
                                   _hd242624242793_
                                   _tl242623242795_))
                              (___match249890249891_
                               _e242625242790_
                               _hd242624242793_
                               _tl242623242795_))))
                      (___match249890249891_
                       _e242625242790_
                       _hd242624242793_
                       _tl242623242795_))))
              (___match249890249891_
               _e242625242790_
               _hd242624242793_
               _tl242623242795_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249890249891_
                                                   _e242625242790_
                                                   _hd242624242793_
                                                   _tl242623242795_))))
                                          (___match249890249891_
                                           _e242625242790_
                                           _hd242624242793_
                                           _tl242623242795_))
                                      (___match249890249891_
                                       _e242625242790_
                                       _hd242624242793_
                                       _tl242623242795_))
                                  (___match249890249891_
                                   _e242625242790_
                                   _hd242624242793_
                                   _tl242623242795_))))
                          (___match249890249891_
                           _e242625242790_
                           _hd242624242793_
                           _tl242623242795_))))
                  (___match249890249891_
                   _e242625242790_
                   _hd242624242793_
                   _tl242623242795_))
              (___match249890249891_
               _e242625242790_
               _hd242624242793_
               _tl242623242795_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249890249891_
                                                   _e242625242790_
                                                   _hd242624242793_
                                                   _tl242623242795_))))
                                          (___match249890249891_
                                           _e242625242790_
                                           _hd242624242793_
                                           _tl242623242795_))))
                                  (___match249890249891_
                                   _e242625242790_
                                   _hd242624242793_
                                   _tl242623242795_))))
                          (___match249890249891_
                           _e242625242790_
                           _hd242624242793_
                           _tl242623242795_))))
                   (___match249744249745_
                    (lambda (_e242558243181_
                             _hd242557243184_
                             _tl242556243186_
                             _e242561243189_
                             _hd242560243192_
                             _tl242559243194_
                             _e242564243197_
                             _hd242563243200_
                             _tl242562243202_
                             _e242567243205_
                             _hd242566243208_
                             _tl242565243210_
                             _e242570243213_
                             _hd242569243216_
                             _tl242568243218_
                             _e242573243221_
                             _hd242572243224_
                             _tl242571243226_
                             _e242576243229_
                             _hd242575243232_
                             _tl242574243234_
                             _e242579243237_
                             _hd242578243240_
                             _tl242577243242_
                             _e242582243245_
                             _hd242581243248_
                             _tl242580243250_
                             _e242585243253_
                             _hd242584243256_
                             _tl242583243258_
                             _e242588243261_
                             _hd242587243264_
                             _tl242586243266_
                             _e242591243269_
                             _hd242590243272_
                             _tl242589243274_
                             _e242594243277_
                             _hd242593243280_
                             _tl242592243282_
                             _e242597243285_
                             _hd242596243288_
                             _tl242595243290_
                             _e242600243293_
                             _hd242599243296_
                             _tl242598243298_
                             _e242603243301_
                             _hd242602243304_
                             _tl242601243306_
                             _e242606243309_
                             _hd242605243312_
                             _tl242604243314_
                             _e242609243317_
                             _hd242608243320_
                             _tl242607243322_
                             _e242612243325_
                             _hd242611243328_
                             _tl242610243330_)
                      (let ((_L243333_ _hd242611243328_)
                            (_L243334_ _hd242602243304_)
                            (_L243335_ _hd242593243280_)
                            (_L243336_ _hd242584243256_)
                            (_L243337_ _hd242575243232_)
                            (_L243338_ _hd242560243192_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L243338_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L243337_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L243336_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L243338_ _L243333_)))
                            (___kont249575249576_
                             _L243333_
                             _L243334_
                             _L243335_
                             _L243336_
                             _L243337_
                             _L243338_)
                            (___match249756249757_
                             _e242558243181_
                             _hd242557243184_
                             _tl242556243186_
                             _e242561243189_
                             _hd242560243192_
                             _tl242559243194_)))))
                   (___match249598249599_
                    (lambda (_e242558243181_ _hd242557243184_ _tl242556243186_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242556243186_))
                          (let ((_e242561243189_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242556243186_))))
                            (let ((_tl242559243194_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242561243189_)))
                                  (_hd242560243192_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242561243189_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242559243194_))
                                  (let ((_e242564243197_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242559243194_))))
                                    (let ((_tl242562243202_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242564243197_)))
                                          (_hd242563243200_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242564243197_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd242563243200_))
                                          (let ((_e242567243205_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd242563243200_))))
                                            (let ((_tl242565243210_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242567243205_)))
                                                  (_hd242566243208_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242567243205_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd242566243208_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd242566243208_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242565243210_))
                                                          (let ((_e242570243213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242565243210_))))
                    (let ((_tl242568243218_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242570243213_)))
                          (_hd242569243216_
                           (let ()
                             (declare (not safe))
                             (##car _e242570243213_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242569243216_))
                          (let ((_e242573243221_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242569243216_))))
                            (let ((_tl242571243226_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242573243221_)))
                                  (_hd242572243224_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242573243221_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242572243224_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd242572243224_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242571243226_))
                                          (let ((_e242576243229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242571243226_))))
                                            (let ((_tl242574243234_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242576243229_)))
                                                  (_hd242575243232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242576243229_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242574243234_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl242568243218_))
                                                      (let ((_e242579243237_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl242568243218_))))
                (let ((_tl242577243242_
                       (let () (declare (not safe)) (##cdr _e242579243237_)))
                      (_hd242578243240_
                       (let () (declare (not safe)) (##car _e242579243237_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd242578243240_))
                      (let ((_e242582243245_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd242578243240_))))
                        (let ((_tl242580243250_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242582243245_)))
                              (_hd242581243248_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242582243245_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd242581243248_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd242581243248_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242580243250_))
                                      (let ((_e242585243253_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242580243250_))))
                                        (let ((_tl242583243258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242585243253_)))
                                              (_hd242584243256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242585243253_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242583243258_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242577243242_))
                                                  (let ((_e242588243261_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242577243242_))))
                                                    (let ((_tl242586243266_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242588243261_)))
                                                          (_hd242587243264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242588243261_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd242587243264_))
                                                          (let ((_e242591243269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd242587243264_))))
                    (let ((_tl242589243274_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242591243269_)))
                          (_hd242590243272_
                           (let ()
                             (declare (not safe))
                             (##car _e242591243269_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd242590243272_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd242590243272_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl242589243274_))
                                  (let ((_e242594243277_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl242589243274_))))
                                    (let ((_tl242592243282_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242594243277_)))
                                          (_hd242593243280_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242594243277_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242592243282_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242586243266_))
                                              (let ((_e242597243285_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242586243266_))))
                                                (let ((_tl242595243290_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242597243285_)))
                                                      (_hd242596243288_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242597243285_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd242596243288_))
                                                      (let ((_e242600243293_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd242596243288_))))
                (let ((_tl242598243298_
                       (let () (declare (not safe)) (##cdr _e242600243293_)))
                      (_hd242599243296_
                       (let () (declare (not safe)) (##car _e242600243293_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd242599243296_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242599243296_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242598243298_))
                              (let ((_e242603243301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242598243298_))))
                                (let ((_tl242601243306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242603243301_)))
                                      (_hd242602243304_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242603243301_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242601243306_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242595243290_))
                                          (let ((_e242606243309_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242595243290_))))
                                            (let ((_tl242604243314_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242606243309_)))
                                                  (_hd242605243312_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242606243309_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242605243312_))
                                                  (let ((_e242609243317_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242605243312_))))
                                                    (let ((_tl242607243322_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242609243317_)))
                                                          (_hd242608243320_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242609243317_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242608243320_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd242608243320_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242607243322_))
                          (let ((_e242612243325_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242607243322_))))
                            (let ((_tl242610243330_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242612243325_)))
                                  (_hd242611243328_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242612243325_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242610243330_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242604243314_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242562243202_))
                                          (___match249744249745_
                                           _e242558243181_
                                           _hd242557243184_
                                           _tl242556243186_
                                           _e242561243189_
                                           _hd242560243192_
                                           _tl242559243194_
                                           _e242564243197_
                                           _hd242563243200_
                                           _tl242562243202_
                                           _e242567243205_
                                           _hd242566243208_
                                           _tl242565243210_
                                           _e242570243213_
                                           _hd242569243216_
                                           _tl242568243218_
                                           _e242573243221_
                                           _hd242572243224_
                                           _tl242571243226_
                                           _e242576243229_
                                           _hd242575243232_
                                           _tl242574243234_
                                           _e242579243237_
                                           _hd242578243240_
                                           _tl242577243242_
                                           _e242582243245_
                                           _hd242581243248_
                                           _tl242580243250_
                                           _e242585243253_
                                           _hd242584243256_
                                           _tl242583243258_
                                           _e242588243261_
                                           _hd242587243264_
                                           _tl242586243266_
                                           _e242591243269_
                                           _hd242590243272_
                                           _tl242589243274_
                                           _e242594243277_
                                           _hd242593243280_
                                           _tl242592243282_
                                           _e242597243285_
                                           _hd242596243288_
                                           _tl242595243290_
                                           _e242600243293_
                                           _hd242599243296_
                                           _tl242598243298_
                                           _e242603243301_
                                           _hd242602243304_
                                           _tl242601243306_
                                           _e242606243309_
                                           _hd242605243312_
                                           _tl242604243314_
                                           _e242609243317_
                                           _hd242608243320_
                                           _tl242607243322_
                                           _e242612243325_
                                           _hd242611243328_
                                           _tl242610243330_)
                                          (___match249756249757_
                                           _e242558243181_
                                           _hd242557243184_
                                           _tl242556243186_
                                           _e242561243189_
                                           _hd242560243192_
                                           _tl242559243194_))
                                      (___match249756249757_
                                       _e242558243181_
                                       _hd242557243184_
                                       _tl242556243186_
                                       _e242561243189_
                                       _hd242560243192_
                                       _tl242559243194_))
                                  (___match249756249757_
                                   _e242558243181_
                                   _hd242557243184_
                                   _tl242556243186_
                                   _e242561243189_
                                   _hd242560243192_
                                   _tl242559243194_))))
                          (___match249756249757_
                           _e242558243181_
                           _hd242557243184_
                           _tl242556243186_
                           _e242561243189_
                           _hd242560243192_
                           _tl242559243194_))
                      (___match249756249757_
                       _e242558243181_
                       _hd242557243184_
                       _tl242556243186_
                       _e242561243189_
                       _hd242560243192_
                       _tl242559243194_))
                  (___match249756249757_
                   _e242558243181_
                   _hd242557243184_
                   _tl242556243186_
                   _e242561243189_
                   _hd242560243192_
                   _tl242559243194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249756249757_
                                                   _e242558243181_
                                                   _hd242557243184_
                                                   _tl242556243186_
                                                   _e242561243189_
                                                   _hd242560243192_
                                                   _tl242559243194_))))
                                          (___match249756249757_
                                           _e242558243181_
                                           _hd242557243184_
                                           _tl242556243186_
                                           _e242561243189_
                                           _hd242560243192_
                                           _tl242559243194_))
                                      (___match249756249757_
                                       _e242558243181_
                                       _hd242557243184_
                                       _tl242556243186_
                                       _e242561243189_
                                       _hd242560243192_
                                       _tl242559243194_))))
                              (___match249756249757_
                               _e242558243181_
                               _hd242557243184_
                               _tl242556243186_
                               _e242561243189_
                               _hd242560243192_
                               _tl242559243194_))
                          (___match249756249757_
                           _e242558243181_
                           _hd242557243184_
                           _tl242556243186_
                           _e242561243189_
                           _hd242560243192_
                           _tl242559243194_))
                      (___match249756249757_
                       _e242558243181_
                       _hd242557243184_
                       _tl242556243186_
                       _e242561243189_
                       _hd242560243192_
                       _tl242559243194_))))
              (___match249756249757_
               _e242558243181_
               _hd242557243184_
               _tl242556243186_
               _e242561243189_
               _hd242560243192_
               _tl242559243194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match249756249757_
                                               _e242558243181_
                                               _hd242557243184_
                                               _tl242556243186_
                                               _e242561243189_
                                               _hd242560243192_
                                               _tl242559243194_))
                                          (___match249756249757_
                                           _e242558243181_
                                           _hd242557243184_
                                           _tl242556243186_
                                           _e242561243189_
                                           _hd242560243192_
                                           _tl242559243194_))))
                                  (___match249756249757_
                                   _e242558243181_
                                   _hd242557243184_
                                   _tl242556243186_
                                   _e242561243189_
                                   _hd242560243192_
                                   _tl242559243194_))
                              (___match249756249757_
                               _e242558243181_
                               _hd242557243184_
                               _tl242556243186_
                               _e242561243189_
                               _hd242560243192_
                               _tl242559243194_))
                          (___match249756249757_
                           _e242558243181_
                           _hd242557243184_
                           _tl242556243186_
                           _e242561243189_
                           _hd242560243192_
                           _tl242559243194_))))
                  (___match249756249757_
                   _e242558243181_
                   _hd242557243184_
                   _tl242556243186_
                   _e242561243189_
                   _hd242560243192_
                   _tl242559243194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249756249757_
                                                   _e242558243181_
                                                   _hd242557243184_
                                                   _tl242556243186_
                                                   _e242561243189_
                                                   _hd242560243192_
                                                   _tl242559243194_))
                                              (___match249756249757_
                                               _e242558243181_
                                               _hd242557243184_
                                               _tl242556243186_
                                               _e242561243189_
                                               _hd242560243192_
                                               _tl242559243194_))))
                                      (___match249756249757_
                                       _e242558243181_
                                       _hd242557243184_
                                       _tl242556243186_
                                       _e242561243189_
                                       _hd242560243192_
                                       _tl242559243194_))
                                  (___match249756249757_
                                   _e242558243181_
                                   _hd242557243184_
                                   _tl242556243186_
                                   _e242561243189_
                                   _hd242560243192_
                                   _tl242559243194_))
                              (___match249756249757_
                               _e242558243181_
                               _hd242557243184_
                               _tl242556243186_
                               _e242561243189_
                               _hd242560243192_
                               _tl242559243194_))))
                      (___match249756249757_
                       _e242558243181_
                       _hd242557243184_
                       _tl242556243186_
                       _e242561243189_
                       _hd242560243192_
                       _tl242559243194_))))
              (___match249756249757_
               _e242558243181_
               _hd242557243184_
               _tl242556243186_
               _e242561243189_
               _hd242560243192_
               _tl242559243194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249756249757_
                                                   _e242558243181_
                                                   _hd242557243184_
                                                   _tl242556243186_
                                                   _e242561243189_
                                                   _hd242560243192_
                                                   _tl242559243194_))))
                                          (___match249756249757_
                                           _e242558243181_
                                           _hd242557243184_
                                           _tl242556243186_
                                           _e242561243189_
                                           _hd242560243192_
                                           _tl242559243194_))
                                      (___match249756249757_
                                       _e242558243181_
                                       _hd242557243184_
                                       _tl242556243186_
                                       _e242561243189_
                                       _hd242560243192_
                                       _tl242559243194_))
                                  (___match249756249757_
                                   _e242558243181_
                                   _hd242557243184_
                                   _tl242556243186_
                                   _e242561243189_
                                   _hd242560243192_
                                   _tl242559243194_))))
                          (___match249756249757_
                           _e242558243181_
                           _hd242557243184_
                           _tl242556243186_
                           _e242561243189_
                           _hd242560243192_
                           _tl242559243194_))))
                  (___match249756249757_
                   _e242558243181_
                   _hd242557243184_
                   _tl242556243186_
                   _e242561243189_
                   _hd242560243192_
                   _tl242559243194_))
              (___match249756249757_
               _e242558243181_
               _hd242557243184_
               _tl242556243186_
               _e242561243189_
               _hd242560243192_
               _tl242559243194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match249756249757_
                                                   _e242558243181_
                                                   _hd242557243184_
                                                   _tl242556243186_
                                                   _e242561243189_
                                                   _hd242560243192_
                                                   _tl242559243194_))))
                                          (___match249756249757_
                                           _e242558243181_
                                           _hd242557243184_
                                           _tl242556243186_
                                           _e242561243189_
                                           _hd242560243192_
                                           _tl242559243194_))))
                                  (___match249756249757_
                                   _e242558243181_
                                   _hd242557243184_
                                   _tl242556243186_
                                   _e242561243189_
                                   _hd242560243192_
                                   _tl242559243194_))))
                          (___match249890249891_
                           _e242558243181_
                           _hd242557243184_
                           _tl242556243186_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249571249572_))
                  (let ((_e242549243398_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249571249572_))))
                    (let ((_tl242547243403_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242549243398_)))
                          (_hd242548243401_
                           (let ()
                             (declare (not safe))
                             (##car _e242549243398_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L243406_ _tl242547243403_))
                            (___kont249573249574_ _L243406_))
                          (___match249598249599_
                           _e242549243398_
                           _hd242548243401_
                           _tl242547243403_))))
                  (let () (declare (not safe)) (_g242544242740_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx242493_)
        (letrec ((_clause-e242495_
                  (lambda (_form242536_)
                    (let ((__obj251244
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
                       __obj251244
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form242536_))
                       (if (let ((__tmp251311
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp251311))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form242536_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form242536_))
                               '#f)
                           '#f))
                      __obj251244))))
          (let* ((_g242497242507_
                  (lambda (_g242498242504_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g242498242504_))))
                 (_g242496242533_
                  (lambda (_g242498242510_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g242498242510_))
                        (let ((_e242502242512_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g242498242510_))))
                          (let ((_hd242501242515_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242502242512_)))
                                (_tl242500242517_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242502242512_))))
                            ((lambda (_L242520_)
                               (let ((_clauses242531_
                                      (map _clause-e242495_ _L242520_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses242531_)))
                             _tl242500242517_)))
                        (let ()
                          (declare (not safe))
                          (_g242497242507_ _g242498242510_))))))
            (declare (not safe))
            (_g242496242533_ _stx242493_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx242425_)
        (let* ((_g242427242444_
                (lambda (_g242428242441_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242428242441_))))
               (_g242426242490_
                (lambda (_g242428242447_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242428242447_))
                      (let ((_e242433242449_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242428242447_))))
                        (let ((_hd242432242452_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242433242449_)))
                              (_tl242431242454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242433242449_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242431242454_))
                              (let ((_e242436242457_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242431242454_))))
                                (let ((_hd242435242460_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242436242457_)))
                                      (_tl242434242462_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242436242457_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242434242462_))
                                      (let ((_e242439242465_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242434242462_))))
                                        (let ((_hd242438242468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242439242465_)))
                                              (_tl242437242470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242439242465_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242437242470_))
                                              ((lambda (_L242473_ _L242474_)
                                                 (let ((__tmp251312
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L242473_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp251312
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd242438242468_
                                               _hd242435242460_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242427242444_
                                                 _g242428242447_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242427242444_ _g242428242447_)))))
                              (let ()
                                (declare (not safe))
                                (_g242427242444_ _g242428242447_)))))
                      (let ()
                        (declare (not safe))
                        (_g242427242444_ _g242428242447_))))))
          (declare (not safe))
          (_g242426242490_ _stx242425_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx242330_)
        (let* ((___stx249899249900_ _stx242330_)
               (_g242333242353_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249899249900_)))))
          (let ((___kont249901249902_
                 (lambda (_L242397_ _L242398_)
                   (let ((_type-e242415242417_
                          (let ((__tmp251313
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L242398_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp251313))))
                     (if _type-e242415242417_
                         (let ((_type-e242420_ _type-e242415242417_))
                           (_type-e242420_ _stx242330_ _L242397_))
                         '#f))))
                (___kont249903249904_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx249899249900_))
                (let ((_e242339242365_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx249899249900_))))
                  (let ((_tl242337242370_
                         (let () (declare (not safe)) (##cdr _e242339242365_)))
                        (_hd242338242368_
                         (let ()
                           (declare (not safe))
                           (##car _e242339242365_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl242337242370_))
                        (let ((_e242342242373_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl242337242370_))))
                          (let ((_tl242340242378_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e242342242373_)))
                                (_hd242341242376_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e242342242373_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd242341242376_))
                                (let ((_e242345242381_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd242341242376_))))
                                  (let ((_tl242343242386_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e242345242381_)))
                                        (_hd242344242384_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e242345242381_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd242344242384_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd242344242384_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl242343242386_))
                                                (let ((_e242348242389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl242343242386_))))
                                                  (let ((_tl242346242394_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e242348242389_)))
                                                        (_hd242347242392_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e242348242389_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl242346242394_))
                                                        (___kont249901249902_
                                                         _tl242340242378_
                                                         _hd242347242392_)
                                                        (___kont249903249904_))))
                                                (___kont249903249904_))
                                            (___kont249903249904_))
                                        (___kont249903249904_))))
                                (___kont249903249904_))))
                        (___kont249903249904_))))
                (___kont249903249904_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx242279_)
        (let* ((_g242281242294_
                (lambda (_g242282242291_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g242282242291_))))
               (_g242280242327_
                (lambda (_g242282242297_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g242282242297_))
                      (let ((_e242286242299_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242282242297_))))
                        (let ((_hd242285242302_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242286242299_)))
                              (_tl242284242304_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242286242299_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242284242304_))
                              (let ((_e242289242307_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242284242304_))))
                                (let ((_hd242288242310_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242289242307_)))
                                      (_tl242287242312_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242289242307_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242287242312_))
                                      ((lambda (_L242315_)
                                         (let ((__tmp251314
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L242315_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp251314)))
                                       _hd242288242310_)
                                      (let ()
                                        (declare (not safe))
                                        (_g242281242294_ _g242282242297_)))))
                              (let ()
                                (declare (not safe))
                                (_g242281242294_ _g242282242297_)))))
                      (let ()
                        (declare (not safe))
                        (_g242281242294_ _g242282242297_))))))
          (declare (not safe))
          (_g242280242327_ _stx242279_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form241513_)
        (let* ((___stx249937249938_ _form241513_)
               (_g241518241675_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx249937249938_)))))
          (let ((___kont249939249940_
                 (lambda (_L242199_ _L242200_ _L242201_) '#t))
                (___kont249945249946_
                 (lambda (_L241987_
                          _L241988_
                          _L241989_
                          _L241990_
                          _L241991_
                          _L241992_)
                   '#t))
                (___kont249951249952_
                 (lambda (_L241783_ _L241784_ _L241785_ _L241786_) '#t))
                (___kont249953249954_ (lambda () '#f)))
            (let* ((___match250078250079_
                    (lambda (_e241637241687_
                             _hd241636241690_
                             _tl241635241692_
                             _e241640241695_
                             _hd241639241698_
                             _tl241638241700_
                             _e241643241703_
                             _hd241642241706_
                             _tl241641241708_
                             _e241646241711_
                             _hd241645241714_
                             _tl241644241716_
                             _e241649241719_
                             _hd241648241722_
                             _tl241647241724_
                             _e241652241727_
                             _hd241651241730_
                             _tl241650241732_
                             _e241655241735_
                             _hd241654241738_
                             _tl241653241740_
                             _e241658241743_
                             _hd241657241746_
                             _tl241656241748_
                             _e241661241751_
                             _hd241660241754_
                             _tl241659241756_
                             _e241664241759_
                             _hd241663241762_
                             _tl241662241764_
                             _e241667241767_
                             _hd241666241770_
                             _tl241665241772_
                             _e241670241775_
                             _hd241669241778_
                             _tl241668241780_)
                      (let ((_L241783_ _hd241669241778_)
                            (_L241784_ _hd241660241754_)
                            (_L241785_ _hd241651241730_)
                            (_L241786_ _hd241636241690_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L241786_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L241785_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L241786_ _L241783_))
                                 (let ((__tmp251315
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L241784_
                                           _L241786_))))
                                   (declare (not safe))
                                   (not __tmp251315)))
                            (___kont249951249952_
                             _L241783_
                             _L241784_
                             _L241785_
                             _L241786_)
                            (___kont249953249954_)))))
                   (___match250050250051_
                    (lambda (_e241637241687_
                             _hd241636241690_
                             _tl241635241692_
                             _e241640241695_
                             _hd241639241698_
                             _tl241638241700_
                             _e241643241703_
                             _hd241642241706_
                             _tl241641241708_
                             _e241646241711_
                             _hd241645241714_
                             _tl241644241716_
                             _e241649241719_
                             _hd241648241722_
                             _tl241647241724_
                             _e241652241727_
                             _hd241651241730_
                             _tl241650241732_
                             _e241655241735_
                             _hd241654241738_
                             _tl241653241740_
                             _e241658241743_
                             _hd241657241746_
                             _tl241656241748_
                             _e241661241751_
                             _hd241660241754_
                             _tl241659241756_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl241653241740_))
                          (let ((_e241664241759_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl241653241740_))))
                            (let ((_tl241662241764_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241664241759_)))
                                  (_hd241663241762_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241664241759_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd241663241762_))
                                  (let ((_e241667241767_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd241663241762_))))
                                    (let ((_tl241665241772_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241667241767_)))
                                          (_hd241666241770_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241667241767_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd241666241770_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd241666241770_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241665241772_))
                                                  (let ((_e241670241775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241665241772_))))
                                                    (let ((_tl241668241780_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241670241775_)))
                                                          (_hd241669241778_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241670241775_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241668241780_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl241662241764_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl241638241700_))
                          (___match250078250079_
                           _e241637241687_
                           _hd241636241690_
                           _tl241635241692_
                           _e241640241695_
                           _hd241639241698_
                           _tl241638241700_
                           _e241643241703_
                           _hd241642241706_
                           _tl241641241708_
                           _e241646241711_
                           _hd241645241714_
                           _tl241644241716_
                           _e241649241719_
                           _hd241648241722_
                           _tl241647241724_
                           _e241652241727_
                           _hd241651241730_
                           _tl241650241732_
                           _e241655241735_
                           _hd241654241738_
                           _tl241653241740_
                           _e241658241743_
                           _hd241657241746_
                           _tl241656241748_
                           _e241661241751_
                           _hd241660241754_
                           _tl241659241756_
                           _e241664241759_
                           _hd241663241762_
                           _tl241662241764_
                           _e241667241767_
                           _hd241666241770_
                           _tl241665241772_
                           _e241670241775_
                           _hd241669241778_
                           _tl241668241780_)
                          (___kont249953249954_))
                      (___kont249953249954_))
                  (___kont249953249954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont249953249954_))
                                              (___kont249953249954_))
                                          (___kont249953249954_))))
                                  (___kont249953249954_))))
                          (___kont249953249954_))))
                   (___match249980249981_
                    (lambda (_e241573241827_
                             _hd241572241830_
                             _tl241571241832_
                             ___splice249947249948_
                             _target241574241835_
                             _tl241576241837_)
                      (letrec ((_loop241577241840_
                                (lambda (_hd241575241843_ _arg241581241845_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241575241843_))
                                      (let ((_e241578241848_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241575241843_))))
                                        (let ((_lp-tl241580241853_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241578241848_)))
                                              (_lp-hd241579241851_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241578241848_))))
                                          (let ((__tmp251330
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241579241851_
                                                         _arg241581241845_))))
                                            (declare (not safe))
                                            (_loop241577241840_
                                             _lp-tl241580241853_
                                             __tmp251330))))
                                      (let ((_arg241582241856_
                                             (reverse _arg241581241845_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241571241832_))
                                            (let ((_e241585241859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241571241832_))))
                                              (let ((_tl241583241864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241585241859_)))
                                                    (_hd241584241862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241585241859_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241584241862_))
                                                    (let ((_e241588241867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241584241862_))))
                                                      (let ((_tl241586241872_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241588241867_)))
                    (_hd241587241870_
                     (let () (declare (not safe)) (##car _e241588241867_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241587241870_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241587241870_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241586241872_))
                            (let ((_e241591241875_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241586241872_))))
                              (let ((_tl241589241880_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241591241875_)))
                                    (_hd241590241878_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241591241875_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241590241878_))
                                    (let ((_e241594241883_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241590241878_))))
                                      (let ((_tl241592241888_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241594241883_)))
                                            (_hd241593241886_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241594241883_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241593241886_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241593241886_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241592241888_))
                                                    (let ((_e241597241891_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241592241888_))))
                                                      (let ((_tl241595241896_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241597241891_)))
                    (_hd241596241894_
                     (let () (declare (not safe)) (##car _e241597241891_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241595241896_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241589241880_))
                        (let ((_e241600241899_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241589241880_))))
                          (let ((_tl241598241904_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241600241899_)))
                                (_hd241599241902_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241600241899_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241599241902_))
                                (let ((_e241603241907_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241599241902_))))
                                  (let ((_tl241601241912_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241603241907_)))
                                        (_hd241602241910_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241603241907_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241602241910_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241602241910_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241601241912_))
                                                (let ((_e241606241915_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241601241912_))))
                                                  (let ((_tl241604241920_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241606241915_)))
                                                        (_hd241605241918_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241606241915_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241604241920_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl241598241904_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl241598241904_))
                              '1)
                        (let ((___splice249949249950_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl241598241904_
                                  '1))))
                          (let ((_tl241609241925_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice249949249950_ '1)))
                                (_target241607241923_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice249949249950_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241609241925_))
                                (let ((_e241618241928_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241609241925_))))
                                  (let ((_tl241616241933_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241618241928_)))
                                        (_hd241617241931_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241618241928_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241617241931_))
                                        (let ((_e241621241936_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241617241931_))))
                                          (let ((_tl241619241941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241621241936_)))
                                                (_hd241620241939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241621241936_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd241620241939_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd241620241939_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl241619241941_))
                                                        (let ((_e241624241944_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl241619241941_))))
                  (let ((_tl241622241949_
                         (let () (declare (not safe)) (##cdr _e241624241944_)))
                        (_hd241623241947_
                         (let ()
                           (declare (not safe))
                           (##car _e241624241944_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241622241949_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241616241933_))
                            (letrec ((_loop241610241952_
                                      (lambda (_hd241608241955_
                                               _xarg241614241957_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd241608241955_))
                                            (let ((_e241611241960_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd241608241955_))))
                                              (let ((_lp-tl241613241965_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241611241960_)))
                                                    (_lp-hd241612241963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241611241960_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd241612241963_))
                                                    (let ((_e241627241968_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd241612241963_))))
                                                      (let ((_tl241625241973_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241627241968_)))
                    (_hd241626241971_
                     (let () (declare (not safe)) (##car _e241627241968_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241626241971_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd241626241971_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241625241973_))
                            (let ((_e241630241976_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241625241973_))))
                              (let ((_tl241628241981_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241630241976_)))
                                    (_hd241629241979_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241630241976_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241628241981_))
                                    (let ((__tmp251329
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd241629241979_
                                                   _xarg241614241957_))))
                                      (declare (not safe))
                                      (_loop241610241952_
                                       _lp-tl241613241965_
                                       __tmp251329))
                                    (___match250050250051_
                                     _e241573241827_
                                     _hd241572241830_
                                     _tl241571241832_
                                     _e241585241859_
                                     _hd241584241862_
                                     _tl241583241864_
                                     _e241588241867_
                                     _hd241587241870_
                                     _tl241586241872_
                                     _e241591241875_
                                     _hd241590241878_
                                     _tl241589241880_
                                     _e241594241883_
                                     _hd241593241886_
                                     _tl241592241888_
                                     _e241597241891_
                                     _hd241596241894_
                                     _tl241595241896_
                                     _e241600241899_
                                     _hd241599241902_
                                     _tl241598241904_
                                     _e241603241907_
                                     _hd241602241910_
                                     _tl241601241912_
                                     _e241606241915_
                                     _hd241605241918_
                                     _tl241604241920_))))
                            (___match250050250051_
                             _e241573241827_
                             _hd241572241830_
                             _tl241571241832_
                             _e241585241859_
                             _hd241584241862_
                             _tl241583241864_
                             _e241588241867_
                             _hd241587241870_
                             _tl241586241872_
                             _e241591241875_
                             _hd241590241878_
                             _tl241589241880_
                             _e241594241883_
                             _hd241593241886_
                             _tl241592241888_
                             _e241597241891_
                             _hd241596241894_
                             _tl241595241896_
                             _e241600241899_
                             _hd241599241902_
                             _tl241598241904_
                             _e241603241907_
                             _hd241602241910_
                             _tl241601241912_
                             _e241606241915_
                             _hd241605241918_
                             _tl241604241920_))
                        (___match250050250051_
                         _e241573241827_
                         _hd241572241830_
                         _tl241571241832_
                         _e241585241859_
                         _hd241584241862_
                         _tl241583241864_
                         _e241588241867_
                         _hd241587241870_
                         _tl241586241872_
                         _e241591241875_
                         _hd241590241878_
                         _tl241589241880_
                         _e241594241883_
                         _hd241593241886_
                         _tl241592241888_
                         _e241597241891_
                         _hd241596241894_
                         _tl241595241896_
                         _e241600241899_
                         _hd241599241902_
                         _tl241598241904_
                         _e241603241907_
                         _hd241602241910_
                         _tl241601241912_
                         _e241606241915_
                         _hd241605241918_
                         _tl241604241920_))
                    (___match250050250051_
                     _e241573241827_
                     _hd241572241830_
                     _tl241571241832_
                     _e241585241859_
                     _hd241584241862_
                     _tl241583241864_
                     _e241588241867_
                     _hd241587241870_
                     _tl241586241872_
                     _e241591241875_
                     _hd241590241878_
                     _tl241589241880_
                     _e241594241883_
                     _hd241593241886_
                     _tl241592241888_
                     _e241597241891_
                     _hd241596241894_
                     _tl241595241896_
                     _e241600241899_
                     _hd241599241902_
                     _tl241598241904_
                     _e241603241907_
                     _hd241602241910_
                     _tl241601241912_
                     _e241606241915_
                     _hd241605241918_
                     _tl241604241920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250050250051_
                                                     _e241573241827_
                                                     _hd241572241830_
                                                     _tl241571241832_
                                                     _e241585241859_
                                                     _hd241584241862_
                                                     _tl241583241864_
                                                     _e241588241867_
                                                     _hd241587241870_
                                                     _tl241586241872_
                                                     _e241591241875_
                                                     _hd241590241878_
                                                     _tl241589241880_
                                                     _e241594241883_
                                                     _hd241593241886_
                                                     _tl241592241888_
                                                     _e241597241891_
                                                     _hd241596241894_
                                                     _tl241595241896_
                                                     _e241600241899_
                                                     _hd241599241902_
                                                     _tl241598241904_
                                                     _e241603241907_
                                                     _hd241602241910_
                                                     _tl241601241912_
                                                     _e241606241915_
                                                     _hd241605241918_
                                                     _tl241604241920_))))
                                            (let ((_xarg241615241984_
                                                   (reverse _xarg241614241957_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241583241864_))
                                                  (let ((_L241987_
                                                         _hd241623241947_)
                                                        (_L241988_
                                                         _xarg241615241984_)
                                                        (_L241989_
                                                         _hd241605241918_)
                                                        (_L241990_
                                                         _hd241596241894_)
                                                        (_L241991_
                                                         _tl241576241837_)
                                                        (_L241992_
                                                         _arg241582241856_))
                                                    (if (and (let ((__tmp251327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp251328
                                   (lambda (_g242035242038_ _g242036242040_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g242035242038_
                                             _g242036242040_)))))
                              (declare (not safe))
                              (foldr1 __tmp251328 '() _L241992_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp251327))
                     (let () (declare (not safe)) (gx#identifier? _L241991_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L241990_ 'apply))
                     (fx= (length (let ((__tmp251325
                                         (lambda (_g242042242045_
                                                  _g242043242047_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g242042242045_
                                                   _g242043242047_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp251325 '() _L241992_)))
                          (length (let ((__tmp251326
                                         (lambda (_g242049242052_
                                                  _g242050242054_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g242049242052_
                                                   _g242050242054_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp251326 '() _L241988_))))
                     (let ((__tmp251323
                            (let ((__tmp251324
                                   (lambda (_g242056242059_ _g242057242061_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g242056242059_
                                             _g242057242061_)))))
                              (declare (not safe))
                              (foldr1 __tmp251324 '() _L241992_)))
                           (__tmp251321
                            (let ((__tmp251322
                                   (lambda (_g242063242066_ _g242064242068_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g242063242066_
                                             _g242064242068_)))))
                              (declare (not safe))
                              (foldr1 __tmp251322 '() _L241988_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp251323 __tmp251321))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L241991_ _L241987_))
                     (let ((__tmp251316
                            (let ((__tmp251320
                                   (lambda (_g242070242072_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g242070242072_
                                        _L241989_))))
                                  (__tmp251317
                                   (let ((__tmp251319
                                          (lambda (_g242074242077_
                                                   _g242075242079_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g242074242077_
                                                    _g242075242079_))))
                                         (__tmp251318
                                          (let ()
                                            (declare (not safe))
                                            (cons _L241991_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp251319
                                             __tmp251318
                                             _L241992_))))
                              (declare (not safe))
                              (find __tmp251320 __tmp251317))))
                       (declare (not safe))
                       (not __tmp251316)))
                (___kont249945249946_
                 _L241987_
                 _L241988_
                 _L241989_
                 _L241990_
                 _L241991_
                 _L241992_)
                (___match250050250051_
                 _e241573241827_
                 _hd241572241830_
                 _tl241571241832_
                 _e241585241859_
                 _hd241584241862_
                 _tl241583241864_
                 _e241588241867_
                 _hd241587241870_
                 _tl241586241872_
                 _e241591241875_
                 _hd241590241878_
                 _tl241589241880_
                 _e241594241883_
                 _hd241593241886_
                 _tl241592241888_
                 _e241597241891_
                 _hd241596241894_
                 _tl241595241896_
                 _e241600241899_
                 _hd241599241902_
                 _tl241598241904_
                 _e241603241907_
                 _hd241602241910_
                 _tl241601241912_
                 _e241606241915_
                 _hd241605241918_
                 _tl241604241920_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match250050250051_
                                                   _e241573241827_
                                                   _hd241572241830_
                                                   _tl241571241832_
                                                   _e241585241859_
                                                   _hd241584241862_
                                                   _tl241583241864_
                                                   _e241588241867_
                                                   _hd241587241870_
                                                   _tl241586241872_
                                                   _e241591241875_
                                                   _hd241590241878_
                                                   _tl241589241880_
                                                   _e241594241883_
                                                   _hd241593241886_
                                                   _tl241592241888_
                                                   _e241597241891_
                                                   _hd241596241894_
                                                   _tl241595241896_
                                                   _e241600241899_
                                                   _hd241599241902_
                                                   _tl241598241904_
                                                   _e241603241907_
                                                   _hd241602241910_
                                                   _tl241601241912_
                                                   _e241606241915_
                                                   _hd241605241918_
                                                   _tl241604241920_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop241610241952_ _target241607241923_ '())))
                            (___match250050250051_
                             _e241573241827_
                             _hd241572241830_
                             _tl241571241832_
                             _e241585241859_
                             _hd241584241862_
                             _tl241583241864_
                             _e241588241867_
                             _hd241587241870_
                             _tl241586241872_
                             _e241591241875_
                             _hd241590241878_
                             _tl241589241880_
                             _e241594241883_
                             _hd241593241886_
                             _tl241592241888_
                             _e241597241891_
                             _hd241596241894_
                             _tl241595241896_
                             _e241600241899_
                             _hd241599241902_
                             _tl241598241904_
                             _e241603241907_
                             _hd241602241910_
                             _tl241601241912_
                             _e241606241915_
                             _hd241605241918_
                             _tl241604241920_))
                        (___match250050250051_
                         _e241573241827_
                         _hd241572241830_
                         _tl241571241832_
                         _e241585241859_
                         _hd241584241862_
                         _tl241583241864_
                         _e241588241867_
                         _hd241587241870_
                         _tl241586241872_
                         _e241591241875_
                         _hd241590241878_
                         _tl241589241880_
                         _e241594241883_
                         _hd241593241886_
                         _tl241592241888_
                         _e241597241891_
                         _hd241596241894_
                         _tl241595241896_
                         _e241600241899_
                         _hd241599241902_
                         _tl241598241904_
                         _e241603241907_
                         _hd241602241910_
                         _tl241601241912_
                         _e241606241915_
                         _hd241605241918_
                         _tl241604241920_))))
                (___match250050250051_
                 _e241573241827_
                 _hd241572241830_
                 _tl241571241832_
                 _e241585241859_
                 _hd241584241862_
                 _tl241583241864_
                 _e241588241867_
                 _hd241587241870_
                 _tl241586241872_
                 _e241591241875_
                 _hd241590241878_
                 _tl241589241880_
                 _e241594241883_
                 _hd241593241886_
                 _tl241592241888_
                 _e241597241891_
                 _hd241596241894_
                 _tl241595241896_
                 _e241600241899_
                 _hd241599241902_
                 _tl241598241904_
                 _e241603241907_
                 _hd241602241910_
                 _tl241601241912_
                 _e241606241915_
                 _hd241605241918_
                 _tl241604241920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250050250051_
                                                     _e241573241827_
                                                     _hd241572241830_
                                                     _tl241571241832_
                                                     _e241585241859_
                                                     _hd241584241862_
                                                     _tl241583241864_
                                                     _e241588241867_
                                                     _hd241587241870_
                                                     _tl241586241872_
                                                     _e241591241875_
                                                     _hd241590241878_
                                                     _tl241589241880_
                                                     _e241594241883_
                                                     _hd241593241886_
                                                     _tl241592241888_
                                                     _e241597241891_
                                                     _hd241596241894_
                                                     _tl241595241896_
                                                     _e241600241899_
                                                     _hd241599241902_
                                                     _tl241598241904_
                                                     _e241603241907_
                                                     _hd241602241910_
                                                     _tl241601241912_
                                                     _e241606241915_
                                                     _hd241605241918_
                                                     _tl241604241920_))
                                                (___match250050250051_
                                                 _e241573241827_
                                                 _hd241572241830_
                                                 _tl241571241832_
                                                 _e241585241859_
                                                 _hd241584241862_
                                                 _tl241583241864_
                                                 _e241588241867_
                                                 _hd241587241870_
                                                 _tl241586241872_
                                                 _e241591241875_
                                                 _hd241590241878_
                                                 _tl241589241880_
                                                 _e241594241883_
                                                 _hd241593241886_
                                                 _tl241592241888_
                                                 _e241597241891_
                                                 _hd241596241894_
                                                 _tl241595241896_
                                                 _e241600241899_
                                                 _hd241599241902_
                                                 _tl241598241904_
                                                 _e241603241907_
                                                 _hd241602241910_
                                                 _tl241601241912_
                                                 _e241606241915_
                                                 _hd241605241918_
                                                 _tl241604241920_))))
                                        (___match250050250051_
                                         _e241573241827_
                                         _hd241572241830_
                                         _tl241571241832_
                                         _e241585241859_
                                         _hd241584241862_
                                         _tl241583241864_
                                         _e241588241867_
                                         _hd241587241870_
                                         _tl241586241872_
                                         _e241591241875_
                                         _hd241590241878_
                                         _tl241589241880_
                                         _e241594241883_
                                         _hd241593241886_
                                         _tl241592241888_
                                         _e241597241891_
                                         _hd241596241894_
                                         _tl241595241896_
                                         _e241600241899_
                                         _hd241599241902_
                                         _tl241598241904_
                                         _e241603241907_
                                         _hd241602241910_
                                         _tl241601241912_
                                         _e241606241915_
                                         _hd241605241918_
                                         _tl241604241920_))))
                                (___match250050250051_
                                 _e241573241827_
                                 _hd241572241830_
                                 _tl241571241832_
                                 _e241585241859_
                                 _hd241584241862_
                                 _tl241583241864_
                                 _e241588241867_
                                 _hd241587241870_
                                 _tl241586241872_
                                 _e241591241875_
                                 _hd241590241878_
                                 _tl241589241880_
                                 _e241594241883_
                                 _hd241593241886_
                                 _tl241592241888_
                                 _e241597241891_
                                 _hd241596241894_
                                 _tl241595241896_
                                 _e241600241899_
                                 _hd241599241902_
                                 _tl241598241904_
                                 _e241603241907_
                                 _hd241602241910_
                                 _tl241601241912_
                                 _e241606241915_
                                 _hd241605241918_
                                 _tl241604241920_))))
                        (___match250050250051_
                         _e241573241827_
                         _hd241572241830_
                         _tl241571241832_
                         _e241585241859_
                         _hd241584241862_
                         _tl241583241864_
                         _e241588241867_
                         _hd241587241870_
                         _tl241586241872_
                         _e241591241875_
                         _hd241590241878_
                         _tl241589241880_
                         _e241594241883_
                         _hd241593241886_
                         _tl241592241888_
                         _e241597241891_
                         _hd241596241894_
                         _tl241595241896_
                         _e241600241899_
                         _hd241599241902_
                         _tl241598241904_
                         _e241603241907_
                         _hd241602241910_
                         _tl241601241912_
                         _e241606241915_
                         _hd241605241918_
                         _tl241604241920_))
                    (___match250050250051_
                     _e241573241827_
                     _hd241572241830_
                     _tl241571241832_
                     _e241585241859_
                     _hd241584241862_
                     _tl241583241864_
                     _e241588241867_
                     _hd241587241870_
                     _tl241586241872_
                     _e241591241875_
                     _hd241590241878_
                     _tl241589241880_
                     _e241594241883_
                     _hd241593241886_
                     _tl241592241888_
                     _e241597241891_
                     _hd241596241894_
                     _tl241595241896_
                     _e241600241899_
                     _hd241599241902_
                     _tl241598241904_
                     _e241603241907_
                     _hd241602241910_
                     _tl241601241912_
                     _e241606241915_
                     _hd241605241918_
                     _tl241604241920_))
                (___kont249953249954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont249953249954_))
                                            (___kont249953249954_))
                                        (___kont249953249954_))))
                                (___kont249953249954_))))
                        (___kont249953249954_))
                    (___kont249953249954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249953249954_))
                                                (___kont249953249954_))
                                            (___kont249953249954_))))
                                    (___kont249953249954_))))
                            (___kont249953249954_))
                        (___kont249953249954_))
                    (___kont249953249954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont249953249954_))))
                                            (___kont249953249954_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop241577241840_ _target241574241835_ '())))))
                   (___match249968249969_
                    (lambda (_e241525242087_
                             _hd241524242090_
                             _tl241523242092_
                             ___splice249941249942_
                             _target241526242095_
                             _tl241528242097_)
                      (letrec ((_loop241529242100_
                                (lambda (_hd241527242103_ _arg241533242105_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241527242103_))
                                      (let ((_e241530242108_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241527242103_))))
                                        (let ((_lp-tl241532242113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241530242108_)))
                                              (_lp-hd241531242111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241530242108_))))
                                          (let ((__tmp251344
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241531242111_
                                                         _arg241533242105_))))
                                            (declare (not safe))
                                            (_loop241529242100_
                                             _lp-tl241532242113_
                                             __tmp251344))))
                                      (let ((_arg241534242116_
                                             (reverse _arg241533242105_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241523242092_))
                                            (let ((_e241537242119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241523242092_))))
                                              (let ((_tl241535242124_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241537242119_)))
                                                    (_hd241536242122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241537242119_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241536242122_))
                                                    (let ((_e241540242127_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241536242122_))))
                                                      (let ((_tl241538242132_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241540242127_)))
                    (_hd241539242130_
                     (let () (declare (not safe)) (##car _e241540242127_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241539242130_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241539242130_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241538242132_))
                            (let ((_e241543242135_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241538242132_))))
                              (let ((_tl241541242140_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241543242135_)))
                                    (_hd241542242138_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241543242135_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241542242138_))
                                    (let ((_e241546242143_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241542242138_))))
                                      (let ((_tl241544242148_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241546242143_)))
                                            (_hd241545242146_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241546242143_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241545242146_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241545242146_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241544242148_))
                                                    (let ((_e241549242151_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241544242148_))))
                                                      (let ((_tl241547242156_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241549242151_)))
                    (_hd241548242154_
                     (let () (declare (not safe)) (##car _e241549242151_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241547242156_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl241541242140_))
                        (let ((___splice249943249944_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl241541242140_
                                  '0))))
                          (let ((_tl241552242161_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice249943249944_ '1)))
                                (_target241550242159_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice249943249944_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl241552242161_))
                                (letrec ((_loop241553242164_
                                          (lambda (_hd241551242167_
                                                   _xarg241557242169_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd241551242167_))
                                                (let ((_e241554242172_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd241551242167_))))
                                                  (let ((_lp-tl241556242177_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241554242172_)))
                                                        (_lp-hd241555242175_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241554242172_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd241555242175_))
                                                        (let ((_e241561242180_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd241555242175_))))
                  (let ((_tl241559242185_
                         (let () (declare (not safe)) (##cdr _e241561242180_)))
                        (_hd241560242183_
                         (let ()
                           (declare (not safe))
                           (##car _e241561242180_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd241560242183_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241560242183_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241559242185_))
                                (let ((_e241564242188_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241559242185_))))
                                  (let ((_tl241562242193_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241564242188_)))
                                        (_hd241563242191_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241564242188_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241562242193_))
                                        (let ((__tmp251343
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd241563242191_
                                                       _xarg241557242169_))))
                                          (declare (not safe))
                                          (_loop241553242164_
                                           _lp-tl241556242177_
                                           __tmp251343))
                                        (___match249980249981_
                                         _e241525242087_
                                         _hd241524242090_
                                         _tl241523242092_
                                         ___splice249941249942_
                                         _target241526242095_
                                         _tl241528242097_))))
                                (___match249980249981_
                                 _e241525242087_
                                 _hd241524242090_
                                 _tl241523242092_
                                 ___splice249941249942_
                                 _target241526242095_
                                 _tl241528242097_))
                            (___match249980249981_
                             _e241525242087_
                             _hd241524242090_
                             _tl241523242092_
                             ___splice249941249942_
                             _target241526242095_
                             _tl241528242097_))
                        (___match249980249981_
                         _e241525242087_
                         _hd241524242090_
                         _tl241523242092_
                         ___splice249941249942_
                         _target241526242095_
                         _tl241528242097_))))
                (___match249980249981_
                 _e241525242087_
                 _hd241524242090_
                 _tl241523242092_
                 ___splice249941249942_
                 _target241526242095_
                 _tl241528242097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg241558242196_
                                                       (reverse _xarg241557242169_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241535242124_))
                                                      (let ((_L242199_
                                                             _xarg241558242196_)
                                                            (_L242200_
                                                             _hd241548242154_)
                                                            (_L242201_
                                                             _arg241534242116_))
                                                        (if (and (let ((__tmp251341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp251342
                                       (lambda (_g242229242232_
                                                _g242230242234_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g242229242232_
                                                 _g242230242234_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251342 '() _L242201_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp251341))
                         (fx= (length (let ((__tmp251339
                                             (lambda (_g242236242239_
                                                      _g242237242241_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g242236242239_
                                                       _g242237242241_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp251339 '() _L242201_)))
                              (length (let ((__tmp251340
                                             (lambda (_g242243242246_
                                                      _g242244242248_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g242243242246_
                                                       _g242244242248_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp251340 '() _L242199_))))
                         (let ((__tmp251337
                                (let ((__tmp251338
                                       (lambda (_g242250242253_
                                                _g242251242255_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g242250242253_
                                                 _g242251242255_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251338 '() _L242201_)))
                               (__tmp251335
                                (let ((__tmp251336
                                       (lambda (_g242257242260_
                                                _g242258242262_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g242257242260_
                                                 _g242258242262_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp251336 '() _L242199_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp251337
                                    __tmp251335))
                         (let ((__tmp251331
                                (let ((__tmp251334
                                       (lambda (_g242264242266_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g242264242266_
                                            _L242200_))))
                                      (__tmp251332
                                       (let ((__tmp251333
                                              (lambda (_g242268242271_
                                                       _g242269242273_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g242268242271_
                                                        _g242269242273_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp251333 '() _L242201_))))
                                  (declare (not safe))
                                  (find __tmp251334 __tmp251332))))
                           (declare (not safe))
                           (not __tmp251331)))
                    (___kont249939249940_ _L242199_ _L242200_ _L242201_)
                    (___match249980249981_
                     _e241525242087_
                     _hd241524242090_
                     _tl241523242092_
                     ___splice249941249942_
                     _target241526242095_
                     _tl241528242097_)))
              (___match249980249981_
               _e241525242087_
               _hd241524242090_
               _tl241523242092_
               ___splice249941249942_
               _target241526242095_
               _tl241528242097_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop241553242164_
                                     _target241550242159_
                                     '())))
                                (___match249980249981_
                                 _e241525242087_
                                 _hd241524242090_
                                 _tl241523242092_
                                 ___splice249941249942_
                                 _target241526242095_
                                 _tl241528242097_))))
                        (___match249980249981_
                         _e241525242087_
                         _hd241524242090_
                         _tl241523242092_
                         ___splice249941249942_
                         _target241526242095_
                         _tl241528242097_))
                    (___match249980249981_
                     _e241525242087_
                     _hd241524242090_
                     _tl241523242092_
                     ___splice249941249942_
                     _target241526242095_
                     _tl241528242097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249980249981_
                                                     _e241525242087_
                                                     _hd241524242090_
                                                     _tl241523242092_
                                                     ___splice249941249942_
                                                     _target241526242095_
                                                     _tl241528242097_))
                                                (___match249980249981_
                                                 _e241525242087_
                                                 _hd241524242090_
                                                 _tl241523242092_
                                                 ___splice249941249942_
                                                 _target241526242095_
                                                 _tl241528242097_))
                                            (___match249980249981_
                                             _e241525242087_
                                             _hd241524242090_
                                             _tl241523242092_
                                             ___splice249941249942_
                                             _target241526242095_
                                             _tl241528242097_))))
                                    (___match249980249981_
                                     _e241525242087_
                                     _hd241524242090_
                                     _tl241523242092_
                                     ___splice249941249942_
                                     _target241526242095_
                                     _tl241528242097_))))
                            (___match249980249981_
                             _e241525242087_
                             _hd241524242090_
                             _tl241523242092_
                             ___splice249941249942_
                             _target241526242095_
                             _tl241528242097_))
                        (___match249980249981_
                         _e241525242087_
                         _hd241524242090_
                         _tl241523242092_
                         ___splice249941249942_
                         _target241526242095_
                         _tl241528242097_))
                    (___match249980249981_
                     _e241525242087_
                     _hd241524242090_
                     _tl241523242092_
                     ___splice249941249942_
                     _target241526242095_
                     _tl241528242097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match249980249981_
                                                     _e241525242087_
                                                     _hd241524242090_
                                                     _tl241523242092_
                                                     ___splice249941249942_
                                                     _target241526242095_
                                                     _tl241528242097_))))
                                            (___match249980249981_
                                             _e241525242087_
                                             _hd241524242090_
                                             _tl241523242092_
                                             ___splice249941249942_
                                             _target241526242095_
                                             _tl241528242097_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop241529242100_ _target241526242095_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx249937249938_))
                  (let ((_e241525242087_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx249937249938_))))
                    (let ((_tl241523242092_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241525242087_)))
                          (_hd241524242090_
                           (let ()
                             (declare (not safe))
                             (##car _e241525242087_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd241524242090_))
                          (let ((___splice249941249942_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd241524242090_
                                    '0))))
                            (let ((_tl241528242097_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice249941249942_ '1)))
                                  (_target241526242095_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice249941249942_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl241528242097_))
                                  (___match249968249969_
                                   _e241525242087_
                                   _hd241524242090_
                                   _tl241523242092_
                                   ___splice249941249942_
                                   _target241526242095_
                                   _tl241528242097_)
                                  (___match249980249981_
                                   _e241525242087_
                                   _hd241524242090_
                                   _tl241523242092_
                                   ___splice249941249942_
                                   _target241526242095_
                                   _tl241528242097_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241523242092_))
                              (let ((_e241640241695_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241523242092_))))
                                (let ((_tl241638241700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241640241695_)))
                                      (_hd241639241698_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241640241695_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241639241698_))
                                      (let ((_e241643241703_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241639241698_))))
                                        (let ((_tl241641241708_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241643241703_)))
                                              (_hd241642241706_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241643241703_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd241642241706_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd241642241706_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241641241708_))
                                                      (let ((_e241646241711_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241641241708_))))
                (let ((_tl241644241716_
                       (let () (declare (not safe)) (##cdr _e241646241711_)))
                      (_hd241645241714_
                       (let () (declare (not safe)) (##car _e241646241711_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241645241714_))
                      (let ((_e241649241719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241645241714_))))
                        (let ((_tl241647241724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241649241719_)))
                              (_hd241648241722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241649241719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241648241722_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd241648241722_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241647241724_))
                                      (let ((_e241652241727_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241647241724_))))
                                        (let ((_tl241650241732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241652241727_)))
                                              (_hd241651241730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241652241727_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241650241732_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241644241716_))
                                                  (let ((_e241655241735_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241644241716_))))
                                                    (let ((_tl241653241740_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241655241735_)))
                                                          (_hd241654241738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241655241735_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241654241738_))
                                                          (let ((_e241658241743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241654241738_))))
                    (let ((_tl241656241748_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241658241743_)))
                          (_hd241657241746_
                           (let ()
                             (declare (not safe))
                             (##car _e241658241743_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241657241746_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd241657241746_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241656241748_))
                                  (let ((_e241661241751_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241656241748_))))
                                    (let ((_tl241659241756_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241661241751_)))
                                          (_hd241660241754_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241661241751_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241659241756_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241653241740_))
                                              (let ((_e241664241759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241653241740_))))
                                                (let ((_tl241662241764_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241664241759_)))
                                                      (_hd241663241762_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241664241759_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd241663241762_))
                                                      (let ((_e241667241767_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd241663241762_))))
                (let ((_tl241665241772_
                       (let () (declare (not safe)) (##cdr _e241667241767_)))
                      (_hd241666241770_
                       (let () (declare (not safe)) (##car _e241667241767_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd241666241770_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd241666241770_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241665241772_))
                              (let ((_e241670241775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241665241772_))))
                                (let ((_tl241668241780_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241670241775_)))
                                      (_hd241669241778_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241670241775_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241668241780_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241662241764_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241638241700_))
                                              (___match250078250079_
                                               _e241525242087_
                                               _hd241524242090_
                                               _tl241523242092_
                                               _e241640241695_
                                               _hd241639241698_
                                               _tl241638241700_
                                               _e241643241703_
                                               _hd241642241706_
                                               _tl241641241708_
                                               _e241646241711_
                                               _hd241645241714_
                                               _tl241644241716_
                                               _e241649241719_
                                               _hd241648241722_
                                               _tl241647241724_
                                               _e241652241727_
                                               _hd241651241730_
                                               _tl241650241732_
                                               _e241655241735_
                                               _hd241654241738_
                                               _tl241653241740_
                                               _e241658241743_
                                               _hd241657241746_
                                               _tl241656241748_
                                               _e241661241751_
                                               _hd241660241754_
                                               _tl241659241756_
                                               _e241664241759_
                                               _hd241663241762_
                                               _tl241662241764_
                                               _e241667241767_
                                               _hd241666241770_
                                               _tl241665241772_
                                               _e241670241775_
                                               _hd241669241778_
                                               _tl241668241780_)
                                              (___kont249953249954_))
                                          (___kont249953249954_))
                                      (___kont249953249954_))))
                              (___kont249953249954_))
                          (___kont249953249954_))
                      (___kont249953249954_))))
              (___kont249953249954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont249953249954_))
                                          (___kont249953249954_))))
                                  (___kont249953249954_))
                              (___kont249953249954_))
                          (___kont249953249954_))))
                  (___kont249953249954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont249953249954_))
                                              (___kont249953249954_))))
                                      (___kont249953249954_))
                                  (___kont249953249954_))
                              (___kont249953249954_))))
                      (___kont249953249954_))))
              (___kont249953249954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont249953249954_))
                                              (___kont249953249954_))))
                                      (___kont249953249954_))))
                              (___kont249953249954_)))))
                  (___kont249953249954_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form240981_)
        (let* ((___stx250081250082_ _form240981_)
               (_g240985241109_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250081250082_)))))
          (let ((___kont250083250084_
                 (lambda (_L241479_ _L241480_ _L241481_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L241480_))))
                (___kont250089250090_
                 (lambda (_L241327_ _L241328_ _L241329_ _L241330_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L241327_))))
                (___kont250093250094_
                 (lambda (_L241194_ _L241195_ _L241196_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L241194_)))))
            (let* ((___match250190250191_
                    (lambda (_e241077241114_
                             _hd241076241117_
                             _tl241075241119_
                             _e241080241122_
                             _hd241079241125_
                             _tl241078241127_
                             _e241083241130_
                             _hd241082241133_
                             _tl241081241135_
                             _e241086241138_
                             _hd241085241141_
                             _tl241084241143_
                             _e241089241146_
                             _hd241088241149_
                             _tl241087241151_
                             _e241092241154_
                             _hd241091241157_
                             _tl241090241159_
                             _e241095241162_
                             _hd241094241165_
                             _tl241093241167_
                             _e241098241170_
                             _hd241097241173_
                             _tl241096241175_
                             _e241101241178_
                             _hd241100241181_
                             _tl241099241183_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl241093241167_))
                          (let ((_e241104241186_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl241093241167_))))
                            (let ((_tl241102241191_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241104241186_)))
                                  (_hd241103241189_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241104241186_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl241102241191_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241078241127_))
                                      (___kont250093250094_
                                       _hd241100241181_
                                       _hd241091241157_
                                       _hd241076241117_)
                                      (let ()
                                        (declare (not safe))
                                        (_g240985241109_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g240985241109_)))))
                          (let () (declare (not safe)) (_g240985241109_)))))
                   (___match250120250121_
                    (lambda (_e241038241231_
                             _hd241037241234_
                             _tl241036241236_
                             ___splice250091250092_
                             _target241039241239_
                             _tl241041241241_)
                      (letrec ((_loop241042241244_
                                (lambda (_hd241040241247_ _arg241046241249_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241040241247_))
                                      (let ((_e241043241252_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241040241247_))))
                                        (let ((_lp-tl241045241257_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241043241252_)))
                                              (_lp-hd241044241255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241043241252_))))
                                          (let ((__tmp251345
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241044241255_
                                                         _arg241046241249_))))
                                            (declare (not safe))
                                            (_loop241042241244_
                                             _lp-tl241045241257_
                                             __tmp251345))))
                                      (let ((_arg241047241260_
                                             (reverse _arg241046241249_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241036241236_))
                                            (let ((_e241050241263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241036241236_))))
                                              (let ((_tl241048241268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241050241263_)))
                                                    (_hd241049241266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241050241263_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241049241266_))
                                                    (let ((_e241053241271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241049241266_))))
                                                      (let ((_tl241051241276_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241053241271_)))
                    (_hd241052241274_
                     (let () (declare (not safe)) (##car _e241053241271_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241052241274_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241052241274_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241051241276_))
                            (let ((_e241056241279_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241051241276_))))
                              (let ((_tl241054241284_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241056241279_)))
                                    (_hd241055241282_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241056241279_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241055241282_))
                                    (let ((_e241059241287_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241055241282_))))
                                      (let ((_tl241057241292_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241059241287_)))
                                            (_hd241058241290_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241059241287_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241058241290_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241058241290_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241057241292_))
                                                    (let ((_e241062241295_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241057241292_))))
                                                      (let ((_tl241060241300_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241062241295_)))
                    (_hd241061241298_
                     (let () (declare (not safe)) (##car _e241062241295_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241060241300_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241054241284_))
                        (let ((_e241065241303_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241054241284_))))
                          (let ((_tl241063241308_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241065241303_)))
                                (_hd241064241306_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241065241303_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241064241306_))
                                (let ((_e241068241311_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241064241306_))))
                                  (let ((_tl241066241316_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241068241311_)))
                                        (_hd241067241314_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241068241311_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241067241314_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241067241314_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241066241316_))
                                                (let ((_e241071241319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241066241316_))))
                                                  (let ((_tl241069241324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241071241319_)))
                                                        (_hd241070241322_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241071241319_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241069241324_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl241048241268_))
                                                            (___kont250089250090_
                                                             _hd241070241322_
                                                             _hd241061241298_
                                                             _tl241041241241_
                                                             _arg241047241260_)
                                                            (___match250190250191_
                                                             _e241038241231_
                                                             _hd241037241234_
                                                             _tl241036241236_
                                                             _e241050241263_
                                                             _hd241049241266_
                                                             _tl241048241268_
                                                             _e241053241271_
                                                             _hd241052241274_
                                                             _tl241051241276_
                                                             _e241056241279_
                                                             _hd241055241282_
                                                             _tl241054241284_
                                                             _e241059241287_
                                                             _hd241058241290_
                                                             _tl241057241292_
                                                             _e241062241295_
                                                             _hd241061241298_
                                                             _tl241060241300_
                                                             _e241065241303_
                                                             _hd241064241306_
                                                             _tl241063241308_
                                                             _e241068241311_
                                                             _hd241067241314_
                                                             _tl241066241316_
                                                             _e241071241319_
                                                             _hd241070241322_
                                                             _tl241069241324_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g240985241109_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g240985241109_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g240985241109_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g240985241109_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g240985241109_)))))
                        (let () (declare (not safe)) (_g240985241109_)))
                    (let () (declare (not safe)) (_g240985241109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g240985241109_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g240985241109_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g240985241109_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g240985241109_)))))
                            (let () (declare (not safe)) (_g240985241109_)))
                        (let () (declare (not safe)) (_g240985241109_)))
                    (let () (declare (not safe)) (_g240985241109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g240985241109_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g240985241109_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop241042241244_ _target241039241239_ '())))))
                   (___match250108250109_
                    (lambda (_e240992241367_
                             _hd240991241370_
                             _tl240990241372_
                             ___splice250085250086_
                             _target240993241375_
                             _tl240995241377_)
                      (letrec ((_loop240996241380_
                                (lambda (_hd240994241383_ _arg241000241385_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240994241383_))
                                      (let ((_e240997241388_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240994241383_))))
                                        (let ((_lp-tl240999241393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240997241388_)))
                                              (_lp-hd240998241391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240997241388_))))
                                          (let ((__tmp251347
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd240998241391_
                                                         _arg241000241385_))))
                                            (declare (not safe))
                                            (_loop240996241380_
                                             _lp-tl240999241393_
                                             __tmp251347))))
                                      (let ((_arg241001241396_
                                             (reverse _arg241000241385_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240990241372_))
                                            (let ((_e241004241399_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240990241372_))))
                                              (let ((_tl241002241404_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241004241399_)))
                                                    (_hd241003241402_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241004241399_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241003241402_))
                                                    (let ((_e241007241407_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241003241402_))))
                                                      (let ((_tl241005241412_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241007241407_)))
                    (_hd241006241410_
                     (let () (declare (not safe)) (##car _e241007241407_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241006241410_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd241006241410_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241005241412_))
                            (let ((_e241010241415_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241005241412_))))
                              (let ((_tl241008241420_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241010241415_)))
                                    (_hd241009241418_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241010241415_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241009241418_))
                                    (let ((_e241013241423_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241009241418_))))
                                      (let ((_tl241011241428_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241013241423_)))
                                            (_hd241012241426_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241013241423_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241012241426_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241012241426_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241011241428_))
                                                    (let ((_e241016241431_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241011241428_))))
                                                      (let ((_tl241014241436_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241016241431_)))
                    (_hd241015241434_
                     (let () (declare (not safe)) (##car _e241016241431_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241014241436_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl241008241420_))
                        (let ((___splice250087250088_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl241008241420_
                                  '0))))
                          (let ((_tl241019241441_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250087250088_ '1)))
                                (_target241017241439_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice250087250088_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl241019241441_))
                                (letrec ((_loop241020241444_
                                          (lambda (_hd241018241447_
                                                   _xarg241024241449_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd241018241447_))
                                                (let ((_e241021241452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd241018241447_))))
                                                  (let ((_lp-tl241023241457_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241021241452_)))
                                                        (_lp-hd241022241455_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241021241452_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd241022241455_))
                                                        (let ((_e241028241460_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd241022241455_))))
                  (let ((_tl241026241465_
                         (let () (declare (not safe)) (##cdr _e241028241460_)))
                        (_hd241027241463_
                         (let ()
                           (declare (not safe))
                           (##car _e241028241460_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd241027241463_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241027241463_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241026241465_))
                                (let ((_e241031241468_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241026241465_))))
                                  (let ((_tl241029241473_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241031241468_)))
                                        (_hd241030241471_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241031241468_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241029241473_))
                                        (let ((__tmp251346
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd241030241471_
                                                       _xarg241024241449_))))
                                          (declare (not safe))
                                          (_loop241020241444_
                                           _lp-tl241023241457_
                                           __tmp251346))
                                        (___match250120250121_
                                         _e240992241367_
                                         _hd240991241370_
                                         _tl240990241372_
                                         ___splice250085250086_
                                         _target240993241375_
                                         _tl240995241377_))))
                                (___match250120250121_
                                 _e240992241367_
                                 _hd240991241370_
                                 _tl240990241372_
                                 ___splice250085250086_
                                 _target240993241375_
                                 _tl240995241377_))
                            (___match250120250121_
                             _e240992241367_
                             _hd240991241370_
                             _tl240990241372_
                             ___splice250085250086_
                             _target240993241375_
                             _tl240995241377_))
                        (___match250120250121_
                         _e240992241367_
                         _hd240991241370_
                         _tl240990241372_
                         ___splice250085250086_
                         _target240993241375_
                         _tl240995241377_))))
                (___match250120250121_
                 _e240992241367_
                 _hd240991241370_
                 _tl240990241372_
                 ___splice250085250086_
                 _target240993241375_
                 _tl240995241377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg241025241476_
                                                       (reverse _xarg241024241449_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241002241404_))
                                                      (___kont250083250084_
                                                       _xarg241025241476_
                                                       _hd241015241434_
                                                       _arg241001241396_)
                                                      (___match250120250121_
                                                       _e240992241367_
                                                       _hd240991241370_
                                                       _tl240990241372_
                                                       ___splice250085250086_
                                                       _target240993241375_
                                                       _tl240995241377_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop241020241444_
                                     _target241017241439_
                                     '())))
                                (___match250120250121_
                                 _e240992241367_
                                 _hd240991241370_
                                 _tl240990241372_
                                 ___splice250085250086_
                                 _target240993241375_
                                 _tl240995241377_))))
                        (___match250120250121_
                         _e240992241367_
                         _hd240991241370_
                         _tl240990241372_
                         ___splice250085250086_
                         _target240993241375_
                         _tl240995241377_))
                    (___match250120250121_
                     _e240992241367_
                     _hd240991241370_
                     _tl240990241372_
                     ___splice250085250086_
                     _target240993241375_
                     _tl240995241377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250120250121_
                                                     _e240992241367_
                                                     _hd240991241370_
                                                     _tl240990241372_
                                                     ___splice250085250086_
                                                     _target240993241375_
                                                     _tl240995241377_))
                                                (___match250120250121_
                                                 _e240992241367_
                                                 _hd240991241370_
                                                 _tl240990241372_
                                                 ___splice250085250086_
                                                 _target240993241375_
                                                 _tl240995241377_))
                                            (___match250120250121_
                                             _e240992241367_
                                             _hd240991241370_
                                             _tl240990241372_
                                             ___splice250085250086_
                                             _target240993241375_
                                             _tl240995241377_))))
                                    (___match250120250121_
                                     _e240992241367_
                                     _hd240991241370_
                                     _tl240990241372_
                                     ___splice250085250086_
                                     _target240993241375_
                                     _tl240995241377_))))
                            (___match250120250121_
                             _e240992241367_
                             _hd240991241370_
                             _tl240990241372_
                             ___splice250085250086_
                             _target240993241375_
                             _tl240995241377_))
                        (___match250120250121_
                         _e240992241367_
                         _hd240991241370_
                         _tl240990241372_
                         ___splice250085250086_
                         _target240993241375_
                         _tl240995241377_))
                    (___match250120250121_
                     _e240992241367_
                     _hd240991241370_
                     _tl240990241372_
                     ___splice250085250086_
                     _target240993241375_
                     _tl240995241377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250120250121_
                                                     _e240992241367_
                                                     _hd240991241370_
                                                     _tl240990241372_
                                                     ___splice250085250086_
                                                     _target240993241375_
                                                     _tl240995241377_))))
                                            (___match250120250121_
                                             _e240992241367_
                                             _hd240991241370_
                                             _tl240990241372_
                                             ___splice250085250086_
                                             _target240993241375_
                                             _tl240995241377_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop240996241380_ _target240993241375_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx250081250082_))
                  (let ((_e240992241367_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx250081250082_))))
                    (let ((_tl240990241372_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240992241367_)))
                          (_hd240991241370_
                           (let ()
                             (declare (not safe))
                             (##car _e240992241367_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd240991241370_))
                          (let ((___splice250085250086_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd240991241370_
                                    '0))))
                            (let ((_tl240995241377_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice250085250086_ '1)))
                                  (_target240993241375_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice250085250086_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240995241377_))
                                  (___match250108250109_
                                   _e240992241367_
                                   _hd240991241370_
                                   _tl240990241372_
                                   ___splice250085250086_
                                   _target240993241375_
                                   _tl240995241377_)
                                  (___match250120250121_
                                   _e240992241367_
                                   _hd240991241370_
                                   _tl240990241372_
                                   ___splice250085250086_
                                   _target240993241375_
                                   _tl240995241377_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240990241372_))
                              (let ((_e241080241122_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240990241372_))))
                                (let ((_tl241078241127_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241080241122_)))
                                      (_hd241079241125_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241080241122_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241079241125_))
                                      (let ((_e241083241130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241079241125_))))
                                        (let ((_tl241081241135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241083241130_)))
                                              (_hd241082241133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241083241130_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd241082241133_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd241082241133_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241081241135_))
                                                      (let ((_e241086241138_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241081241135_))))
                (let ((_tl241084241143_
                       (let () (declare (not safe)) (##cdr _e241086241138_)))
                      (_hd241085241141_
                       (let () (declare (not safe)) (##car _e241086241138_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241085241141_))
                      (let ((_e241089241146_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241085241141_))))
                        (let ((_tl241087241151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241089241146_)))
                              (_hd241088241149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241089241146_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241088241149_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd241088241149_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241087241151_))
                                      (let ((_e241092241154_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241087241151_))))
                                        (let ((_tl241090241159_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241092241154_)))
                                              (_hd241091241157_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241092241154_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241090241159_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241084241143_))
                                                  (let ((_e241095241162_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241084241143_))))
                                                    (let ((_tl241093241167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241095241162_)))
                                                          (_hd241094241165_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241095241162_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241094241165_))
                                                          (let ((_e241098241170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241094241165_))))
                    (let ((_tl241096241175_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241098241170_)))
                          (_hd241097241173_
                           (let ()
                             (declare (not safe))
                             (##car _e241098241170_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241097241173_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd241097241173_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241096241175_))
                                  (let ((_e241101241178_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241096241175_))))
                                    (let ((_tl241099241183_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241101241178_)))
                                          (_hd241100241181_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241101241178_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241099241183_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241093241167_))
                                              (let ((_e241104241186_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241093241167_))))
                                                (let ((_tl241102241191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241104241186_)))
                                                      (_hd241103241189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241104241186_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241102241191_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241078241127_))
                                                          (___kont250093250094_
                                                           _hd241100241181_
                                                           _hd241091241157_
                                                           _hd240991241370_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g240985241109_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g240985241109_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g240985241109_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g240985241109_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g240985241109_)))
                              (let () (declare (not safe)) (_g240985241109_)))
                          (let () (declare (not safe)) (_g240985241109_)))))
                  (let () (declare (not safe)) (_g240985241109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g240985241109_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240985241109_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240985241109_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g240985241109_)))
                              (let ()
                                (declare (not safe))
                                (_g240985241109_)))))
                      (let () (declare (not safe)) (_g240985241109_)))))
              (let () (declare (not safe)) (_g240985241109_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g240985241109_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240985241109_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240985241109_)))))
                              (let ()
                                (declare (not safe))
                                (_g240985241109_))))))
                  (let () (declare (not safe)) (_g240985241109_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form240785_)
        (let* ((_g240787240801_
                (lambda (_g240788240798_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g240788240798_))))
               (_g240786240978_
                (lambda (_g240788240804_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g240788240804_))
                      (let ((_e240793240806_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g240788240804_))))
                        (let ((_hd240792240809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240793240806_)))
                              (_tl240791240811_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240793240806_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240791240811_))
                              (let ((_e240796240814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240791240811_))))
                                (let ((_hd240795240817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240796240814_)))
                                      (_tl240794240819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240796240814_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240794240819_))
                                      ((lambda (_L240822_ _L240823_)
                                         (let* ((___stx250203250204_ _L240823_)
                                                (_g240838240866_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx250203250204_)))))
                                           (let ((___kont250205250206_
                                                  (lambda (_L240957_)
                                                    (length (let ((__tmp251348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g240967240970_ _g240968240972_)
                             (let ()
                               (declare (not safe))
                               (cons _g240967240970_ _g240968240972_)))))
                      (declare (not safe))
                      (foldr1 __tmp251348 '() _L240957_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont250209250210_
                                                  (lambda (_L240908_ _L240909_)
                                                    (let ((__tmp251349
                                                           (length (let ((__tmp251350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g240920240923_ _g240921240925_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g240920240923_
                                            _g240921240925_)))))
                             (declare (not safe))
                             (foldr1 __tmp251350 '() _L240909_)))))
              (declare (not safe))
              (cons __tmp251349 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont250213250214_
                                                  (lambda (_L240871_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match250228250229_
                                                     (lambda (___splice250211250212_
                                                              _target240852240884_
                                                              _tl240854240886_)
                                                       (letrec ((_loop240855240889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd240853240892_ _arg240859240894_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd240853240892_))
                               (let ((_e240856240897_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd240853240892_))))
                                 (let ((_lp-tl240858240902_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240856240897_)))
                                       (_lp-hd240857240900_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240856240897_))))
                                   (let ((__tmp251351
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd240857240900_
                                                  _arg240859240894_))))
                                     (declare (not safe))
                                     (_loop240855240889_
                                      _lp-tl240858240902_
                                      __tmp251351))))
                               (let ((_arg240860240905_
                                      (reverse _arg240859240894_)))
                                 (___kont250209250210_
                                  _tl240854240886_
                                  _arg240860240905_))))))
                 (let ()
                   (declare (not safe))
                   (_loop240855240889_ _target240852240884_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match250222250223_
                                                     (lambda (___splice250207250208_
                                                              _target240841240933_
                                                              _tl240843240935_)
                                                       (letrec ((_loop240844240938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd240842240941_ _arg240848240943_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd240842240941_))
                               (let ((_e240845240946_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd240842240941_))))
                                 (let ((_lp-tl240847240951_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240845240946_)))
                                       (_lp-hd240846240949_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240845240946_))))
                                   (let ((__tmp251352
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd240846240949_
                                                  _arg240848240943_))))
                                     (declare (not safe))
                                     (_loop240844240938_
                                      _lp-tl240847240951_
                                      __tmp251352))))
                               (let ((_arg240849240954_
                                      (reverse _arg240848240943_)))
                                 (___kont250205250206_ _arg240849240954_))))))
                 (let ()
                   (declare (not safe))
                   (_loop240844240938_ _target240841240933_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx250203250204_))
                                                   (let ((___splice250207250208_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx250203250204_
                                                             '0))))
                                                     (let ((_tl240843240935_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice250207250208_
                                                               '1)))
                                                           (_target240841240933_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice250207250208_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl240843240935_))
                                                           (___match250222250223_
                                                            ___splice250207250208_
                                                            _target240841240933_
                                                            _tl240843240935_)
                                                           (___match250228250229_
                                                            ___splice250207250208_
                                                            _target240841240933_
                                                            _tl240843240935_))))
                                                   (___kont250213250214_
                                                    ___stx250203250204_))))))
                                       _hd240795240817_
                                       _hd240792240809_)
                                      (let ()
                                        (declare (not safe))
                                        (_g240787240801_ _g240788240804_)))))
                              (let ()
                                (declare (not safe))
                                (_g240787240801_ _g240788240804_)))))
                      (let ()
                        (declare (not safe))
                        (_g240787240801_ _g240788240804_))))))
          (declare (not safe))
          (_g240786240978_ _form240785_))))
    (define gxc#lambda-expr?
      (lambda (_expr240738_)
        (let* ((___stx250231250232_ _expr240738_)
               (_g240741240751_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250231250232_)))))
          (let ((___kont250233250234_ (lambda (_L240771_) '#t))
                (___kont250235250236_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250231250232_))
                (let ((_e240746240763_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250231250232_))))
                  (let ((_tl240744240768_
                         (let () (declare (not safe)) (##cdr _e240746240763_)))
                        (_hd240745240766_
                         (let ()
                           (declare (not safe))
                           (##car _e240746240763_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240745240766_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd240745240766_))
                            (___kont250233250234_ _tl240744240768_)
                            (___kont250235250236_))
                        (___kont250235250236_))))
                (___kont250235250236_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr240691_)
        (let* ((___stx250249250250_ _expr240691_)
               (_g240694240704_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250249250250_)))))
          (let ((___kont250251250252_ (lambda (_L240724_) '#t))
                (___kont250253250254_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250249250250_))
                (let ((_e240699240716_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250249250250_))))
                  (let ((_tl240697240721_
                         (let () (declare (not safe)) (##cdr _e240699240716_)))
                        (_hd240698240719_
                         (let ()
                           (declare (not safe))
                           (##car _e240699240716_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240698240719_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd240698240719_))
                            (___kont250251250252_ _tl240697240721_)
                            (___kont250253250254_))
                        (___kont250253250254_))))
                (___kont250253250254_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr240560_)
        (let* ((___stx250267250268_ _expr240560_)
               (_g240563240593_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250267250268_)))))
          (let ((___kont250269250270_
                 (lambda (_L240661_ _L240662_ _L240663_)
                   (if (let () (declare (not safe)) (gx#identifier? _L240663_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L240662_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L240661_))
                           '#f)
                       '#f)))
                (___kont250271250272_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250267250268_))
                (let ((_e240570240605_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250267250268_))))
                  (let ((_tl240568240610_
                         (let () (declare (not safe)) (##cdr _e240570240605_)))
                        (_hd240569240608_
                         (let ()
                           (declare (not safe))
                           (##car _e240570240605_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd240569240608_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd240569240608_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl240568240610_))
                                (let ((_e240573240613_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl240568240610_))))
                                  (let ((_tl240571240618_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240573240613_)))
                                        (_hd240572240616_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240573240613_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd240572240616_))
                                        (let ((_e240576240621_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd240572240616_))))
                                          (let ((_tl240574240626_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e240576240621_)))
                                                (_hd240575240624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e240576240621_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd240575240624_))
                                                (let ((_e240579240629_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd240575240624_))))
                                                  (let ((_tl240577240634_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240579240629_)))
                                                        (_hd240578240632_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240579240629_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd240578240632_))
                                                        (let ((_e240582240637_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd240578240632_))))
                  (let ((_tl240580240642_
                         (let () (declare (not safe)) (##cdr _e240582240637_)))
                        (_hd240581240640_
                         (let ()
                           (declare (not safe))
                           (##car _e240582240637_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl240580240642_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl240577240634_))
                            (let ((_e240585240645_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl240577240634_))))
                              (let ((_tl240583240650_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240585240645_)))
                                    (_hd240584240648_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240585240645_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl240583240650_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl240574240626_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240571240618_))
                                            (let ((_e240588240653_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240571240618_))))
                                              (let ((_tl240586240658_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240588240653_)))
                                                    (_hd240587240656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240588240653_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl240586240658_))
                                                    (___kont250269250270_
                                                     _hd240587240656_
                                                     _hd240584240648_
                                                     _hd240581240640_)
                                                    (___kont250271250272_))))
                                            (___kont250271250272_))
                                        (___kont250271250272_))
                                    (___kont250271250272_))))
                            (___kont250271250272_))
                        (___kont250271250272_))))
                (___kont250271250272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250271250272_))))
                                        (___kont250271250272_))))
                                (___kont250271250272_))
                            (___kont250271250272_))
                        (___kont250271250272_))))
                (___kont250271250272_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr239885_)
        (let* ((___stx250329250330_ _expr239885_)
               (_g239888240046_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx250329250330_)))))
          (let ((___kont250331250332_
                 (lambda (_L240434_
                          _L240435_
                          _L240436_
                          _L240437_
                          _L240438_
                          _L240439_
                          _L240440_
                          _L240441_
                          _L240442_
                          _L240443_
                          _L240444_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L240441_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L240437_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L240436_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L240444_
                                      _L240435_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L240443_
                                          _L240440_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L240438_
                                              _L240434_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L240442_
                                              _L240439_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont250333250334_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx250329250330_))
                (let ((_e239903240058_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx250329250330_))))
                  (let ((_tl239901240063_
                         (let () (declare (not safe)) (##cdr _e239903240058_)))
                        (_hd239902240061_
                         (let ()
                           (declare (not safe))
                           (##car _e239903240058_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239902240061_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd239902240061_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239901240063_))
                                (let ((_e239906240066_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239901240063_))))
                                  (let ((_tl239904240071_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239906240066_)))
                                        (_hd239905240069_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239906240066_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd239905240069_))
                                        (let ((_e239909240074_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd239905240069_))))
                                          (let ((_tl239907240079_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239909240074_)))
                                                (_hd239908240077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239909240074_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239908240077_))
                                                (let ((_e239912240082_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239908240077_))))
                                                  (let ((_tl239910240087_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239912240082_)))
                                                        (_hd239911240085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239912240082_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239911240085_))
                                                        (let ((_e239915240090_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239911240085_))))
                  (let ((_tl239913240095_
                         (let () (declare (not safe)) (##cdr _e239915240090_)))
                        (_hd239914240093_
                         (let ()
                           (declare (not safe))
                           (##car _e239915240090_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl239913240095_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239910240087_))
                            (let ((_e239918240098_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239910240087_))))
                              (let ((_tl239916240103_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239918240098_)))
                                    (_hd239917240101_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239918240098_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239917240101_))
                                    (let ((_e239921240106_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239917240101_))))
                                      (let ((_tl239919240111_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239921240106_)))
                                            (_hd239920240109_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239921240106_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239920240109_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd239920240109_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239919240111_))
                                                    (let ((_e239924240114_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239919240111_))))
                                                      (let ((_tl239922240119_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239924240114_)))
                    (_hd239923240117_
                     (let () (declare (not safe)) (##car _e239924240114_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd239923240117_))
                    (let ((_e239927240122_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd239923240117_))))
                      (let ((_tl239925240127_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239927240122_)))
                            (_hd239926240125_
                             (let ()
                               (declare (not safe))
                               (##car _e239927240122_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd239926240125_))
                            (let ((_e239930240130_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd239926240125_))))
                              (let ((_tl239928240135_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239930240130_)))
                                    (_hd239929240133_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239930240130_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239929240133_))
                                    (let ((_e239933240138_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239929240133_))))
                                      (let ((_tl239931240143_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239933240138_)))
                                            (_hd239932240141_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239933240138_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239931240143_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239928240135_))
                                                (let ((_e239936240146_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239928240135_))))
                                                  (let ((_tl239934240151_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239936240146_)))
                                                        (_hd239935240149_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239936240146_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239934240151_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl239925240127_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl239922240119_))
                        (let ((_e239939240154_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239922240119_))))
                          (let ((_tl239937240159_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239939240154_)))
                                (_hd239938240157_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239939240154_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239938240157_))
                                (let ((_e239942240162_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239938240157_))))
                                  (let ((_tl239940240167_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239942240162_)))
                                        (_hd239941240165_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239942240162_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239941240165_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd239941240165_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239940240167_))
                                                (let ((_e239945240170_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239940240167_))))
                                                  (let ((_tl239943240175_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239945240170_)))
                                                        (_hd239944240173_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239945240170_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239944240173_))
                                                        (let ((_e239948240178_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239944240173_))))
                  (let ((_tl239946240183_
                         (let () (declare (not safe)) (##cdr _e239948240178_)))
                        (_hd239947240181_
                         (let ()
                           (declare (not safe))
                           (##car _e239948240178_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239943240175_))
                        (let ((_e239951240186_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239943240175_))))
                          (let ((_tl239949240191_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239951240186_)))
                                (_hd239950240189_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239951240186_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239950240189_))
                                (let ((_e239954240194_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239950240189_))))
                                  (let ((_tl239952240199_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239954240194_)))
                                        (_hd239953240197_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239954240194_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239953240197_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd239953240197_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239952240199_))
                                                (let ((_e239957240202_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239952240199_))))
                                                  (let ((_tl239955240207_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239957240202_)))
                                                        (_hd239956240205_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239957240202_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd239956240205_))
                                                        (let ((_e239960240210_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd239956240205_))))
                  (let ((_tl239958240215_
                         (let () (declare (not safe)) (##cdr _e239960240210_)))
                        (_hd239959240213_
                         (let ()
                           (declare (not safe))
                           (##car _e239960240210_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd239959240213_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd239959240213_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239958240215_))
                                (let ((_e239963240218_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239958240215_))))
                                  (let ((_tl239961240223_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239963240218_)))
                                        (_hd239962240221_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239963240218_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239961240223_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239955240207_))
                                            (let ((_e239966240226_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239955240207_))))
                                              (let ((_tl239964240231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239966240226_)))
                                                    (_hd239965240229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239966240226_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239965240229_))
                                                    (let ((_e239969240234_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239965240229_))))
                                                      (let ((_tl239967240239_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239969240234_)))
                    (_hd239968240237_
                     (let () (declare (not safe)) (##car _e239969240234_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239968240237_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd239968240237_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239967240239_))
                            (let ((_e239972240242_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239967240239_))))
                              (let ((_tl239970240247_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239972240242_)))
                                    (_hd239971240245_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239972240242_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239970240247_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl239964240231_))
                                        (let ((_e239975240250_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl239964240231_))))
                                          (let ((_tl239973240255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239975240250_)))
                                                (_hd239974240253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239975240250_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd239974240253_))
                                                (let ((_e239978240258_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd239974240253_))))
                                                  (let ((_tl239976240263_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239978240258_)))
                                                        (_hd239977240261_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239978240258_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd239977240261_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd239977240261_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl239976240263_))
                        (let ((_e239981240266_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239976240263_))))
                          (let ((_tl239979240271_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239981240266_)))
                                (_hd239980240269_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239981240266_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl239979240271_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239949240191_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl239937240159_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239916240103_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl239907240079_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239904240071_))
                                                    (let ((_e239984240274_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239904240071_))))
                                                      (let ((_tl239982240279_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239984240274_)))
                    (_hd239983240277_
                     (let () (declare (not safe)) (##car _e239984240274_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd239983240277_))
                    (let ((_e239987240282_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd239983240277_))))
                      (let ((_tl239985240287_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239987240282_)))
                            (_hd239986240285_
                             (let ()
                               (declare (not safe))
                               (##car _e239987240282_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd239986240285_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd239986240285_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl239985240287_))
                                    (let ((_e239990240290_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl239985240287_))))
                                      (let ((_tl239988240295_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239990240290_)))
                                            (_hd239989240293_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239990240290_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239988240295_))
                                            (let ((_e239993240298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239988240295_))))
                                              (let ((_tl239991240303_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239993240298_)))
                                                    (_hd239992240301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239993240298_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239992240301_))
                                                    (let ((_e239996240306_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239992240301_))))
                                                      (let ((_tl239994240311_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239996240306_)))
                    (_hd239995240309_
                     (let () (declare (not safe)) (##car _e239996240306_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239995240309_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd239995240309_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239994240311_))
                            (let ((_e239999240314_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239994240311_))))
                              (let ((_tl239997240319_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239999240314_)))
                                    (_hd239998240317_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239999240314_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239998240317_))
                                    (let ((_e240002240322_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239998240317_))))
                                      (let ((_tl240000240327_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e240002240322_)))
                                            (_hd240001240325_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e240002240322_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd240001240325_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd240001240325_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl240000240327_))
                                                    (let ((_e240005240330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl240000240327_))))
                                                      (let ((_tl240003240335_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240005240330_)))
                    (_hd240004240333_
                     (let () (declare (not safe)) (##car _e240005240330_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl240003240335_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239997240319_))
                        (let ((_e240008240338_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239997240319_))))
                          (let ((_tl240006240343_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240008240338_)))
                                (_hd240007240341_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240008240338_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd240007240341_))
                                (let ((_e240011240346_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd240007240341_))))
                                  (let ((_tl240009240351_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240011240346_)))
                                        (_hd240010240349_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240011240346_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd240010240349_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd240010240349_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl240009240351_))
                                                (let ((_e240014240354_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl240009240351_))))
                                                  (let ((_tl240012240359_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e240014240354_)))
                                                        (_hd240013240357_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e240014240354_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl240012240359_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl240006240343_))
                                                            (let ((_e240017240362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl240006240343_))))
                      (let ((_tl240015240367_
                             (let ()
                               (declare (not safe))
                               (##cdr _e240017240362_)))
                            (_hd240016240365_
                             (let ()
                               (declare (not safe))
                               (##car _e240017240362_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd240016240365_))
                            (let ((_e240020240370_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd240016240365_))))
                              (let ((_tl240018240375_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e240020240370_)))
                                    (_hd240019240373_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e240020240370_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd240019240373_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd240019240373_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl240018240375_))
                                            (let ((_e240023240378_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl240018240375_))))
                                              (let ((_tl240021240383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e240023240378_)))
                                                    (_hd240022240381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e240023240378_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl240021240383_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl240015240367_))
                                                        (let ((_e240026240386_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl240015240367_))))
                  (let ((_tl240024240391_
                         (let () (declare (not safe)) (##cdr _e240026240386_)))
                        (_hd240025240389_
                         (let ()
                           (declare (not safe))
                           (##car _e240026240386_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd240025240389_))
                        (let ((_e240029240394_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd240025240389_))))
                          (let ((_tl240027240399_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240029240394_)))
                                (_hd240028240397_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240029240394_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd240028240397_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd240028240397_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl240027240399_))
                                        (let ((_e240032240402_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl240027240399_))))
                                          (let ((_tl240030240407_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e240032240402_)))
                                                (_hd240031240405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e240032240402_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl240030240407_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl240024240391_))
                                                    (let ((_e240035240410_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl240024240391_))))
                                                      (let ((_tl240033240415_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240035240410_)))
                    (_hd240034240413_
                     (let () (declare (not safe)) (##car _e240035240410_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd240034240413_))
                    (let ((_e240038240418_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd240034240413_))))
                      (let ((_tl240036240423_
                             (let ()
                               (declare (not safe))
                               (##cdr _e240038240418_)))
                            (_hd240037240421_
                             (let ()
                               (declare (not safe))
                               (##car _e240038240418_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd240037240421_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd240037240421_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl240036240423_))
                                    (let ((_e240041240426_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl240036240423_))))
                                      (let ((_tl240039240431_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e240041240426_)))
                                            (_hd240040240429_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e240041240426_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl240039240431_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl240033240415_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl239991240303_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239982240279_))
                                                        (___kont250331250332_
                                                         _hd240040240429_
                                                         _hd240031240405_
                                                         _hd240013240357_
                                                         _hd240004240333_
                                                         _hd239989240293_
                                                         _hd239980240269_
                                                         _hd239971240245_
                                                         _hd239962240221_
                                                         _hd239947240181_
                                                         _hd239932240141_
                                                         _hd239914240093_)
                                                        (___kont250333250334_))
                                                    (___kont250333250334_))
                                                (___kont250333250334_))
                                            (___kont250333250334_))))
                                    (___kont250333250334_))
                                (___kont250333250334_))
                            (___kont250333250334_))))
                    (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250333250334_))
                                                (___kont250333250334_))))
                                        (___kont250333250334_))
                                    (___kont250333250334_))
                                (___kont250333250334_))))
                        (___kont250333250334_))))
                (___kont250333250334_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250333250334_))))
                                            (___kont250333250334_))
                                        (___kont250333250334_))
                                    (___kont250333250334_))))
                            (___kont250333250334_))))
                    (___kont250333250334_))
                (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250333250334_))
                                            (___kont250333250334_))
                                        (___kont250333250334_))))
                                (___kont250333250334_))))
                        (___kont250333250334_))
                    (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250333250334_))
                                                (___kont250333250334_))
                                            (___kont250333250334_))))
                                    (___kont250333250334_))))
                            (___kont250333250334_))
                        (___kont250333250334_))
                    (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250333250334_))))
                                            (___kont250333250334_))))
                                    (___kont250333250334_))
                                (___kont250333250334_))
                            (___kont250333250334_))))
                    (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250333250334_))
                                                (___kont250333250334_))
                                            (___kont250333250334_))
                                        (___kont250333250334_))
                                    (___kont250333250334_))
                                (___kont250333250334_))))
                        (___kont250333250334_))
                    (___kont250333250334_))
                (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250333250334_))))
                                        (___kont250333250334_))
                                    (___kont250333250334_))))
                            (___kont250333250334_))
                        (___kont250333250334_))
                    (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250333250334_))))
                                            (___kont250333250334_))
                                        (___kont250333250334_))))
                                (___kont250333250334_))
                            (___kont250333250334_))
                        (___kont250333250334_))))
                (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250333250334_))
                                            (___kont250333250334_))
                                        (___kont250333250334_))))
                                (___kont250333250334_))))
                        (___kont250333250334_))))
                (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250333250334_))
                                            (___kont250333250334_))
                                        (___kont250333250334_))))
                                (___kont250333250334_))))
                        (___kont250333250334_))
                    (___kont250333250334_))
                (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250333250334_))
                                            (___kont250333250334_))))
                                    (___kont250333250334_))))
                            (___kont250333250334_))))
                    (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250333250334_))
                                                (___kont250333250334_))
                                            (___kont250333250334_))))
                                    (___kont250333250334_))))
                            (___kont250333250334_))
                        (___kont250333250334_))))
                (___kont250333250334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont250333250334_))))
                                        (___kont250333250334_))))
                                (___kont250333250334_))
                            (___kont250333250334_))
                        (___kont250333250334_))))
                (___kont250333250334_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx239627_ _id239628_ _clauses239629_ _gensym?239630_)
        (let _lp239632_ ((_rest239634_ _clauses239629_)
                         (_ids239635_ '())
                         (_impls239636_ '())
                         (_clauses239637_ '()))
          (let* ((_rest239638239646_ _rest239634_)
                 (_else239640239654_
                  (lambda ()
                    (values (reverse _ids239635_)
                            (reverse _impls239636_)
                            (reverse _clauses239637_))))
                 (_K239642239859_
                  (lambda (_rest239657_ _clause239658_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause239658_))
                        (let ((__tmp251408
                               (let ()
                                 (declare (not safe))
                                 (cons _clause239658_ _clauses239637_))))
                          (declare (not safe))
                          (_lp239632_
                           _rest239657_
                           _ids239635_
                           _impls239636_
                           __tmp251408))
                        (let* ((_g239660239671_
                                (lambda (_g239661239668_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g239661239668_))))
                               (_g239659239856_
                                (lambda (_g239661239674_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g239661239674_))
                                      (let ((_e239666239676_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g239661239674_))))
                                        (let ((_hd239665239679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239666239676_)))
                                              (_tl239664239681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239666239676_))))
                                          ((lambda (_L239684_ _L239685_)
                                             (let* ((_id239702_
                                                     (let ((__tmp251355
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id239628_)))
                                                           (__tmp251354
                                                            (length _clauses239637_))
                                                           (__tmp251353
                                                            (if _gensym?239630_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp251355
                                                        '"__"
                                                        __tmp251354
                                                        __tmp251353)))
                                                    (_id239704_
                                                     (let ((__tmp251356
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx239627_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id239702_
                                                        __tmp251356)))
                                                    (_impl239706_
                                                     (let ((__tmp251357
                                                            (let ((__tmp251359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp251358
                           (let ()
                             (declare (not safe))
                             (cons _L239685_ _L239684_))))
                      (declare (not safe))
                      (cons __tmp251359 __tmp251358))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp251357 _stx239627_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause239853_
                                                     (let* ((___stx250713250714_
                                                             _L239685_)
                                                            (_g239710239738_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx250713250714_)))))
               (let ((___kont250715250716_
                      (lambda (_L239832_)
                        (let ((__tmp251360
                               (let ((__tmp251361
                                      (let ((__tmp251362
                                             (let ((__tmp251363
                                                    (let ((__tmp251369
                                                           (let ((__tmp251370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id239704_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251370)))
                  (__tmp251364
                   (let ((__tmp251365
                          (lambda (_g239842239845_ _g239843239847_)
                            (let ((__tmp251366
                                   (let ((__tmp251368
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp251367
                                          (let ()
                                            (declare (not safe))
                                            (cons _g239842239845_ '()))))
                                     (declare (not safe))
                                     (cons __tmp251368 __tmp251367))))
                              (declare (not safe))
                              (cons __tmp251366 _g239843239847_)))))
                     (declare (not safe))
                     (foldr1 __tmp251365 '() _L239832_))))
              (declare (not safe))
              (cons __tmp251369 __tmp251364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251363))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251362
                                         _stx239627_))))
                                 (declare (not safe))
                                 (cons __tmp251361 '()))))
                          (declare (not safe))
                          (cons _L239685_ __tmp251360))))
                     (___kont250719250720_
                      (lambda (_L239783_ _L239784_)
                        (let ((__tmp251371
                               (let ((__tmp251372
                                      (let ((__tmp251373
                                             (let ((__tmp251374
                                                    (let ((__tmp251388
                                                           (let ((__tmp251389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251389)))
                  (__tmp251375
                   (let ((__tmp251386
                          (let ((__tmp251387
                                 (let ()
                                   (declare (not safe))
                                   (cons _id239704_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp251387)))
                         (__tmp251376
                          (let ((__tmp251382
                                 (let ((__tmp251383
                                        (let ((__tmp251385
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp251384
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L239783_ '()))))
                                          (declare (not safe))
                                          (cons __tmp251385 __tmp251384))))
                                   (declare (not safe))
                                   (cons __tmp251383 '())))
                                (__tmp251377
                                 (let ((__tmp251378
                                        (lambda (_g239795239798_
                                                 _g239796239800_)
                                          (let ((__tmp251379
                                                 (let ((__tmp251381
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp251380
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g239795239798_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp251381
                                                         __tmp251380))))
                                            (declare (not safe))
                                            (cons __tmp251379
                                                  _g239796239800_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp251378 '() _L239784_))))
                            (declare (not safe))
                            (foldr1 cons __tmp251382 __tmp251377))))
                     (declare (not safe))
                     (cons __tmp251386 __tmp251376))))
              (declare (not safe))
              (cons __tmp251388 __tmp251375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251374))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251373
                                         _stx239627_))))
                                 (declare (not safe))
                                 (cons __tmp251372 '()))))
                          (declare (not safe))
                          (cons _L239685_ __tmp251371))))
                     (___kont250723250724_
                      (lambda (_L239743_)
                        (let ((__tmp251390
                               (let ((__tmp251391
                                      (let ((__tmp251392
                                             (let ((__tmp251393
                                                    (let ((__tmp251401
                                                           (let ((__tmp251402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp251402)))
                  (__tmp251394
                   (let ((__tmp251399
                          (let ((__tmp251400
                                 (let ()
                                   (declare (not safe))
                                   (cons _id239704_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp251400)))
                         (__tmp251395
                          (let ((__tmp251396
                                 (let ((__tmp251398
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp251397
                                        (let ()
                                          (declare (not safe))
                                          (cons _L239743_ '()))))
                                   (declare (not safe))
                                   (cons __tmp251398 __tmp251397))))
                            (declare (not safe))
                            (cons __tmp251396 '()))))
                     (declare (not safe))
                     (cons __tmp251399 __tmp251395))))
              (declare (not safe))
              (cons __tmp251401 __tmp251394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp251393))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp251392
                                         _stx239627_))))
                                 (declare (not safe))
                                 (cons __tmp251391 '()))))
                          (declare (not safe))
                          (cons _L239685_ __tmp251390)))))
                 (let* ((___match250738250739_
                         (lambda (___splice250721250722_
                                  _target239724239759_
                                  _tl239726239761_)
                           (letrec ((_loop239727239764_
                                     (lambda (_hd239725239767_
                                              _arg239731239769_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd239725239767_))
                                           (let ((_e239728239772_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd239725239767_))))
                                             (let ((_lp-tl239730239777_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239728239772_)))
                                                   (_lp-hd239729239775_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239728239772_))))
                                               (let ((__tmp251403
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd239729239775_
                                                              _arg239731239769_))))
                                                 (declare (not safe))
                                                 (_loop239727239764_
                                                  _lp-tl239730239777_
                                                  __tmp251403))))
                                           (let ((_arg239732239780_
                                                  (reverse _arg239731239769_)))
                                             (___kont250719250720_
                                              _tl239726239761_
                                              _arg239732239780_))))))
                             (let ()
                               (declare (not safe))
                               (_loop239727239764_
                                _target239724239759_
                                '())))))
                        (___match250732250733_
                         (lambda (___splice250717250718_
                                  _target239713239808_
                                  _tl239715239810_)
                           (letrec ((_loop239716239813_
                                     (lambda (_hd239714239816_
                                              _arg239720239818_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd239714239816_))
                                           (let ((_e239717239821_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd239714239816_))))
                                             (let ((_lp-tl239719239826_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239717239821_)))
                                                   (_lp-hd239718239824_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239717239821_))))
                                               (let ((__tmp251404
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd239718239824_
                                                              _arg239720239818_))))
                                                 (declare (not safe))
                                                 (_loop239716239813_
                                                  _lp-tl239719239826_
                                                  __tmp251404))))
                                           (let ((_arg239721239829_
                                                  (reverse _arg239720239818_)))
                                             (___kont250715250716_
                                              _arg239721239829_))))))
                             (let ()
                               (declare (not safe))
                               (_loop239716239813_
                                _target239713239808_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx250713250714_))
                       (let ((___splice250717250718_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx250713250714_
                                 '0))))
                         (let ((_tl239715239810_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice250717250718_ '1)))
                               (_target239713239808_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice250717250718_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl239715239810_))
                               (___match250732250733_
                                ___splice250717250718_
                                _target239713239808_
                                _tl239715239810_)
                               (___match250738250739_
                                ___splice250717250718_
                                _target239713239808_
                                _tl239715239810_))))
                       (___kont250723250724_ ___stx250713250714_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp251407
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id239704_
                                                              _ids239635_)))
                                                     (__tmp251406
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl239706_
                                                              _impls239636_)))
                                                     (__tmp251405
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause239853_
                                                              _clauses239637_))))
                                                 (declare (not safe))
                                                 (_lp239632_
                                                  _rest239657_
                                                  __tmp251407
                                                  __tmp251406
                                                  __tmp251405))))
                                           _tl239664239681_
                                           _hd239665239679_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g239660239671_ _g239661239674_))))))
                          (declare (not safe))
                          (_g239659239856_ _clause239658_))))))
            (if (let () (declare (not safe)) (##pair? _rest239638239646_))
                (let ((_hd239643239862_
                       (let ()
                         (declare (not safe))
                         (##car _rest239638239646_)))
                      (_tl239644239864_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest239638239646_))))
                  (let* ((_clause239867_ _hd239643239862_)
                         (_rest239869_ _tl239644239864_))
                    (declare (not safe))
                    (_K239642239859_ _rest239869_ _clause239867_)))
                (let () (declare (not safe)) (_else239640239654_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx239874_ _id239875_ _clauses239876_)
        (let ((_gensym?239878_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx239874_
           _id239875_
           _clauses239876_
           _gensym?239878_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g251410_
        (let ((_g251409_ (let () (declare (not safe)) (##length _g251410_))))
          (cond ((let () (declare (not safe)) (##fx= _g251409_ 3))
                 (apply (lambda (_stx239874_ _id239875_ _clauses239876_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx239874_
                             _id239875_
                             _clauses239876_)))
                        _g251410_))
                ((let () (declare (not safe)) (##fx= _g251409_ 4))
                 (apply (lambda (_stx239880_
                                 _id239881_
                                 _clauses239882_
                                 _gensym?239883_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx239880_
                             _id239881_
                             _clauses239882_
                             _gensym?239883_)))
                        _g251410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g251410_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx238904_)
        (letrec ((_case-lambda-clause-def238906_
                  (lambda (_id239623_ _impl239624_)
                    (let ((__tmp251411
                           (let ((__tmp251412
                                  (let ((__tmp251415
                                         (let ()
                                           (declare (not safe))
                                           (cons _id239623_ '())))
                                        (__tmp251413
                                         (let ((__tmp251414
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl239624_))))
                                           (declare (not safe))
                                           (cons __tmp251414 '()))))
                                    (declare (not safe))
                                    (cons __tmp251415 __tmp251413))))
                             (declare (not safe))
                             (cons '%#define-values __tmp251412))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251411 _stx238904_))))
                 (_opt-lambda-dispatch-name238907_
                  (lambda (_id239619_)
                    (if (uninterned-symbol? _id239619_)
                        (let ((_str239621_ (symbol->string _id239619_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str239621_))
                              '"%"
                              _id239619_))
                        _id239619_)))
                 (_kw-lambda-dispatch-name238908_
                  (lambda (_id239614_ _name239615_)
                    (if (uninterned-symbol? _id239614_)
                        (let ((_str239617_ (symbol->string _id239614_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str239617_))
                              _name239615_
                              _id239614_))
                        _id239614_))))
          (let* ((___stx250761250762_ _stx238904_)
                 (_g238913238972_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx250761250762_)))))
            (let ((___kont250763250764_
                   (lambda (_L239523_ _L239524_)
                     (let* ((___stx250741250742_ _L239523_)
                            (_g239541239555_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx250741250742_)))))
                       (let ((___kont250743250744_
                              (lambda (_L239599_) _stx238904_))
                             (___kont250745250746_
                              (lambda (_L239568_)
                                (let ((_g251416_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx238904_
                                          _L239524_
                                          _L239568_))))
                                  (begin
                                    (let ((_g251417_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g251416_)
                                                 (##vector-length _g251416_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g251417_ 3)))
                                          (error "Context expects 3 values"
                                                 _g251417_)))
                                    (let ((_ids239578_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251416_ 0)))
                                          (_impls239579_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251416_ 1)))
                                          (_clauses239580_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g251416_ 2))))
                                      (let* ((_g251418_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids239578_))
                                             (_defs239583_
                                              (map _case-lambda-clause-def238906_
                                                   _ids239578_
                                                   _impls239579_)))
                                        (let ((__tmp251420
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L239524_)))
                                              (__tmp251419
                                               (map gxc#identifier-symbol
                                                    _ids239578_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp251420
                                           '" => "
                                           __tmp251419))
                                        (let ((__tmp251421
                                               (let ((__tmp251422
                                                      (let ((__tmp251423
                                                             (let ((__tmp251424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp251425
                                   (let ((__tmp251426
                                          (let ((__tmp251431
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L239524_ '())))
                                                (__tmp251427
                                                 (let ((__tmp251428
                                                        (let ((__tmp251430
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses239580_)))
                      (__tmp251429
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp251430 __tmp251429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp251428 '()))))
                                            (declare (not safe))
                                            (cons __tmp251431 __tmp251427))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp251426))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251425
                               _stx238904_))))
                       (declare (not safe))
                       (cons __tmp251424 '()))))
                (declare (not safe))
                (foldr1 cons __tmp251423 _defs239583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp251422))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp251421
                                           _stx238904_)))))))))
                         (let ((___match250752250753_
                                (lambda (_e239546239591_
                                         _hd239545239594_
                                         _tl239544239596_)
                                  (let ((_L239599_ _tl239544239596_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L239599_))
                                        (___kont250743250744_ _L239599_)
                                        (___kont250745250746_
                                         _tl239544239596_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx250741250742_))
                               (let ((_e239546239591_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx250741250742_))))
                                 (let ((_tl239544239596_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e239546239591_)))
                                       (_hd239545239594_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e239546239591_))))
                                   (___match250752250753_
                                    _e239546239591_
                                    _hd239545239594_
                                    _tl239544239596_)))
                               (let ()
                                 (declare (not safe))
                                 (_g239541239555_))))))))
                  (___kont250765250766_
                   (lambda (_L239341_ _L239342_)
                     (let* ((_g239358239388_
                             (lambda (_g239359239385_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g239359239385_))))
                            (_g239357239483_
                             (lambda (_g239359239391_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g239359239391_))
                                   (let ((_e239365239393_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g239359239391_))))
                                     (let ((_hd239364239396_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e239365239393_)))
                                           (_tl239363239398_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e239365239393_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl239363239398_))
                                           (let ((_e239368239401_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl239363239398_))))
                                             (let ((_hd239367239404_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239368239401_)))
                                                   (_tl239366239406_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239368239401_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd239367239404_))
                                                   (let ((_e239371239409_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd239367239404_))))
                                                     (let ((_hd239370239412_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e239371239409_)))
                                                           (_tl239369239414_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e239371239409_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd239370239412_))
                                                           (let ((_e239374239417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd239370239412_))))
                     (let ((_hd239373239420_
                            (let ()
                              (declare (not safe))
                              (##car _e239374239417_)))
                           (_tl239372239422_
                            (let ()
                              (declare (not safe))
                              (##cdr _e239374239417_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd239373239420_))
                           (let ((_e239377239425_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd239373239420_))))
                             (let ((_hd239376239428_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e239377239425_)))
                                   (_tl239375239430_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e239377239425_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl239375239430_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl239372239422_))
                                       (let ((_e239380239433_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl239372239422_))))
                                         (let ((_hd239379239436_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e239380239433_)))
                                               (_tl239378239438_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e239380239433_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl239378239438_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl239369239414_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl239366239406_))
                                                       (let ((_e239383239441_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl239366239406_))))
                 (let ((_hd239382239444_
                        (let () (declare (not safe)) (##car _e239383239441_)))
                       (_tl239381239446_
                        (let () (declare (not safe)) (##cdr _e239383239441_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl239381239446_))
                       ((lambda (_L239449_ _L239450_ _L239451_)
                          (let* ((_lambda-id239475_
                                  (let ((__tmp251434
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L239342_)))
                                        (__tmp251432
                                         (let ((__tmp251433
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L239451_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name238907_
                                            __tmp251433))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp251434
                                     '"__"
                                     __tmp251432)))
                                 (_lambda-id239477_
                                  (let ((__tmp251435
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx238904_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id239475_
                                     __tmp251435)))
                                 (_g251436_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id239477_)))
                                 (_new-case-lambda-expr239480_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L239449_
                                     _L239451_
                                     _lambda-id239477_))))
                            (let ((__tmp251438
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L239342_)))
                                  (__tmp251437
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id239477_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp251438
                               '" => "
                               __tmp251437))
                            (let ((__tmp251439
                                   (let ((__tmp251440
                                          (let ((__tmp251448
                                                 (let ((__tmp251449
                                                        (let ((__tmp251450
                                                               (let ((__tmp251453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id239477_ '())))
                             (__tmp251451
                              (let ((__tmp251452
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L239450_))))
                                (declare (not safe))
                                (cons __tmp251452 '()))))
                         (declare (not safe))
                         (cons __tmp251453 __tmp251451))))
                  (declare (not safe))
                  (cons '%#define-values __tmp251450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp251449
                                                    _stx238904_)))
                                                (__tmp251441
                                                 (let ((__tmp251442
                                                        (let ((__tmp251443
                                                               (let ((__tmp251444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp251445
                                     (let ((__tmp251447
                                            (let ()
                                              (declare (not safe))
                                              (cons _L239342_ '())))
                                           (__tmp251446
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr239480_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp251447 __tmp251446))))
                                (declare (not safe))
                                (cons '%#define-values __tmp251445))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp251444 _stx238904_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp251443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp251442 '()))))
                                            (declare (not safe))
                                            (cons __tmp251448 __tmp251441))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp251440))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251439
                               _stx238904_))))
                        _hd239382239444_
                        _hd239379239436_
                        _hd239376239428_)
                       (let ()
                         (declare (not safe))
                         (_g239358239388_ _g239359239391_)))))
               (let () (declare (not safe)) (_g239358239388_ _g239359239391_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g239358239388_
                                                      _g239359239391_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g239358239388_
                                                  _g239359239391_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g239358239388_ _g239359239391_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g239358239388_ _g239359239391_)))))
                           (let ()
                             (declare (not safe))
                             (_g239358239388_ _g239359239391_)))))
                   (let ()
                     (declare (not safe))
                     (_g239358239388_ _g239359239391_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g239358239388_
                                                      _g239359239391_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g239358239388_
                                              _g239359239391_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g239358239388_ _g239359239391_))))))
                       (declare (not safe))
                       (_g239357239483_ _L239341_))))
                  (___kont250767250768_
                   (lambda (_L239055_ _L239056_)
                     (let* ((_g239072239125_
                             (lambda (_g239073239122_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g239073239122_))))
                            (_g239071239301_
                             (lambda (_g239073239128_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g239073239128_))
                                   (let ((_e239081239130_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g239073239128_))))
                                     (let ((_hd239080239133_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e239081239130_)))
                                           (_tl239079239135_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e239081239130_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl239079239135_))
                                           (let ((_e239084239138_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl239079239135_))))
                                             (let ((_hd239083239141_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e239084239138_)))
                                                   (_tl239082239143_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e239084239138_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd239083239141_))
                                                   (let ((_e239087239146_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd239083239141_))))
                                                     (let ((_hd239086239149_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e239087239146_)))
                                                           (_tl239085239151_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e239087239146_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd239086239149_))
                                                           (let ((_e239090239154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd239086239149_))))
                     (let ((_hd239089239157_
                            (let ()
                              (declare (not safe))
                              (##car _e239090239154_)))
                           (_tl239088239159_
                            (let ()
                              (declare (not safe))
                              (##cdr _e239090239154_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd239089239157_))
                           (let ((_e239093239162_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd239089239157_))))
                             (let ((_hd239092239165_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e239093239162_)))
                                   (_tl239091239167_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e239093239162_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl239091239167_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl239088239159_))
                                       (let ((_e239096239170_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl239088239159_))))
                                         (let ((_hd239095239173_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e239096239170_)))
                                               (_tl239094239175_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e239096239170_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd239095239173_))
                                               (let ((_e239099239178_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd239095239173_))))
                                                 (let ((_hd239098239181_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e239099239178_)))
                                                       (_tl239097239183_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e239099239178_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl239097239183_))
                                                       (let ((_e239102239186_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl239097239183_))))
                 (let ((_hd239101239189_
                        (let () (declare (not safe)) (##car _e239102239186_)))
                       (_tl239100239191_
                        (let () (declare (not safe)) (##cdr _e239102239186_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd239101239189_))
                       (let ((_e239105239194_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd239101239189_))))
                         (let ((_hd239104239197_
                                (let ()
                                  (declare (not safe))
                                  (##car _e239105239194_)))
                               (_tl239103239199_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e239105239194_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd239104239197_))
                               (let ((_e239108239202_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd239104239197_))))
                                 (let ((_hd239107239205_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e239108239202_)))
                                       (_tl239106239207_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e239108239202_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd239107239205_))
                                       (let ((_e239111239210_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd239107239205_))))
                                         (let ((_hd239110239213_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e239111239210_)))
                                               (_tl239109239215_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e239111239210_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl239109239215_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl239106239207_))
                                                   (let ((_e239114239218_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl239106239207_))))
                                                     (let ((_hd239113239221_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e239114239218_)))
                                                           (_tl239112239223_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e239114239218_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl239112239223_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl239103239199_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl239100239191_))
                           (let ((_e239117239226_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl239100239191_))))
                             (let ((_hd239116239229_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e239117239226_)))
                                   (_tl239115239231_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e239117239226_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl239115239231_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl239094239175_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl239085239151_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl239082239143_))
                                               (let ((_e239120239234_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl239082239143_))))
                                                 (let ((_hd239119239237_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e239120239234_)))
                                                       (_tl239118239239_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e239120239234_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl239118239239_))
                                                       ((lambda (_L239242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L239243_
                         _L239244_
                         _L239245_
                         _L239246_)
                  (let* ((_get-kws-id239286_
                          (let ((__tmp251456
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239056_)))
                                (__tmp251454
                                 (let ((__tmp251455
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L239246_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name238908_
                                    __tmp251455
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp251456 '"__" __tmp251454)))
                         (_get-kws-id239288_
                          (let ((__tmp251457
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx238904_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id239286_
                             __tmp251457)))
                         (_main-id239290_
                          (let ((__tmp251460
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239056_)))
                                (__tmp251458
                                 (let ((__tmp251459
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L239245_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name238908_
                                    __tmp251459
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp251460 '"__" __tmp251458)))
                         (_main-id239292_
                          (let ((__tmp251461
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx238904_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id239290_
                             __tmp251461)))
                         (_g251462_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id239288_)))
                         (_g251463_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id239292_)))
                         (_new-kw-dispatch239296_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L239242_
                             _L239246_
                             _get-kws-id239288_)))
                         (_new-get-kws239298_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L239243_
                             _L239245_
                             _main-id239292_))))
                    (let ((__tmp251466
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L239056_)))
                          (__tmp251465
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id239288_)))
                          (__tmp251464
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id239292_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp251466
                       '" => "
                       __tmp251465
                       '" => "
                       __tmp251464))
                    (let ((__tmp251467
                           (let ((__tmp251468
                                  (let ((__tmp251481
                                         (let ((__tmp251482
                                                (let ((__tmp251483
                                                       (let ((__tmp251484
                                                              (let ((__tmp251486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id239292_ '())))
                            (__tmp251485
                             (let ()
                               (declare (not safe))
                               (cons _L239244_ '()))))
                        (declare (not safe))
                        (cons __tmp251486 __tmp251485))))
                 (declare (not safe))
                 (cons '%#define-values __tmp251484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251483
                                                   _stx238904_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp251482)))
                                        (__tmp251469
                                         (let ((__tmp251476
                                                (let ((__tmp251477
                                                       (let ((__tmp251478
                                                              (let ((__tmp251480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id239288_ '())))
                            (__tmp251479
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws239298_ '()))))
                        (declare (not safe))
                        (cons __tmp251480 __tmp251479))))
                 (declare (not safe))
                 (cons '%#define-values __tmp251478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251477
                                                   _stx238904_)))
                                               (__tmp251470
                                                (let ((__tmp251471
                                                       (let ((__tmp251472
                                                              (let ((__tmp251473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp251475
                                    (let ()
                                      (declare (not safe))
                                      (cons _L239056_ '())))
                                   (__tmp251474
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch239296_ '()))))
                               (declare (not safe))
                               (cons __tmp251475 __tmp251474))))
                        (declare (not safe))
                        (cons '%#define-values __tmp251473))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp251472 _stx238904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp251471 '()))))
                                           (declare (not safe))
                                           (cons __tmp251476 __tmp251470))))
                                    (declare (not safe))
                                    (cons __tmp251481 __tmp251469))))
                             (declare (not safe))
                             (cons '%#begin __tmp251468))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251467 _stx238904_))))
                _hd239119239237_
                _hd239116239229_
                _hd239113239221_
                _hd239110239213_
                _hd239092239165_)
               (let ()
                 (declare (not safe))
                 (_g239072239125_ _g239073239128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g239072239125_
                                                  _g239073239128_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g239072239125_
                                              _g239073239128_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g239072239125_ _g239073239128_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g239072239125_ _g239073239128_)))))
                           (let ()
                             (declare (not safe))
                             (_g239072239125_ _g239073239128_)))
                       (let ()
                         (declare (not safe))
                         (_g239072239125_ _g239073239128_)))
                   (let ()
                     (declare (not safe))
                     (_g239072239125_ _g239073239128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g239072239125_
                                                      _g239073239128_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g239072239125_
                                                  _g239073239128_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g239072239125_ _g239073239128_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g239072239125_ _g239073239128_)))))
                       (let ()
                         (declare (not safe))
                         (_g239072239125_ _g239073239128_)))))
               (let ()
                 (declare (not safe))
                 (_g239072239125_ _g239073239128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g239072239125_
                                                  _g239073239128_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g239072239125_ _g239073239128_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g239072239125_ _g239073239128_)))))
                           (let ()
                             (declare (not safe))
                             (_g239072239125_ _g239073239128_)))))
                   (let ()
                     (declare (not safe))
                     (_g239072239125_ _g239073239128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g239072239125_
                                                      _g239073239128_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g239072239125_
                                              _g239073239128_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g239072239125_ _g239073239128_))))))
                       (declare (not safe))
                       (_g239071239301_ _L239055_))))
                  (___kont250769250770_
                   (lambda (_L239001_ _L239002_)
                     (let ((__tmp251487
                            (let ((__tmp251488
                                   (let ((__tmp251489
                                          (let ((__tmp251490
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L239001_))))
                                            (declare (not safe))
                                            (cons __tmp251490 '()))))
                                     (declare (not safe))
                                     (cons _L239002_ __tmp251489))))
                              (declare (not safe))
                              (cons '%#define-values __tmp251488))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp251487 _stx238904_)))))
              (let* ((___match250854250855_
                      (lambda (_e238947239023_
                               _hd238946239026_
                               _tl238945239028_
                               _e238950239031_
                               _hd238949239034_
                               _tl238948239036_
                               _e238953239039_
                               _hd238952239042_
                               _tl238951239044_
                               _e238956239047_
                               _hd238955239050_
                               _tl238954239052_)
                        (let ((_L239055_ _hd238955239050_)
                              (_L239056_ _hd238952239042_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L239056_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L239055_)))
                              (___kont250767250768_ _L239055_ _L239056_)
                              (___kont250769250770_
                               _hd238955239050_
                               _hd238949239034_)))))
                     (___match250826250827_
                      (lambda (_e238933239309_
                               _hd238932239312_
                               _tl238931239314_
                               _e238936239317_
                               _hd238935239320_
                               _tl238934239322_
                               _e238939239325_
                               _hd238938239328_
                               _tl238937239330_
                               _e238942239333_
                               _hd238941239336_
                               _tl238940239338_)
                        (let ((_L239341_ _hd238941239336_)
                              (_L239342_ _hd238938239328_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L239342_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L239341_)))
                              (___kont250765250766_ _L239341_ _L239342_)
                              (___match250854250855_
                               _e238933239309_
                               _hd238932239312_
                               _tl238931239314_
                               _e238936239317_
                               _hd238935239320_
                               _tl238934239322_
                               _e238939239325_
                               _hd238938239328_
                               _tl238937239330_
                               _e238942239333_
                               _hd238941239336_
                               _tl238940239338_)))))
                     (___match250798250799_
                      (lambda (_e238919239491_
                               _hd238918239494_
                               _tl238917239496_
                               _e238922239499_
                               _hd238921239502_
                               _tl238920239504_
                               _e238925239507_
                               _hd238924239510_
                               _tl238923239512_
                               _e238928239515_
                               _hd238927239518_
                               _tl238926239520_)
                        (let ((_L239523_ _hd238927239518_)
                              (_L239524_ _hd238924239510_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L239524_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L239523_)))
                              (___kont250763250764_ _L239523_ _L239524_)
                              (___match250826250827_
                               _e238919239491_
                               _hd238918239494_
                               _tl238917239496_
                               _e238922239499_
                               _hd238921239502_
                               _tl238920239504_
                               _e238925239507_
                               _hd238924239510_
                               _tl238923239512_
                               _e238928239515_
                               _hd238927239518_
                               _tl238926239520_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx250761250762_))
                    (let ((_e238919239491_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx250761250762_))))
                      (let ((_tl238917239496_
                             (let ()
                               (declare (not safe))
                               (##cdr _e238919239491_)))
                            (_hd238918239494_
                             (let ()
                               (declare (not safe))
                               (##car _e238919239491_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238917239496_))
                            (let ((_e238922239499_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238917239496_))))
                              (let ((_tl238920239504_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238922239499_)))
                                    (_hd238921239502_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238922239499_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238921239502_))
                                    (let ((_e238925239507_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238921239502_))))
                                      (let ((_tl238923239512_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238925239507_)))
                                            (_hd238924239510_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238925239507_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl238923239512_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238920239504_))
                                                (let ((_e238928239515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238920239504_))))
                                                  (let ((_tl238926239520_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238928239515_)))
                                                        (_hd238927239518_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238928239515_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238926239520_))
                                                        (___match250798250799_
                                                         _e238919239491_
                                                         _hd238918239494_
                                                         _tl238917239496_
                                                         _e238922239499_
                                                         _hd238921239502_
                                                         _tl238920239504_
                                                         _e238925239507_
                                                         _hd238924239510_
                                                         _tl238923239512_
                                                         _e238928239515_
                                                         _hd238927239518_
                                                         _tl238926239520_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g238913238972_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238913238972_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238920239504_))
                                                (let ((_e238967238993_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238920239504_))))
                                                  (let ((_tl238965238998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238967238993_)))
                                                        (_hd238966238996_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238967238993_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238965238998_))
                                                        (___kont250769250770_
                                                         _hd238966238996_
                                                         _hd238921239502_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g238913238972_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238913238972_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl238920239504_))
                                        (let ((_e238967238993_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl238920239504_))))
                                          (let ((_tl238965238998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238967238993_)))
                                                (_hd238966238996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238967238993_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl238965238998_))
                                                (___kont250769250770_
                                                 _hd238966238996_
                                                 _hd238921239502_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238913238972_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g238913238972_))))))
                            (let () (declare (not safe)) (_g238913238972_)))))
                    (let () (declare (not safe)) (_g238913238972_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx237836_)
        (letrec* ((_bind-e__249157249158_
                   (lambda (_id238888_ _expr238889_ _compile?238890_)
                     (let ((__tmp251493
                            (let ()
                              (declare (not safe))
                              (cons _id238888_ '())))
                           (__tmp251491
                            (let ((__tmp251492
                                   (if _compile?238890_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr238889_))
                                       _expr238889_)))
                              (declare (not safe))
                              (cons __tmp251492 '()))))
                       (declare (not safe))
                       (cons __tmp251493 __tmp251491))))
                  (_bind-e__0__249159249160_
                   (lambda (_id238895_ _expr238896_)
                     (let ((_compile?238898_ '#t))
                       (declare (not safe))
                       (_bind-e__249157249158_
                        _id238895_
                        _expr238896_
                        _compile?238898_))))
                  (_bind-e237838_
                   (lambda _g251495_
                     (let ((_g251494_
                            (let ()
                              (declare (not safe))
                              (##length _g251495_))))
                       (cond ((let () (declare (not safe)) (##fx= _g251494_ 2))
                              (apply (lambda (_id238895_ _expr238896_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__249159249160_
                                          _id238895_
                                          _expr238896_)))
                                     _g251495_))
                             ((let () (declare (not safe)) (##fx= _g251494_ 3))
                              (apply (lambda (_id238900_
                                              _expr238901_
                                              _compile?238902_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__249157249158_
                                          _id238900_
                                          _expr238901_
                                          _compile?238902_)))
                                     _g251495_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g251495_))))))
                  (_compile-bindings237839_
                   (lambda (_bindings238472_)
                     (let _lp238474_ ((_rest238476_ _bindings238472_)
                                      (_lift1238477_ '())
                                      (_lift2238478_ '())
                                      (_bind238479_ '()))
                       (let* ((_rest238480238488_ _rest238476_)
                              (_else238482238496_
                               (lambda ()
                                 (values (reverse _lift1238477_)
                                         (reverse _lift2238478_)
                                         (reverse _bind238479_))))
                              (_K238484238875_
                               (lambda (_rest238499_ _hd238500_)
                                 (let* ((___stx250897250898_ _hd238500_)
                                        (_g238504238540_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx250897250898_)))))
                                   (let ((___kont250899250900_
                                          (lambda (_L238782_ _L238783_)
                                            (let* ((___stx250877250878_
                                                    _L238782_)
                                                   (_g238798238812_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx250877250878_)))))
                                              (let ((___kont250879250880_
                                                     (lambda (_L238860_)
                                                       (let ((__tmp251496
                                                              (let ((__tmp251497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__249157249158_
                                _L238783_
                                _L238782_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp251497 _bind238479_))))
                 (declare (not safe))
                 (_lp238474_
                  _rest238499_
                  _lift1238477_
                  _lift2238478_
                  __tmp251496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont250881250882_
                                                     (lambda (_L238825_)
                                                       (let ((_g251498_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx237836_
                         _L238783_
                         _L238825_
                         '#t))))
                 (begin
                   (let ((_g251499_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g251498_)
                                (##vector-length _g251498_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g251499_ 3)))
                         (error "Context expects 3 values" _g251499_)))
                   (let ((_ids238835_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251498_ 0)))
                         (_impls238836_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251498_ 1)))
                         (_clauses238837_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251498_ 2))))
                     (let* ((_g251500_
                             (for-each gx#core-bind-runtime! _ids238835_))
                            (_xbind238840_
                             (map _bind-e237838_ _ids238835_ _impls238836_))
                            (_expr*238842_
                             (let ((__tmp251502
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses238837_)))
                                   (__tmp251501
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp251502
                                __tmp251501)))
                            (_bind*238844_
                             (let ()
                               (declare (not safe))
                               (_bind-e__249157249158_
                                _L238783_
                                _expr*238842_
                                '#f))))
                       (let ((__tmp251504
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L238783_)))
                             (__tmp251503
                              (map gxc#identifier-symbol _ids238835_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp251504
                          '" => "
                          __tmp251503))
                       (let ((__tmp251506
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2238478_ _xbind238840_)))
                             (__tmp251505
                              (let ()
                                (declare (not safe))
                                (cons _bind*238844_ _bind238479_))))
                         (declare (not safe))
                         (_lp238474_
                          _rest238499_
                          _lift1238477_
                          __tmp251506
                          __tmp251505)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match250888250889_
                                                       (lambda (_e238803238852_
                                                                _hd238802238855_
                                                                _tl238801238857_)
                                                         (let ((_L238860_
                                                                _tl238801238857_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L238860_))
                       (___kont250879250880_ _L238860_)
                       (___kont250881250882_ _tl238801238857_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx250877250878_))
                                                      (let ((_e238803238852_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx250877250878_))))
                (let ((_tl238801238857_
                       (let () (declare (not safe)) (##cdr _e238803238852_)))
                      (_hd238802238855_
                       (let () (declare (not safe)) (##car _e238803238852_))))
                  (___match250888250889_
                   _e238803238852_
                   _hd238802238855_
                   _tl238801238857_)))
              (let () (declare (not safe)) (_g238798238812_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont250901250902_
                                          (lambda (_L238610_ _L238611_)
                                            (let* ((_g238625238655_
                                                    (lambda (_g238626238652_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g238626238652_))))
                                                   (_g238624238750_
                                                    (lambda (_g238626238658_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g238626238658_))
                                                          (let ((_e238632238660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g238626238658_))))
                    (let ((_hd238631238663_
                           (let ()
                             (declare (not safe))
                             (##car _e238632238660_)))
                          (_tl238630238665_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238632238660_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238630238665_))
                          (let ((_e238635238668_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238630238665_))))
                            (let ((_hd238634238671_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238635238668_)))
                                  (_tl238633238673_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238635238668_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238634238671_))
                                  (let ((_e238638238676_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238634238671_))))
                                    (let ((_hd238637238679_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238638238676_)))
                                          (_tl238636238681_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238638238676_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd238637238679_))
                                          (let ((_e238641238684_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd238637238679_))))
                                            (let ((_hd238640238687_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238641238684_)))
                                                  (_tl238639238689_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238641238684_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd238640238687_))
                                                  (let ((_e238644238692_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd238640238687_))))
                                                    (let ((_hd238643238695_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238644238692_)))
                                                          (_tl238642238697_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238644238692_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238642238697_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl238639238689_))
                      (let ((_e238647238700_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl238639238689_))))
                        (let ((_hd238646238703_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238647238700_)))
                              (_tl238645238705_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238647238700_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl238645238705_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238636238681_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238633238673_))
                                      (let ((_e238650238708_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238633238673_))))
                                        (let ((_hd238649238711_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238650238708_)))
                                              (_tl238648238713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238650238708_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238648238713_))
                                              ((lambda (_L238716_
                                                        _L238717_
                                                        _L238718_)
                                                 (let* ((_lambda-id238742_
                                                         (let ((__tmp251508
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L238611_)))
                       (__tmp251507 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp251508 __tmp251507)))
                (_lambda-id238744_
                 (let ((__tmp251509
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx237836_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id238742_ __tmp251509)))
                (_g251510_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id238744_)))
                (_new-case-lambda-expr238747_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L238716_
                    _L238718_
                    _lambda-id238744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp251512
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L238611_)))
                                                         (__tmp251511
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id238744_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp251512
                                                      '" => "
                                                      __tmp251511))
                                                   (let ((__tmp251515
                                                          (let ((__tmp251516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__249157249158_
                            _L238611_
                            _new-case-lambda-expr238747_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp251516 _rest238499_)))
                 (__tmp251513
                  (let ((__tmp251514
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__249159249160_
                            _lambda-id238744_
                            _L238717_))))
                    (declare (not safe))
                    (cons __tmp251514 _lift1238477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp238474_
                                                      __tmp251515
                                                      __tmp251513
                                                      _lift2238478_
                                                      _bind238479_))))
                                               _hd238649238711_
                                               _hd238646238703_
                                               _hd238643238695_)
                                              (let ()
                                                (declare (not safe))
                                                (_g238625238655_
                                                 _g238626238658_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238625238655_ _g238626238658_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g238625238655_ _g238626238658_)))
                              (let ()
                                (declare (not safe))
                                (_g238625238655_ _g238626238658_)))))
                      (let ()
                        (declare (not safe))
                        (_g238625238655_ _g238626238658_)))
                  (let ()
                    (declare (not safe))
                    (_g238625238655_ _g238626238658_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g238625238655_
                                                     _g238626238658_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g238625238655_
                                             _g238626238658_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238625238655_ _g238626238658_)))))
                          (let ()
                            (declare (not safe))
                            (_g238625238655_ _g238626238658_)))))
                  (let ()
                    (declare (not safe))
                    (_g238625238655_ _g238626238658_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g238624238750_ _L238610_))))
                                         (___kont250903250904_
                                          (lambda (_L238561_ _L238562_)
                                            (let ((__tmp251517
                                                   (let ((__tmp251518
                                                          (let ((__tmp251519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251520
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L238561_))))
                           (declare (not safe))
                           (cons __tmp251520 '()))))
                    (declare (not safe))
                    (cons _L238562_ __tmp251519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251518
                                                           _bind238479_))))
                                              (declare (not safe))
                                              (_lp238474_
                                               _rest238499_
                                               _lift1238477_
                                               _lift2238478_
                                               __tmp251517)))))
                                     (let* ((___match250948250949_
                                             (lambda (_e238521238586_
                                                      _hd238520238589_
                                                      _tl238519238591_
                                                      _e238524238594_
                                                      _hd238523238597_
                                                      _tl238522238599_
                                                      _e238527238602_
                                                      _hd238526238605_
                                                      _tl238525238607_)
                                               (let ((_L238610_
                                                      _hd238526238605_)
                                                     (_L238611_
                                                      _hd238523238597_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L238611_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L238610_)))
                                                     (___kont250901250902_
                                                      _L238610_
                                                      _L238611_)
                                                     (___kont250903250904_
                                                      _hd238526238605_
                                                      _hd238520238589_)))))
                                            (___match250926250927_
                                             (lambda (_e238510238758_
                                                      _hd238509238761_
                                                      _tl238508238763_
                                                      _e238513238766_
                                                      _hd238512238769_
                                                      _tl238511238771_
                                                      _e238516238774_
                                                      _hd238515238777_
                                                      _tl238514238779_)
                                               (let ((_L238782_
                                                      _hd238515238777_)
                                                     (_L238783_
                                                      _hd238512238769_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L238783_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L238782_)))
                                                     (___kont250899250900_
                                                      _L238782_
                                                      _L238783_)
                                                     (___match250948250949_
                                                      _e238510238758_
                                                      _hd238509238761_
                                                      _tl238508238763_
                                                      _e238513238766_
                                                      _hd238512238769_
                                                      _tl238511238771_
                                                      _e238516238774_
                                                      _hd238515238777_
                                                      _tl238514238779_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx250897250898_))
                                           (let ((_e238510238758_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx250897250898_))))
                                             (let ((_tl238508238763_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238510238758_)))
                                                   (_hd238509238761_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238510238758_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd238509238761_))
                                                   (let ((_e238513238766_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd238509238761_))))
                                                     (let ((_tl238511238771_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238513238766_)))
                                                           (_hd238512238769_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238513238766_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl238511238771_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl238508238763_))
                       (let ((_e238516238774_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238508238763_))))
                         (let ((_tl238514238779_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238516238774_)))
                               (_hd238515238777_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238516238774_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238514238779_))
                               (___match250926250927_
                                _e238510238758_
                                _hd238509238761_
                                _tl238508238763_
                                _e238513238766_
                                _hd238512238769_
                                _tl238511238771_
                                _e238516238774_
                                _hd238515238777_
                                _tl238514238779_)
                               (let ()
                                 (declare (not safe))
                                 (_g238504238540_)))))
                       (let () (declare (not safe)) (_g238504238540_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl238508238763_))
                       (let ((_e238535238553_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238508238763_))))
                         (let ((_tl238533238558_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238535238553_)))
                               (_hd238534238556_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238535238553_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238533238558_))
                               (___kont250903250904_
                                _hd238534238556_
                                _hd238509238761_)
                               (let ()
                                 (declare (not safe))
                                 (_g238504238540_)))))
                       (let () (declare (not safe)) (_g238504238540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl238508238763_))
                                                       (let ((_e238535238553_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl238508238763_))))
                 (let ((_tl238533238558_
                        (let () (declare (not safe)) (##cdr _e238535238553_)))
                       (_hd238534238556_
                        (let () (declare (not safe)) (##car _e238535238553_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl238533238558_))
                       (___kont250903250904_ _hd238534238556_ _hd238509238761_)
                       (let () (declare (not safe)) (_g238504238540_)))))
               (let () (declare (not safe)) (_g238504238540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g238504238540_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest238480238488_))
                             (let ((_hd238485238878_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest238480238488_)))
                                   (_tl238486238880_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest238480238488_))))
                               (let* ((_hd238883_ _hd238485238878_)
                                      (_rest238885_ _tl238486238880_))
                                 (declare (not safe))
                                 (_K238484238875_ _rest238885_ _hd238883_)))
                             (let ()
                               (declare (not safe))
                               (_else238482238496_)))))))
                  (_lift-kw-lambda?237840_
                   (lambda (_bind238396_)
                     (let* ((___stx250965250966_ _bind238396_)
                            (_g238399238416_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx250965250966_)))))
                       (let ((___kont250967250968_
                              (lambda (_L238452_ _L238453_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L238453_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L238452_))
                                    '#f)))
                             (___kont250969250970_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx250965250966_))
                             (let ((_e238405238428_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx250965250966_))))
                               (let ((_tl238403238433_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e238405238428_)))
                                     (_hd238404238431_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e238405238428_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd238404238431_))
                                     (let ((_e238408238436_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd238404238431_))))
                                       (let ((_tl238406238441_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e238408238436_)))
                                             (_hd238407238439_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e238408238436_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl238406238441_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl238403238433_))
                                                 (let ((_e238411238444_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl238403238433_))))
                                                   (let ((_tl238409238449_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e238411238444_)))
                                                         (_hd238410238447_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e238411238444_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl238409238449_))
                                                         (___kont250967250968_
                                                          _hd238410238447_
                                                          _hd238407238439_)
                                                         (___kont250969250970_))))
                                                 (___kont250969250970_))
                                             (___kont250969250970_))))
                                     (___kont250969250970_))))
                             (___kont250969250970_))))))
                  (_lift-kw-lambda-bindings237841_
                   (lambda (_bindings238008_)
                     (let _lp238010_ ((_rest238012_ _bindings238008_)
                                      (_lift1238013_ '())
                                      (_lift2238014_ '())
                                      (_bind238015_ '()))
                       (let* ((_rest238016238024_ _rest238012_)
                              (_else238018238032_
                               (lambda ()
                                 (values (reverse _lift1238013_)
                                         (reverse _lift2238014_)
                                         (reverse _bind238015_))))
                              (_K238020238384_
                               (lambda (_rest238035_ _hd238036_)
                                 (let* ((___stx250995250996_ _hd238036_)
                                        (_g238039238064_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx250995250996_)))))
                                   (let ((___kont250997250998_
                                          (lambda (_L238134_ _L238135_)
                                            (let* ((_g238149238202_
                                                    (lambda (_g238150238199_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g238150238199_))))
                                                   (_g238148238378_
                                                    (lambda (_g238150238205_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g238150238205_))
                                                          (let ((_e238158238207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g238150238205_))))
                    (let ((_hd238157238210_
                           (let ()
                             (declare (not safe))
                             (##car _e238158238207_)))
                          (_tl238156238212_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238158238207_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238156238212_))
                          (let ((_e238161238215_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238156238212_))))
                            (let ((_hd238160238218_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238161238215_)))
                                  (_tl238159238220_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238161238215_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238160238218_))
                                  (let ((_e238164238223_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238160238218_))))
                                    (let ((_hd238163238226_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238164238223_)))
                                          (_tl238162238228_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238164238223_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd238163238226_))
                                          (let ((_e238167238231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd238163238226_))))
                                            (let ((_hd238166238234_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238167238231_)))
                                                  (_tl238165238236_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238167238231_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd238166238234_))
                                                  (let ((_e238170238239_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd238166238234_))))
                                                    (let ((_hd238169238242_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238170238239_)))
                                                          (_tl238168238244_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238170238239_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238168238244_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl238165238236_))
                      (let ((_e238173238247_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl238165238236_))))
                        (let ((_hd238172238250_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238173238247_)))
                              (_tl238171238252_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238173238247_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd238172238250_))
                              (let ((_e238176238255_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd238172238250_))))
                                (let ((_hd238175238258_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238176238255_)))
                                      (_tl238174238260_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238176238255_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238174238260_))
                                      (let ((_e238179238263_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238174238260_))))
                                        (let ((_hd238178238266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238179238263_)))
                                              (_tl238177238268_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238179238263_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd238178238266_))
                                              (let ((_e238182238271_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd238178238266_))))
                                                (let ((_hd238181238274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238182238271_)))
                                                      (_tl238180238276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238182238271_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd238181238274_))
                                                      (let ((_e238185238279_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd238181238274_))))
                (let ((_hd238184238282_
                       (let () (declare (not safe)) (##car _e238185238279_)))
                      (_tl238183238284_
                       (let () (declare (not safe)) (##cdr _e238185238279_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd238184238282_))
                      (let ((_e238188238287_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd238184238282_))))
                        (let ((_hd238187238290_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238188238287_)))
                              (_tl238186238292_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238188238287_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl238186238292_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl238183238284_))
                                  (let ((_e238191238295_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl238183238284_))))
                                    (let ((_hd238190238298_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238191238295_)))
                                          (_tl238189238300_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238191238295_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238189238300_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238180238276_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl238177238268_))
                                                  (let ((_e238194238303_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl238177238268_))))
                                                    (let ((_hd238193238306_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238194238303_)))
                                                          (_tl238192238308_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238194238303_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238192238308_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl238171238252_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238162238228_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238159238220_))
                              (let ((_e238197238311_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238159238220_))))
                                (let ((_hd238196238314_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238197238311_)))
                                      (_tl238195238316_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238197238311_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238195238316_))
                                      ((lambda (_L238319_
                                                _L238320_
                                                _L238321_
                                                _L238322_
                                                _L238323_)
                                         (let* ((_get-kws-id238363_
                                                 (let ((__tmp251522
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L238135_)))
                                                       (__tmp251521
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251522
                                                    __tmp251521)))
                                                (_get-kws-id238365_
                                                 (let ((__tmp251523
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx237836_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id238363_
                                                    __tmp251523)))
                                                (_main-id238367_
                                                 (let ((__tmp251525
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L238135_)))
                                                       (__tmp251524
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251525
                                                    __tmp251524)))
                                                (_main-id238369_
                                                 (let ((__tmp251526
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx237836_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id238367_
                                                    __tmp251526)))
                                                (_g251527_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id238365_)))
                                                (_g251528_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id238369_)))
                                                (_new-kw-dispatch238373_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L238319_
                                                    _L238323_
                                                    _get-kws-id238365_)))
                                                (_new-get-kws238375_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L238320_
                                                    _L238322_
                                                    _main-id238369_))))
                                           (let ((__tmp251531
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L238135_)))
                                                 (__tmp251530
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id238365_)))
                                                 (__tmp251529
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id238369_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp251531
                                              '" => "
                                              __tmp251530
                                              '" => "
                                              __tmp251529))
                                           (let ((__tmp251536
                                                  (let ((__tmp251537
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249157249158_
                                                            _main-id238369_
                                                            _L238321_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp251537
                                                          _lift1238013_)))
                                                 (__tmp251534
                                                  (let ((__tmp251535
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249157249158_
                                                            _get-kws-id238365_
                                                            _new-get-kws238375_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp251535
                                                          _lift2238014_)))
                                                 (__tmp251532
                                                  (let ((__tmp251533
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249157249158_
                                                            _L238135_
                                                            _new-kw-dispatch238373_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp251533
                                                          _bind238015_))))
                                             (declare (not safe))
                                             (_lp238010_
                                              _rest238035_
                                              __tmp251536
                                              __tmp251534
                                              __tmp251532))))
                                       _hd238196238314_
                                       _hd238193238306_
                                       _hd238190238298_
                                       _hd238187238290_
                                       _hd238169238242_)
                                      (let ()
                                        (declare (not safe))
                                        (_g238149238202_ _g238150238205_)))))
                              (let ()
                                (declare (not safe))
                                (_g238149238202_ _g238150238205_)))
                          (let ()
                            (declare (not safe))
                            (_g238149238202_ _g238150238205_)))
                      (let ()
                        (declare (not safe))
                        (_g238149238202_ _g238150238205_)))
                  (let ()
                    (declare (not safe))
                    (_g238149238202_ _g238150238205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g238149238202_
                                                     _g238150238205_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g238149238202_
                                                 _g238150238205_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g238149238202_
                                             _g238150238205_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238149238202_ _g238150238205_)))
                              (let ()
                                (declare (not safe))
                                (_g238149238202_ _g238150238205_)))))
                      (let ()
                        (declare (not safe))
                        (_g238149238202_ _g238150238205_)))))
              (let ()
                (declare (not safe))
                (_g238149238202_ _g238150238205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g238149238202_
                                                 _g238150238205_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238149238202_ _g238150238205_)))))
                              (let ()
                                (declare (not safe))
                                (_g238149238202_ _g238150238205_)))))
                      (let ()
                        (declare (not safe))
                        (_g238149238202_ _g238150238205_)))
                  (let ()
                    (declare (not safe))
                    (_g238149238202_ _g238150238205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g238149238202_
                                                     _g238150238205_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g238149238202_
                                             _g238150238205_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238149238202_ _g238150238205_)))))
                          (let ()
                            (declare (not safe))
                            (_g238149238202_ _g238150238205_)))))
                  (let ()
                    (declare (not safe))
                    (_g238149238202_ _g238150238205_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g238148238378_ _L238134_))))
                                         (___kont250999251000_
                                          (lambda (_L238085_ _L238086_)
                                            (let ((__tmp251538
                                                   (let ((__tmp251539
                                                          (let ((__tmp251540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L238085_ '()))))
                    (declare (not safe))
                    (cons _L238086_ __tmp251540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251539
                                                           _bind238015_))))
                                              (declare (not safe))
                                              (_lp238010_
                                               _rest238035_
                                               _lift1238013_
                                               _lift2238014_
                                               __tmp251538)))))
                                     (let ((___match251022251023_
                                            (lambda (_e238045238110_
                                                     _hd238044238113_
                                                     _tl238043238115_
                                                     _e238048238118_
                                                     _hd238047238121_
                                                     _tl238046238123_
                                                     _e238051238126_
                                                     _hd238050238129_
                                                     _tl238049238131_)
                                              (let ((_L238134_
                                                     _hd238050238129_)
                                                    (_L238135_
                                                     _hd238047238121_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L238135_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L238134_)))
                                                    (___kont250997250998_
                                                     _L238134_
                                                     _L238135_)
                                                    (___kont250999251000_
                                                     _hd238050238129_
                                                     _hd238044238113_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx250995250996_))
                                           (let ((_e238045238110_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx250995250996_))))
                                             (let ((_tl238043238115_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e238045238110_)))
                                                   (_hd238044238113_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e238045238110_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd238044238113_))
                                                   (let ((_e238048238118_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd238044238113_))))
                                                     (let ((_tl238046238123_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e238048238118_)))
                                                           (_hd238047238121_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e238048238118_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl238046238123_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl238043238115_))
                       (let ((_e238051238126_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238043238115_))))
                         (let ((_tl238049238131_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238051238126_)))
                               (_hd238050238129_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238051238126_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238049238131_))
                               (___match251022251023_
                                _e238045238110_
                                _hd238044238113_
                                _tl238043238115_
                                _e238048238118_
                                _hd238047238121_
                                _tl238046238123_
                                _e238051238126_
                                _hd238050238129_
                                _tl238049238131_)
                               (let ()
                                 (declare (not safe))
                                 (_g238039238064_)))))
                       (let () (declare (not safe)) (_g238039238064_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl238043238115_))
                       (let ((_e238059238077_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl238043238115_))))
                         (let ((_tl238057238082_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e238059238077_)))
                               (_hd238058238080_
                                (let ()
                                  (declare (not safe))
                                  (##car _e238059238077_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl238057238082_))
                               (___kont250999251000_
                                _hd238058238080_
                                _hd238044238113_)
                               (let ()
                                 (declare (not safe))
                                 (_g238039238064_)))))
                       (let () (declare (not safe)) (_g238039238064_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl238043238115_))
                                                       (let ((_e238059238077_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl238043238115_))))
                 (let ((_tl238057238082_
                        (let () (declare (not safe)) (##cdr _e238059238077_)))
                       (_hd238058238080_
                        (let () (declare (not safe)) (##car _e238059238077_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl238057238082_))
                       (___kont250999251000_ _hd238058238080_ _hd238044238113_)
                       (let () (declare (not safe)) (_g238039238064_)))))
               (let () (declare (not safe)) (_g238039238064_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g238039238064_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest238016238024_))
                             (let ((_hd238021238387_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest238016238024_)))
                                   (_tl238022238389_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest238016238024_))))
                               (let* ((_hd238392_ _hd238021238387_)
                                      (_rest238394_ _tl238022238389_))
                                 (declare (not safe))
                                 (_K238020238384_ _rest238394_ _hd238392_)))
                             (let ()
                               (declare (not safe))
                               (_else238018238032_))))))))
          (let* ((___stx251039251040_ _stx237836_)
                 (_g237844237870_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251039251040_)))))
            (let ((___kont251041251042_
                   (lambda (_L237930_ _L237931_)
                     (let ((__tmp251542
                            (lambda ()
                              (if (let ((__tmp251569
                                         (let ((__tmp251570
                                                (lambda (_g237959237962_
                                                         _g237960237964_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g237959237962_
                                                          _g237960237964_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp251570
                                                   '()
                                                   _L237931_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?237840_
                                            __tmp251569))
                                  (let ((_g251556_
                                         (let ((__tmp251558
                                                (let ((__tmp251559
                                                       (lambda (_g237966237969_
                                                                _g237967237971_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g237966237969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g237967237971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp251559
                                                          '()
                                                          _L237931_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings237841_
                                            __tmp251558))))
                                    (begin
                                      (let ((_g251557_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g251556_)
                                                   (##vector-length _g251556_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g251557_ 3)))
                                            (error "Context expects 3 values"
                                                   _g251557_)))
                                      (let ((_lift1237974_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251556_ 0)))
                                            (_lift2237975_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251556_ 1)))
                                            (_hd237976_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251556_ 2))))
                                        (let* ((_expr237978_
                                                (let ((__tmp251560
                                                       (let ((__tmp251561
                                                              (let ((__tmp251562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L237930_ '()))))
                        (declare (not safe))
                        (cons _hd237976_ __tmp251562))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251560
                                                   _stx237836_)))
                                               (_expr237980_
                                                (let ((__tmp251563
                                                       (let ((__tmp251564
                                                              (let ((__tmp251565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr237978_ '()))))
                        (declare (not safe))
                        (cons _lift2237975_ __tmp251565))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251563
                                                   _stx237836_)))
                                               (_expr237982_
                                                (let ((__tmp251566
                                                       (let ((__tmp251567
                                                              (let ((__tmp251568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr237980_ '()))))
                        (declare (not safe))
                        (cons _lift1237974_ __tmp251568))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251566
                                                   _stx237836_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr237982_))))))
                                  (let ((_g251543_
                                         (let ((__tmp251545
                                                (let ((__tmp251546
                                                       (lambda (_g237984237987_
                                                                _g237985237989_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g237984237987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g237985237989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp251546
                                                          '()
                                                          _L237931_))))
                                           (declare (not safe))
                                           (_compile-bindings237839_
                                            __tmp251545))))
                                    (begin
                                      (let ((_g251544_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g251543_)
                                                   (##vector-length _g251543_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g251544_ 3)))
                                            (error "Context expects 3 values"
                                                   _g251544_)))
                                      (let ((_lift1237992_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251543_ 0)))
                                            (_lift2237993_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251543_ 1)))
                                            (_hd237994_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g251543_ 2))))
                                        (let* ((_body237996_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L237930_)))
                                               (_expr237998_
                                                (let ((__tmp251547
                                                       (let ((__tmp251548
                                                              (let ((__tmp251549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body237996_ '()))))
                        (declare (not safe))
                        (cons _hd237994_ __tmp251549))))
                 (declare (not safe))
                 (cons '%#let-values __tmp251548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251547
                                                   _stx237836_)))
                                               (_expr238000_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2237993_))
                                                    _expr237998_
                                                    (let ((__tmp251550
                                                           (let ((__tmp251551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251552
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr237998_ '()))))
                            (declare (not safe))
                            (cons _lift2237993_ __tmp251552))))
                     (declare (not safe))
                     (cons '%#let-values __tmp251551))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp251550 _stx237836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr238002_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1237992_))
                                                    _expr238000_
                                                    (let ((__tmp251553
                                                           (let ((__tmp251554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251555
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr238000_ '()))))
                            (declare (not safe))
                            (cons _lift1237992_ __tmp251555))))
                     (declare (not safe))
                     (cons '%#let-values __tmp251554))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp251553 _stx237836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr238002_)))))))
                           (__tmp251541
                            (let ((__obj251245
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj251245)
                              __obj251245)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp251542
                        gx#current-expander-context
                        __tmp251541))))
                  (___kont251045251046_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx237836_)))))
              (let ((___match251066251067_
                     (lambda (_e237850237882_
                              _hd237849237885_
                              _tl237848237887_
                              _e237853237890_
                              _hd237852237893_
                              _tl237851237895_
                              ___splice251043251044_
                              _target237854237898_
                              _tl237856237900_)
                       (letrec ((_loop237857237903_
                                 (lambda (_hd237855237906_ _bind237861237908_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd237855237906_))
                                       (let ((_e237858237911_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd237855237906_))))
                                         (let ((_lp-tl237860237916_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237858237911_)))
                                               (_lp-hd237859237914_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237858237911_))))
                                           (let ((__tmp251573
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd237859237914_
                                                          _bind237861237908_))))
                                             (declare (not safe))
                                             (_loop237857237903_
                                              _lp-tl237860237916_
                                              __tmp251573))))
                                       (let ((_bind237862237919_
                                              (reverse _bind237861237908_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl237851237895_))
                                             (let ((_e237865237922_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl237851237895_))))
                                               (let ((_tl237863237927_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e237865237922_)))
                                                     (_hd237864237925_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e237865237922_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl237863237927_))
                                                     (let ((_L237930_
                                                            _hd237864237925_)
                                                           (_L237931_
                                                            _bind237862237919_))
                                                       (if (let ((__tmp251571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251572
                                 (lambda (_g237951237954_ _g237952237956_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g237951237954_ _g237952237956_)))))
                            (declare (not safe))
                            (foldr1 __tmp251572 '() _L237931_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp251571))
                   (___kont251041251042_ _L237930_ _L237931_)
                   (___kont251045251046_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251045251046_))))
                                             (___kont251045251046_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop237857237903_ _target237854237898_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251039251040_))
                    (let ((_e237850237882_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251039251040_))))
                      (let ((_tl237848237887_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237850237882_)))
                            (_hd237849237885_
                             (let ()
                               (declare (not safe))
                               (##car _e237850237882_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237848237887_))
                            (let ((_e237853237890_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237848237887_))))
                              (let ((_tl237851237895_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237853237890_)))
                                    (_hd237852237893_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237853237890_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd237852237893_))
                                    (let ((___splice251043251044_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd237852237893_
                                              '0))))
                                      (let ((_tl237856237900_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251043251044_
                                                '1)))
                                            (_target237854237898_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251043251044_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237856237900_))
                                            (___match251066251067_
                                             _e237850237882_
                                             _hd237849237885_
                                             _tl237848237887_
                                             _e237853237890_
                                             _hd237852237893_
                                             _tl237851237895_
                                             ___splice251043251044_
                                             _target237854237898_
                                             _tl237856237900_)
                                            (___kont251045251046_))))
                                    (___kont251045251046_))))
                            (___kont251045251046_))))
                    (___kont251045251046_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx236980_)
        (letrec* ((_bind-e__249162249163_
                   (lambda (_id237820_ _expr237821_ _compile?237822_)
                     (let ((__tmp251576
                            (let ()
                              (declare (not safe))
                              (cons _id237820_ '())))
                           (__tmp251574
                            (let ((__tmp251575
                                   (if _compile?237822_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr237821_))
                                       _expr237821_)))
                              (declare (not safe))
                              (cons __tmp251575 '()))))
                       (declare (not safe))
                       (cons __tmp251576 __tmp251574))))
                  (_bind-e__0__249164249165_
                   (lambda (_id237827_ _expr237828_)
                     (let ((_compile?237830_ '#t))
                       (declare (not safe))
                       (_bind-e__249162249163_
                        _id237827_
                        _expr237828_
                        _compile?237830_))))
                  (_bind-e236982_
                   (lambda _g251578_
                     (let ((_g251577_
                            (let ()
                              (declare (not safe))
                              (##length _g251578_))))
                       (cond ((let () (declare (not safe)) (##fx= _g251577_ 2))
                              (apply (lambda (_id237827_ _expr237828_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__249164249165_
                                          _id237827_
                                          _expr237828_)))
                                     _g251578_))
                             ((let () (declare (not safe)) (##fx= _g251577_ 3))
                              (apply (lambda (_id237832_
                                              _expr237833_
                                              _compile?237834_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__249162249163_
                                          _id237832_
                                          _expr237833_
                                          _compile?237834_)))
                                     _g251578_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g251578_))))))
                  (_compile-bindings236983_
                   (lambda (_rest237118_)
                     (let _lp237120_ ((_rest237122_ _rest237118_)
                                      (_bind237123_ '()))
                       (let* ((_rest237124237132_ _rest237122_)
                              (_else237126237140_
                               (lambda () (reverse _bind237123_)))
                              (_K237128237807_
                               (lambda (_rest237143_ _hd237144_)
                                 (let* ((___stx251089251090_ _hd237144_)
                                        (_g237149237196_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx251089251090_)))))
                                   (let ((___kont251091251092_
                                          (lambda (_L237714_ _L237715_)
                                            (let* ((___stx251069251070_
                                                    _L237714_)
                                                   (_g237730237744_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251069251070_)))))
                                              (let ((___kont251071251072_
                                                     (lambda (_L237792_)
                                                       (let ((__tmp251579
                                                              (let ((__tmp251580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__249162249163_
                                _L237715_
                                _L237714_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp251580 _bind237123_))))
                 (declare (not safe))
                 (_lp237120_ _rest237143_ __tmp251579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251073251074_
                                                     (lambda (_L237757_)
                                                       (let ((_g251581_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx236980_
                         _L237715_
                         _L237757_
                         '#t))))
                 (begin
                   (let ((_g251582_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g251581_)
                                (##vector-length _g251581_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g251582_ 3)))
                         (error "Context expects 3 values" _g251582_)))
                   (let ((_ids237767_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251581_ 0)))
                         (_impls237768_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251581_ 1)))
                         (_clauses237769_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g251581_ 2))))
                     (let* ((_g251583_
                             (for-each gx#core-bind-runtime! _ids237767_))
                            (_xbind237772_
                             (map _bind-e236982_ _ids237767_ _impls237768_))
                            (_expr*237774_
                             (let ((__tmp251585
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses237769_)))
                                   (__tmp251584
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp251585
                                __tmp251584)))
                            (_bind*237776_
                             (let ()
                               (declare (not safe))
                               (_bind-e__249162249163_
                                _L237715_
                                _expr*237774_
                                '#f))))
                       (let ((__tmp251587
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L237715_)))
                             (__tmp251586
                              (map gxc#identifier-symbol _ids237767_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp251587
                          '" => "
                          __tmp251586))
                       (let ((__tmp251588
                              (let ((__tmp251589
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind237123_
                                               _xbind237772_))))
                                (declare (not safe))
                                (cons _bind*237776_ __tmp251589))))
                         (declare (not safe))
                         (_lp237120_ _rest237143_ __tmp251588)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match251080251081_
                                                       (lambda (_e237735237784_
                                                                _hd237734237787_
                                                                _tl237733237789_)
                                                         (let ((_L237792_
                                                                _tl237733237789_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L237792_))
                       (___kont251071251072_ _L237792_)
                       (___kont251073251074_ _tl237733237789_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx251069251070_))
                                                      (let ((_e237735237784_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx251069251070_))))
                (let ((_tl237733237789_
                       (let () (declare (not safe)) (##cdr _e237735237784_)))
                      (_hd237734237787_
                       (let () (declare (not safe)) (##car _e237735237784_))))
                  (___match251080251081_
                   _e237735237784_
                   _hd237734237787_
                   _tl237733237789_)))
              (let () (declare (not safe)) (_g237730237744_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont251093251094_
                                          (lambda (_L237542_ _L237543_)
                                            (let* ((_g237557237587_
                                                    (lambda (_g237558237584_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237558237584_))))
                                                   (_g237556237682_
                                                    (lambda (_g237558237590_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237558237590_))
                                                          (let ((_e237564237592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237558237590_))))
                    (let ((_hd237563237595_
                           (let ()
                             (declare (not safe))
                             (##car _e237564237592_)))
                          (_tl237562237597_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237564237592_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237562237597_))
                          (let ((_e237567237600_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237562237597_))))
                            (let ((_hd237566237603_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237567237600_)))
                                  (_tl237565237605_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237567237600_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237566237603_))
                                  (let ((_e237570237608_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237566237603_))))
                                    (let ((_hd237569237611_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237570237608_)))
                                          (_tl237568237613_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237570237608_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd237569237611_))
                                          (let ((_e237573237616_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd237569237611_))))
                                            (let ((_hd237572237619_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237573237616_)))
                                                  (_tl237571237621_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237573237616_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237572237619_))
                                                  (let ((_e237576237624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237572237619_))))
                                                    (let ((_hd237575237627_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237576237624_)))
                                                          (_tl237574237629_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237576237624_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237574237629_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237571237621_))
                      (let ((_e237579237632_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237571237621_))))
                        (let ((_hd237578237635_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237579237632_)))
                              (_tl237577237637_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237579237632_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237577237637_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl237568237613_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237565237605_))
                                      (let ((_e237582237640_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237565237605_))))
                                        (let ((_hd237581237643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237582237640_)))
                                              (_tl237580237645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237582237640_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237580237645_))
                                              ((lambda (_L237648_
                                                        _L237649_
                                                        _L237650_)
                                                 (let* ((_lambda-id237674_
                                                         (let ((__tmp251591
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L237543_)))
                       (__tmp251590 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp251591 __tmp251590)))
                (_lambda-id237676_
                 (let ((__tmp251592
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx236980_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id237674_ __tmp251592)))
                (_g251593_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id237676_)))
                (_new-case-lambda-expr237679_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L237648_
                    _L237650_
                    _lambda-id237676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp251595
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L237543_)))
                                                         (__tmp251594
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id237676_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp251595
                                                      '" => "
                                                      __tmp251594))
                                                   (let ((__tmp251598
                                                          (let ((__tmp251599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__249162249163_
                            _L237543_
                            _new-case-lambda-expr237679_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp251599 _rest237143_)))
                 (__tmp251596
                  (let ((__tmp251597
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__249164249165_
                            _lambda-id237676_
                            _L237649_))))
                    (declare (not safe))
                    (cons __tmp251597 _bind237123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp237120_
                                                      __tmp251598
                                                      __tmp251596))))
                                               _hd237581237643_
                                               _hd237578237635_
                                               _hd237575237627_)
                                              (let ()
                                                (declare (not safe))
                                                (_g237557237587_
                                                 _g237558237590_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237557237587_ _g237558237590_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g237557237587_ _g237558237590_)))
                              (let ()
                                (declare (not safe))
                                (_g237557237587_ _g237558237590_)))))
                      (let ()
                        (declare (not safe))
                        (_g237557237587_ _g237558237590_)))
                  (let ()
                    (declare (not safe))
                    (_g237557237587_ _g237558237590_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237557237587_
                                                     _g237558237590_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237557237587_
                                             _g237558237590_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237557237587_ _g237558237590_)))))
                          (let ()
                            (declare (not safe))
                            (_g237557237587_ _g237558237590_)))))
                  (let ()
                    (declare (not safe))
                    (_g237557237587_ _g237558237590_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237556237682_ _L237542_))))
                                         (___kont251095251096_
                                          (lambda (_L237266_ _L237267_)
                                            (let* ((_g237281237334_
                                                    (lambda (_g237282237331_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g237282237331_))))
                                                   (_g237280237510_
                                                    (lambda (_g237282237337_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g237282237337_))
                                                          (let ((_e237290237339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g237282237337_))))
                    (let ((_hd237289237342_
                           (let ()
                             (declare (not safe))
                             (##car _e237290237339_)))
                          (_tl237288237344_
                           (let ()
                             (declare (not safe))
                             (##cdr _e237290237339_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl237288237344_))
                          (let ((_e237293237347_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl237288237344_))))
                            (let ((_hd237292237350_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e237293237347_)))
                                  (_tl237291237352_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e237293237347_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd237292237350_))
                                  (let ((_e237296237355_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd237292237350_))))
                                    (let ((_hd237295237358_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237296237355_)))
                                          (_tl237294237360_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237296237355_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd237295237358_))
                                          (let ((_e237299237363_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd237295237358_))))
                                            (let ((_hd237298237366_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e237299237363_)))
                                                  (_tl237297237368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e237299237363_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd237298237366_))
                                                  (let ((_e237302237371_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd237298237366_))))
                                                    (let ((_hd237301237374_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237302237371_)))
                                                          (_tl237300237376_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237302237371_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237300237376_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl237297237368_))
                      (let ((_e237305237379_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl237297237368_))))
                        (let ((_hd237304237382_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237305237379_)))
                              (_tl237303237384_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237305237379_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd237304237382_))
                              (let ((_e237308237387_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd237304237382_))))
                                (let ((_hd237307237390_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237308237387_)))
                                      (_tl237306237392_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237308237387_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl237306237392_))
                                      (let ((_e237311237395_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl237306237392_))))
                                        (let ((_hd237310237398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237311237395_)))
                                              (_tl237309237400_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237311237395_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd237310237398_))
                                              (let ((_e237314237403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd237310237398_))))
                                                (let ((_hd237313237406_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e237314237403_)))
                                                      (_tl237312237408_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e237314237403_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd237313237406_))
                                                      (let ((_e237317237411_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd237313237406_))))
                (let ((_hd237316237414_
                       (let () (declare (not safe)) (##car _e237317237411_)))
                      (_tl237315237416_
                       (let () (declare (not safe)) (##cdr _e237317237411_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd237316237414_))
                      (let ((_e237320237419_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd237316237414_))))
                        (let ((_hd237319237422_
                               (let ()
                                 (declare (not safe))
                                 (##car _e237320237419_)))
                              (_tl237318237424_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e237320237419_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl237318237424_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl237315237416_))
                                  (let ((_e237323237427_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl237315237416_))))
                                    (let ((_hd237322237430_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e237323237427_)))
                                          (_tl237321237432_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e237323237427_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl237321237432_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl237312237408_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl237309237400_))
                                                  (let ((_e237326237435_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl237309237400_))))
                                                    (let ((_hd237325237438_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e237326237435_)))
                                                          (_tl237324237440_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e237326237435_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl237324237440_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl237303237384_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl237294237360_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl237291237352_))
                              (let ((_e237329237443_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl237291237352_))))
                                (let ((_hd237328237446_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e237329237443_)))
                                      (_tl237327237448_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e237329237443_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl237327237448_))
                                      ((lambda (_L237451_
                                                _L237452_
                                                _L237453_
                                                _L237454_
                                                _L237455_)
                                         (let* ((_get-kws-id237495_
                                                 (let ((__tmp251601
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237267_)))
                                                       (__tmp251600
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251601
                                                    __tmp251600)))
                                                (_get-kws-id237497_
                                                 (let ((__tmp251602
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236980_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id237495_
                                                    __tmp251602)))
                                                (_main-id237499_
                                                 (let ((__tmp251604
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L237267_)))
                                                       (__tmp251603
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp251604
                                                    __tmp251603)))
                                                (_main-id237501_
                                                 (let ((__tmp251605
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx236980_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id237499_
                                                    __tmp251605)))
                                                (_g251606_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id237497_)))
                                                (_g251607_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id237501_)))
                                                (_new-kw-dispatch237505_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237451_
                                                    _L237455_
                                                    _get-kws-id237497_)))
                                                (_new-get-kws237507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L237452_
                                                    _L237454_
                                                    _main-id237501_))))
                                           (let ((__tmp251610
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L237267_)))
                                                 (__tmp251609
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id237497_)))
                                                 (__tmp251608
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id237501_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp251610
                                              '" => "
                                              __tmp251609
                                              '" => "
                                              __tmp251608))
                                           (let ((__tmp251611
                                                  (let ((__tmp251616
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__249162249163_
                                                            _main-id237501_
                                                            _L237453_
                                                            '#f)))
                                                        (__tmp251612
                                                         (let ((__tmp251615
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__249162249163_
                           _get-kws-id237497_
                           _new-get-kws237507_
                           '#f)))
                       (__tmp251613
                        (let ((__tmp251614
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__249162249163_
                                  _L237267_
                                  _new-kw-dispatch237505_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp251614 _rest237143_))))
                   (declare (not safe))
                   (cons __tmp251615 __tmp251613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp251616
                                                          __tmp251612))))
                                             (declare (not safe))
                                             (_lp237120_
                                              __tmp251611
                                              _bind237123_))))
                                       _hd237328237446_
                                       _hd237325237438_
                                       _hd237322237430_
                                       _hd237319237422_
                                       _hd237301237374_)
                                      (let ()
                                        (declare (not safe))
                                        (_g237281237334_ _g237282237337_)))))
                              (let ()
                                (declare (not safe))
                                (_g237281237334_ _g237282237337_)))
                          (let ()
                            (declare (not safe))
                            (_g237281237334_ _g237282237337_)))
                      (let ()
                        (declare (not safe))
                        (_g237281237334_ _g237282237337_)))
                  (let ()
                    (declare (not safe))
                    (_g237281237334_ _g237282237337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237281237334_
                                                     _g237282237337_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g237281237334_
                                                 _g237282237337_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g237281237334_
                                             _g237282237337_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237281237334_ _g237282237337_)))
                              (let ()
                                (declare (not safe))
                                (_g237281237334_ _g237282237337_)))))
                      (let ()
                        (declare (not safe))
                        (_g237281237334_ _g237282237337_)))))
              (let ()
                (declare (not safe))
                (_g237281237334_ _g237282237337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g237281237334_
                                                 _g237282237337_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g237281237334_ _g237282237337_)))))
                              (let ()
                                (declare (not safe))
                                (_g237281237334_ _g237282237337_)))))
                      (let ()
                        (declare (not safe))
                        (_g237281237334_ _g237282237337_)))
                  (let ()
                    (declare (not safe))
                    (_g237281237334_ _g237282237337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g237281237334_
                                                     _g237282237337_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g237281237334_
                                             _g237282237337_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g237281237334_ _g237282237337_)))))
                          (let ()
                            (declare (not safe))
                            (_g237281237334_ _g237282237337_)))))
                  (let ()
                    (declare (not safe))
                    (_g237281237334_ _g237282237337_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g237280237510_ _L237266_))))
                                         (___kont251097251098_
                                          (lambda (_L237217_ _L237218_)
                                            (let ((__tmp251617
                                                   (let ((__tmp251618
                                                          (let ((__tmp251619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251620
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L237217_))))
                           (declare (not safe))
                           (cons __tmp251620 '()))))
                    (declare (not safe))
                    (cons _L237218_ __tmp251619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251618
                                                           _bind237123_))))
                                              (declare (not safe))
                                              (_lp237120_
                                               _rest237143_
                                               __tmp251617)))))
                                     (let* ((___match251164251165_
                                             (lambda (_e237177237242_
                                                      _hd237176237245_
                                                      _tl237175237247_
                                                      _e237180237250_
                                                      _hd237179237253_
                                                      _tl237178237255_
                                                      _e237183237258_
                                                      _hd237182237261_
                                                      _tl237181237263_)
                                               (let ((_L237266_
                                                      _hd237182237261_)
                                                     (_L237267_
                                                      _hd237179237253_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237267_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L237266_)))
                                                     (___kont251095251096_
                                                      _L237266_
                                                      _L237267_)
                                                     (___kont251097251098_
                                                      _hd237182237261_
                                                      _hd237176237245_)))))
                                            (___match251142251143_
                                             (lambda (_e237166237518_
                                                      _hd237165237521_
                                                      _tl237164237523_
                                                      _e237169237526_
                                                      _hd237168237529_
                                                      _tl237167237531_
                                                      _e237172237534_
                                                      _hd237171237537_
                                                      _tl237170237539_)
                                               (let ((_L237542_
                                                      _hd237171237537_)
                                                     (_L237543_
                                                      _hd237168237529_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237543_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L237542_)))
                                                     (___kont251093251094_
                                                      _L237542_
                                                      _L237543_)
                                                     (___match251164251165_
                                                      _e237166237518_
                                                      _hd237165237521_
                                                      _tl237164237523_
                                                      _e237169237526_
                                                      _hd237168237529_
                                                      _tl237167237531_
                                                      _e237172237534_
                                                      _hd237171237537_
                                                      _tl237170237539_)))))
                                            (___match251120251121_
                                             (lambda (_e237155237690_
                                                      _hd237154237693_
                                                      _tl237153237695_
                                                      _e237158237698_
                                                      _hd237157237701_
                                                      _tl237156237703_
                                                      _e237161237706_
                                                      _hd237160237709_
                                                      _tl237159237711_)
                                               (let ((_L237714_
                                                      _hd237160237709_)
                                                     (_L237715_
                                                      _hd237157237701_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L237715_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L237714_)))
                                                     (___kont251091251092_
                                                      _L237714_
                                                      _L237715_)
                                                     (___match251142251143_
                                                      _e237155237690_
                                                      _hd237154237693_
                                                      _tl237153237695_
                                                      _e237158237698_
                                                      _hd237157237701_
                                                      _tl237156237703_
                                                      _e237161237706_
                                                      _hd237160237709_
                                                      _tl237159237711_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251089251090_))
                                           (let ((_e237155237690_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251089251090_))))
                                             (let ((_tl237153237695_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237155237690_)))
                                                   (_hd237154237693_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237155237690_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd237154237693_))
                                                   (let ((_e237158237698_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd237154237693_))))
                                                     (let ((_tl237156237703_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e237158237698_)))
                                                           (_hd237157237701_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e237158237698_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl237156237703_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl237153237695_))
                       (let ((_e237161237706_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237153237695_))))
                         (let ((_tl237159237711_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237161237706_)))
                               (_hd237160237709_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237161237706_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237159237711_))
                               (___match251120251121_
                                _e237155237690_
                                _hd237154237693_
                                _tl237153237695_
                                _e237158237698_
                                _hd237157237701_
                                _tl237156237703_
                                _e237161237706_
                                _hd237160237709_
                                _tl237159237711_)
                               (let ()
                                 (declare (not safe))
                                 (_g237149237196_)))))
                       (let () (declare (not safe)) (_g237149237196_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl237153237695_))
                       (let ((_e237191237209_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl237153237695_))))
                         (let ((_tl237189237214_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e237191237209_)))
                               (_hd237190237212_
                                (let ()
                                  (declare (not safe))
                                  (##car _e237191237209_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237189237214_))
                               (___kont251097251098_
                                _hd237190237212_
                                _hd237154237693_)
                               (let ()
                                 (declare (not safe))
                                 (_g237149237196_)))))
                       (let () (declare (not safe)) (_g237149237196_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl237153237695_))
                                                       (let ((_e237191237209_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl237153237695_))))
                 (let ((_tl237189237214_
                        (let () (declare (not safe)) (##cdr _e237191237209_)))
                       (_hd237190237212_
                        (let () (declare (not safe)) (##car _e237191237209_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl237189237214_))
                       (___kont251097251098_ _hd237190237212_ _hd237154237693_)
                       (let () (declare (not safe)) (_g237149237196_)))))
               (let () (declare (not safe)) (_g237149237196_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g237149237196_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest237124237132_))
                             (let ((_hd237129237810_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest237124237132_)))
                                   (_tl237130237812_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest237124237132_))))
                               (let* ((_hd237815_ _hd237129237810_)
                                      (_rest237817_ _tl237130237812_))
                                 (declare (not safe))
                                 (_K237128237807_ _rest237817_ _hd237815_)))
                             (let ()
                               (declare (not safe))
                               (_else237126237140_))))))))
          (let* ((___stx251181251182_ _stx236980_)
                 (_g236986237013_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251181251182_)))))
            (let ((___kont251183251184_
                   (lambda (_L237073_ _L237074_ _L237075_)
                     (let ((__tmp251622
                            (lambda ()
                              (let ((_hd237112_
                                     (let ((__tmp251623
                                            (let ((__tmp251624
                                                   (lambda (_g237104237107_
                                                            _g237105237109_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g237104237107_
                                                             _g237105237109_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp251624
                                                      '()
                                                      _L237074_))))
                                       (declare (not safe))
                                       (_compile-bindings236983_ __tmp251623)))
                                    (_body237113_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L237073_))))
                                (let ((__tmp251625
                                       (let ((__tmp251626
                                              (let ((__tmp251627
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body237113_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd237112_
                                                      __tmp251627))))
                                         (declare (not safe))
                                         (cons _L237075_ __tmp251626))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp251625
                                   _stx236980_)))))
                           (__tmp251621
                            (let ((__obj251246
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj251246)
                              __obj251246)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp251622
                        gx#current-expander-context
                        __tmp251621))))
                  (___kont251187251188_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx236980_)))))
              (let ((___match251208251209_
                     (lambda (_e236993237025_
                              _hd236992237028_
                              _tl236991237030_
                              _e236996237033_
                              _hd236995237036_
                              _tl236994237038_
                              ___splice251185251186_
                              _target236997237041_
                              _tl236999237043_)
                       (letrec ((_loop237000237046_
                                 (lambda (_hd236998237049_ _bind237004237051_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd236998237049_))
                                       (let ((_e237001237054_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd236998237049_))))
                                         (let ((_lp-tl237003237059_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e237001237054_)))
                                               (_lp-hd237002237057_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e237001237054_))))
                                           (let ((__tmp251630
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd237002237057_
                                                          _bind237004237051_))))
                                             (declare (not safe))
                                             (_loop237000237046_
                                              _lp-tl237003237059_
                                              __tmp251630))))
                                       (let ((_bind237005237062_
                                              (reverse _bind237004237051_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl236994237038_))
                                             (let ((_e237008237065_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl236994237038_))))
                                               (let ((_tl237006237070_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e237008237065_)))
                                                     (_hd237007237068_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e237008237065_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl237006237070_))
                                                     (let ((_L237073_
                                                            _hd237007237068_)
                                                           (_L237074_
                                                            _bind237005237062_)
                                                           (_L237075_
                                                            _hd236992237028_))
                                                       (if (let ((__tmp251628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp251629
                                 (lambda (_g237096237099_ _g237097237101_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g237096237099_ _g237097237101_)))))
                            (declare (not safe))
                            (foldr1 __tmp251629 '() _L237074_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp251628))
                   (___kont251183251184_ _L237073_ _L237074_ _L237075_)
                   (___kont251187251188_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251187251188_))))
                                             (___kont251187251188_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop237000237046_ _target236997237041_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251181251182_))
                    (let ((_e236993237025_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251181251182_))))
                      (let ((_tl236991237030_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236993237025_)))
                            (_hd236992237028_
                             (let ()
                               (declare (not safe))
                               (##car _e236993237025_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl236991237030_))
                            (let ((_e236996237033_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl236991237030_))))
                              (let ((_tl236994237038_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e236996237033_)))
                                    (_hd236995237036_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e236996237033_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd236995237036_))
                                    (let ((___splice251185251186_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd236995237036_
                                              '0))))
                                      (let ((_tl236999237043_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251185251186_
                                                '1)))
                                            (_target236997237041_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice251185251186_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236999237043_))
                                            (___match251208251209_
                                             _e236993237025_
                                             _hd236992237028_
                                             _tl236991237030_
                                             _e236996237033_
                                             _hd236995237036_
                                             _tl236994237038_
                                             ___splice251185251186_
                                             _target236997237041_
                                             _tl236999237043_)
                                            (___kont251187251188_))))
                                    (___kont251187251188_))))
                            (___kont251187251188_))))
                    (___kont251187251188_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind236898_)
        (let* ((___stx251211251212_ _bind236898_)
               (_g236901236918_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251211251212_)))))
          (let ((___kont251213251214_
                 (lambda (_L236954_ _L236955_)
                   (if (let () (declare (not safe)) (gx#identifier? _L236955_))
                       (let ((_$e236971_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L236954_))))
                         (if _$e236971_
                             _$e236971_
                             (let ((_$e236974_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L236954_))))
                               (if _$e236974_
                                   _$e236974_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L236954_))))))
                       '#f)))
                (___kont251215251216_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx251211251212_))
                (let ((_e236907236930_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx251211251212_))))
                  (let ((_tl236905236935_
                         (let () (declare (not safe)) (##cdr _e236907236930_)))
                        (_hd236906236933_
                         (let ()
                           (declare (not safe))
                           (##car _e236907236930_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd236906236933_))
                        (let ((_e236910236938_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd236906236933_))))
                          (let ((_tl236908236943_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e236910236938_)))
                                (_hd236909236941_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e236910236938_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl236908236943_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl236905236935_))
                                    (let ((_e236913236946_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl236905236935_))))
                                      (let ((_tl236911236951_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e236913236946_)))
                                            (_hd236912236949_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e236913236946_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236911236951_))
                                            (___kont251213251214_
                                             _hd236912236949_
                                             _hd236909236941_)
                                            (___kont251215251216_))))
                                    (___kont251215251216_))
                                (___kont251215251216_))))
                        (___kont251215251216_))))
                (___kont251215251216_))))))))
