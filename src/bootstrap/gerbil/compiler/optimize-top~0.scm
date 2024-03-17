(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710715077)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp130300 (list gxc#::void::t))
            (__tmp130298
             (let ((__tmp130299
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130299 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp130300
         '()
         __tmp130298
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args128194_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args128194_)))
    (define gxc#::collect-top-level-type-info-bind-methods!
      (let ((__tmp130301
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#define-values
                  gxc#collect-top-level-type-define-values%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-top-level-type-info::t)))))
        (declare (not safe))
        (make-promise __tmp130301)))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx128186_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self128189_
                (let ((__obj130281
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj130281))
               (__tmp130302
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128189_ _stx128186_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130302
           gxc#current-compile-method
           _self128189_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp130305 (list gxc#::false::t))
            (__tmp130303
             (let ((__tmp130304
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130304 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp130305
         '()
         __tmp130303
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args128183_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args128183_)))
    (define gxc#::basic-expression-top-level-type-bind-methods!
      (let ((__tmp130306
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-top-level-type::t
                  '%#begin-annotation
                  gxc#basic-expression-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-top-level-type::t
                  '%#call
                  gxc#basic-expression-type-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::basic-expression-top-level-type::t)))))
        (declare (not safe))
        (make-promise __tmp130306)))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx128175_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self128178_
                (let ((__obj130283
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj130283))
               (__tmp130307
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128178_ _stx128175_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130307
           gxc#current-compile-method
           _self128178_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp130310 (list gxc#::void::t))
            (__tmp130308
             (let ((__tmp130309
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130309 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp130310
         '()
         __tmp130308
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args128172_
        (apply make-instance gxc#::collect-type-info::t _$args128172_)))
    (define gxc#::collect-type-info-bind-methods!
      (let ((__tmp130311
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#define-values
                  gxc#collect-type-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#let-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#letrec-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#letrec*-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#call
                  gxc#collect-type-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-type-info::t)))))
        (declare (not safe))
        (make-promise __tmp130311)))
    (define gxc#apply-collect-type-info
      (lambda (_stx128164_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self128167_
                (let ((__obj130285
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj130285))
               (__tmp130312
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128167_ _stx128164_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130312
           gxc#current-compile-method
           _self128167_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp130315 (list gxc#::false::t))
            (__tmp130313
             (let ((__tmp130314
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130314 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp130315
         '()
         __tmp130313
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args128161_
        (apply make-instance gxc#::basic-expression-type::t _$args128161_)))
    (define gxc#::basic-expression-type-bind-methods!
      (let ((__tmp130316
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#begin
                  gxc#basic-expression-type-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#begin-annotation
                  gxc#basic-expression-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#lambda
                  gxc#basic-expression-type-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#case-lambda
                  gxc#basic-expression-type-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#let-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#letrec-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#letrec*-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#call
                  gxc#basic-expression-type-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#ref
                  gxc#basic-expression-type-ref%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::basic-expression-type::t)))))
        (declare (not safe))
        (make-promise __tmp130316)))
    (define gxc#apply-basic-expression-type
      (lambda (_stx128153_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self128156_
                (let ((__obj130287
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj130287))
               (__tmp130317
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128156_ _stx128153_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130317
           gxc#current-compile-method
           _self128156_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp130320 (list gxc#::basic-xform::t))
            (__tmp130318
             (let ((__tmp130319
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130319 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp130320
         '()
         __tmp130318
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args128150_
        (apply make-instance gxc#::lift-top-lambdas::t _$args128150_)))
    (define gxc#::lift-top-lambdas-bind-methods!
      (let ((__tmp130321
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#define-values
                  gxc#lift-top-lambda-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#let-values
                  gxc#lift-top-lambda-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#letrec-values
                  gxc#lift-top-lambda-letrec-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#letrec*-values
                  gxc#lift-top-lambda-letrec-values%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::lift-top-lambdas::t)))))
        (declare (not safe))
        (make-promise __tmp130321)))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx128142_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self128145_
                (let ((__obj130289
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj130289))
               (__tmp130322
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128145_ _stx128142_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130322
           gxc#current-compile-method
           _self128145_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self128044_ _stx128045_)
        (let* ((___stx128207128208_ _stx128045_)
               (_g128048128068_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128207128208_)))))
          (let ((___kont128209128210_
                 (lambda (_L128112_ _L128113_)
                   (let ((_sym128131_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128113_))))
                     (if (let ((__tmp130323 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130323 _sym128131_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128131_))
                         (let ((_type128132128134_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L128112_))))
                           (if _type128132128134_
                               (let ((_type128137_ _type128132128134_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym128131_
                                  _type128137_))
                               '#f))))))
                (___kont128211128212_ (lambda () '#!void)))
            (let ((___match128240128241_
                   (lambda (_e128054128080_
                            _hd128053128083_
                            _tl128052128085_
                            _e128057128088_
                            _hd128056128091_
                            _tl128055128093_
                            _e128060128096_
                            _hd128059128099_
                            _tl128058128101_
                            _e128063128104_
                            _hd128062128107_
                            _tl128061128109_)
                     (let ((_L128112_ _hd128062128107_)
                           (_L128113_ _hd128059128099_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128113_))
                           (___kont128209128210_ _L128112_ _L128113_)
                           (___kont128211128212_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128207128208_))
                  (let ((_e128054128080_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128207128208_))))
                    (let ((_tl128052128085_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128054128080_)))
                          (_hd128053128083_
                           (let ()
                             (declare (not safe))
                             (##car _e128054128080_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128052128085_))
                          (let ((_e128057128088_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128052128085_))))
                            (let ((_tl128055128093_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128057128088_)))
                                  (_hd128056128091_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128057128088_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128056128091_))
                                  (let ((_e128060128096_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128056128091_))))
                                    (let ((_tl128058128101_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128060128096_)))
                                          (_hd128059128099_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128060128096_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128058128101_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128055128093_))
                                              (let ((_e128063128104_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128055128093_))))
                                                (let ((_tl128061128109_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128063128104_)))
                                                      (_hd128062128107_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128063128104_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128061128109_))
                                                      (___match128240128241_
                                                       _e128054128080_
                                                       _hd128053128083_
                                                       _tl128052128085_
                                                       _e128057128088_
                                                       _hd128056128091_
                                                       _tl128055128093_
                                                       _e128060128096_
                                                       _hd128059128099_
                                                       _tl128058128101_
                                                       _e128063128104_
                                                       _hd128062128107_
                                                       _tl128061128109_)
                                                      (___kont128211128212_))))
                                              (___kont128211128212_))
                                          (___kont128211128212_))))
                                  (___kont128211128212_))))
                          (___kont128211128212_))))
                  (___kont128211128212_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self127899_ _stx127900_)
        (let* ((___stx128243128244_ _stx127900_)
               (_g127903127934_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128243128244_)))))
          (let ((___kont128245128246_
                 (lambda (_L128016_ _L128017_)
                   (let ((_sym128033_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128017_))))
                     (if (let ((__tmp130324 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130324 _sym128033_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128033_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym128033_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym128033_))
                             (let ((_type128034128036_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L128016_))))
                               (if _type128034128036_
                                   (let ((_type128039_ _type128034128036_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym128033_
                                      _type128039_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self127899_ _L128016_)))))
                (___kont128247128248_
                 (lambda (_L127963_ _L127964_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127899_ _L127963_)))))
            (let ((___match128276128277_
                   (lambda (_e127909127984_
                            _hd127908127987_
                            _tl127907127989_
                            _e127912127992_
                            _hd127911127995_
                            _tl127910127997_
                            _e127915128000_
                            _hd127914128003_
                            _tl127913128005_
                            _e127918128008_
                            _hd127917128011_
                            _tl127916128013_)
                     (let ((_L128016_ _hd127917128011_)
                           (_L128017_ _hd127914128003_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128017_))
                           (___kont128245128246_ _L128016_ _L128017_)
                           (___kont128247128248_
                            _hd127917128011_
                            _hd127911127995_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128243128244_))
                  (let ((_e127909127984_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128243128244_))))
                    (let ((_tl127907127989_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127909127984_)))
                          (_hd127908127987_
                           (let ()
                             (declare (not safe))
                             (##car _e127909127984_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127907127989_))
                          (let ((_e127912127992_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127907127989_))))
                            (let ((_tl127910127997_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127912127992_)))
                                  (_hd127911127995_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127912127992_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127911127995_))
                                  (let ((_e127915128000_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127911127995_))))
                                    (let ((_tl127913128005_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127915128000_)))
                                          (_hd127914128003_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127915128000_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127913128005_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127910127997_))
                                              (let ((_e127918128008_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127910127997_))))
                                                (let ((_tl127916128013_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127918128008_)))
                                                      (_hd127917128011_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127918128008_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127916128013_))
                                                      (___match128276128277_
                                                       _e127909127984_
                                                       _hd127908127987_
                                                       _tl127907127989_
                                                       _e127912127992_
                                                       _hd127911127995_
                                                       _tl127910127997_
                                                       _e127915128000_
                                                       _hd127914128003_
                                                       _tl127913128005_
                                                       _e127918128008_
                                                       _hd127917128011_
                                                       _tl127916128013_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127903127934_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127903127934_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127910127997_))
                                              (let ((_e127929127955_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127910127997_))))
                                                (let ((_tl127927127960_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127929127955_)))
                                                      (_hd127928127958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127929127955_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127927127960_))
                                                      (___kont128247128248_
                                                       _hd127928127958_
                                                       _hd127911127995_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127903127934_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127903127934_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127910127997_))
                                      (let ((_e127929127955_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127910127997_))))
                                        (let ((_tl127927127960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127929127955_)))
                                              (_hd127928127958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127929127955_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127927127960_))
                                              (___kont128247128248_
                                               _hd127928127958_
                                               _hd127911127995_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127903127934_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127903127934_))))))
                          (let () (declare (not safe)) (_g127903127934_)))))
                  (let () (declare (not safe)) (_g127903127934_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self127679_ _stx127680_)
        (letrec ((_collect-e127682_
                  (lambda (_hd127843_ _expr127844_)
                    (let* ((___stx128299128300_ _hd127843_)
                           (_g127847127857_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx128299128300_)))))
                      (let ((___kont128301128302_
                             (lambda (_L127877_)
                               (let ((_sym127888_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L127877_))))
                                 (if (let ((__tmp130325
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp130325 _sym127888_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym127888_))
                                     (let ((_type127889127891_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr127844_))))
                                       (if _type127889127891_
                                           (let ((_type127894_
                                                  _type127889127891_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym127888_
                                              _type127894_
                                              '#t))
                                           '#f))))))
                            (___kont128303128304_ (lambda () '#!void)))
                        (let ((___match128312128313_
                               (lambda (_e127852127869_
                                        _hd127851127872_
                                        _tl127850127874_)
                                 (let ((_L127877_ _hd127851127872_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L127877_))
                                       (___kont128301128302_ _L127877_)
                                       (___kont128303128304_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx128299128300_))
                              (let ((_e127852127869_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx128299128300_))))
                                (let ((_tl127850127874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127852127869_)))
                                      (_hd127851127872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127852127869_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127850127874_))
                                      (___match128312128313_
                                       _e127852127869_
                                       _hd127851127872_
                                       _tl127850127874_)
                                      (___kont128303128304_))))
                              (___kont128303128304_))))))))
          (let* ((_g127684127719_
                  (lambda (_g127685127716_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g127685127716_))))
                 (_g127683127840_
                  (lambda (_g127685127722_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g127685127722_))
                        (let ((_e127691127724_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g127685127722_))))
                          (let ((_hd127690127727_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127691127724_)))
                                (_tl127689127729_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127691127724_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl127689127729_))
                                (let ((_e127694127732_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl127689127729_))))
                                  (let ((_hd127693127735_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e127694127732_)))
                                        (_tl127692127737_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e127694127732_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd127693127735_))
                                        (let ((_g130326_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd127693127735_
                                                  '0))))
                                          (begin
                                            (let ((_g130327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g130326_)
                                                         (##vector-length
                                                          _g130326_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g130327_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g130327_)))
                                            (let ((_target127695127740_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130326_
                                                      0)))
                                                  (_tl127697127742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130326_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127697127742_))
                                                  (letrec ((_loop127698127745_
                                                            (lambda (_hd127696127748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr127702127750_
                             _hd127703127752_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127696127748_))
                          (let ((_e127699127755_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127696127748_))))
                            (let ((_lp-hd127700127758_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127699127755_)))
                                  (_lp-tl127701127760_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127699127755_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd127700127758_))
                                  (let ((_e127708127763_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd127700127758_))))
                                    (let ((_hd127707127766_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127708127763_)))
                                          (_tl127706127768_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127708127763_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127706127768_))
                                          (let ((_e127711127771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127706127768_))))
                                            (let ((_hd127710127774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127711127771_)))
                                                  (_tl127709127776_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127711127771_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127709127776_))
                                                  (let ((__tmp130332
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd127710127774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr127702127750_)))
                (__tmp130331
                 (let ()
                   (declare (not safe))
                   (cons _hd127707127766_ _hd127703127752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop127698127745_
                                                     _lp-tl127701127760_
                                                     __tmp130332
                                                     __tmp130331))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127684127719_
                                                     _g127685127722_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127684127719_
                                             _g127685127722_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127684127719_ _g127685127722_)))))
                          (let ((_expr127704127779_
                                 (reverse _expr127702127750_))
                                (_hd127705127781_ (reverse _hd127703127752_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl127692127737_))
                                (let ((_e127714127784_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl127692127737_))))
                                  (let ((_hd127713127787_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e127714127784_)))
                                        (_tl127712127789_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e127714127784_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127712127789_))
                                        ((lambda (_L127792_
                                                  _L127793_
                                                  _L127794_)
                                           (for-each
                                            _collect-e127682_
                                            (let ((__tmp130328
                                                   (lambda (_g127814127817_
                                                            _g127815127819_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127814127817_
                                                             _g127815127819_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130328
                                                      '()
                                                      _L127794_))
                                            (let ((__tmp130329
                                                   (lambda (_g127821127824_
                                                            _g127822127826_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127821127824_
                                                             _g127822127826_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130329
                                                      '()
                                                      _L127793_)))
                                           (for-each
                                            (lambda (_g127828127830_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self127679_
                                                 _g127828127830_)))
                                            (let ((__tmp130330
                                                   (lambda (_g127832127835_
                                                            _g127833127837_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127832127835_
                                                             _g127833127837_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130330
                                                      '()
                                                      _L127793_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self127679_
                                              _L127792_)))
                                         _hd127713127787_
                                         _expr127704127779_
                                         _hd127705127781_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127684127719_ _g127685127722_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127684127719_ _g127685127722_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop127698127745_
                                                       _target127695127740_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127684127719_
                                                     _g127685127722_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g127684127719_ _g127685127722_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127684127719_ _g127685127722_)))))
                        (let ()
                          (declare (not safe))
                          (_g127684127719_ _g127685127722_))))))
            (declare (not safe))
            (_g127683127840_ _stx127680_)))))
    (define gxc#collect-type-call%
      (lambda (_self127166_ _stx127167_)
        (let* ((___stx128315128316_ _stx127167_)
               (_g127171127286_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128315128316_)))))
          (let ((___kont128317128318_
                 (lambda (_L127629_ _L127630_ _L127631_ _L127632_ _L127633_)
                   (let ((__tmp130336
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127632_)))
                         (__tmp130335
                          (let () (declare (not safe)) (gx#stx-e _L127631_)))
                         (__tmp130334
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127630_)))
                         (__tmp130333
                          (let () (declare (not safe)) (gx#stx-e _L127629_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130336
                      __tmp130335
                      __tmp130334
                      __tmp130333))))
                (___kont128319128320_
                 (lambda (_L127457_ _L127458_ _L127459_ _L127460_)
                   (let ((__tmp130339
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127459_)))
                         (__tmp130338
                          (let () (declare (not safe)) (gx#stx-e _L127458_)))
                         (__tmp130337
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127457_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130339
                      __tmp130338
                      __tmp130337
                      '#f))))
                (___kont128321128322_
                 (lambda (_L127323_)
                   (for-each
                    (lambda (_g127336127338_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self127166_ _g127336127338_)))
                    (let ((__tmp130340
                           (lambda (_g127340127343_ _g127341127345_)
                             (let ()
                               (declare (not safe))
                               (cons _g127340127343_ _g127341127345_)))))
                      (declare (not safe))
                      (foldr1 __tmp130340 '() _L127323_))))))
            (let* ((___match128572128573_
                    (lambda (_e127272127291_
                             _hd127271127294_
                             _tl127270127296_
                             ___splice128323128324_
                             _target127273127299_
                             _tl127275127301_)
                      (letrec ((_loop127276127304_
                                (lambda (_hd127274127307_ _expr127280127309_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127274127307_))
                                      (let ((_e127277127312_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127274127307_))))
                                        (let ((_lp-tl127279127317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127277127312_)))
                                              (_lp-hd127278127315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127277127312_))))
                                          (let ((__tmp130341
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127278127315_
                                                         _expr127280127309_))))
                                            (declare (not safe))
                                            (_loop127276127304_
                                             _lp-tl127279127317_
                                             __tmp130341))))
                                      (let ((_expr127281127320_
                                             (reverse _expr127280127309_)))
                                        (___kont128321128322_
                                         _expr127281127320_))))))
                        (let ()
                          (declare (not safe))
                          (_loop127276127304_ _target127273127299_ '())))))
                   (___match128452128453_
                    (lambda (_e127180127501_
                             _hd127179127504_
                             _tl127178127506_
                             _e127183127509_
                             _hd127182127512_
                             _tl127181127514_
                             _e127186127517_
                             _hd127185127520_
                             _tl127184127522_
                             _e127189127525_
                             _hd127188127528_
                             _tl127187127530_
                             _e127192127533_
                             _hd127191127536_
                             _tl127190127538_
                             _e127195127541_
                             _hd127194127544_
                             _tl127193127546_
                             _e127198127549_
                             _hd127197127552_
                             _tl127196127554_
                             _e127201127557_
                             _hd127200127560_
                             _tl127199127562_
                             _e127204127565_
                             _hd127203127568_
                             _tl127202127570_
                             _e127207127573_
                             _hd127206127576_
                             _tl127205127578_
                             _e127210127581_
                             _hd127209127584_
                             _tl127208127586_
                             _e127213127589_
                             _hd127212127592_
                             _tl127211127594_
                             _e127216127597_
                             _hd127215127600_
                             _tl127214127602_
                             _e127219127605_
                             _hd127218127608_
                             _tl127217127610_
                             _e127222127613_
                             _hd127221127616_
                             _tl127220127618_
                             _e127225127621_
                             _hd127224127624_
                             _tl127223127626_)
                      (let ((_L127629_ _hd127224127624_)
                            (_L127630_ _hd127215127600_)
                            (_L127631_ _hd127206127576_)
                            (_L127632_ _hd127197127552_)
                            (_L127633_ _hd127188127528_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L127633_
                               'bind-method!))
                            (___kont128317128318_
                             _L127629_
                             _L127630_
                             _L127631_
                             _L127632_
                             _L127633_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl127178127506_))
                                (let ((___splice128323128324_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl127178127506_
                                          '0))))
                                  (let ((_tl127275127301_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128323128324_
                                            '1)))
                                        (_target127273127299_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128323128324_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127275127301_))
                                        (___match128572128573_
                                         _e127180127501_
                                         _hd127179127504_
                                         _tl127178127506_
                                         ___splice128323128324_
                                         _target127273127299_
                                         _tl127275127301_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127171127286_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127171127286_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128315128316_))
                  (let ((_e127180127501_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128315128316_))))
                    (let ((_tl127178127506_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127180127501_)))
                          (_hd127179127504_
                           (let ()
                             (declare (not safe))
                             (##car _e127180127501_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127178127506_))
                          (let ((_e127183127509_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127178127506_))))
                            (let ((_tl127181127514_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127183127509_)))
                                  (_hd127182127512_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127183127509_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127182127512_))
                                  (let ((_e127186127517_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127182127512_))))
                                    (let ((_tl127184127522_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127186127517_)))
                                          (_hd127185127520_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127186127517_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd127185127520_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd127185127520_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127184127522_))
                                                  (let ((_e127189127525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127184127522_))))
                                                    (let ((_tl127187127530_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127189127525_)))
                                                          (_hd127188127528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127189127525_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127187127530_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl127181127514_))
                      (let ((_e127192127533_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127181127514_))))
                        (let ((_tl127190127538_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127192127533_)))
                              (_hd127191127536_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127192127533_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd127191127536_))
                              (let ((_e127195127541_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd127191127536_))))
                                (let ((_tl127193127546_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127195127541_)))
                                      (_hd127194127544_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127195127541_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd127194127544_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd127194127544_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127193127546_))
                                              (let ((_e127198127549_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127193127546_))))
                                                (let ((_tl127196127554_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127198127549_)))
                                                      (_hd127197127552_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127198127549_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127196127554_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl127190127538_))
                                                          (let ((_e127201127557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl127190127538_))))
                    (let ((_tl127199127562_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127201127557_)))
                          (_hd127200127560_
                           (let ()
                             (declare (not safe))
                             (##car _e127201127557_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127200127560_))
                          (let ((_e127204127565_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127200127560_))))
                            (let ((_tl127202127570_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127204127565_)))
                                  (_hd127203127568_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127204127565_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd127203127568_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd127203127568_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127202127570_))
                                          (let ((_e127207127573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127202127570_))))
                                            (let ((_tl127205127578_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127207127573_)))
                                                  (_hd127206127576_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127207127573_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127205127578_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127199127562_))
                                                      (let ((_e127210127581_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127199127562_))))
                (let ((_tl127208127586_
                       (let () (declare (not safe)) (##cdr _e127210127581_)))
                      (_hd127209127584_
                       (let () (declare (not safe)) (##car _e127210127581_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd127209127584_))
                      (let ((_e127213127589_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd127209127584_))))
                        (let ((_tl127211127594_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127213127589_)))
                              (_hd127212127592_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127213127589_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd127212127592_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd127212127592_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127211127594_))
                                      (let ((_e127216127597_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127211127594_))))
                                        (let ((_tl127214127602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127216127597_)))
                                              (_hd127215127600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127216127597_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127214127602_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127208127586_))
                                                  (let ((_e127219127605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127208127586_))))
                                                    (let ((_tl127217127610_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127219127605_)))
                                                          (_hd127218127608_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127219127605_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd127218127608_))
                                                          (let ((_e127222127613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd127218127608_))))
                    (let ((_tl127220127618_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127222127613_)))
                          (_hd127221127616_
                           (let ()
                             (declare (not safe))
                             (##car _e127222127613_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd127221127616_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd127221127616_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl127220127618_))
                                  (let ((_e127225127621_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl127220127618_))))
                                    (let ((_tl127223127626_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127225127621_)))
                                          (_hd127224127624_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127225127621_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127223127626_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127217127610_))
                                              (___match128452128453_
                                               _e127180127501_
                                               _hd127179127504_
                                               _tl127178127506_
                                               _e127183127509_
                                               _hd127182127512_
                                               _tl127181127514_
                                               _e127186127517_
                                               _hd127185127520_
                                               _tl127184127522_
                                               _e127189127525_
                                               _hd127188127528_
                                               _tl127187127530_
                                               _e127192127533_
                                               _hd127191127536_
                                               _tl127190127538_
                                               _e127195127541_
                                               _hd127194127544_
                                               _tl127193127546_
                                               _e127198127549_
                                               _hd127197127552_
                                               _tl127196127554_
                                               _e127201127557_
                                               _hd127200127560_
                                               _tl127199127562_
                                               _e127204127565_
                                               _hd127203127568_
                                               _tl127202127570_
                                               _e127207127573_
                                               _hd127206127576_
                                               _tl127205127578_
                                               _e127210127581_
                                               _hd127209127584_
                                               _tl127208127586_
                                               _e127213127589_
                                               _hd127212127592_
                                               _tl127211127594_
                                               _e127216127597_
                                               _hd127215127600_
                                               _tl127214127602_
                                               _e127219127605_
                                               _hd127218127608_
                                               _tl127217127610_
                                               _e127222127613_
                                               _hd127221127616_
                                               _tl127220127618_
                                               _e127225127621_
                                               _hd127224127624_
                                               _tl127223127626_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127178127506_))
                                                  (let ((___splice128323128324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127178127506_
                                                            '0))))
                                                    (let ((_tl127275127301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128323128324_
                                                              '1)))
                                                          (_target127273127299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128323128324_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127275127301_))
                                                          (___match128572128573_
                                                           _e127180127501_
                                                           _hd127179127504_
                                                           _tl127178127506_
                                                           ___splice128323128324_
                                                           _target127273127299_
                                                           _tl127275127301_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127171127286_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127171127286_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127178127506_))
                                              (let ((___splice128323128324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127178127506_
                                                        '0))))
                                                (let ((_tl127275127301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128323128324_
                                                          '1)))
                                                      (_target127273127299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128323128324_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127275127301_))
                                                      (___match128572128573_
                                                       _e127180127501_
                                                       _hd127179127504_
                                                       _tl127178127506_
                                                       ___splice128323128324_
                                                       _target127273127299_
                                                       _tl127275127301_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127171127286_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127171127286_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127178127506_))
                                      (let ((___splice128323128324_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127178127506_
                                                '0))))
                                        (let ((_tl127275127301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128323128324_
                                                  '1)))
                                              (_target127273127299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128323128324_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127275127301_))
                                              (___match128572128573_
                                               _e127180127501_
                                               _hd127179127504_
                                               _tl127178127506_
                                               ___splice128323128324_
                                               _target127273127299_
                                               _tl127275127301_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127171127286_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127171127286_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127178127506_))
                                  (let ((___splice128323128324_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127178127506_
                                            '0))))
                                    (let ((_tl127275127301_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128323128324_
                                              '1)))
                                          (_target127273127299_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128323128324_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127275127301_))
                                          (___match128572128573_
                                           _e127180127501_
                                           _hd127179127504_
                                           _tl127178127506_
                                           ___splice128323128324_
                                           _target127273127299_
                                           _tl127275127301_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127171127286_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127171127286_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127178127506_))
                              (let ((___splice128323128324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127178127506_
                                        '0))))
                                (let ((_tl127275127301_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128323128324_
                                          '1)))
                                      (_target127273127299_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128323128324_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127275127301_))
                                      (___match128572128573_
                                       _e127180127501_
                                       _hd127179127504_
                                       _tl127178127506_
                                       ___splice128323128324_
                                       _target127273127299_
                                       _tl127275127301_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127171127286_)))))
                              (let ()
                                (declare (not safe))
                                (_g127171127286_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127178127506_))
                      (let ((___splice128323128324_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127178127506_ '0))))
                        (let ((_tl127275127301_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128323128324_ '1)))
                              (_target127273127299_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128323128324_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127275127301_))
                              (___match128572128573_
                               _e127180127501_
                               _hd127179127504_
                               _tl127178127506_
                               ___splice128323128324_
                               _target127273127299_
                               _tl127275127301_)
                              (let ()
                                (declare (not safe))
                                (_g127171127286_)))))
                      (let () (declare (not safe)) (_g127171127286_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127208127586_))
                                                      (if (let ((__tmp130342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp130342 'bind-method!))
                  (let ((_L127457_ _hd127215127600_)
                        (_L127458_ _hd127206127576_)
                        (_L127459_ _hd127197127552_)
                        (_L127460_ _hd127188127528_))
                    (___kont128319128320_
                     _L127457_
                     _L127458_
                     _L127459_
                     _L127460_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127178127506_))
                      (let ((___splice128323128324_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127178127506_ '0))))
                        (let ((_tl127275127301_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128323128324_ '1)))
                              (_target127273127299_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128323128324_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127275127301_))
                              (___match128572128573_
                               _e127180127501_
                               _hd127179127504_
                               _tl127178127506_
                               ___splice128323128324_
                               _target127273127299_
                               _tl127275127301_)
                              (let ()
                                (declare (not safe))
                                (_g127171127286_)))))
                      (let () (declare (not safe)) (_g127171127286_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127178127506_))
                  (let ((___splice128323128324_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127178127506_ '0))))
                    (let ((_tl127275127301_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128323128324_ '1)))
                          (_target127273127299_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128323128324_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127275127301_))
                          (___match128572128573_
                           _e127180127501_
                           _hd127179127504_
                           _tl127178127506_
                           ___splice128323128324_
                           _target127273127299_
                           _tl127275127301_)
                          (let () (declare (not safe)) (_g127171127286_)))))
                  (let () (declare (not safe)) (_g127171127286_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127178127506_))
                                                  (let ((___splice128323128324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127178127506_
                                                            '0))))
                                                    (let ((_tl127275127301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128323128324_
                                                              '1)))
                                                          (_target127273127299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128323128324_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127275127301_))
                                                          (___match128572128573_
                                                           _e127180127501_
                                                           _hd127179127504_
                                                           _tl127178127506_
                                                           ___splice128323128324_
                                                           _target127273127299_
                                                           _tl127275127301_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127171127286_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127171127286_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127178127506_))
                                          (let ((___splice128323128324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127178127506_
                                                    '0))))
                                            (let ((_tl127275127301_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128323128324_
                                                      '1)))
                                                  (_target127273127299_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128323128324_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127275127301_))
                                                  (___match128572128573_
                                                   _e127180127501_
                                                   _hd127179127504_
                                                   _tl127178127506_
                                                   ___splice128323128324_
                                                   _target127273127299_
                                                   _tl127275127301_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127171127286_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127171127286_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127178127506_))
                                      (let ((___splice128323128324_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127178127506_
                                                '0))))
                                        (let ((_tl127275127301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128323128324_
                                                  '1)))
                                              (_target127273127299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128323128324_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127275127301_))
                                              (___match128572128573_
                                               _e127180127501_
                                               _hd127179127504_
                                               _tl127178127506_
                                               ___splice128323128324_
                                               _target127273127299_
                                               _tl127275127301_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127171127286_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127171127286_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127178127506_))
                                  (let ((___splice128323128324_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127178127506_
                                            '0))))
                                    (let ((_tl127275127301_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128323128324_
                                              '1)))
                                          (_target127273127299_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128323128324_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127275127301_))
                                          (___match128572128573_
                                           _e127180127501_
                                           _hd127179127504_
                                           _tl127178127506_
                                           ___splice128323128324_
                                           _target127273127299_
                                           _tl127275127301_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127171127286_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127171127286_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127178127506_))
                          (let ((___splice128323128324_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127178127506_
                                    '0))))
                            (let ((_tl127275127301_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128323128324_ '1)))
                                  (_target127273127299_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128323128324_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127275127301_))
                                  (___match128572128573_
                                   _e127180127501_
                                   _hd127179127504_
                                   _tl127178127506_
                                   ___splice128323128324_
                                   _target127273127299_
                                   _tl127275127301_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127171127286_)))))
                          (let () (declare (not safe)) (_g127171127286_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127178127506_))
                  (let ((___splice128323128324_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127178127506_ '0))))
                    (let ((_tl127275127301_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128323128324_ '1)))
                          (_target127273127299_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128323128324_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127275127301_))
                          (___match128572128573_
                           _e127180127501_
                           _hd127179127504_
                           _tl127178127506_
                           ___splice128323128324_
                           _target127273127299_
                           _tl127275127301_)
                          (let () (declare (not safe)) (_g127171127286_)))))
                  (let () (declare (not safe)) (_g127171127286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127178127506_))
                                                      (let ((___splice128323128324_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127178127506_ '0))))
                (let ((_tl127275127301_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128323128324_ '1)))
                      (_target127273127299_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128323128324_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127275127301_))
                      (___match128572128573_
                       _e127180127501_
                       _hd127179127504_
                       _tl127178127506_
                       ___splice128323128324_
                       _target127273127299_
                       _tl127275127301_)
                      (let () (declare (not safe)) (_g127171127286_)))))
              (let () (declare (not safe)) (_g127171127286_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127178127506_))
                                              (let ((___splice128323128324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127178127506_
                                                        '0))))
                                                (let ((_tl127275127301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128323128324_
                                                          '1)))
                                                      (_target127273127299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128323128324_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127275127301_))
                                                      (___match128572128573_
                                                       _e127180127501_
                                                       _hd127179127504_
                                                       _tl127178127506_
                                                       ___splice128323128324_
                                                       _target127273127299_
                                                       _tl127275127301_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127171127286_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127171127286_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127178127506_))
                                          (let ((___splice128323128324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127178127506_
                                                    '0))))
                                            (let ((_tl127275127301_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128323128324_
                                                      '1)))
                                                  (_target127273127299_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128323128324_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127275127301_))
                                                  (___match128572128573_
                                                   _e127180127501_
                                                   _hd127179127504_
                                                   _tl127178127506_
                                                   ___splice128323128324_
                                                   _target127273127299_
                                                   _tl127275127301_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127171127286_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127171127286_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127178127506_))
                                      (let ((___splice128323128324_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127178127506_
                                                '0))))
                                        (let ((_tl127275127301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128323128324_
                                                  '1)))
                                              (_target127273127299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128323128324_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127275127301_))
                                              (___match128572128573_
                                               _e127180127501_
                                               _hd127179127504_
                                               _tl127178127506_
                                               ___splice128323128324_
                                               _target127273127299_
                                               _tl127275127301_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127171127286_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127171127286_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127178127506_))
                              (let ((___splice128323128324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127178127506_
                                        '0))))
                                (let ((_tl127275127301_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128323128324_
                                          '1)))
                                      (_target127273127299_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128323128324_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127275127301_))
                                      (___match128572128573_
                                       _e127180127501_
                                       _hd127179127504_
                                       _tl127178127506_
                                       ___splice128323128324_
                                       _target127273127299_
                                       _tl127275127301_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127171127286_)))))
                              (let ()
                                (declare (not safe))
                                (_g127171127286_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127178127506_))
                      (let ((___splice128323128324_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127178127506_ '0))))
                        (let ((_tl127275127301_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128323128324_ '1)))
                              (_target127273127299_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128323128324_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127275127301_))
                              (___match128572128573_
                               _e127180127501_
                               _hd127179127504_
                               _tl127178127506_
                               ___splice128323128324_
                               _target127273127299_
                               _tl127275127301_)
                              (let ()
                                (declare (not safe))
                                (_g127171127286_)))))
                      (let () (declare (not safe)) (_g127171127286_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127178127506_))
                  (let ((___splice128323128324_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127178127506_ '0))))
                    (let ((_tl127275127301_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128323128324_ '1)))
                          (_target127273127299_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128323128324_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127275127301_))
                          (___match128572128573_
                           _e127180127501_
                           _hd127179127504_
                           _tl127178127506_
                           ___splice128323128324_
                           _target127273127299_
                           _tl127275127301_)
                          (let () (declare (not safe)) (_g127171127286_)))))
                  (let () (declare (not safe)) (_g127171127286_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127178127506_))
                                                  (let ((___splice128323128324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127178127506_
                                                            '0))))
                                                    (let ((_tl127275127301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128323128324_
                                                              '1)))
                                                          (_target127273127299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128323128324_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127275127301_))
                                                          (___match128572128573_
                                                           _e127180127501_
                                                           _hd127179127504_
                                                           _tl127178127506_
                                                           ___splice128323128324_
                                                           _target127273127299_
                                                           _tl127275127301_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127171127286_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127171127286_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127178127506_))
                                              (let ((___splice128323128324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127178127506_
                                                        '0))))
                                                (let ((_tl127275127301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128323128324_
                                                          '1)))
                                                      (_target127273127299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128323128324_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127275127301_))
                                                      (___match128572128573_
                                                       _e127180127501_
                                                       _hd127179127504_
                                                       _tl127178127506_
                                                       ___splice128323128324_
                                                       _target127273127299_
                                                       _tl127275127301_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127171127286_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127171127286_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127178127506_))
                                          (let ((___splice128323128324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127178127506_
                                                    '0))))
                                            (let ((_tl127275127301_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128323128324_
                                                      '1)))
                                                  (_target127273127299_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128323128324_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127275127301_))
                                                  (___match128572128573_
                                                   _e127180127501_
                                                   _hd127179127504_
                                                   _tl127178127506_
                                                   ___splice128323128324_
                                                   _target127273127299_
                                                   _tl127275127301_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127171127286_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127171127286_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127178127506_))
                                  (let ((___splice128323128324_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127178127506_
                                            '0))))
                                    (let ((_tl127275127301_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128323128324_
                                              '1)))
                                          (_target127273127299_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128323128324_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127275127301_))
                                          (___match128572128573_
                                           _e127180127501_
                                           _hd127179127504_
                                           _tl127178127506_
                                           ___splice128323128324_
                                           _target127273127299_
                                           _tl127275127301_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127171127286_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127171127286_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127178127506_))
                          (let ((___splice128323128324_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127178127506_
                                    '0))))
                            (let ((_tl127275127301_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128323128324_ '1)))
                                  (_target127273127299_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128323128324_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127275127301_))
                                  (___match128572128573_
                                   _e127180127501_
                                   _hd127179127504_
                                   _tl127178127506_
                                   ___splice128323128324_
                                   _target127273127299_
                                   _tl127275127301_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127171127286_)))))
                          (let () (declare (not safe)) (_g127171127286_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127178127506_))
                      (let ((___splice128323128324_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127178127506_ '0))))
                        (let ((_tl127275127301_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128323128324_ '1)))
                              (_target127273127299_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128323128324_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127275127301_))
                              (___match128572128573_
                               _e127180127501_
                               _hd127179127504_
                               _tl127178127506_
                               ___splice128323128324_
                               _target127273127299_
                               _tl127275127301_)
                              (let ()
                                (declare (not safe))
                                (_g127171127286_)))))
                      (let () (declare (not safe)) (_g127171127286_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127178127506_))
                                                      (let ((___splice128323128324_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127178127506_ '0))))
                (let ((_tl127275127301_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128323128324_ '1)))
                      (_target127273127299_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128323128324_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127275127301_))
                      (___match128572128573_
                       _e127180127501_
                       _hd127179127504_
                       _tl127178127506_
                       ___splice128323128324_
                       _target127273127299_
                       _tl127275127301_)
                      (let () (declare (not safe)) (_g127171127286_)))))
              (let () (declare (not safe)) (_g127171127286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127178127506_))
                                                  (let ((___splice128323128324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127178127506_
                                                            '0))))
                                                    (let ((_tl127275127301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128323128324_
                                                              '1)))
                                                          (_target127273127299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128323128324_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127275127301_))
                                                          (___match128572128573_
                                                           _e127180127501_
                                                           _hd127179127504_
                                                           _tl127178127506_
                                                           ___splice128323128324_
                                                           _target127273127299_
                                                           _tl127275127301_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127171127286_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127171127286_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127178127506_))
                                              (let ((___splice128323128324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127178127506_
                                                        '0))))
                                                (let ((_tl127275127301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128323128324_
                                                          '1)))
                                                      (_target127273127299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128323128324_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127275127301_))
                                                      (___match128572128573_
                                                       _e127180127501_
                                                       _hd127179127504_
                                                       _tl127178127506_
                                                       ___splice128323128324_
                                                       _target127273127299_
                                                       _tl127275127301_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127171127286_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127171127286_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127178127506_))
                                      (let ((___splice128323128324_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127178127506_
                                                '0))))
                                        (let ((_tl127275127301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128323128324_
                                                  '1)))
                                              (_target127273127299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128323128324_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127275127301_))
                                              (___match128572128573_
                                               _e127180127501_
                                               _hd127179127504_
                                               _tl127178127506_
                                               ___splice128323128324_
                                               _target127273127299_
                                               _tl127275127301_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127171127286_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127171127286_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127178127506_))
                              (let ((___splice128323128324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127178127506_
                                        '0))))
                                (let ((_tl127275127301_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128323128324_
                                          '1)))
                                      (_target127273127299_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128323128324_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127275127301_))
                                      (___match128572128573_
                                       _e127180127501_
                                       _hd127179127504_
                                       _tl127178127506_
                                       ___splice128323128324_
                                       _target127273127299_
                                       _tl127275127301_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127171127286_)))))
                              (let ()
                                (declare (not safe))
                                (_g127171127286_))))))
                  (let () (declare (not safe)) (_g127171127286_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self127105_ _stx127106_)
        (let* ((___stx128575128576_ _stx127106_)
               (_g127109127122_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128575128576_)))))
          (let ((___kont128577128578_
                 (lambda (_L127150_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127105_ _L127150_))))
                (___kont128579128580_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128575128576_))
                (let ((_e127114127134_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128575128576_))))
                  (let ((_tl127112127139_
                         (let () (declare (not safe)) (##cdr _e127114127134_)))
                        (_hd127113127137_
                         (let ()
                           (declare (not safe))
                           (##car _e127114127134_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl127112127139_))
                        (let ((_e127117127142_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl127112127139_))))
                          (let ((_tl127115127147_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127117127142_)))
                                (_hd127116127145_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127117127142_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl127115127147_))
                                (___kont128577128578_ _hd127116127145_)
                                (___kont128579128580_))))
                        (___kont128579128580_))))
                (___kont128579128580_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self126984_ _stx126985_)
        (let* ((_g126987127004_
                (lambda (_g126988127001_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126988127001_))))
               (_g126986127102_
                (lambda (_g126988127007_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126988127007_))
                      (let ((_e126993127009_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126988127007_))))
                        (let ((_hd126992127012_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126993127009_)))
                              (_tl126991127014_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126993127009_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126991127014_))
                              (let ((_e126996127017_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126991127014_))))
                                (let ((_hd126995127020_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126996127017_)))
                                      (_tl126994127022_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126996127017_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126994127022_))
                                      (let ((_e126999127025_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126994127022_))))
                                        (let ((_hd126998127028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126999127025_)))
                                              (_tl126997127030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126999127025_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126997127030_))
                                              ((lambda (_L127033_ _L127034_)
                                                 (let* ((___stx128597128598_
                                                         _L127034_)
                                                        (_g127050127061_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx128597128598_)))))
                                                   (let ((___kont128599128600_
                                                          (lambda (_L127081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L127082_)
                    (let ((_$e127094_
                           (let ((__tmp130343
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L127082_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp130343))))
                      (if _$e127094_
                          ((lambda (_type-e127097_)
                             (_type-e127097_ _stx126985_ _L127034_))
                           _$e127094_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self126984_ _L127033_))))))
                 (___kont128601128602_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self126984_ _L127033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match128608128609_
                                                            (lambda (_e127056127073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd127055127076_
                             _tl127054127078_)
                      (let ((_L127081_ _tl127054127078_)
                            (_L127082_ _hd127055127076_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L127082_))
                            (___kont128599128600_ _L127081_ _L127082_)
                            (___kont128601128602_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx128597128598_))
                   (let ((_e127056127073_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx128597128598_))))
                     (let ((_tl127054127078_
                            (let ()
                              (declare (not safe))
                              (##cdr _e127056127073_)))
                           (_hd127055127076_
                            (let ()
                              (declare (not safe))
                              (##car _e127056127073_))))
                       (___match128608128609_
                        _e127056127073_
                        _hd127055127076_
                        _tl127054127078_)))
                   (___kont128601128602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd126998127028_
                                               _hd126995127020_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126987127004_
                                                 _g126988127007_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126987127004_ _g126988127007_)))))
                              (let ()
                                (declare (not safe))
                                (_g126987127004_ _g126988127007_)))))
                      (let ()
                        (declare (not safe))
                        (_g126987127004_ _g126988127007_))))))
          (declare (not safe))
          (_g126986127102_ _stx126985_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx126828_ _ann126829_)
        (let* ((_g126831126868_
                (lambda (_g126832126865_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126832126865_))))
               (_g126830126981_
                (lambda (_g126832126871_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126832126871_))
                      (let ((_e126842126873_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126832126871_))))
                        (let ((_hd126841126876_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126842126873_)))
                              (_tl126840126878_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126842126873_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126840126878_))
                              (let ((_e126845126881_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126840126878_))))
                                (let ((_hd126844126884_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126845126881_)))
                                      (_tl126843126886_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126845126881_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126843126886_))
                                      (let ((_e126848126889_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126843126886_))))
                                        (let ((_hd126847126892_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126848126889_)))
                                              (_tl126846126894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126848126889_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126846126894_))
                                              (let ((_e126851126897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126846126894_))))
                                                (let ((_hd126850126900_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126851126897_)))
                                                      (_tl126849126902_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126851126897_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126849126902_))
                                                      (let ((_e126854126905_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126849126902_))))
                (let ((_hd126853126908_
                       (let () (declare (not safe)) (##car _e126854126905_)))
                      (_tl126852126910_
                       (let () (declare (not safe)) (##cdr _e126854126905_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl126852126910_))
                      (let ((_e126857126913_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126852126910_))))
                        (let ((_hd126856126916_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126857126913_)))
                              (_tl126855126918_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126857126913_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126855126918_))
                              (let ((_e126860126921_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126855126918_))))
                                (let ((_hd126859126924_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126860126921_)))
                                      (_tl126858126926_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126860126921_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126858126926_))
                                      (let ((_e126863126929_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126858126926_))))
                                        (let ((_hd126862126932_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126863126929_)))
                                              (_tl126861126934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126863126929_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126861126934_))
                                              ((lambda (_L126937_
                                                        _L126938_
                                                        _L126939_
                                                        _L126940_
                                                        _L126941_
                                                        _L126942_
                                                        _L126943_)
                                                 (let ((_type-id126973_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126943_)))
                                                       (_super126974_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L126942_)))
                                                       (_slots126975_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L126941_)))
                                                       (_ctor-method126976_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126940_)))
                                                       (_struct?126977_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126939_)))
                                                       (_final?126978_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126938_)))
                                                       (_metaclass126979_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L126937_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L126937_))
                                                            '#f)))
                                                   (let ((__obj130290
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
                                                             '#f
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj130290
                                                      _type-id126973_
                                                      _super126974_
                                                      _slots126975_
                                                      _ctor-method126976_
                                                      _struct?126977_
                                                      _final?126978_
                                                      '#f
                                                      _metaclass126979_)
                                                     __obj130290)))
                                               _hd126862126932_
                                               _hd126859126924_
                                               _hd126856126916_
                                               _hd126853126908_
                                               _hd126850126900_
                                               _hd126847126892_
                                               _hd126844126884_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126831126868_
                                                 _g126832126871_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126831126868_ _g126832126871_)))))
                              (let ()
                                (declare (not safe))
                                (_g126831126868_ _g126832126871_)))))
                      (let ()
                        (declare (not safe))
                        (_g126831126868_ _g126832126871_)))))
              (let ()
                (declare (not safe))
                (_g126831126868_ _g126832126871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126831126868_
                                                 _g126832126871_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126831126868_ _g126832126871_)))))
                              (let ()
                                (declare (not safe))
                                (_g126831126868_ _g126832126871_)))))
                      (let ()
                        (declare (not safe))
                        (_g126831126868_ _g126832126871_))))))
          (declare (not safe))
          (_g126830126981_ _ann126829_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx126757_ _ann126758_)
        (let* ((_g126760126777_
                (lambda (_g126761126774_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126761126774_))))
               (_g126759126825_
                (lambda (_g126761126780_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126761126780_))
                      (let ((_e126766126782_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126761126780_))))
                        (let ((_hd126765126785_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126766126782_)))
                              (_tl126764126787_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126766126782_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126764126787_))
                              (let ((_e126769126790_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126764126787_))))
                                (let ((_hd126768126793_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126769126790_)))
                                      (_tl126767126795_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126769126790_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126767126795_))
                                      (let ((_e126772126798_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126767126795_))))
                                        (let ((_hd126771126801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126772126798_)))
                                              (_tl126770126803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126772126798_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126770126803_))
                                              ((lambda (_L126806_ _L126807_)
                                                 (let ((_type-id126822_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126807_)))
                                                       (_super126823_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L126806_))))
                                                   (let ((__obj130291
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
                                                             '#f
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj130291
                                                      _type-id126822_
                                                      _super126823_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj130291)))
                                               _hd126771126801_
                                               _hd126768126793_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126760126777_
                                                 _g126761126780_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126760126777_ _g126761126780_)))))
                              (let ()
                                (declare (not safe))
                                (_g126760126777_ _g126761126780_)))))
                      (let ()
                        (declare (not safe))
                        (_g126760126777_ _g126761126780_))))))
          (declare (not safe))
          (_g126759126825_ _ann126758_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx126705_ _ann126706_)
        (let* ((_g126708126721_
                (lambda (_g126709126718_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126709126718_))))
               (_g126707126754_
                (lambda (_g126709126724_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126709126724_))
                      (let ((_e126713126726_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126709126724_))))
                        (let ((_hd126712126729_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126713126726_)))
                              (_tl126711126731_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126713126726_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126711126731_))
                              (let ((_e126716126734_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126711126731_))))
                                (let ((_hd126715126737_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126716126734_)))
                                      (_tl126714126739_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126716126734_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126714126739_))
                                      ((lambda (_L126742_)
                                         (let ((__tmp130344
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L126742_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp130344)))
                                       _hd126715126737_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126708126721_ _g126709126724_)))))
                              (let ()
                                (declare (not safe))
                                (_g126708126721_ _g126709126724_)))))
                      (let ()
                        (declare (not safe))
                        (_g126708126721_ _g126709126724_))))))
          (declare (not safe))
          (_g126707126754_ _ann126706_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx126653_ _ann126654_)
        (let* ((_g126656126669_
                (lambda (_g126657126666_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126657126666_))))
               (_g126655126702_
                (lambda (_g126657126672_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126657126672_))
                      (let ((_e126661126674_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126657126672_))))
                        (let ((_hd126660126677_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126661126674_)))
                              (_tl126659126679_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126661126674_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126659126679_))
                              (let ((_e126664126682_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126659126679_))))
                                (let ((_hd126663126685_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126664126682_)))
                                      (_tl126662126687_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126664126682_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126662126687_))
                                      ((lambda (_L126690_)
                                         (let ((__tmp130345
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L126690_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp130345)))
                                       _hd126663126685_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126656126669_ _g126657126672_)))))
                              (let ()
                                (declare (not safe))
                                (_g126656126669_ _g126657126672_)))))
                      (let ()
                        (declare (not safe))
                        (_g126656126669_ _g126657126672_))))))
          (declare (not safe))
          (_g126655126702_ _ann126654_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx126569_ _ann126570_)
        (let* ((_g126572126593_
                (lambda (_g126573126590_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126573126590_))))
               (_g126571126650_
                (lambda (_g126573126596_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126573126596_))
                      (let ((_e126579126598_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126573126596_))))
                        (let ((_hd126578126601_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126579126598_)))
                              (_tl126577126603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126579126598_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126577126603_))
                              (let ((_e126582126606_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126577126603_))))
                                (let ((_hd126581126609_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126582126606_)))
                                      (_tl126580126611_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126582126606_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126580126611_))
                                      (let ((_e126585126614_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126580126611_))))
                                        (let ((_hd126584126617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126585126614_)))
                                              (_tl126583126619_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126585126614_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126583126619_))
                                              (let ((_e126588126622_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126583126619_))))
                                                (let ((_hd126587126625_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126588126622_)))
                                                      (_tl126586126627_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126588126622_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126586126627_))
                                                      ((lambda (_L126630_
                                                                _L126631_
                                                                _L126632_)
                                                         (let ((__tmp130348
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126632_)))
                       (__tmp130347
                        (let () (declare (not safe)) (gx#stx-e _L126631_)))
                       (__tmp130346
                        (let () (declare (not safe)) (gx#stx-e _L126630_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp130348
                    __tmp130347
                    __tmp130346)))
               _hd126587126625_
               _hd126584126617_
               _hd126581126609_)
              (let ()
                (declare (not safe))
                (_g126572126593_ _g126573126596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126572126593_
                                                 _g126573126596_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126572126593_ _g126573126596_)))))
                              (let ()
                                (declare (not safe))
                                (_g126572126593_ _g126573126596_)))))
                      (let ()
                        (declare (not safe))
                        (_g126572126593_ _g126573126596_))))))
          (declare (not safe))
          (_g126571126650_ _ann126570_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx126485_ _ann126486_)
        (let* ((_g126488126509_
                (lambda (_g126489126506_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126489126506_))))
               (_g126487126566_
                (lambda (_g126489126512_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126489126512_))
                      (let ((_e126495126514_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126489126512_))))
                        (let ((_hd126494126517_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126495126514_)))
                              (_tl126493126519_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126495126514_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126493126519_))
                              (let ((_e126498126522_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126493126519_))))
                                (let ((_hd126497126525_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126498126522_)))
                                      (_tl126496126527_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126498126522_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126496126527_))
                                      (let ((_e126501126530_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126496126527_))))
                                        (let ((_hd126500126533_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126501126530_)))
                                              (_tl126499126535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126501126530_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126499126535_))
                                              (let ((_e126504126538_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126499126535_))))
                                                (let ((_hd126503126541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126504126538_)))
                                                      (_tl126502126543_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126504126538_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126502126543_))
                                                      ((lambda (_L126546_
                                                                _L126547_
                                                                _L126548_)
                                                         (let ((__tmp130351
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126548_)))
                       (__tmp130350
                        (let () (declare (not safe)) (gx#stx-e _L126547_)))
                       (__tmp130349
                        (let () (declare (not safe)) (gx#stx-e _L126546_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp130351
                    __tmp130350
                    __tmp130349)))
               _hd126503126541_
               _hd126500126533_
               _hd126497126525_)
              (let ()
                (declare (not safe))
                (_g126488126509_ _g126489126512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126488126509_
                                                 _g126489126512_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126488126509_ _g126489126512_)))))
                              (let ()
                                (declare (not safe))
                                (_g126488126509_ _g126489126512_)))))
                      (let ()
                        (declare (not safe))
                        (_g126488126509_ _g126489126512_))))))
          (declare (not safe))
          (_g126487126566_ _ann126486_))))
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
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.system
       gxc#basic-expression-type-annotation-mop.system))
    (define gxc#basic-expression-type-lambda%
      (lambda (_self125604_ _stx125605_)
        (let* ((___stx128611128612_ _stx125605_)
               (_g125611125807_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128611128612_)))))
          (let ((___kont128613128614_
                 (lambda (_L126473_)
                   (let ((__obj130292
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130292
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126473_))
                      '#f)
                     __obj130292)))
                (___kont128615128616_
                 (lambda (_L126400_
                          _L126401_
                          _L126402_
                          _L126403_
                          _L126404_
                          _L126405_)
                   (let* ((_tab126455_
                           (let () (declare (not safe)) (gx#stx-e _L126402_)))
                          (_keys126457_
                           (if _tab126455_
                               (filter values (vector->list _tab126455_))
                               '#f)))
                     (let ((__tmp130352
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L126401_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys126457_
                        __tmp130352)))))
                (___kont128617128618_
                 (lambda (_L126133_
                          _L126134_
                          _L126135_
                          _L126136_
                          _L126137_
                          _L126138_
                          _L126139_
                          _L126140_
                          _L126141_
                          _L126142_)
                   (let ((__tmp130354
                          (map gx#stx-e
                               (let ((__tmp130355
                                      (lambda (_g126235126238_ _g126236126240_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g126235126238_
                                                _g126236126240_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp130355 '() _L126135_))))
                         (__tmp130353
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126139_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp130354
                      __tmp130353))))
                (___kont128621128622_
                 (lambda (_L125843_)
                   (let ((__obj130293
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130293
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125843_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L125843_)))
                     __obj130293)))
                (___kont128623128624_
                 (lambda (_L125820_)
                   (let ((__obj130294
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130294
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125820_))
                      '#f)
                     __obj130294))))
            (let* ((___match128930128931_
                    (lambda (_e125798125835_ _hd125797125838_ _tl125796125840_)
                      (let ((_L125843_ _tl125796125840_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L125843_))
                            (___kont128621128622_ _L125843_)
                            (___kont128623128624_ _tl125796125840_)))))
                   (___match128924128925_
                    (lambda (_e125692125857_
                             _hd125691125860_
                             _tl125690125862_
                             _e125695125865_
                             _hd125694125868_
                             _tl125693125870_
                             _e125698125873_
                             _hd125697125876_
                             _tl125696125878_
                             _e125701125881_
                             _hd125700125884_
                             _tl125699125886_
                             _e125704125889_
                             _hd125703125892_
                             _tl125702125894_
                             _e125707125897_
                             _hd125706125900_
                             _tl125705125902_
                             _e125710125905_
                             _hd125709125908_
                             _tl125708125910_
                             _e125713125913_
                             _hd125712125916_
                             _tl125711125918_
                             _e125716125921_
                             _hd125715125924_
                             _tl125714125926_
                             _e125719125929_
                             _hd125718125932_
                             _tl125717125934_
                             _e125722125937_
                             _hd125721125940_
                             _tl125720125942_
                             _e125725125945_
                             _hd125724125948_
                             _tl125723125950_
                             _e125728125953_
                             _hd125727125956_
                             _tl125726125958_
                             _e125731125961_
                             _hd125730125964_
                             _tl125729125966_
                             ___splice128619128620_
                             _target125732125969_
                             _tl125734125971_
                             _e125749125974_
                             _hd125748125977_
                             _tl125747125979_
                             _e125752125982_
                             _hd125751125985_
                             _tl125750125987_
                             _e125755125990_
                             _hd125754125993_
                             _tl125753125995_)
                      (letrec ((_loop125735125998_
                                (lambda (_hd125733126001_
                                         _-absent-value125739126003_
                                         _key125740126005_
                                         _-xkwvar125741126007_
                                         _-hash-ref125742126009_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125733126001_))
                                      (let ((_e125736126012_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125733126001_))))
                                        (let ((_lp-tl125738126017_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125736126012_)))
                                              (_lp-hd125737126015_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125736126012_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd125737126015_))
                                              (let ((_e125758126020_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd125737126015_))))
                                                (let ((_tl125756126025_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125758126020_)))
                                                      (_hd125757126023_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125758126020_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd125757126023_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd125757126023_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125756126025_))
                      (let ((_e125761126028_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125756126025_))))
                        (let ((_tl125759126033_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125761126028_)))
                              (_hd125760126031_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125761126028_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125760126031_))
                              (let ((_e125764126036_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125760126031_))))
                                (let ((_tl125762126041_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125764126036_)))
                                      (_hd125763126039_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125764126036_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125763126039_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125763126039_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125762126041_))
                                              (let ((_e125767126044_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125762126041_))))
                                                (let ((_tl125765126049_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125767126044_)))
                                                      (_hd125766126047_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125767126044_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125765126049_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125759126033_))
                                                          (let ((_e125770126052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125759126033_))))
                    (let ((_tl125768126057_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125770126052_)))
                          (_hd125769126055_
                           (let ()
                             (declare (not safe))
                             (##car _e125770126052_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125769126055_))
                          (let ((_e125773126060_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125769126055_))))
                            (let ((_tl125771126065_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125773126060_)))
                                  (_hd125772126063_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125773126060_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125772126063_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125772126063_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125771126065_))
                                          (let ((_e125776126068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125771126065_))))
                                            (let ((_tl125774126073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125776126068_)))
                                                  (_hd125775126071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125776126068_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125774126073_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125768126057_))
                                                      (let ((_e125779126076_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125768126057_))))
                (let ((_tl125777126081_
                       (let () (declare (not safe)) (##cdr _e125779126076_)))
                      (_hd125778126079_
                       (let () (declare (not safe)) (##car _e125779126076_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125778126079_))
                      (let ((_e125782126084_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125778126079_))))
                        (let ((_tl125780126089_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125782126084_)))
                              (_hd125781126087_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125782126084_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125781126087_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd125781126087_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125780126089_))
                                      (let ((_e125785126092_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125780126089_))))
                                        (let ((_tl125783126097_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125785126092_)))
                                              (_hd125784126095_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125785126092_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125783126097_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125777126081_))
                                                  (let ((_e125788126100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125777126081_))))
                                                    (let ((_tl125786126105_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125788126100_)))
                                                          (_hd125787126103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125788126100_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125787126103_))
                                                          (let ((_e125791126108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125787126103_))))
                    (let ((_tl125789126113_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125791126108_)))
                          (_hd125790126111_
                           (let ()
                             (declare (not safe))
                             (##car _e125791126108_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125790126111_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125790126111_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125789126113_))
                                  (let ((_e125794126116_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125789126113_))))
                                    (let ((_tl125792126121_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125794126116_)))
                                          (_hd125793126119_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125794126116_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125792126121_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125786126105_))
                                              (let ((__tmp130370
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125793126119_
                                                             _-absent-value125739126003_)))
                                                    (__tmp130369
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125784126095_
                                                             _key125740126005_)))
                                                    (__tmp130368
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125775126071_
                                                             _-xkwvar125741126007_)))
                                                    (__tmp130367
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125766126047_
                                                             _-hash-ref125742126009_))))
                                                (declare (not safe))
                                                (_loop125735125998_
                                                 _lp-tl125738126017_
                                                 __tmp130370
                                                 __tmp130369
                                                 __tmp130368
                                                 __tmp130367))
                                              (___match128930128931_
                                               _e125692125857_
                                               _hd125691125860_
                                               _tl125690125862_))
                                          (___match128930128931_
                                           _e125692125857_
                                           _hd125691125860_
                                           _tl125690125862_))))
                                  (___match128930128931_
                                   _e125692125857_
                                   _hd125691125860_
                                   _tl125690125862_))
                              (___match128930128931_
                               _e125692125857_
                               _hd125691125860_
                               _tl125690125862_))
                          (___match128930128931_
                           _e125692125857_
                           _hd125691125860_
                           _tl125690125862_))))
                  (___match128930128931_
                   _e125692125857_
                   _hd125691125860_
                   _tl125690125862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128930128931_
                                                   _e125692125857_
                                                   _hd125691125860_
                                                   _tl125690125862_))
                                              (___match128930128931_
                                               _e125692125857_
                                               _hd125691125860_
                                               _tl125690125862_))))
                                      (___match128930128931_
                                       _e125692125857_
                                       _hd125691125860_
                                       _tl125690125862_))
                                  (___match128930128931_
                                   _e125692125857_
                                   _hd125691125860_
                                   _tl125690125862_))
                              (___match128930128931_
                               _e125692125857_
                               _hd125691125860_
                               _tl125690125862_))))
                      (___match128930128931_
                       _e125692125857_
                       _hd125691125860_
                       _tl125690125862_))))
              (___match128930128931_
               _e125692125857_
               _hd125691125860_
               _tl125690125862_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128930128931_
                                                   _e125692125857_
                                                   _hd125691125860_
                                                   _tl125690125862_))))
                                          (___match128930128931_
                                           _e125692125857_
                                           _hd125691125860_
                                           _tl125690125862_))
                                      (___match128930128931_
                                       _e125692125857_
                                       _hd125691125860_
                                       _tl125690125862_))
                                  (___match128930128931_
                                   _e125692125857_
                                   _hd125691125860_
                                   _tl125690125862_))))
                          (___match128930128931_
                           _e125692125857_
                           _hd125691125860_
                           _tl125690125862_))))
                  (___match128930128931_
                   _e125692125857_
                   _hd125691125860_
                   _tl125690125862_))
              (___match128930128931_
               _e125692125857_
               _hd125691125860_
               _tl125690125862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128930128931_
                                               _e125692125857_
                                               _hd125691125860_
                                               _tl125690125862_))
                                          (___match128930128931_
                                           _e125692125857_
                                           _hd125691125860_
                                           _tl125690125862_))
                                      (___match128930128931_
                                       _e125692125857_
                                       _hd125691125860_
                                       _tl125690125862_))))
                              (___match128930128931_
                               _e125692125857_
                               _hd125691125860_
                               _tl125690125862_))))
                      (___match128930128931_
                       _e125692125857_
                       _hd125691125860_
                       _tl125690125862_))
                  (___match128930128931_
                   _e125692125857_
                   _hd125691125860_
                   _tl125690125862_))
              (___match128930128931_
               _e125692125857_
               _hd125691125860_
               _tl125690125862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128930128931_
                                               _e125692125857_
                                               _hd125691125860_
                                               _tl125690125862_))))
                                      (let ((_-hash-ref125746126130_
                                             (reverse _-hash-ref125742126009_))
                                            (_-xkwvar125745126128_
                                             (reverse _-xkwvar125741126007_))
                                            (_key125744126126_
                                             (reverse _key125740126005_))
                                            (_-absent-value125743126124_
                                             (reverse _-absent-value125739126003_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl125699125886_))
                                            (let ((_L126133_ _hd125754125993_)
                                                  (_L126134_
                                                   _-absent-value125743126124_)
                                                  (_L126135_ _key125744126126_)
                                                  (_L126136_
                                                   _-xkwvar125745126128_)
                                                  (_L126137_
                                                   _-hash-ref125746126130_)
                                                  (_L126138_ _hd125730125964_)
                                                  (_L126139_ _hd125721125940_)
                                                  (_L126140_ _hd125712125916_)
                                                  (_L126141_ _tl125696125878_)
                                                  (_L126142_ _hd125697125876_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126142_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126141_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L126140_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L126142_
                                                          _L126138_))
                                                       (let ((__tmp130365
                                                              (let ((__tmp130366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g126195126198_ _g126196126200_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126195126198_ _g126196126200_)))))
                        (declare (not safe))
                        (foldr1 __tmp130366 '() _L126135_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp130365))
               (let ((__tmp130364
                      (lambda (_g126202126204_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126202126204_
                           'hash-ref))))
                     (__tmp130362
                      (let ((__tmp130363
                             (lambda (_g126206126209_ _g126207126211_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126206126209_ _g126207126211_)))))
                        (declare (not safe))
                        (foldr1 __tmp130363 '() _L126137_))))
                 (declare (not safe))
                 (andmap1 __tmp130364 __tmp130362))
               (let ((__tmp130361
                      (lambda (_g126213126215_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126213126215_
                           'absent-value))))
                     (__tmp130359
                      (let ((__tmp130360
                             (lambda (_g126217126220_ _g126218126222_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126217126220_ _g126218126222_)))))
                        (declare (not safe))
                        (foldr1 __tmp130360 '() _L126134_))))
                 (declare (not safe))
                 (andmap1 __tmp130361 __tmp130359))
               (let ((__tmp130358
                      (lambda (_g126224126226_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g126224126226_ _L126142_))))
                     (__tmp130356
                      (let ((__tmp130357
                             (lambda (_g126228126231_ _g126229126233_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126228126231_ _g126229126233_)))))
                        (declare (not safe))
                        (foldr1 __tmp130357 '() _L126136_))))
                 (declare (not safe))
                 (andmap1 __tmp130358 __tmp130356)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128617128618_
                                                   _L126133_
                                                   _L126134_
                                                   _L126135_
                                                   _L126136_
                                                   _L126137_
                                                   _L126138_
                                                   _L126139_
                                                   _L126140_
                                                   _L126141_
                                                   _L126142_)
                                                  (___match128930128931_
                                                   _e125692125857_
                                                   _hd125691125860_
                                                   _tl125690125862_)))
                                            (___match128930128931_
                                             _e125692125857_
                                             _hd125691125860_
                                             _tl125690125862_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop125735125998_
                           _target125732125969_
                           '()
                           '()
                           '()
                           '())))))
                   (___match128796128797_
                    (lambda (_e125692125857_
                             _hd125691125860_
                             _tl125690125862_
                             _e125695125865_
                             _hd125694125868_
                             _tl125693125870_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125694125868_))
                          (let ((_e125698125873_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125694125868_))))
                            (let ((_tl125696125878_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125698125873_)))
                                  (_hd125697125876_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125698125873_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125693125870_))
                                  (let ((_e125701125881_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125693125870_))))
                                    (let ((_tl125699125886_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125701125881_)))
                                          (_hd125700125884_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125701125881_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125700125884_))
                                          (let ((_e125704125889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125700125884_))))
                                            (let ((_tl125702125894_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125704125889_)))
                                                  (_hd125703125892_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125704125889_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125703125892_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125703125892_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125702125894_))
                                                          (let ((_e125707125897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125702125894_))))
                    (let ((_tl125705125902_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125707125897_)))
                          (_hd125706125900_
                           (let ()
                             (declare (not safe))
                             (##car _e125707125897_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125706125900_))
                          (let ((_e125710125905_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125706125900_))))
                            (let ((_tl125708125910_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125710125905_)))
                                  (_hd125709125908_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125710125905_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125709125908_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125709125908_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125708125910_))
                                          (let ((_e125713125913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125708125910_))))
                                            (let ((_tl125711125918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125713125913_)))
                                                  (_hd125712125916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125713125913_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125711125918_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125705125902_))
                                                      (let ((_e125716125921_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125705125902_))))
                (let ((_tl125714125926_
                       (let () (declare (not safe)) (##cdr _e125716125921_)))
                      (_hd125715125924_
                       (let () (declare (not safe)) (##car _e125716125921_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125715125924_))
                      (let ((_e125719125929_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125715125924_))))
                        (let ((_tl125717125934_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125719125929_)))
                              (_hd125718125932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125719125929_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125718125932_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125718125932_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125717125934_))
                                      (let ((_e125722125937_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125717125934_))))
                                        (let ((_tl125720125942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125722125937_)))
                                              (_hd125721125940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125722125937_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125720125942_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125714125926_))
                                                  (let ((_e125725125945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125714125926_))))
                                                    (let ((_tl125723125950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125725125945_)))
                                                          (_hd125724125948_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125725125945_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125724125948_))
                                                          (let ((_e125728125953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125724125948_))))
                    (let ((_tl125726125958_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125728125953_)))
                          (_hd125727125956_
                           (let ()
                             (declare (not safe))
                             (##car _e125728125953_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125727125956_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125727125956_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125726125958_))
                                  (let ((_e125731125961_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125726125958_))))
                                    (let ((_tl125729125966_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125731125961_)))
                                          (_hd125730125964_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125731125961_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125729125966_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125723125950_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl125723125950_))
                                                        '1)
                                                  (let ((___splice128619128620_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125723125950_
                                                            '1))))
                                                    (let ((_tl125734125971_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128619128620_
                                                              '1)))
                                                          (_target125732125969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128619128620_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125734125971_))
                                                          (let ((_e125749125974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125734125971_))))
                    (let ((_tl125747125979_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125749125974_)))
                          (_hd125748125977_
                           (let ()
                             (declare (not safe))
                             (##car _e125749125974_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125748125977_))
                          (let ((_e125752125982_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125748125977_))))
                            (let ((_tl125750125987_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125752125982_)))
                                  (_hd125751125985_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125752125982_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125751125985_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125751125985_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125750125987_))
                                          (let ((_e125755125990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125750125987_))))
                                            (let ((_tl125753125995_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125755125990_)))
                                                  (_hd125754125993_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125755125990_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125753125995_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125747125979_))
                                                      (___match128924128925_
                                                       _e125692125857_
                                                       _hd125691125860_
                                                       _tl125690125862_
                                                       _e125695125865_
                                                       _hd125694125868_
                                                       _tl125693125870_
                                                       _e125698125873_
                                                       _hd125697125876_
                                                       _tl125696125878_
                                                       _e125701125881_
                                                       _hd125700125884_
                                                       _tl125699125886_
                                                       _e125704125889_
                                                       _hd125703125892_
                                                       _tl125702125894_
                                                       _e125707125897_
                                                       _hd125706125900_
                                                       _tl125705125902_
                                                       _e125710125905_
                                                       _hd125709125908_
                                                       _tl125708125910_
                                                       _e125713125913_
                                                       _hd125712125916_
                                                       _tl125711125918_
                                                       _e125716125921_
                                                       _hd125715125924_
                                                       _tl125714125926_
                                                       _e125719125929_
                                                       _hd125718125932_
                                                       _tl125717125934_
                                                       _e125722125937_
                                                       _hd125721125940_
                                                       _tl125720125942_
                                                       _e125725125945_
                                                       _hd125724125948_
                                                       _tl125723125950_
                                                       _e125728125953_
                                                       _hd125727125956_
                                                       _tl125726125958_
                                                       _e125731125961_
                                                       _hd125730125964_
                                                       _tl125729125966_
                                                       ___splice128619128620_
                                                       _target125732125969_
                                                       _tl125734125971_
                                                       _e125749125974_
                                                       _hd125748125977_
                                                       _tl125747125979_
                                                       _e125752125982_
                                                       _hd125751125985_
                                                       _tl125750125987_
                                                       _e125755125990_
                                                       _hd125754125993_
                                                       _tl125753125995_)
                                                      (___match128930128931_
                                                       _e125692125857_
                                                       _hd125691125860_
                                                       _tl125690125862_))
                                                  (___match128930128931_
                                                   _e125692125857_
                                                   _hd125691125860_
                                                   _tl125690125862_))))
                                          (___match128930128931_
                                           _e125692125857_
                                           _hd125691125860_
                                           _tl125690125862_))
                                      (___match128930128931_
                                       _e125692125857_
                                       _hd125691125860_
                                       _tl125690125862_))
                                  (___match128930128931_
                                   _e125692125857_
                                   _hd125691125860_
                                   _tl125690125862_))))
                          (___match128930128931_
                           _e125692125857_
                           _hd125691125860_
                           _tl125690125862_))))
                  (___match128930128931_
                   _e125692125857_
                   _hd125691125860_
                   _tl125690125862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128930128931_
                                                   _e125692125857_
                                                   _hd125691125860_
                                                   _tl125690125862_))
                                              (___match128930128931_
                                               _e125692125857_
                                               _hd125691125860_
                                               _tl125690125862_))
                                          (___match128930128931_
                                           _e125692125857_
                                           _hd125691125860_
                                           _tl125690125862_))))
                                  (___match128930128931_
                                   _e125692125857_
                                   _hd125691125860_
                                   _tl125690125862_))
                              (___match128930128931_
                               _e125692125857_
                               _hd125691125860_
                               _tl125690125862_))
                          (___match128930128931_
                           _e125692125857_
                           _hd125691125860_
                           _tl125690125862_))))
                  (___match128930128931_
                   _e125692125857_
                   _hd125691125860_
                   _tl125690125862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128930128931_
                                                   _e125692125857_
                                                   _hd125691125860_
                                                   _tl125690125862_))
                                              (___match128930128931_
                                               _e125692125857_
                                               _hd125691125860_
                                               _tl125690125862_))))
                                      (___match128930128931_
                                       _e125692125857_
                                       _hd125691125860_
                                       _tl125690125862_))
                                  (___match128930128931_
                                   _e125692125857_
                                   _hd125691125860_
                                   _tl125690125862_))
                              (___match128930128931_
                               _e125692125857_
                               _hd125691125860_
                               _tl125690125862_))))
                      (___match128930128931_
                       _e125692125857_
                       _hd125691125860_
                       _tl125690125862_))))
              (___match128930128931_
               _e125692125857_
               _hd125691125860_
               _tl125690125862_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128930128931_
                                                   _e125692125857_
                                                   _hd125691125860_
                                                   _tl125690125862_))))
                                          (___match128930128931_
                                           _e125692125857_
                                           _hd125691125860_
                                           _tl125690125862_))
                                      (___match128930128931_
                                       _e125692125857_
                                       _hd125691125860_
                                       _tl125690125862_))
                                  (___match128930128931_
                                   _e125692125857_
                                   _hd125691125860_
                                   _tl125690125862_))))
                          (___match128930128931_
                           _e125692125857_
                           _hd125691125860_
                           _tl125690125862_))))
                  (___match128930128931_
                   _e125692125857_
                   _hd125691125860_
                   _tl125690125862_))
              (___match128930128931_
               _e125692125857_
               _hd125691125860_
               _tl125690125862_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128930128931_
                                                   _e125692125857_
                                                   _hd125691125860_
                                                   _tl125690125862_))))
                                          (___match128930128931_
                                           _e125692125857_
                                           _hd125691125860_
                                           _tl125690125862_))))
                                  (___match128930128931_
                                   _e125692125857_
                                   _hd125691125860_
                                   _tl125690125862_))))
                          (___match128930128931_
                           _e125692125857_
                           _hd125691125860_
                           _tl125690125862_))))
                   (___match128784128785_
                    (lambda (_e125625126248_
                             _hd125624126251_
                             _tl125623126253_
                             _e125628126256_
                             _hd125627126259_
                             _tl125626126261_
                             _e125631126264_
                             _hd125630126267_
                             _tl125629126269_
                             _e125634126272_
                             _hd125633126275_
                             _tl125632126277_
                             _e125637126280_
                             _hd125636126283_
                             _tl125635126285_
                             _e125640126288_
                             _hd125639126291_
                             _tl125638126293_
                             _e125643126296_
                             _hd125642126299_
                             _tl125641126301_
                             _e125646126304_
                             _hd125645126307_
                             _tl125644126309_
                             _e125649126312_
                             _hd125648126315_
                             _tl125647126317_
                             _e125652126320_
                             _hd125651126323_
                             _tl125650126325_
                             _e125655126328_
                             _hd125654126331_
                             _tl125653126333_
                             _e125658126336_
                             _hd125657126339_
                             _tl125656126341_
                             _e125661126344_
                             _hd125660126347_
                             _tl125659126349_
                             _e125664126352_
                             _hd125663126355_
                             _tl125662126357_
                             _e125667126360_
                             _hd125666126363_
                             _tl125665126365_
                             _e125670126368_
                             _hd125669126371_
                             _tl125668126373_
                             _e125673126376_
                             _hd125672126379_
                             _tl125671126381_
                             _e125676126384_
                             _hd125675126387_
                             _tl125674126389_
                             _e125679126392_
                             _hd125678126395_
                             _tl125677126397_)
                      (let ((_L126400_ _hd125678126395_)
                            (_L126401_ _hd125669126371_)
                            (_L126402_ _hd125660126347_)
                            (_L126403_ _hd125651126323_)
                            (_L126404_ _hd125642126299_)
                            (_L126405_ _hd125627126259_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L126405_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L126404_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L126403_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L126405_ _L126400_)))
                            (___kont128615128616_
                             _L126400_
                             _L126401_
                             _L126402_
                             _L126403_
                             _L126404_
                             _L126405_)
                            (___match128796128797_
                             _e125625126248_
                             _hd125624126251_
                             _tl125623126253_
                             _e125628126256_
                             _hd125627126259_
                             _tl125626126261_)))))
                   (___match128638128639_
                    (lambda (_e125625126248_ _hd125624126251_ _tl125623126253_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125623126253_))
                          (let ((_e125628126256_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125623126253_))))
                            (let ((_tl125626126261_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125628126256_)))
                                  (_hd125627126259_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125628126256_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125626126261_))
                                  (let ((_e125631126264_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125626126261_))))
                                    (let ((_tl125629126269_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125631126264_)))
                                          (_hd125630126267_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125631126264_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125630126267_))
                                          (let ((_e125634126272_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125630126267_))))
                                            (let ((_tl125632126277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125634126272_)))
                                                  (_hd125633126275_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125634126272_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125633126275_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125633126275_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125632126277_))
                                                          (let ((_e125637126280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125632126277_))))
                    (let ((_tl125635126285_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125637126280_)))
                          (_hd125636126283_
                           (let ()
                             (declare (not safe))
                             (##car _e125637126280_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125636126283_))
                          (let ((_e125640126288_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125636126283_))))
                            (let ((_tl125638126293_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125640126288_)))
                                  (_hd125639126291_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125640126288_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125639126291_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125639126291_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125638126293_))
                                          (let ((_e125643126296_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125638126293_))))
                                            (let ((_tl125641126301_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125643126296_)))
                                                  (_hd125642126299_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125643126296_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125641126301_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125635126285_))
                                                      (let ((_e125646126304_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125635126285_))))
                (let ((_tl125644126309_
                       (let () (declare (not safe)) (##cdr _e125646126304_)))
                      (_hd125645126307_
                       (let () (declare (not safe)) (##car _e125646126304_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125645126307_))
                      (let ((_e125649126312_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125645126307_))))
                        (let ((_tl125647126317_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125649126312_)))
                              (_hd125648126315_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125649126312_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125648126315_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125648126315_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125647126317_))
                                      (let ((_e125652126320_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125647126317_))))
                                        (let ((_tl125650126325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125652126320_)))
                                              (_hd125651126323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125652126320_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125650126325_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125644126309_))
                                                  (let ((_e125655126328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125644126309_))))
                                                    (let ((_tl125653126333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125655126328_)))
                                                          (_hd125654126331_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125655126328_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125654126331_))
                                                          (let ((_e125658126336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125654126331_))))
                    (let ((_tl125656126341_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125658126336_)))
                          (_hd125657126339_
                           (let ()
                             (declare (not safe))
                             (##car _e125658126336_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125657126339_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125657126339_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125656126341_))
                                  (let ((_e125661126344_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125656126341_))))
                                    (let ((_tl125659126349_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125661126344_)))
                                          (_hd125660126347_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125661126344_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125659126349_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125653126333_))
                                              (let ((_e125664126352_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125653126333_))))
                                                (let ((_tl125662126357_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125664126352_)))
                                                      (_hd125663126355_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125664126352_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125663126355_))
                                                      (let ((_e125667126360_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125663126355_))))
                (let ((_tl125665126365_
                       (let () (declare (not safe)) (##cdr _e125667126360_)))
                      (_hd125666126363_
                       (let () (declare (not safe)) (##car _e125667126360_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125666126363_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125666126363_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125665126365_))
                              (let ((_e125670126368_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125665126365_))))
                                (let ((_tl125668126373_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125670126368_)))
                                      (_hd125669126371_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125670126368_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125668126373_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125662126357_))
                                          (let ((_e125673126376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125662126357_))))
                                            (let ((_tl125671126381_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125673126376_)))
                                                  (_hd125672126379_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125673126376_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd125672126379_))
                                                  (let ((_e125676126384_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd125672126379_))))
                                                    (let ((_tl125674126389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125676126384_)))
                                                          (_hd125675126387_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125676126384_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd125675126387_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd125675126387_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125674126389_))
                          (let ((_e125679126392_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125674126389_))))
                            (let ((_tl125677126397_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125679126392_)))
                                  (_hd125678126395_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125679126392_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125677126397_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125671126381_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125629126269_))
                                          (___match128784128785_
                                           _e125625126248_
                                           _hd125624126251_
                                           _tl125623126253_
                                           _e125628126256_
                                           _hd125627126259_
                                           _tl125626126261_
                                           _e125631126264_
                                           _hd125630126267_
                                           _tl125629126269_
                                           _e125634126272_
                                           _hd125633126275_
                                           _tl125632126277_
                                           _e125637126280_
                                           _hd125636126283_
                                           _tl125635126285_
                                           _e125640126288_
                                           _hd125639126291_
                                           _tl125638126293_
                                           _e125643126296_
                                           _hd125642126299_
                                           _tl125641126301_
                                           _e125646126304_
                                           _hd125645126307_
                                           _tl125644126309_
                                           _e125649126312_
                                           _hd125648126315_
                                           _tl125647126317_
                                           _e125652126320_
                                           _hd125651126323_
                                           _tl125650126325_
                                           _e125655126328_
                                           _hd125654126331_
                                           _tl125653126333_
                                           _e125658126336_
                                           _hd125657126339_
                                           _tl125656126341_
                                           _e125661126344_
                                           _hd125660126347_
                                           _tl125659126349_
                                           _e125664126352_
                                           _hd125663126355_
                                           _tl125662126357_
                                           _e125667126360_
                                           _hd125666126363_
                                           _tl125665126365_
                                           _e125670126368_
                                           _hd125669126371_
                                           _tl125668126373_
                                           _e125673126376_
                                           _hd125672126379_
                                           _tl125671126381_
                                           _e125676126384_
                                           _hd125675126387_
                                           _tl125674126389_
                                           _e125679126392_
                                           _hd125678126395_
                                           _tl125677126397_)
                                          (___match128796128797_
                                           _e125625126248_
                                           _hd125624126251_
                                           _tl125623126253_
                                           _e125628126256_
                                           _hd125627126259_
                                           _tl125626126261_))
                                      (___match128796128797_
                                       _e125625126248_
                                       _hd125624126251_
                                       _tl125623126253_
                                       _e125628126256_
                                       _hd125627126259_
                                       _tl125626126261_))
                                  (___match128796128797_
                                   _e125625126248_
                                   _hd125624126251_
                                   _tl125623126253_
                                   _e125628126256_
                                   _hd125627126259_
                                   _tl125626126261_))))
                          (___match128796128797_
                           _e125625126248_
                           _hd125624126251_
                           _tl125623126253_
                           _e125628126256_
                           _hd125627126259_
                           _tl125626126261_))
                      (___match128796128797_
                       _e125625126248_
                       _hd125624126251_
                       _tl125623126253_
                       _e125628126256_
                       _hd125627126259_
                       _tl125626126261_))
                  (___match128796128797_
                   _e125625126248_
                   _hd125624126251_
                   _tl125623126253_
                   _e125628126256_
                   _hd125627126259_
                   _tl125626126261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128796128797_
                                                   _e125625126248_
                                                   _hd125624126251_
                                                   _tl125623126253_
                                                   _e125628126256_
                                                   _hd125627126259_
                                                   _tl125626126261_))))
                                          (___match128796128797_
                                           _e125625126248_
                                           _hd125624126251_
                                           _tl125623126253_
                                           _e125628126256_
                                           _hd125627126259_
                                           _tl125626126261_))
                                      (___match128796128797_
                                       _e125625126248_
                                       _hd125624126251_
                                       _tl125623126253_
                                       _e125628126256_
                                       _hd125627126259_
                                       _tl125626126261_))))
                              (___match128796128797_
                               _e125625126248_
                               _hd125624126251_
                               _tl125623126253_
                               _e125628126256_
                               _hd125627126259_
                               _tl125626126261_))
                          (___match128796128797_
                           _e125625126248_
                           _hd125624126251_
                           _tl125623126253_
                           _e125628126256_
                           _hd125627126259_
                           _tl125626126261_))
                      (___match128796128797_
                       _e125625126248_
                       _hd125624126251_
                       _tl125623126253_
                       _e125628126256_
                       _hd125627126259_
                       _tl125626126261_))))
              (___match128796128797_
               _e125625126248_
               _hd125624126251_
               _tl125623126253_
               _e125628126256_
               _hd125627126259_
               _tl125626126261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128796128797_
                                               _e125625126248_
                                               _hd125624126251_
                                               _tl125623126253_
                                               _e125628126256_
                                               _hd125627126259_
                                               _tl125626126261_))
                                          (___match128796128797_
                                           _e125625126248_
                                           _hd125624126251_
                                           _tl125623126253_
                                           _e125628126256_
                                           _hd125627126259_
                                           _tl125626126261_))))
                                  (___match128796128797_
                                   _e125625126248_
                                   _hd125624126251_
                                   _tl125623126253_
                                   _e125628126256_
                                   _hd125627126259_
                                   _tl125626126261_))
                              (___match128796128797_
                               _e125625126248_
                               _hd125624126251_
                               _tl125623126253_
                               _e125628126256_
                               _hd125627126259_
                               _tl125626126261_))
                          (___match128796128797_
                           _e125625126248_
                           _hd125624126251_
                           _tl125623126253_
                           _e125628126256_
                           _hd125627126259_
                           _tl125626126261_))))
                  (___match128796128797_
                   _e125625126248_
                   _hd125624126251_
                   _tl125623126253_
                   _e125628126256_
                   _hd125627126259_
                   _tl125626126261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128796128797_
                                                   _e125625126248_
                                                   _hd125624126251_
                                                   _tl125623126253_
                                                   _e125628126256_
                                                   _hd125627126259_
                                                   _tl125626126261_))
                                              (___match128796128797_
                                               _e125625126248_
                                               _hd125624126251_
                                               _tl125623126253_
                                               _e125628126256_
                                               _hd125627126259_
                                               _tl125626126261_))))
                                      (___match128796128797_
                                       _e125625126248_
                                       _hd125624126251_
                                       _tl125623126253_
                                       _e125628126256_
                                       _hd125627126259_
                                       _tl125626126261_))
                                  (___match128796128797_
                                   _e125625126248_
                                   _hd125624126251_
                                   _tl125623126253_
                                   _e125628126256_
                                   _hd125627126259_
                                   _tl125626126261_))
                              (___match128796128797_
                               _e125625126248_
                               _hd125624126251_
                               _tl125623126253_
                               _e125628126256_
                               _hd125627126259_
                               _tl125626126261_))))
                      (___match128796128797_
                       _e125625126248_
                       _hd125624126251_
                       _tl125623126253_
                       _e125628126256_
                       _hd125627126259_
                       _tl125626126261_))))
              (___match128796128797_
               _e125625126248_
               _hd125624126251_
               _tl125623126253_
               _e125628126256_
               _hd125627126259_
               _tl125626126261_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128796128797_
                                                   _e125625126248_
                                                   _hd125624126251_
                                                   _tl125623126253_
                                                   _e125628126256_
                                                   _hd125627126259_
                                                   _tl125626126261_))))
                                          (___match128796128797_
                                           _e125625126248_
                                           _hd125624126251_
                                           _tl125623126253_
                                           _e125628126256_
                                           _hd125627126259_
                                           _tl125626126261_))
                                      (___match128796128797_
                                       _e125625126248_
                                       _hd125624126251_
                                       _tl125623126253_
                                       _e125628126256_
                                       _hd125627126259_
                                       _tl125626126261_))
                                  (___match128796128797_
                                   _e125625126248_
                                   _hd125624126251_
                                   _tl125623126253_
                                   _e125628126256_
                                   _hd125627126259_
                                   _tl125626126261_))))
                          (___match128796128797_
                           _e125625126248_
                           _hd125624126251_
                           _tl125623126253_
                           _e125628126256_
                           _hd125627126259_
                           _tl125626126261_))))
                  (___match128796128797_
                   _e125625126248_
                   _hd125624126251_
                   _tl125623126253_
                   _e125628126256_
                   _hd125627126259_
                   _tl125626126261_))
              (___match128796128797_
               _e125625126248_
               _hd125624126251_
               _tl125623126253_
               _e125628126256_
               _hd125627126259_
               _tl125626126261_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128796128797_
                                                   _e125625126248_
                                                   _hd125624126251_
                                                   _tl125623126253_
                                                   _e125628126256_
                                                   _hd125627126259_
                                                   _tl125626126261_))))
                                          (___match128796128797_
                                           _e125625126248_
                                           _hd125624126251_
                                           _tl125623126253_
                                           _e125628126256_
                                           _hd125627126259_
                                           _tl125626126261_))))
                                  (___match128796128797_
                                   _e125625126248_
                                   _hd125624126251_
                                   _tl125623126253_
                                   _e125628126256_
                                   _hd125627126259_
                                   _tl125626126261_))))
                          (___match128930128931_
                           _e125625126248_
                           _hd125624126251_
                           _tl125623126253_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128611128612_))
                  (let ((_e125616126465_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128611128612_))))
                    (let ((_tl125614126470_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125616126465_)))
                          (_hd125615126468_
                           (let ()
                             (declare (not safe))
                             (##car _e125616126465_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L126473_ _tl125614126470_))
                            (___kont128613128614_ _L126473_))
                          (___match128638128639_
                           _e125616126465_
                           _hd125615126468_
                           _tl125614126470_))))
                  (let () (declare (not safe)) (_g125611125807_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self125558_ _stx125559_)
        (letrec ((_clause-e125561_
                  (lambda (_form125602_)
                    (let ((__obj130295
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
                       __obj130295
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form125602_))
                       (if (let ((__tmp130371
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp130371))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form125602_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form125602_))
                               '#f)
                           '#f))
                      __obj130295))))
          (let* ((_g125563125573_
                  (lambda (_g125564125570_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125564125570_))))
                 (_g125562125599_
                  (lambda (_g125564125576_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125564125576_))
                        (let ((_e125568125578_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125564125576_))))
                          (let ((_hd125567125581_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125568125578_)))
                                (_tl125566125583_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125568125578_))))
                            ((lambda (_L125586_)
                               (let ((_clauses125597_
                                      (map _clause-e125561_ _L125586_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses125597_)))
                             _tl125566125583_)))
                        (let ()
                          (declare (not safe))
                          (_g125563125573_ _g125564125576_))))))
            (declare (not safe))
            (_g125562125599_ _stx125559_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self125489_ _stx125490_)
        (let* ((_g125492125509_
                (lambda (_g125493125506_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125493125506_))))
               (_g125491125555_
                (lambda (_g125493125512_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125493125512_))
                      (let ((_e125498125514_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125493125512_))))
                        (let ((_hd125497125517_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125498125514_)))
                              (_tl125496125519_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125498125514_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125496125519_))
                              (let ((_e125501125522_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125496125519_))))
                                (let ((_hd125500125525_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125501125522_)))
                                      (_tl125499125527_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125501125522_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125499125527_))
                                      (let ((_e125504125530_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125499125527_))))
                                        (let ((_hd125503125533_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125504125530_)))
                                              (_tl125502125535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125504125530_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125502125535_))
                                              ((lambda (_L125538_ _L125539_)
                                                 (let ((__tmp130372
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self125489_
                                                             _L125538_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp130372
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd125503125533_
                                               _hd125500125525_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125492125509_
                                                 _g125493125512_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125492125509_ _g125493125512_)))))
                              (let ()
                                (declare (not safe))
                                (_g125492125509_ _g125493125512_)))))
                      (let ()
                        (declare (not safe))
                        (_g125492125509_ _g125493125512_))))))
          (declare (not safe))
          (_g125491125555_ _stx125490_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self125393_ _stx125394_)
        (let* ((___stx128939128940_ _stx125394_)
               (_g125397125417_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128939128940_)))))
          (let ((___kont128941128942_
                 (lambda (_L125461_ _L125462_)
                   (let ((_type-e125479125481_
                          (let ((__tmp130373
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L125462_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp130373))))
                     (if _type-e125479125481_
                         (let ((_type-e125484_ _type-e125479125481_))
                           (_type-e125484_ _stx125394_ _L125461_))
                         '#f))))
                (___kont128943128944_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128939128940_))
                (let ((_e125403125429_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128939128940_))))
                  (let ((_tl125401125434_
                         (let () (declare (not safe)) (##cdr _e125403125429_)))
                        (_hd125402125432_
                         (let ()
                           (declare (not safe))
                           (##car _e125403125429_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125401125434_))
                        (let ((_e125406125437_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125401125434_))))
                          (let ((_tl125404125442_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125406125437_)))
                                (_hd125405125440_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125406125437_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125405125440_))
                                (let ((_e125409125445_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125405125440_))))
                                  (let ((_tl125407125450_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125409125445_)))
                                        (_hd125408125448_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125409125445_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125408125448_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125408125448_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125407125450_))
                                                (let ((_e125412125453_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125407125450_))))
                                                  (let ((_tl125410125458_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125412125453_)))
                                                        (_hd125411125456_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125412125453_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125410125458_))
                                                        (___kont128941128942_
                                                         _tl125404125442_
                                                         _hd125411125456_)
                                                        (___kont128943128944_))))
                                                (___kont128943128944_))
                                            (___kont128943128944_))
                                        (___kont128943128944_))))
                                (___kont128943128944_))))
                        (___kont128943128944_))))
                (___kont128943128944_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self125341_ _stx125342_)
        (let* ((_g125344125357_
                (lambda (_g125345125354_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125345125354_))))
               (_g125343125390_
                (lambda (_g125345125360_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125345125360_))
                      (let ((_e125349125362_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125345125360_))))
                        (let ((_hd125348125365_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125349125362_)))
                              (_tl125347125367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125349125362_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125347125367_))
                              (let ((_e125352125370_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125347125367_))))
                                (let ((_hd125351125373_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125352125370_)))
                                      (_tl125350125375_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125352125370_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125350125375_))
                                      ((lambda (_L125378_)
                                         (let ((__tmp130374
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125378_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp130374)))
                                       _hd125351125373_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125344125357_ _g125345125360_)))))
                              (let ()
                                (declare (not safe))
                                (_g125344125357_ _g125345125360_)))))
                      (let ()
                        (declare (not safe))
                        (_g125344125357_ _g125345125360_))))))
          (declare (not safe))
          (_g125343125390_ _stx125342_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form124575_)
        (let* ((___stx128977128978_ _form124575_)
               (_g124580124737_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128977128978_)))))
          (let ((___kont128979128980_
                 (lambda (_L125261_ _L125262_ _L125263_) '#t))
                (___kont128985128986_
                 (lambda (_L125049_
                          _L125050_
                          _L125051_
                          _L125052_
                          _L125053_
                          _L125054_)
                   '#t))
                (___kont128991128992_
                 (lambda (_L124845_ _L124846_ _L124847_ _L124848_) '#t))
                (___kont128993128994_ (lambda () '#f)))
            (let* ((___match129118129119_
                    (lambda (_e124699124749_
                             _hd124698124752_
                             _tl124697124754_
                             _e124702124757_
                             _hd124701124760_
                             _tl124700124762_
                             _e124705124765_
                             _hd124704124768_
                             _tl124703124770_
                             _e124708124773_
                             _hd124707124776_
                             _tl124706124778_
                             _e124711124781_
                             _hd124710124784_
                             _tl124709124786_
                             _e124714124789_
                             _hd124713124792_
                             _tl124712124794_
                             _e124717124797_
                             _hd124716124800_
                             _tl124715124802_
                             _e124720124805_
                             _hd124719124808_
                             _tl124718124810_
                             _e124723124813_
                             _hd124722124816_
                             _tl124721124818_
                             _e124726124821_
                             _hd124725124824_
                             _tl124724124826_
                             _e124729124829_
                             _hd124728124832_
                             _tl124727124834_
                             _e124732124837_
                             _hd124731124840_
                             _tl124730124842_)
                      (let ((_L124845_ _hd124731124840_)
                            (_L124846_ _hd124722124816_)
                            (_L124847_ _hd124713124792_)
                            (_L124848_ _hd124698124752_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124848_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124847_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124848_ _L124845_))
                                 (let ((__tmp130375
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L124846_
                                           _L124848_))))
                                   (declare (not safe))
                                   (not __tmp130375)))
                            (___kont128991128992_
                             _L124845_
                             _L124846_
                             _L124847_
                             _L124848_)
                            (___kont128993128994_)))))
                   (___match129090129091_
                    (lambda (_e124699124749_
                             _hd124698124752_
                             _tl124697124754_
                             _e124702124757_
                             _hd124701124760_
                             _tl124700124762_
                             _e124705124765_
                             _hd124704124768_
                             _tl124703124770_
                             _e124708124773_
                             _hd124707124776_
                             _tl124706124778_
                             _e124711124781_
                             _hd124710124784_
                             _tl124709124786_
                             _e124714124789_
                             _hd124713124792_
                             _tl124712124794_
                             _e124717124797_
                             _hd124716124800_
                             _tl124715124802_
                             _e124720124805_
                             _hd124719124808_
                             _tl124718124810_
                             _e124723124813_
                             _hd124722124816_
                             _tl124721124818_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124715124802_))
                          (let ((_e124726124821_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124715124802_))))
                            (let ((_tl124724124826_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124726124821_)))
                                  (_hd124725124824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124726124821_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd124725124824_))
                                  (let ((_e124729124829_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd124725124824_))))
                                    (let ((_tl124727124834_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124729124829_)))
                                          (_hd124728124832_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124729124829_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd124728124832_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd124728124832_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124727124834_))
                                                  (let ((_e124732124837_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124727124834_))))
                                                    (let ((_tl124730124842_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124732124837_)))
                                                          (_hd124731124840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124732124837_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124730124842_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl124724124826_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124700124762_))
                          (___match129118129119_
                           _e124699124749_
                           _hd124698124752_
                           _tl124697124754_
                           _e124702124757_
                           _hd124701124760_
                           _tl124700124762_
                           _e124705124765_
                           _hd124704124768_
                           _tl124703124770_
                           _e124708124773_
                           _hd124707124776_
                           _tl124706124778_
                           _e124711124781_
                           _hd124710124784_
                           _tl124709124786_
                           _e124714124789_
                           _hd124713124792_
                           _tl124712124794_
                           _e124717124797_
                           _hd124716124800_
                           _tl124715124802_
                           _e124720124805_
                           _hd124719124808_
                           _tl124718124810_
                           _e124723124813_
                           _hd124722124816_
                           _tl124721124818_
                           _e124726124821_
                           _hd124725124824_
                           _tl124724124826_
                           _e124729124829_
                           _hd124728124832_
                           _tl124727124834_
                           _e124732124837_
                           _hd124731124840_
                           _tl124730124842_)
                          (___kont128993128994_))
                      (___kont128993128994_))
                  (___kont128993128994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128993128994_))
                                              (___kont128993128994_))
                                          (___kont128993128994_))))
                                  (___kont128993128994_))))
                          (___kont128993128994_))))
                   (___match129020129021_
                    (lambda (_e124635124889_
                             _hd124634124892_
                             _tl124633124894_
                             ___splice128987128988_
                             _target124636124897_
                             _tl124638124899_)
                      (letrec ((_loop124639124902_
                                (lambda (_hd124637124905_ _arg124643124907_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124637124905_))
                                      (let ((_e124640124910_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124637124905_))))
                                        (let ((_lp-tl124642124915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124640124910_)))
                                              (_lp-hd124641124913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124640124910_))))
                                          (let ((__tmp130390
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124641124913_
                                                         _arg124643124907_))))
                                            (declare (not safe))
                                            (_loop124639124902_
                                             _lp-tl124642124915_
                                             __tmp130390))))
                                      (let ((_arg124644124918_
                                             (reverse _arg124643124907_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124633124894_))
                                            (let ((_e124647124921_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124633124894_))))
                                              (let ((_tl124645124926_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124647124921_)))
                                                    (_hd124646124924_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124647124921_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124646124924_))
                                                    (let ((_e124650124929_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124646124924_))))
                                                      (let ((_tl124648124934_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124650124929_)))
                    (_hd124649124932_
                     (let () (declare (not safe)) (##car _e124650124929_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124649124932_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124649124932_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124648124934_))
                            (let ((_e124653124937_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124648124934_))))
                              (let ((_tl124651124942_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124653124937_)))
                                    (_hd124652124940_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124653124937_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124652124940_))
                                    (let ((_e124656124945_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124652124940_))))
                                      (let ((_tl124654124950_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124656124945_)))
                                            (_hd124655124948_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124656124945_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124655124948_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124655124948_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124654124950_))
                                                    (let ((_e124659124953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124654124950_))))
                                                      (let ((_tl124657124958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124659124953_)))
                    (_hd124658124956_
                     (let () (declare (not safe)) (##car _e124659124953_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124657124958_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124651124942_))
                        (let ((_e124662124961_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124651124942_))))
                          (let ((_tl124660124966_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124662124961_)))
                                (_hd124661124964_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124662124961_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124661124964_))
                                (let ((_e124665124969_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124661124964_))))
                                  (let ((_tl124663124974_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124665124969_)))
                                        (_hd124664124972_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124665124969_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124664124972_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124664124972_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124663124974_))
                                                (let ((_e124668124977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124663124974_))))
                                                  (let ((_tl124666124982_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124668124977_)))
                                                        (_hd124667124980_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124668124977_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124666124982_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl124660124966_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl124660124966_))
                              '1)
                        (let ((___splice128989128990_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124660124966_
                                  '1))))
                          (let ((_tl124671124987_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128989128990_ '1)))
                                (_target124669124985_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128989128990_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124671124987_))
                                (let ((_e124680124990_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124671124987_))))
                                  (let ((_tl124678124995_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124680124990_)))
                                        (_hd124679124993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124680124990_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd124679124993_))
                                        (let ((_e124683124998_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd124679124993_))))
                                          (let ((_tl124681125003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e124683124998_)))
                                                (_hd124682125001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e124683124998_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd124682125001_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd124682125001_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl124681125003_))
                                                        (let ((_e124686125006_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl124681125003_))))
                  (let ((_tl124684125011_
                         (let () (declare (not safe)) (##cdr _e124686125006_)))
                        (_hd124685125009_
                         (let ()
                           (declare (not safe))
                           (##car _e124686125006_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl124684125011_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl124678124995_))
                            (letrec ((_loop124672125014_
                                      (lambda (_hd124670125017_
                                               _xarg124676125019_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd124670125017_))
                                            (let ((_e124673125022_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd124670125017_))))
                                              (let ((_lp-tl124675125027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124673125022_)))
                                                    (_lp-hd124674125025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124673125022_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd124674125025_))
                                                    (let ((_e124689125030_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd124674125025_))))
                                                      (let ((_tl124687125035_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124689125030_)))
                    (_hd124688125033_
                     (let () (declare (not safe)) (##car _e124689125030_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124688125033_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd124688125033_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124687125035_))
                            (let ((_e124692125038_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124687125035_))))
                              (let ((_tl124690125043_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124692125038_)))
                                    (_hd124691125041_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124692125038_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl124690125043_))
                                    (let ((__tmp130389
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd124691125041_
                                                   _xarg124676125019_))))
                                      (declare (not safe))
                                      (_loop124672125014_
                                       _lp-tl124675125027_
                                       __tmp130389))
                                    (___match129090129091_
                                     _e124635124889_
                                     _hd124634124892_
                                     _tl124633124894_
                                     _e124647124921_
                                     _hd124646124924_
                                     _tl124645124926_
                                     _e124650124929_
                                     _hd124649124932_
                                     _tl124648124934_
                                     _e124653124937_
                                     _hd124652124940_
                                     _tl124651124942_
                                     _e124656124945_
                                     _hd124655124948_
                                     _tl124654124950_
                                     _e124659124953_
                                     _hd124658124956_
                                     _tl124657124958_
                                     _e124662124961_
                                     _hd124661124964_
                                     _tl124660124966_
                                     _e124665124969_
                                     _hd124664124972_
                                     _tl124663124974_
                                     _e124668124977_
                                     _hd124667124980_
                                     _tl124666124982_))))
                            (___match129090129091_
                             _e124635124889_
                             _hd124634124892_
                             _tl124633124894_
                             _e124647124921_
                             _hd124646124924_
                             _tl124645124926_
                             _e124650124929_
                             _hd124649124932_
                             _tl124648124934_
                             _e124653124937_
                             _hd124652124940_
                             _tl124651124942_
                             _e124656124945_
                             _hd124655124948_
                             _tl124654124950_
                             _e124659124953_
                             _hd124658124956_
                             _tl124657124958_
                             _e124662124961_
                             _hd124661124964_
                             _tl124660124966_
                             _e124665124969_
                             _hd124664124972_
                             _tl124663124974_
                             _e124668124977_
                             _hd124667124980_
                             _tl124666124982_))
                        (___match129090129091_
                         _e124635124889_
                         _hd124634124892_
                         _tl124633124894_
                         _e124647124921_
                         _hd124646124924_
                         _tl124645124926_
                         _e124650124929_
                         _hd124649124932_
                         _tl124648124934_
                         _e124653124937_
                         _hd124652124940_
                         _tl124651124942_
                         _e124656124945_
                         _hd124655124948_
                         _tl124654124950_
                         _e124659124953_
                         _hd124658124956_
                         _tl124657124958_
                         _e124662124961_
                         _hd124661124964_
                         _tl124660124966_
                         _e124665124969_
                         _hd124664124972_
                         _tl124663124974_
                         _e124668124977_
                         _hd124667124980_
                         _tl124666124982_))
                    (___match129090129091_
                     _e124635124889_
                     _hd124634124892_
                     _tl124633124894_
                     _e124647124921_
                     _hd124646124924_
                     _tl124645124926_
                     _e124650124929_
                     _hd124649124932_
                     _tl124648124934_
                     _e124653124937_
                     _hd124652124940_
                     _tl124651124942_
                     _e124656124945_
                     _hd124655124948_
                     _tl124654124950_
                     _e124659124953_
                     _hd124658124956_
                     _tl124657124958_
                     _e124662124961_
                     _hd124661124964_
                     _tl124660124966_
                     _e124665124969_
                     _hd124664124972_
                     _tl124663124974_
                     _e124668124977_
                     _hd124667124980_
                     _tl124666124982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129090129091_
                                                     _e124635124889_
                                                     _hd124634124892_
                                                     _tl124633124894_
                                                     _e124647124921_
                                                     _hd124646124924_
                                                     _tl124645124926_
                                                     _e124650124929_
                                                     _hd124649124932_
                                                     _tl124648124934_
                                                     _e124653124937_
                                                     _hd124652124940_
                                                     _tl124651124942_
                                                     _e124656124945_
                                                     _hd124655124948_
                                                     _tl124654124950_
                                                     _e124659124953_
                                                     _hd124658124956_
                                                     _tl124657124958_
                                                     _e124662124961_
                                                     _hd124661124964_
                                                     _tl124660124966_
                                                     _e124665124969_
                                                     _hd124664124972_
                                                     _tl124663124974_
                                                     _e124668124977_
                                                     _hd124667124980_
                                                     _tl124666124982_))))
                                            (let ((_xarg124677125046_
                                                   (reverse _xarg124676125019_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124645124926_))
                                                  (let ((_L125049_
                                                         _hd124685125009_)
                                                        (_L125050_
                                                         _xarg124677125046_)
                                                        (_L125051_
                                                         _hd124667124980_)
                                                        (_L125052_
                                                         _hd124658124956_)
                                                        (_L125053_
                                                         _tl124638124899_)
                                                        (_L125054_
                                                         _arg124644124918_))
                                                    (if (and (let ((__tmp130387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130388
                                   (lambda (_g125097125100_ _g125098125102_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125097125100_
                                             _g125098125102_)))))
                              (declare (not safe))
                              (foldr1 __tmp130388 '() _L125054_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp130387))
                     (let () (declare (not safe)) (gx#identifier? _L125053_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L125052_ 'apply))
                     (fx= (length (let ((__tmp130385
                                         (lambda (_g125104125107_
                                                  _g125105125109_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125104125107_
                                                   _g125105125109_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130385 '() _L125054_)))
                          (length (let ((__tmp130386
                                         (lambda (_g125111125114_
                                                  _g125112125116_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125111125114_
                                                   _g125112125116_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130386 '() _L125050_))))
                     (let ((__tmp130383
                            (let ((__tmp130384
                                   (lambda (_g125118125121_ _g125119125123_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125118125121_
                                             _g125119125123_)))))
                              (declare (not safe))
                              (foldr1 __tmp130384 '() _L125054_)))
                           (__tmp130381
                            (let ((__tmp130382
                                   (lambda (_g125125125128_ _g125126125130_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125125125128_
                                             _g125126125130_)))))
                              (declare (not safe))
                              (foldr1 __tmp130382 '() _L125050_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp130383 __tmp130381))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L125053_ _L125049_))
                     (let ((__tmp130376
                            (let ((__tmp130380
                                   (lambda (_g125132125134_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g125132125134_
                                        _L125051_))))
                                  (__tmp130377
                                   (let ((__tmp130379
                                          (lambda (_g125136125139_
                                                   _g125137125141_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g125136125139_
                                                    _g125137125141_))))
                                         (__tmp130378
                                          (let ()
                                            (declare (not safe))
                                            (cons _L125053_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp130379
                                             __tmp130378
                                             _L125054_))))
                              (declare (not safe))
                              (find __tmp130380 __tmp130377))))
                       (declare (not safe))
                       (not __tmp130376)))
                (___kont128985128986_
                 _L125049_
                 _L125050_
                 _L125051_
                 _L125052_
                 _L125053_
                 _L125054_)
                (___match129090129091_
                 _e124635124889_
                 _hd124634124892_
                 _tl124633124894_
                 _e124647124921_
                 _hd124646124924_
                 _tl124645124926_
                 _e124650124929_
                 _hd124649124932_
                 _tl124648124934_
                 _e124653124937_
                 _hd124652124940_
                 _tl124651124942_
                 _e124656124945_
                 _hd124655124948_
                 _tl124654124950_
                 _e124659124953_
                 _hd124658124956_
                 _tl124657124958_
                 _e124662124961_
                 _hd124661124964_
                 _tl124660124966_
                 _e124665124969_
                 _hd124664124972_
                 _tl124663124974_
                 _e124668124977_
                 _hd124667124980_
                 _tl124666124982_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129090129091_
                                                   _e124635124889_
                                                   _hd124634124892_
                                                   _tl124633124894_
                                                   _e124647124921_
                                                   _hd124646124924_
                                                   _tl124645124926_
                                                   _e124650124929_
                                                   _hd124649124932_
                                                   _tl124648124934_
                                                   _e124653124937_
                                                   _hd124652124940_
                                                   _tl124651124942_
                                                   _e124656124945_
                                                   _hd124655124948_
                                                   _tl124654124950_
                                                   _e124659124953_
                                                   _hd124658124956_
                                                   _tl124657124958_
                                                   _e124662124961_
                                                   _hd124661124964_
                                                   _tl124660124966_
                                                   _e124665124969_
                                                   _hd124664124972_
                                                   _tl124663124974_
                                                   _e124668124977_
                                                   _hd124667124980_
                                                   _tl124666124982_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop124672125014_ _target124669124985_ '())))
                            (___match129090129091_
                             _e124635124889_
                             _hd124634124892_
                             _tl124633124894_
                             _e124647124921_
                             _hd124646124924_
                             _tl124645124926_
                             _e124650124929_
                             _hd124649124932_
                             _tl124648124934_
                             _e124653124937_
                             _hd124652124940_
                             _tl124651124942_
                             _e124656124945_
                             _hd124655124948_
                             _tl124654124950_
                             _e124659124953_
                             _hd124658124956_
                             _tl124657124958_
                             _e124662124961_
                             _hd124661124964_
                             _tl124660124966_
                             _e124665124969_
                             _hd124664124972_
                             _tl124663124974_
                             _e124668124977_
                             _hd124667124980_
                             _tl124666124982_))
                        (___match129090129091_
                         _e124635124889_
                         _hd124634124892_
                         _tl124633124894_
                         _e124647124921_
                         _hd124646124924_
                         _tl124645124926_
                         _e124650124929_
                         _hd124649124932_
                         _tl124648124934_
                         _e124653124937_
                         _hd124652124940_
                         _tl124651124942_
                         _e124656124945_
                         _hd124655124948_
                         _tl124654124950_
                         _e124659124953_
                         _hd124658124956_
                         _tl124657124958_
                         _e124662124961_
                         _hd124661124964_
                         _tl124660124966_
                         _e124665124969_
                         _hd124664124972_
                         _tl124663124974_
                         _e124668124977_
                         _hd124667124980_
                         _tl124666124982_))))
                (___match129090129091_
                 _e124635124889_
                 _hd124634124892_
                 _tl124633124894_
                 _e124647124921_
                 _hd124646124924_
                 _tl124645124926_
                 _e124650124929_
                 _hd124649124932_
                 _tl124648124934_
                 _e124653124937_
                 _hd124652124940_
                 _tl124651124942_
                 _e124656124945_
                 _hd124655124948_
                 _tl124654124950_
                 _e124659124953_
                 _hd124658124956_
                 _tl124657124958_
                 _e124662124961_
                 _hd124661124964_
                 _tl124660124966_
                 _e124665124969_
                 _hd124664124972_
                 _tl124663124974_
                 _e124668124977_
                 _hd124667124980_
                 _tl124666124982_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129090129091_
                                                     _e124635124889_
                                                     _hd124634124892_
                                                     _tl124633124894_
                                                     _e124647124921_
                                                     _hd124646124924_
                                                     _tl124645124926_
                                                     _e124650124929_
                                                     _hd124649124932_
                                                     _tl124648124934_
                                                     _e124653124937_
                                                     _hd124652124940_
                                                     _tl124651124942_
                                                     _e124656124945_
                                                     _hd124655124948_
                                                     _tl124654124950_
                                                     _e124659124953_
                                                     _hd124658124956_
                                                     _tl124657124958_
                                                     _e124662124961_
                                                     _hd124661124964_
                                                     _tl124660124966_
                                                     _e124665124969_
                                                     _hd124664124972_
                                                     _tl124663124974_
                                                     _e124668124977_
                                                     _hd124667124980_
                                                     _tl124666124982_))
                                                (___match129090129091_
                                                 _e124635124889_
                                                 _hd124634124892_
                                                 _tl124633124894_
                                                 _e124647124921_
                                                 _hd124646124924_
                                                 _tl124645124926_
                                                 _e124650124929_
                                                 _hd124649124932_
                                                 _tl124648124934_
                                                 _e124653124937_
                                                 _hd124652124940_
                                                 _tl124651124942_
                                                 _e124656124945_
                                                 _hd124655124948_
                                                 _tl124654124950_
                                                 _e124659124953_
                                                 _hd124658124956_
                                                 _tl124657124958_
                                                 _e124662124961_
                                                 _hd124661124964_
                                                 _tl124660124966_
                                                 _e124665124969_
                                                 _hd124664124972_
                                                 _tl124663124974_
                                                 _e124668124977_
                                                 _hd124667124980_
                                                 _tl124666124982_))))
                                        (___match129090129091_
                                         _e124635124889_
                                         _hd124634124892_
                                         _tl124633124894_
                                         _e124647124921_
                                         _hd124646124924_
                                         _tl124645124926_
                                         _e124650124929_
                                         _hd124649124932_
                                         _tl124648124934_
                                         _e124653124937_
                                         _hd124652124940_
                                         _tl124651124942_
                                         _e124656124945_
                                         _hd124655124948_
                                         _tl124654124950_
                                         _e124659124953_
                                         _hd124658124956_
                                         _tl124657124958_
                                         _e124662124961_
                                         _hd124661124964_
                                         _tl124660124966_
                                         _e124665124969_
                                         _hd124664124972_
                                         _tl124663124974_
                                         _e124668124977_
                                         _hd124667124980_
                                         _tl124666124982_))))
                                (___match129090129091_
                                 _e124635124889_
                                 _hd124634124892_
                                 _tl124633124894_
                                 _e124647124921_
                                 _hd124646124924_
                                 _tl124645124926_
                                 _e124650124929_
                                 _hd124649124932_
                                 _tl124648124934_
                                 _e124653124937_
                                 _hd124652124940_
                                 _tl124651124942_
                                 _e124656124945_
                                 _hd124655124948_
                                 _tl124654124950_
                                 _e124659124953_
                                 _hd124658124956_
                                 _tl124657124958_
                                 _e124662124961_
                                 _hd124661124964_
                                 _tl124660124966_
                                 _e124665124969_
                                 _hd124664124972_
                                 _tl124663124974_
                                 _e124668124977_
                                 _hd124667124980_
                                 _tl124666124982_))))
                        (___match129090129091_
                         _e124635124889_
                         _hd124634124892_
                         _tl124633124894_
                         _e124647124921_
                         _hd124646124924_
                         _tl124645124926_
                         _e124650124929_
                         _hd124649124932_
                         _tl124648124934_
                         _e124653124937_
                         _hd124652124940_
                         _tl124651124942_
                         _e124656124945_
                         _hd124655124948_
                         _tl124654124950_
                         _e124659124953_
                         _hd124658124956_
                         _tl124657124958_
                         _e124662124961_
                         _hd124661124964_
                         _tl124660124966_
                         _e124665124969_
                         _hd124664124972_
                         _tl124663124974_
                         _e124668124977_
                         _hd124667124980_
                         _tl124666124982_))
                    (___match129090129091_
                     _e124635124889_
                     _hd124634124892_
                     _tl124633124894_
                     _e124647124921_
                     _hd124646124924_
                     _tl124645124926_
                     _e124650124929_
                     _hd124649124932_
                     _tl124648124934_
                     _e124653124937_
                     _hd124652124940_
                     _tl124651124942_
                     _e124656124945_
                     _hd124655124948_
                     _tl124654124950_
                     _e124659124953_
                     _hd124658124956_
                     _tl124657124958_
                     _e124662124961_
                     _hd124661124964_
                     _tl124660124966_
                     _e124665124969_
                     _hd124664124972_
                     _tl124663124974_
                     _e124668124977_
                     _hd124667124980_
                     _tl124666124982_))
                (___kont128993128994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128993128994_))
                                            (___kont128993128994_))
                                        (___kont128993128994_))))
                                (___kont128993128994_))))
                        (___kont128993128994_))
                    (___kont128993128994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128993128994_))
                                                (___kont128993128994_))
                                            (___kont128993128994_))))
                                    (___kont128993128994_))))
                            (___kont128993128994_))
                        (___kont128993128994_))
                    (___kont128993128994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128993128994_))))
                                            (___kont128993128994_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124639124902_ _target124636124897_ '())))))
                   (___match129008129009_
                    (lambda (_e124587125149_
                             _hd124586125152_
                             _tl124585125154_
                             ___splice128981128982_
                             _target124588125157_
                             _tl124590125159_)
                      (letrec ((_loop124591125162_
                                (lambda (_hd124589125165_ _arg124595125167_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124589125165_))
                                      (let ((_e124592125170_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124589125165_))))
                                        (let ((_lp-tl124594125175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124592125170_)))
                                              (_lp-hd124593125173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124592125170_))))
                                          (let ((__tmp130404
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124593125173_
                                                         _arg124595125167_))))
                                            (declare (not safe))
                                            (_loop124591125162_
                                             _lp-tl124594125175_
                                             __tmp130404))))
                                      (let ((_arg124596125178_
                                             (reverse _arg124595125167_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124585125154_))
                                            (let ((_e124599125181_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124585125154_))))
                                              (let ((_tl124597125186_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124599125181_)))
                                                    (_hd124598125184_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124599125181_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124598125184_))
                                                    (let ((_e124602125189_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124598125184_))))
                                                      (let ((_tl124600125194_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124602125189_)))
                    (_hd124601125192_
                     (let () (declare (not safe)) (##car _e124602125189_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124601125192_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124601125192_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124600125194_))
                            (let ((_e124605125197_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124600125194_))))
                              (let ((_tl124603125202_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124605125197_)))
                                    (_hd124604125200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124605125197_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124604125200_))
                                    (let ((_e124608125205_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124604125200_))))
                                      (let ((_tl124606125210_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124608125205_)))
                                            (_hd124607125208_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124608125205_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124607125208_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124607125208_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124606125210_))
                                                    (let ((_e124611125213_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124606125210_))))
                                                      (let ((_tl124609125218_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124611125213_)))
                    (_hd124610125216_
                     (let () (declare (not safe)) (##car _e124611125213_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124609125218_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124603125202_))
                        (let ((___splice128983128984_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124603125202_
                                  '0))))
                          (let ((_tl124614125223_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128983128984_ '1)))
                                (_target124612125221_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128983128984_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124614125223_))
                                (letrec ((_loop124615125226_
                                          (lambda (_hd124613125229_
                                                   _xarg124619125231_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124613125229_))
                                                (let ((_e124616125234_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124613125229_))))
                                                  (let ((_lp-tl124618125239_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124616125234_)))
                                                        (_lp-hd124617125237_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124616125234_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124617125237_))
                                                        (let ((_e124623125242_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124617125237_))))
                  (let ((_tl124621125247_
                         (let () (declare (not safe)) (##cdr _e124623125242_)))
                        (_hd124622125245_
                         (let ()
                           (declare (not safe))
                           (##car _e124623125242_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124622125245_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124622125245_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124621125247_))
                                (let ((_e124626125250_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124621125247_))))
                                  (let ((_tl124624125255_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124626125250_)))
                                        (_hd124625125253_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124626125250_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124624125255_))
                                        (let ((__tmp130403
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124625125253_
                                                       _xarg124619125231_))))
                                          (declare (not safe))
                                          (_loop124615125226_
                                           _lp-tl124618125239_
                                           __tmp130403))
                                        (___match129020129021_
                                         _e124587125149_
                                         _hd124586125152_
                                         _tl124585125154_
                                         ___splice128981128982_
                                         _target124588125157_
                                         _tl124590125159_))))
                                (___match129020129021_
                                 _e124587125149_
                                 _hd124586125152_
                                 _tl124585125154_
                                 ___splice128981128982_
                                 _target124588125157_
                                 _tl124590125159_))
                            (___match129020129021_
                             _e124587125149_
                             _hd124586125152_
                             _tl124585125154_
                             ___splice128981128982_
                             _target124588125157_
                             _tl124590125159_))
                        (___match129020129021_
                         _e124587125149_
                         _hd124586125152_
                         _tl124585125154_
                         ___splice128981128982_
                         _target124588125157_
                         _tl124590125159_))))
                (___match129020129021_
                 _e124587125149_
                 _hd124586125152_
                 _tl124585125154_
                 ___splice128981128982_
                 _target124588125157_
                 _tl124590125159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124620125258_
                                                       (reverse _xarg124619125231_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124597125186_))
                                                      (let ((_L125261_
                                                             _xarg124620125258_)
                                                            (_L125262_
                                                             _hd124610125216_)
                                                            (_L125263_
                                                             _arg124596125178_))
                                                        (if (and (let ((__tmp130401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp130402
                                       (lambda (_g125291125294_
                                                _g125292125296_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125291125294_
                                                 _g125292125296_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130402 '() _L125263_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp130401))
                         (fx= (length (let ((__tmp130399
                                             (lambda (_g125298125301_
                                                      _g125299125303_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125298125301_
                                                       _g125299125303_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130399 '() _L125263_)))
                              (length (let ((__tmp130400
                                             (lambda (_g125305125308_
                                                      _g125306125310_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125305125308_
                                                       _g125306125310_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130400 '() _L125261_))))
                         (let ((__tmp130397
                                (let ((__tmp130398
                                       (lambda (_g125312125315_
                                                _g125313125317_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125312125315_
                                                 _g125313125317_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130398 '() _L125263_)))
                               (__tmp130395
                                (let ((__tmp130396
                                       (lambda (_g125319125322_
                                                _g125320125324_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125319125322_
                                                 _g125320125324_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130396 '() _L125261_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp130397
                                    __tmp130395))
                         (let ((__tmp130391
                                (let ((__tmp130394
                                       (lambda (_g125326125328_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g125326125328_
                                            _L125262_))))
                                      (__tmp130392
                                       (let ((__tmp130393
                                              (lambda (_g125330125333_
                                                       _g125331125335_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g125330125333_
                                                        _g125331125335_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp130393 '() _L125263_))))
                                  (declare (not safe))
                                  (find __tmp130394 __tmp130392))))
                           (declare (not safe))
                           (not __tmp130391)))
                    (___kont128979128980_ _L125261_ _L125262_ _L125263_)
                    (___match129020129021_
                     _e124587125149_
                     _hd124586125152_
                     _tl124585125154_
                     ___splice128981128982_
                     _target124588125157_
                     _tl124590125159_)))
              (___match129020129021_
               _e124587125149_
               _hd124586125152_
               _tl124585125154_
               ___splice128981128982_
               _target124588125157_
               _tl124590125159_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop124615125226_
                                     _target124612125221_
                                     '())))
                                (___match129020129021_
                                 _e124587125149_
                                 _hd124586125152_
                                 _tl124585125154_
                                 ___splice128981128982_
                                 _target124588125157_
                                 _tl124590125159_))))
                        (___match129020129021_
                         _e124587125149_
                         _hd124586125152_
                         _tl124585125154_
                         ___splice128981128982_
                         _target124588125157_
                         _tl124590125159_))
                    (___match129020129021_
                     _e124587125149_
                     _hd124586125152_
                     _tl124585125154_
                     ___splice128981128982_
                     _target124588125157_
                     _tl124590125159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129020129021_
                                                     _e124587125149_
                                                     _hd124586125152_
                                                     _tl124585125154_
                                                     ___splice128981128982_
                                                     _target124588125157_
                                                     _tl124590125159_))
                                                (___match129020129021_
                                                 _e124587125149_
                                                 _hd124586125152_
                                                 _tl124585125154_
                                                 ___splice128981128982_
                                                 _target124588125157_
                                                 _tl124590125159_))
                                            (___match129020129021_
                                             _e124587125149_
                                             _hd124586125152_
                                             _tl124585125154_
                                             ___splice128981128982_
                                             _target124588125157_
                                             _tl124590125159_))))
                                    (___match129020129021_
                                     _e124587125149_
                                     _hd124586125152_
                                     _tl124585125154_
                                     ___splice128981128982_
                                     _target124588125157_
                                     _tl124590125159_))))
                            (___match129020129021_
                             _e124587125149_
                             _hd124586125152_
                             _tl124585125154_
                             ___splice128981128982_
                             _target124588125157_
                             _tl124590125159_))
                        (___match129020129021_
                         _e124587125149_
                         _hd124586125152_
                         _tl124585125154_
                         ___splice128981128982_
                         _target124588125157_
                         _tl124590125159_))
                    (___match129020129021_
                     _e124587125149_
                     _hd124586125152_
                     _tl124585125154_
                     ___splice128981128982_
                     _target124588125157_
                     _tl124590125159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129020129021_
                                                     _e124587125149_
                                                     _hd124586125152_
                                                     _tl124585125154_
                                                     ___splice128981128982_
                                                     _target124588125157_
                                                     _tl124590125159_))))
                                            (___match129020129021_
                                             _e124587125149_
                                             _hd124586125152_
                                             _tl124585125154_
                                             ___splice128981128982_
                                             _target124588125157_
                                             _tl124590125159_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124591125162_ _target124588125157_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128977128978_))
                  (let ((_e124587125149_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128977128978_))))
                    (let ((_tl124585125154_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124587125149_)))
                          (_hd124586125152_
                           (let ()
                             (declare (not safe))
                             (##car _e124587125149_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124586125152_))
                          (let ((___splice128981128982_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124586125152_
                                    '0))))
                            (let ((_tl124590125159_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128981128982_ '1)))
                                  (_target124588125157_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128981128982_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124590125159_))
                                  (___match129008129009_
                                   _e124587125149_
                                   _hd124586125152_
                                   _tl124585125154_
                                   ___splice128981128982_
                                   _target124588125157_
                                   _tl124590125159_)
                                  (___match129020129021_
                                   _e124587125149_
                                   _hd124586125152_
                                   _tl124585125154_
                                   ___splice128981128982_
                                   _target124588125157_
                                   _tl124590125159_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124585125154_))
                              (let ((_e124702124757_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124585125154_))))
                                (let ((_tl124700124762_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124702124757_)))
                                      (_hd124701124760_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124702124757_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124701124760_))
                                      (let ((_e124705124765_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124701124760_))))
                                        (let ((_tl124703124770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124705124765_)))
                                              (_hd124704124768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124705124765_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124704124768_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124704124768_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124703124770_))
                                                      (let ((_e124708124773_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124703124770_))))
                (let ((_tl124706124778_
                       (let () (declare (not safe)) (##cdr _e124708124773_)))
                      (_hd124707124776_
                       (let () (declare (not safe)) (##car _e124708124773_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124707124776_))
                      (let ((_e124711124781_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124707124776_))))
                        (let ((_tl124709124786_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124711124781_)))
                              (_hd124710124784_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124711124781_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124710124784_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124710124784_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124709124786_))
                                      (let ((_e124714124789_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124709124786_))))
                                        (let ((_tl124712124794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124714124789_)))
                                              (_hd124713124792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124714124789_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124712124794_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124706124778_))
                                                  (let ((_e124717124797_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124706124778_))))
                                                    (let ((_tl124715124802_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124717124797_)))
                                                          (_hd124716124800_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124717124797_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124716124800_))
                                                          (let ((_e124720124805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124716124800_))))
                    (let ((_tl124718124810_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124720124805_)))
                          (_hd124719124808_
                           (let ()
                             (declare (not safe))
                             (##car _e124720124805_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124719124808_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124719124808_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124718124810_))
                                  (let ((_e124723124813_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124718124810_))))
                                    (let ((_tl124721124818_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124723124813_)))
                                          (_hd124722124816_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124723124813_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124721124818_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124715124802_))
                                              (let ((_e124726124821_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124715124802_))))
                                                (let ((_tl124724124826_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124726124821_)))
                                                      (_hd124725124824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124726124821_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124725124824_))
                                                      (let ((_e124729124829_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124725124824_))))
                (let ((_tl124727124834_
                       (let () (declare (not safe)) (##cdr _e124729124829_)))
                      (_hd124728124832_
                       (let () (declare (not safe)) (##car _e124729124829_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124728124832_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124728124832_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124727124834_))
                              (let ((_e124732124837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124727124834_))))
                                (let ((_tl124730124842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124732124837_)))
                                      (_hd124731124840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124732124837_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124730124842_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124724124826_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124700124762_))
                                              (___match129118129119_
                                               _e124587125149_
                                               _hd124586125152_
                                               _tl124585125154_
                                               _e124702124757_
                                               _hd124701124760_
                                               _tl124700124762_
                                               _e124705124765_
                                               _hd124704124768_
                                               _tl124703124770_
                                               _e124708124773_
                                               _hd124707124776_
                                               _tl124706124778_
                                               _e124711124781_
                                               _hd124710124784_
                                               _tl124709124786_
                                               _e124714124789_
                                               _hd124713124792_
                                               _tl124712124794_
                                               _e124717124797_
                                               _hd124716124800_
                                               _tl124715124802_
                                               _e124720124805_
                                               _hd124719124808_
                                               _tl124718124810_
                                               _e124723124813_
                                               _hd124722124816_
                                               _tl124721124818_
                                               _e124726124821_
                                               _hd124725124824_
                                               _tl124724124826_
                                               _e124729124829_
                                               _hd124728124832_
                                               _tl124727124834_
                                               _e124732124837_
                                               _hd124731124840_
                                               _tl124730124842_)
                                              (___kont128993128994_))
                                          (___kont128993128994_))
                                      (___kont128993128994_))))
                              (___kont128993128994_))
                          (___kont128993128994_))
                      (___kont128993128994_))))
              (___kont128993128994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont128993128994_))
                                          (___kont128993128994_))))
                                  (___kont128993128994_))
                              (___kont128993128994_))
                          (___kont128993128994_))))
                  (___kont128993128994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128993128994_))
                                              (___kont128993128994_))))
                                      (___kont128993128994_))
                                  (___kont128993128994_))
                              (___kont128993128994_))))
                      (___kont128993128994_))))
              (___kont128993128994_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128993128994_))
                                              (___kont128993128994_))))
                                      (___kont128993128994_))))
                              (___kont128993128994_)))))
                  (___kont128993128994_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form124043_)
        (let* ((___stx129121129122_ _form124043_)
               (_g124047124171_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129121129122_)))))
          (let ((___kont129123129124_
                 (lambda (_L124541_ _L124542_ _L124543_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124542_))))
                (___kont129129129130_
                 (lambda (_L124389_ _L124390_ _L124391_ _L124392_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124389_))))
                (___kont129133129134_
                 (lambda (_L124256_ _L124257_ _L124258_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124256_)))))
            (let* ((___match129230129231_
                    (lambda (_e124139124176_
                             _hd124138124179_
                             _tl124137124181_
                             _e124142124184_
                             _hd124141124187_
                             _tl124140124189_
                             _e124145124192_
                             _hd124144124195_
                             _tl124143124197_
                             _e124148124200_
                             _hd124147124203_
                             _tl124146124205_
                             _e124151124208_
                             _hd124150124211_
                             _tl124149124213_
                             _e124154124216_
                             _hd124153124219_
                             _tl124152124221_
                             _e124157124224_
                             _hd124156124227_
                             _tl124155124229_
                             _e124160124232_
                             _hd124159124235_
                             _tl124158124237_
                             _e124163124240_
                             _hd124162124243_
                             _tl124161124245_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124155124229_))
                          (let ((_e124166124248_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124155124229_))))
                            (let ((_tl124164124253_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124166124248_)))
                                  (_hd124165124251_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124166124248_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124164124253_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124140124189_))
                                      (___kont129133129134_
                                       _hd124162124243_
                                       _hd124153124219_
                                       _hd124138124179_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124047124171_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124047124171_)))))
                          (let () (declare (not safe)) (_g124047124171_)))))
                   (___match129160129161_
                    (lambda (_e124100124293_
                             _hd124099124296_
                             _tl124098124298_
                             ___splice129131129132_
                             _target124101124301_
                             _tl124103124303_)
                      (letrec ((_loop124104124306_
                                (lambda (_hd124102124309_ _arg124108124311_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124102124309_))
                                      (let ((_e124105124314_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124102124309_))))
                                        (let ((_lp-tl124107124319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124105124314_)))
                                              (_lp-hd124106124317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124105124314_))))
                                          (let ((__tmp130405
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124106124317_
                                                         _arg124108124311_))))
                                            (declare (not safe))
                                            (_loop124104124306_
                                             _lp-tl124107124319_
                                             __tmp130405))))
                                      (let ((_arg124109124322_
                                             (reverse _arg124108124311_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124098124298_))
                                            (let ((_e124112124325_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124098124298_))))
                                              (let ((_tl124110124330_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124112124325_)))
                                                    (_hd124111124328_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124112124325_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124111124328_))
                                                    (let ((_e124115124333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124111124328_))))
                                                      (let ((_tl124113124338_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124115124333_)))
                    (_hd124114124336_
                     (let () (declare (not safe)) (##car _e124115124333_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124114124336_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124114124336_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124113124338_))
                            (let ((_e124118124341_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124113124338_))))
                              (let ((_tl124116124346_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124118124341_)))
                                    (_hd124117124344_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124118124341_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124117124344_))
                                    (let ((_e124121124349_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124117124344_))))
                                      (let ((_tl124119124354_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124121124349_)))
                                            (_hd124120124352_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124121124349_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124120124352_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124120124352_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124119124354_))
                                                    (let ((_e124124124357_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124119124354_))))
                                                      (let ((_tl124122124362_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124124124357_)))
                    (_hd124123124360_
                     (let () (declare (not safe)) (##car _e124124124357_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124122124362_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124116124346_))
                        (let ((_e124127124365_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124116124346_))))
                          (let ((_tl124125124370_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124127124365_)))
                                (_hd124126124368_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124127124365_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124126124368_))
                                (let ((_e124130124373_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124126124368_))))
                                  (let ((_tl124128124378_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124130124373_)))
                                        (_hd124129124376_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124130124373_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124129124376_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124129124376_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124128124378_))
                                                (let ((_e124133124381_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124128124378_))))
                                                  (let ((_tl124131124386_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124133124381_)))
                                                        (_hd124132124384_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124133124381_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124131124386_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl124110124330_))
                                                            (___kont129129129130_
                                                             _hd124132124384_
                                                             _hd124123124360_
                                                             _tl124103124303_
                                                             _arg124109124322_)
                                                            (___match129230129231_
                                                             _e124100124293_
                                                             _hd124099124296_
                                                             _tl124098124298_
                                                             _e124112124325_
                                                             _hd124111124328_
                                                             _tl124110124330_
                                                             _e124115124333_
                                                             _hd124114124336_
                                                             _tl124113124338_
                                                             _e124118124341_
                                                             _hd124117124344_
                                                             _tl124116124346_
                                                             _e124121124349_
                                                             _hd124120124352_
                                                             _tl124119124354_
                                                             _e124124124357_
                                                             _hd124123124360_
                                                             _tl124122124362_
                                                             _e124127124365_
                                                             _hd124126124368_
                                                             _tl124125124370_
                                                             _e124130124373_
                                                             _hd124129124376_
                                                             _tl124128124378_
                                                             _e124133124381_
                                                             _hd124132124384_
                                                             _tl124131124386_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g124047124171_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124047124171_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124047124171_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g124047124171_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124047124171_)))))
                        (let () (declare (not safe)) (_g124047124171_)))
                    (let () (declare (not safe)) (_g124047124171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124047124171_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124047124171_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124047124171_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g124047124171_)))))
                            (let () (declare (not safe)) (_g124047124171_)))
                        (let () (declare (not safe)) (_g124047124171_)))
                    (let () (declare (not safe)) (_g124047124171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124047124171_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g124047124171_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop124104124306_ _target124101124301_ '())))))
                   (___match129148129149_
                    (lambda (_e124054124429_
                             _hd124053124432_
                             _tl124052124434_
                             ___splice129125129126_
                             _target124055124437_
                             _tl124057124439_)
                      (letrec ((_loop124058124442_
                                (lambda (_hd124056124445_ _arg124062124447_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124056124445_))
                                      (let ((_e124059124450_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124056124445_))))
                                        (let ((_lp-tl124061124455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124059124450_)))
                                              (_lp-hd124060124453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124059124450_))))
                                          (let ((__tmp130407
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124060124453_
                                                         _arg124062124447_))))
                                            (declare (not safe))
                                            (_loop124058124442_
                                             _lp-tl124061124455_
                                             __tmp130407))))
                                      (let ((_arg124063124458_
                                             (reverse _arg124062124447_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124052124434_))
                                            (let ((_e124066124461_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124052124434_))))
                                              (let ((_tl124064124466_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124066124461_)))
                                                    (_hd124065124464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124066124461_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124065124464_))
                                                    (let ((_e124069124469_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124065124464_))))
                                                      (let ((_tl124067124474_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124069124469_)))
                    (_hd124068124472_
                     (let () (declare (not safe)) (##car _e124069124469_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124068124472_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124068124472_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124067124474_))
                            (let ((_e124072124477_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124067124474_))))
                              (let ((_tl124070124482_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124072124477_)))
                                    (_hd124071124480_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124072124477_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124071124480_))
                                    (let ((_e124075124485_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124071124480_))))
                                      (let ((_tl124073124490_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124075124485_)))
                                            (_hd124074124488_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124075124485_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124074124488_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124074124488_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124073124490_))
                                                    (let ((_e124078124493_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124073124490_))))
                                                      (let ((_tl124076124498_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124078124493_)))
                    (_hd124077124496_
                     (let () (declare (not safe)) (##car _e124078124493_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124076124498_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124070124482_))
                        (let ((___splice129127129128_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124070124482_
                                  '0))))
                          (let ((_tl124081124503_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129127129128_ '1)))
                                (_target124079124501_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129127129128_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124081124503_))
                                (letrec ((_loop124082124506_
                                          (lambda (_hd124080124509_
                                                   _xarg124086124511_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124080124509_))
                                                (let ((_e124083124514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124080124509_))))
                                                  (let ((_lp-tl124085124519_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124083124514_)))
                                                        (_lp-hd124084124517_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124083124514_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124084124517_))
                                                        (let ((_e124090124522_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124084124517_))))
                  (let ((_tl124088124527_
                         (let () (declare (not safe)) (##cdr _e124090124522_)))
                        (_hd124089124525_
                         (let ()
                           (declare (not safe))
                           (##car _e124090124522_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124089124525_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124089124525_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124088124527_))
                                (let ((_e124093124530_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124088124527_))))
                                  (let ((_tl124091124535_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124093124530_)))
                                        (_hd124092124533_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124093124530_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124091124535_))
                                        (let ((__tmp130406
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124092124533_
                                                       _xarg124086124511_))))
                                          (declare (not safe))
                                          (_loop124082124506_
                                           _lp-tl124085124519_
                                           __tmp130406))
                                        (___match129160129161_
                                         _e124054124429_
                                         _hd124053124432_
                                         _tl124052124434_
                                         ___splice129125129126_
                                         _target124055124437_
                                         _tl124057124439_))))
                                (___match129160129161_
                                 _e124054124429_
                                 _hd124053124432_
                                 _tl124052124434_
                                 ___splice129125129126_
                                 _target124055124437_
                                 _tl124057124439_))
                            (___match129160129161_
                             _e124054124429_
                             _hd124053124432_
                             _tl124052124434_
                             ___splice129125129126_
                             _target124055124437_
                             _tl124057124439_))
                        (___match129160129161_
                         _e124054124429_
                         _hd124053124432_
                         _tl124052124434_
                         ___splice129125129126_
                         _target124055124437_
                         _tl124057124439_))))
                (___match129160129161_
                 _e124054124429_
                 _hd124053124432_
                 _tl124052124434_
                 ___splice129125129126_
                 _target124055124437_
                 _tl124057124439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124087124538_
                                                       (reverse _xarg124086124511_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124064124466_))
                                                      (___kont129123129124_
                                                       _xarg124087124538_
                                                       _hd124077124496_
                                                       _arg124063124458_)
                                                      (___match129160129161_
                                                       _e124054124429_
                                                       _hd124053124432_
                                                       _tl124052124434_
                                                       ___splice129125129126_
                                                       _target124055124437_
                                                       _tl124057124439_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop124082124506_
                                     _target124079124501_
                                     '())))
                                (___match129160129161_
                                 _e124054124429_
                                 _hd124053124432_
                                 _tl124052124434_
                                 ___splice129125129126_
                                 _target124055124437_
                                 _tl124057124439_))))
                        (___match129160129161_
                         _e124054124429_
                         _hd124053124432_
                         _tl124052124434_
                         ___splice129125129126_
                         _target124055124437_
                         _tl124057124439_))
                    (___match129160129161_
                     _e124054124429_
                     _hd124053124432_
                     _tl124052124434_
                     ___splice129125129126_
                     _target124055124437_
                     _tl124057124439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129160129161_
                                                     _e124054124429_
                                                     _hd124053124432_
                                                     _tl124052124434_
                                                     ___splice129125129126_
                                                     _target124055124437_
                                                     _tl124057124439_))
                                                (___match129160129161_
                                                 _e124054124429_
                                                 _hd124053124432_
                                                 _tl124052124434_
                                                 ___splice129125129126_
                                                 _target124055124437_
                                                 _tl124057124439_))
                                            (___match129160129161_
                                             _e124054124429_
                                             _hd124053124432_
                                             _tl124052124434_
                                             ___splice129125129126_
                                             _target124055124437_
                                             _tl124057124439_))))
                                    (___match129160129161_
                                     _e124054124429_
                                     _hd124053124432_
                                     _tl124052124434_
                                     ___splice129125129126_
                                     _target124055124437_
                                     _tl124057124439_))))
                            (___match129160129161_
                             _e124054124429_
                             _hd124053124432_
                             _tl124052124434_
                             ___splice129125129126_
                             _target124055124437_
                             _tl124057124439_))
                        (___match129160129161_
                         _e124054124429_
                         _hd124053124432_
                         _tl124052124434_
                         ___splice129125129126_
                         _target124055124437_
                         _tl124057124439_))
                    (___match129160129161_
                     _e124054124429_
                     _hd124053124432_
                     _tl124052124434_
                     ___splice129125129126_
                     _target124055124437_
                     _tl124057124439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129160129161_
                                                     _e124054124429_
                                                     _hd124053124432_
                                                     _tl124052124434_
                                                     ___splice129125129126_
                                                     _target124055124437_
                                                     _tl124057124439_))))
                                            (___match129160129161_
                                             _e124054124429_
                                             _hd124053124432_
                                             _tl124052124434_
                                             ___splice129125129126_
                                             _target124055124437_
                                             _tl124057124439_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124058124442_ _target124055124437_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129121129122_))
                  (let ((_e124054124429_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129121129122_))))
                    (let ((_tl124052124434_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124054124429_)))
                          (_hd124053124432_
                           (let ()
                             (declare (not safe))
                             (##car _e124054124429_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124053124432_))
                          (let ((___splice129125129126_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124053124432_
                                    '0))))
                            (let ((_tl124057124439_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129125129126_ '1)))
                                  (_target124055124437_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129125129126_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124057124439_))
                                  (___match129148129149_
                                   _e124054124429_
                                   _hd124053124432_
                                   _tl124052124434_
                                   ___splice129125129126_
                                   _target124055124437_
                                   _tl124057124439_)
                                  (___match129160129161_
                                   _e124054124429_
                                   _hd124053124432_
                                   _tl124052124434_
                                   ___splice129125129126_
                                   _target124055124437_
                                   _tl124057124439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124052124434_))
                              (let ((_e124142124184_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124052124434_))))
                                (let ((_tl124140124189_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124142124184_)))
                                      (_hd124141124187_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124142124184_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124141124187_))
                                      (let ((_e124145124192_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124141124187_))))
                                        (let ((_tl124143124197_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124145124192_)))
                                              (_hd124144124195_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124145124192_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124144124195_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124144124195_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124143124197_))
                                                      (let ((_e124148124200_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124143124197_))))
                (let ((_tl124146124205_
                       (let () (declare (not safe)) (##cdr _e124148124200_)))
                      (_hd124147124203_
                       (let () (declare (not safe)) (##car _e124148124200_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124147124203_))
                      (let ((_e124151124208_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124147124203_))))
                        (let ((_tl124149124213_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124151124208_)))
                              (_hd124150124211_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124151124208_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124150124211_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124150124211_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124149124213_))
                                      (let ((_e124154124216_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124149124213_))))
                                        (let ((_tl124152124221_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124154124216_)))
                                              (_hd124153124219_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124154124216_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124152124221_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124146124205_))
                                                  (let ((_e124157124224_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124146124205_))))
                                                    (let ((_tl124155124229_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124157124224_)))
                                                          (_hd124156124227_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124157124224_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124156124227_))
                                                          (let ((_e124160124232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124156124227_))))
                    (let ((_tl124158124237_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124160124232_)))
                          (_hd124159124235_
                           (let ()
                             (declare (not safe))
                             (##car _e124160124232_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124159124235_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124159124235_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124158124237_))
                                  (let ((_e124163124240_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124158124237_))))
                                    (let ((_tl124161124245_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124163124240_)))
                                          (_hd124162124243_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124163124240_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124161124245_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124155124229_))
                                              (let ((_e124166124248_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124155124229_))))
                                                (let ((_tl124164124253_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124166124248_)))
                                                      (_hd124165124251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124166124248_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124164124253_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124140124189_))
                                                          (___kont129133129134_
                                                           _hd124162124243_
                                                           _hd124153124219_
                                                           _hd124053124432_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124047124171_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124047124171_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124047124171_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g124047124171_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124047124171_)))
                              (let () (declare (not safe)) (_g124047124171_)))
                          (let () (declare (not safe)) (_g124047124171_)))))
                  (let () (declare (not safe)) (_g124047124171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124047124171_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124047124171_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124047124171_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124047124171_)))
                              (let ()
                                (declare (not safe))
                                (_g124047124171_)))))
                      (let () (declare (not safe)) (_g124047124171_)))))
              (let () (declare (not safe)) (_g124047124171_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124047124171_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124047124171_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124047124171_)))))
                              (let ()
                                (declare (not safe))
                                (_g124047124171_))))))
                  (let () (declare (not safe)) (_g124047124171_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form123847_)
        (let* ((_g123849123863_
                (lambda (_g123850123860_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123850123860_))))
               (_g123848124040_
                (lambda (_g123850123866_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123850123866_))
                      (let ((_e123855123868_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123850123866_))))
                        (let ((_hd123854123871_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123855123868_)))
                              (_tl123853123873_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123855123868_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123853123873_))
                              (let ((_e123858123876_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123853123873_))))
                                (let ((_hd123857123879_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123858123876_)))
                                      (_tl123856123881_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123858123876_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123856123881_))
                                      ((lambda (_L123884_ _L123885_)
                                         (let* ((___stx129243129244_ _L123885_)
                                                (_g123900123928_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx129243129244_)))))
                                           (let ((___kont129245129246_
                                                  (lambda (_L124019_)
                                                    (length (let ((__tmp130408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124029124032_ _g124030124034_)
                             (let ()
                               (declare (not safe))
                               (cons _g124029124032_ _g124030124034_)))))
                      (declare (not safe))
                      (foldr1 __tmp130408 '() _L124019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129249129250_
                                                  (lambda (_L123970_ _L123971_)
                                                    (let ((__tmp130409
                                                           (length (let ((__tmp130410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g123982123985_ _g123983123987_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g123982123985_
                                            _g123983123987_)))))
                             (declare (not safe))
                             (foldr1 __tmp130410 '() _L123971_)))))
              (declare (not safe))
              (cons __tmp130409 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129253129254_
                                                  (lambda (_L123933_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match129268129269_
                                                     (lambda (___splice129251129252_
                                                              _target123914123946_
                                                              _tl123916123948_)
                                                       (letrec ((_loop123917123951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123915123954_ _arg123921123956_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123915123954_))
                               (let ((_e123918123959_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123915123954_))))
                                 (let ((_lp-tl123920123964_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123918123959_)))
                                       (_lp-hd123919123962_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123918123959_))))
                                   (let ((__tmp130411
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123919123962_
                                                  _arg123921123956_))))
                                     (declare (not safe))
                                     (_loop123917123951_
                                      _lp-tl123920123964_
                                      __tmp130411))))
                               (let ((_arg123922123967_
                                      (reverse _arg123921123956_)))
                                 (___kont129249129250_
                                  _tl123916123948_
                                  _arg123922123967_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123917123951_ _target123914123946_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129262129263_
                                                     (lambda (___splice129247129248_
                                                              _target123903123995_
                                                              _tl123905123997_)
                                                       (letrec ((_loop123906124000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123904124003_ _arg123910124005_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123904124003_))
                               (let ((_e123907124008_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123904124003_))))
                                 (let ((_lp-tl123909124013_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123907124008_)))
                                       (_lp-hd123908124011_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123907124008_))))
                                   (let ((__tmp130412
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123908124011_
                                                  _arg123910124005_))))
                                     (declare (not safe))
                                     (_loop123906124000_
                                      _lp-tl123909124013_
                                      __tmp130412))))
                               (let ((_arg123911124016_
                                      (reverse _arg123910124005_)))
                                 (___kont129245129246_ _arg123911124016_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123906124000_ _target123903123995_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx129243129244_))
                                                   (let ((___splice129247129248_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx129243129244_
                                                             '0))))
                                                     (let ((_tl123905123997_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129247129248_
                                                               '1)))
                                                           (_target123903123995_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129247129248_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl123905123997_))
                                                           (___match129262129263_
                                                            ___splice129247129248_
                                                            _target123903123995_
                                                            _tl123905123997_)
                                                           (___match129268129269_
                                                            ___splice129247129248_
                                                            _target123903123995_
                                                            _tl123905123997_))))
                                                   (___kont129253129254_
                                                    ___stx129243129244_))))))
                                       _hd123857123879_
                                       _hd123854123871_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123849123863_ _g123850123866_)))))
                              (let ()
                                (declare (not safe))
                                (_g123849123863_ _g123850123866_)))))
                      (let ()
                        (declare (not safe))
                        (_g123849123863_ _g123850123866_))))))
          (declare (not safe))
          (_g123848124040_ _form123847_))))
    (define gxc#lambda-expr?
      (lambda (_expr123800_)
        (let* ((___stx129271129272_ _expr123800_)
               (_g123803123813_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129271129272_)))))
          (let ((___kont129273129274_ (lambda (_L123833_) '#t))
                (___kont129275129276_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129271129272_))
                (let ((_e123808123825_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129271129272_))))
                  (let ((_tl123806123830_
                         (let () (declare (not safe)) (##cdr _e123808123825_)))
                        (_hd123807123828_
                         (let ()
                           (declare (not safe))
                           (##car _e123808123825_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123807123828_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd123807123828_))
                            (___kont129273129274_ _tl123806123830_)
                            (___kont129275129276_))
                        (___kont129275129276_))))
                (___kont129275129276_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr123753_)
        (let* ((___stx129289129290_ _expr123753_)
               (_g123756123766_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129289129290_)))))
          (let ((___kont129291129292_ (lambda (_L123786_) '#t))
                (___kont129293129294_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129289129290_))
                (let ((_e123761123778_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129289129290_))))
                  (let ((_tl123759123783_
                         (let () (declare (not safe)) (##cdr _e123761123778_)))
                        (_hd123760123781_
                         (let ()
                           (declare (not safe))
                           (##car _e123761123778_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123760123781_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd123760123781_))
                            (___kont129291129292_ _tl123759123783_)
                            (___kont129293129294_))
                        (___kont129293129294_))))
                (___kont129293129294_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr123622_)
        (let* ((___stx129307129308_ _expr123622_)
               (_g123625123655_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129307129308_)))))
          (let ((___kont129309129310_
                 (lambda (_L123723_ _L123724_ _L123725_)
                   (if (let () (declare (not safe)) (gx#identifier? _L123725_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L123724_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L123723_))
                           '#f)
                       '#f)))
                (___kont129311129312_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129307129308_))
                (let ((_e123632123667_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129307129308_))))
                  (let ((_tl123630123672_
                         (let () (declare (not safe)) (##cdr _e123632123667_)))
                        (_hd123631123670_
                         (let ()
                           (declare (not safe))
                           (##car _e123632123667_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123631123670_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123631123670_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123630123672_))
                                (let ((_e123635123675_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123630123672_))))
                                  (let ((_tl123633123680_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123635123675_)))
                                        (_hd123634123678_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123635123675_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123634123678_))
                                        (let ((_e123638123683_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123634123678_))))
                                          (let ((_tl123636123688_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123638123683_)))
                                                (_hd123637123686_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123638123683_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123637123686_))
                                                (let ((_e123641123691_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123637123686_))))
                                                  (let ((_tl123639123696_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123641123691_)))
                                                        (_hd123640123694_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123641123691_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123640123694_))
                                                        (let ((_e123644123699_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123640123694_))))
                  (let ((_tl123642123704_
                         (let () (declare (not safe)) (##cdr _e123644123699_)))
                        (_hd123643123702_
                         (let ()
                           (declare (not safe))
                           (##car _e123644123699_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123642123704_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123639123696_))
                            (let ((_e123647123707_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123639123696_))))
                              (let ((_tl123645123712_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123647123707_)))
                                    (_hd123646123710_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123647123707_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123645123712_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123636123688_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123633123680_))
                                            (let ((_e123650123715_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123633123680_))))
                                              (let ((_tl123648123720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123650123715_)))
                                                    (_hd123649123718_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123650123715_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123648123720_))
                                                    (___kont129309129310_
                                                     _hd123649123718_
                                                     _hd123646123710_
                                                     _hd123643123702_)
                                                    (___kont129311129312_))))
                                            (___kont129311129312_))
                                        (___kont129311129312_))
                                    (___kont129311129312_))))
                            (___kont129311129312_))
                        (___kont129311129312_))))
                (___kont129311129312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129311129312_))))
                                        (___kont129311129312_))))
                                (___kont129311129312_))
                            (___kont129311129312_))
                        (___kont129311129312_))))
                (___kont129311129312_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr122947_)
        (let* ((___stx129369129370_ _expr122947_)
               (_g122950123108_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129369129370_)))))
          (let ((___kont129371129372_
                 (lambda (_L123496_
                          _L123497_
                          _L123498_
                          _L123499_
                          _L123500_
                          _L123501_
                          _L123502_
                          _L123503_
                          _L123504_
                          _L123505_
                          _L123506_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L123503_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L123499_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L123498_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L123506_
                                      _L123497_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L123505_
                                          _L123502_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123500_
                                              _L123496_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123504_
                                              _L123501_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont129373129374_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129369129370_))
                (let ((_e122965123120_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129369129370_))))
                  (let ((_tl122963123125_
                         (let () (declare (not safe)) (##cdr _e122965123120_)))
                        (_hd122964123123_
                         (let ()
                           (declare (not safe))
                           (##car _e122965123120_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122964123123_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122964123123_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122963123125_))
                                (let ((_e122968123128_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122963123125_))))
                                  (let ((_tl122966123133_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122968123128_)))
                                        (_hd122967123131_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122968123128_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122967123131_))
                                        (let ((_e122971123136_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122967123131_))))
                                          (let ((_tl122969123141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122971123136_)))
                                                (_hd122970123139_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122971123136_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122970123139_))
                                                (let ((_e122974123144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122970123139_))))
                                                  (let ((_tl122972123149_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122974123144_)))
                                                        (_hd122973123147_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122974123144_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122973123147_))
                                                        (let ((_e122977123152_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122973123147_))))
                  (let ((_tl122975123157_
                         (let () (declare (not safe)) (##cdr _e122977123152_)))
                        (_hd122976123155_
                         (let ()
                           (declare (not safe))
                           (##car _e122977123152_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122975123157_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122972123149_))
                            (let ((_e122980123160_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122972123149_))))
                              (let ((_tl122978123165_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122980123160_)))
                                    (_hd122979123163_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122980123160_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122979123163_))
                                    (let ((_e122983123168_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122979123163_))))
                                      (let ((_tl122981123173_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122983123168_)))
                                            (_hd122982123171_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122983123168_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122982123171_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd122982123171_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122981123173_))
                                                    (let ((_e122986123176_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122981123173_))))
                                                      (let ((_tl122984123181_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122986123176_)))
                    (_hd122985123179_
                     (let () (declare (not safe)) (##car _e122986123176_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122985123179_))
                    (let ((_e122989123184_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122985123179_))))
                      (let ((_tl122987123189_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122989123184_)))
                            (_hd122988123187_
                             (let ()
                               (declare (not safe))
                               (##car _e122989123184_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd122988123187_))
                            (let ((_e122992123192_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd122988123187_))))
                              (let ((_tl122990123197_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122992123192_)))
                                    (_hd122991123195_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122992123192_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122991123195_))
                                    (let ((_e122995123200_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122991123195_))))
                                      (let ((_tl122993123205_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122995123200_)))
                                            (_hd122994123203_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122995123200_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122993123205_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122990123197_))
                                                (let ((_e122998123208_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122990123197_))))
                                                  (let ((_tl122996123213_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122998123208_)))
                                                        (_hd122997123211_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122998123208_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122996123213_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122987123189_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl122984123181_))
                        (let ((_e123001123216_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122984123181_))))
                          (let ((_tl122999123221_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123001123216_)))
                                (_hd123000123219_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123001123216_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123000123219_))
                                (let ((_e123004123224_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123000123219_))))
                                  (let ((_tl123002123229_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123004123224_)))
                                        (_hd123003123227_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123004123224_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123003123227_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd123003123227_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123002123229_))
                                                (let ((_e123007123232_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123002123229_))))
                                                  (let ((_tl123005123237_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123007123232_)))
                                                        (_hd123006123235_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123007123232_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123006123235_))
                                                        (let ((_e123010123240_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123006123235_))))
                  (let ((_tl123008123245_
                         (let () (declare (not safe)) (##cdr _e123010123240_)))
                        (_hd123009123243_
                         (let ()
                           (declare (not safe))
                           (##car _e123010123240_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123005123237_))
                        (let ((_e123013123248_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123005123237_))))
                          (let ((_tl123011123253_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123013123248_)))
                                (_hd123012123251_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123013123248_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123012123251_))
                                (let ((_e123016123256_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123012123251_))))
                                  (let ((_tl123014123261_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123016123256_)))
                                        (_hd123015123259_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123016123256_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123015123259_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd123015123259_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123014123261_))
                                                (let ((_e123019123264_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123014123261_))))
                                                  (let ((_tl123017123269_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123019123264_)))
                                                        (_hd123018123267_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123019123264_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123018123267_))
                                                        (let ((_e123022123272_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123018123267_))))
                  (let ((_tl123020123277_
                         (let () (declare (not safe)) (##cdr _e123022123272_)))
                        (_hd123021123275_
                         (let ()
                           (declare (not safe))
                           (##car _e123022123272_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123021123275_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123021123275_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123020123277_))
                                (let ((_e123025123280_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123020123277_))))
                                  (let ((_tl123023123285_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123025123280_)))
                                        (_hd123024123283_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123025123280_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123023123285_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123017123269_))
                                            (let ((_e123028123288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123017123269_))))
                                              (let ((_tl123026123293_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123028123288_)))
                                                    (_hd123027123291_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123028123288_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123027123291_))
                                                    (let ((_e123031123296_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123027123291_))))
                                                      (let ((_tl123029123301_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123031123296_)))
                    (_hd123030123299_
                     (let () (declare (not safe)) (##car _e123031123296_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123030123299_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123030123299_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123029123301_))
                            (let ((_e123034123304_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123029123301_))))
                              (let ((_tl123032123309_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123034123304_)))
                                    (_hd123033123307_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123034123304_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123032123309_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123026123293_))
                                        (let ((_e123037123312_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123026123293_))))
                                          (let ((_tl123035123317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123037123312_)))
                                                (_hd123036123315_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123037123312_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123036123315_))
                                                (let ((_e123040123320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123036123315_))))
                                                  (let ((_tl123038123325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123040123320_)))
                                                        (_hd123039123323_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123040123320_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd123039123323_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd123039123323_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123038123325_))
                        (let ((_e123043123328_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123038123325_))))
                          (let ((_tl123041123333_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123043123328_)))
                                (_hd123042123331_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123043123328_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123041123333_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123011123253_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122999123221_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122978123165_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122969123141_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122966123133_))
                                                    (let ((_e123046123336_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122966123133_))))
                                                      (let ((_tl123044123341_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123046123336_)))
                    (_hd123045123339_
                     (let () (declare (not safe)) (##car _e123046123336_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123045123339_))
                    (let ((_e123049123344_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123045123339_))))
                      (let ((_tl123047123349_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123049123344_)))
                            (_hd123048123347_
                             (let ()
                               (declare (not safe))
                               (##car _e123049123344_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123048123347_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd123048123347_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123047123349_))
                                    (let ((_e123052123352_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123047123349_))))
                                      (let ((_tl123050123357_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123052123352_)))
                                            (_hd123051123355_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123052123352_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123050123357_))
                                            (let ((_e123055123360_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123050123357_))))
                                              (let ((_tl123053123365_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123055123360_)))
                                                    (_hd123054123363_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123055123360_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123054123363_))
                                                    (let ((_e123058123368_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123054123363_))))
                                                      (let ((_tl123056123373_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123058123368_)))
                    (_hd123057123371_
                     (let () (declare (not safe)) (##car _e123058123368_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123057123371_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123057123371_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123056123373_))
                            (let ((_e123061123376_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123056123373_))))
                              (let ((_tl123059123381_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123061123376_)))
                                    (_hd123060123379_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123061123376_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123060123379_))
                                    (let ((_e123064123384_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123060123379_))))
                                      (let ((_tl123062123389_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123064123384_)))
                                            (_hd123063123387_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123064123384_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123063123387_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123063123387_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123062123389_))
                                                    (let ((_e123067123392_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123062123389_))))
                                                      (let ((_tl123065123397_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123067123392_)))
                    (_hd123066123395_
                     (let () (declare (not safe)) (##car _e123067123392_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123065123397_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123059123381_))
                        (let ((_e123070123400_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123059123381_))))
                          (let ((_tl123068123405_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123070123400_)))
                                (_hd123069123403_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123070123400_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123069123403_))
                                (let ((_e123073123408_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123069123403_))))
                                  (let ((_tl123071123413_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123073123408_)))
                                        (_hd123072123411_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123073123408_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123072123411_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123072123411_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123071123413_))
                                                (let ((_e123076123416_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123071123413_))))
                                                  (let ((_tl123074123421_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123076123416_)))
                                                        (_hd123075123419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123076123416_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123074123421_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl123068123405_))
                                                            (let ((_e123079123424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl123068123405_))))
                      (let ((_tl123077123429_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123079123424_)))
                            (_hd123078123427_
                             (let ()
                               (declare (not safe))
                               (##car _e123079123424_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123078123427_))
                            (let ((_e123082123432_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123078123427_))))
                              (let ((_tl123080123437_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123082123432_)))
                                    (_hd123081123435_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123082123432_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd123081123435_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd123081123435_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123080123437_))
                                            (let ((_e123085123440_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123080123437_))))
                                              (let ((_tl123083123445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123085123440_)))
                                                    (_hd123084123443_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123085123440_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123083123445_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123077123429_))
                                                        (let ((_e123088123448_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123077123429_))))
                  (let ((_tl123086123453_
                         (let () (declare (not safe)) (##cdr _e123088123448_)))
                        (_hd123087123451_
                         (let ()
                           (declare (not safe))
                           (##car _e123088123448_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd123087123451_))
                        (let ((_e123091123456_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd123087123451_))))
                          (let ((_tl123089123461_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123091123456_)))
                                (_hd123090123459_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123091123456_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd123090123459_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd123090123459_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123089123461_))
                                        (let ((_e123094123464_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123089123461_))))
                                          (let ((_tl123092123469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123094123464_)))
                                                (_hd123093123467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123094123464_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123092123469_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123086123453_))
                                                    (let ((_e123097123472_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123086123453_))))
                                                      (let ((_tl123095123477_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123097123472_)))
                    (_hd123096123475_
                     (let () (declare (not safe)) (##car _e123097123472_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123096123475_))
                    (let ((_e123100123480_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123096123475_))))
                      (let ((_tl123098123485_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123100123480_)))
                            (_hd123099123483_
                             (let ()
                               (declare (not safe))
                               (##car _e123100123480_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123099123483_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd123099123483_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123098123485_))
                                    (let ((_e123103123488_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123098123485_))))
                                      (let ((_tl123101123493_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123103123488_)))
                                            (_hd123102123491_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123103123488_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123101123493_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123095123477_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123053123365_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123044123341_))
                                                        (___kont129371129372_
                                                         _hd123102123491_
                                                         _hd123093123467_
                                                         _hd123075123419_
                                                         _hd123066123395_
                                                         _hd123051123355_
                                                         _hd123042123331_
                                                         _hd123033123307_
                                                         _hd123024123283_
                                                         _hd123009123243_
                                                         _hd122994123203_
                                                         _hd122976123155_)
                                                        (___kont129373129374_))
                                                    (___kont129373129374_))
                                                (___kont129373129374_))
                                            (___kont129373129374_))))
                                    (___kont129373129374_))
                                (___kont129373129374_))
                            (___kont129373129374_))))
                    (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129373129374_))
                                                (___kont129373129374_))))
                                        (___kont129373129374_))
                                    (___kont129373129374_))
                                (___kont129373129374_))))
                        (___kont129373129374_))))
                (___kont129373129374_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129373129374_))))
                                            (___kont129373129374_))
                                        (___kont129373129374_))
                                    (___kont129373129374_))))
                            (___kont129373129374_))))
                    (___kont129373129374_))
                (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129373129374_))
                                            (___kont129373129374_))
                                        (___kont129373129374_))))
                                (___kont129373129374_))))
                        (___kont129373129374_))
                    (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129373129374_))
                                                (___kont129373129374_))
                                            (___kont129373129374_))))
                                    (___kont129373129374_))))
                            (___kont129373129374_))
                        (___kont129373129374_))
                    (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129373129374_))))
                                            (___kont129373129374_))))
                                    (___kont129373129374_))
                                (___kont129373129374_))
                            (___kont129373129374_))))
                    (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129373129374_))
                                                (___kont129373129374_))
                                            (___kont129373129374_))
                                        (___kont129373129374_))
                                    (___kont129373129374_))
                                (___kont129373129374_))))
                        (___kont129373129374_))
                    (___kont129373129374_))
                (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129373129374_))))
                                        (___kont129373129374_))
                                    (___kont129373129374_))))
                            (___kont129373129374_))
                        (___kont129373129374_))
                    (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129373129374_))))
                                            (___kont129373129374_))
                                        (___kont129373129374_))))
                                (___kont129373129374_))
                            (___kont129373129374_))
                        (___kont129373129374_))))
                (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129373129374_))
                                            (___kont129373129374_))
                                        (___kont129373129374_))))
                                (___kont129373129374_))))
                        (___kont129373129374_))))
                (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129373129374_))
                                            (___kont129373129374_))
                                        (___kont129373129374_))))
                                (___kont129373129374_))))
                        (___kont129373129374_))
                    (___kont129373129374_))
                (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129373129374_))
                                            (___kont129373129374_))))
                                    (___kont129373129374_))))
                            (___kont129373129374_))))
                    (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129373129374_))
                                                (___kont129373129374_))
                                            (___kont129373129374_))))
                                    (___kont129373129374_))))
                            (___kont129373129374_))
                        (___kont129373129374_))))
                (___kont129373129374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129373129374_))))
                                        (___kont129373129374_))))
                                (___kont129373129374_))
                            (___kont129373129374_))
                        (___kont129373129374_))))
                (___kont129373129374_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx122689_ _id122690_ _clauses122691_ _gensym?122692_)
        (let _lp122694_ ((_rest122696_ _clauses122691_)
                         (_ids122697_ '())
                         (_impls122698_ '())
                         (_clauses122699_ '()))
          (let* ((_rest122700122708_ _rest122696_)
                 (_else122702122716_
                  (lambda ()
                    (values (reverse _ids122697_)
                            (reverse _impls122698_)
                            (reverse _clauses122699_))))
                 (_K122704122921_
                  (lambda (_rest122719_ _clause122720_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause122720_))
                        (let ((__tmp130468
                               (let ()
                                 (declare (not safe))
                                 (cons _clause122720_ _clauses122699_))))
                          (declare (not safe))
                          (_lp122694_
                           _rest122719_
                           _ids122697_
                           _impls122698_
                           __tmp130468))
                        (let* ((_g122722122733_
                                (lambda (_g122723122730_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g122723122730_))))
                               (_g122721122918_
                                (lambda (_g122723122736_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g122723122736_))
                                      (let ((_e122728122738_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g122723122736_))))
                                        (let ((_hd122727122741_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122728122738_)))
                                              (_tl122726122743_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122728122738_))))
                                          ((lambda (_L122746_ _L122747_)
                                             (let* ((_id122764_
                                                     (let ((__tmp130415
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id122690_)))
                                                           (__tmp130414
                                                            (length _clauses122699_))
                                                           (__tmp130413
                                                            (if _gensym?122692_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp130415
                                                        '"__"
                                                        __tmp130414
                                                        __tmp130413)))
                                                    (_id122766_
                                                     (let ((__tmp130416
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx122689_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id122764_
                                                        __tmp130416)))
                                                    (_impl122768_
                                                     (let ((__tmp130417
                                                            (let ((__tmp130419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp130418
                           (let ()
                             (declare (not safe))
                             (cons _L122747_ _L122746_))))
                      (declare (not safe))
                      (cons __tmp130419 __tmp130418))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp130417 _stx122689_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause122915_
                                                     (let* ((___stx129753129754_
                                                             _L122747_)
                                                            (_g122772122800_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx129753129754_)))))
               (let ((___kont129755129756_
                      (lambda (_L122894_)
                        (let ((__tmp130420
                               (let ((__tmp130421
                                      (let ((__tmp130422
                                             (let ((__tmp130423
                                                    (let ((__tmp130429
                                                           (let ((__tmp130430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id122766_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130430)))
                  (__tmp130424
                   (let ((__tmp130425
                          (lambda (_g122904122907_ _g122905122909_)
                            (let ((__tmp130426
                                   (let ((__tmp130428
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp130427
                                          (let ()
                                            (declare (not safe))
                                            (cons _g122904122907_ '()))))
                                     (declare (not safe))
                                     (cons __tmp130428 __tmp130427))))
                              (declare (not safe))
                              (cons __tmp130426 _g122905122909_)))))
                     (declare (not safe))
                     (foldr1 __tmp130425 '() _L122894_))))
              (declare (not safe))
              (cons __tmp130429 __tmp130424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130423))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130422
                                         _stx122689_))))
                                 (declare (not safe))
                                 (cons __tmp130421 '()))))
                          (declare (not safe))
                          (cons _L122747_ __tmp130420))))
                     (___kont129759129760_
                      (lambda (_L122845_ _L122846_)
                        (let ((__tmp130431
                               (let ((__tmp130432
                                      (let ((__tmp130433
                                             (let ((__tmp130434
                                                    (let ((__tmp130448
                                                           (let ((__tmp130449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130449)))
                  (__tmp130435
                   (let ((__tmp130446
                          (let ((__tmp130447
                                 (let ()
                                   (declare (not safe))
                                   (cons _id122766_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130447)))
                         (__tmp130436
                          (let ((__tmp130442
                                 (let ((__tmp130443
                                        (let ((__tmp130445
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp130444
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L122845_ '()))))
                                          (declare (not safe))
                                          (cons __tmp130445 __tmp130444))))
                                   (declare (not safe))
                                   (cons __tmp130443 '())))
                                (__tmp130437
                                 (let ((__tmp130438
                                        (lambda (_g122857122860_
                                                 _g122858122862_)
                                          (let ((__tmp130439
                                                 (let ((__tmp130441
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp130440
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g122857122860_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp130441
                                                         __tmp130440))))
                                            (declare (not safe))
                                            (cons __tmp130439
                                                  _g122858122862_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp130438 '() _L122846_))))
                            (declare (not safe))
                            (foldr1 cons __tmp130442 __tmp130437))))
                     (declare (not safe))
                     (cons __tmp130446 __tmp130436))))
              (declare (not safe))
              (cons __tmp130448 __tmp130435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130434))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130433
                                         _stx122689_))))
                                 (declare (not safe))
                                 (cons __tmp130432 '()))))
                          (declare (not safe))
                          (cons _L122747_ __tmp130431))))
                     (___kont129763129764_
                      (lambda (_L122805_)
                        (let ((__tmp130450
                               (let ((__tmp130451
                                      (let ((__tmp130452
                                             (let ((__tmp130453
                                                    (let ((__tmp130461
                                                           (let ((__tmp130462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130462)))
                  (__tmp130454
                   (let ((__tmp130459
                          (let ((__tmp130460
                                 (let ()
                                   (declare (not safe))
                                   (cons _id122766_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130460)))
                         (__tmp130455
                          (let ((__tmp130456
                                 (let ((__tmp130458
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp130457
                                        (let ()
                                          (declare (not safe))
                                          (cons _L122805_ '()))))
                                   (declare (not safe))
                                   (cons __tmp130458 __tmp130457))))
                            (declare (not safe))
                            (cons __tmp130456 '()))))
                     (declare (not safe))
                     (cons __tmp130459 __tmp130455))))
              (declare (not safe))
              (cons __tmp130461 __tmp130454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130453))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130452
                                         _stx122689_))))
                                 (declare (not safe))
                                 (cons __tmp130451 '()))))
                          (declare (not safe))
                          (cons _L122747_ __tmp130450)))))
                 (let* ((___match129778129779_
                         (lambda (___splice129761129762_
                                  _target122786122821_
                                  _tl122788122823_)
                           (letrec ((_loop122789122826_
                                     (lambda (_hd122787122829_
                                              _arg122793122831_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd122787122829_))
                                           (let ((_e122790122834_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd122787122829_))))
                                             (let ((_lp-tl122792122839_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122790122834_)))
                                                   (_lp-hd122791122837_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122790122834_))))
                                               (let ((__tmp130463
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd122791122837_
                                                              _arg122793122831_))))
                                                 (declare (not safe))
                                                 (_loop122789122826_
                                                  _lp-tl122792122839_
                                                  __tmp130463))))
                                           (let ((_arg122794122842_
                                                  (reverse _arg122793122831_)))
                                             (___kont129759129760_
                                              _tl122788122823_
                                              _arg122794122842_))))))
                             (let ()
                               (declare (not safe))
                               (_loop122789122826_
                                _target122786122821_
                                '())))))
                        (___match129772129773_
                         (lambda (___splice129757129758_
                                  _target122775122870_
                                  _tl122777122872_)
                           (letrec ((_loop122778122875_
                                     (lambda (_hd122776122878_
                                              _arg122782122880_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd122776122878_))
                                           (let ((_e122779122883_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd122776122878_))))
                                             (let ((_lp-tl122781122888_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122779122883_)))
                                                   (_lp-hd122780122886_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122779122883_))))
                                               (let ((__tmp130464
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd122780122886_
                                                              _arg122782122880_))))
                                                 (declare (not safe))
                                                 (_loop122778122875_
                                                  _lp-tl122781122888_
                                                  __tmp130464))))
                                           (let ((_arg122783122891_
                                                  (reverse _arg122782122880_)))
                                             (___kont129755129756_
                                              _arg122783122891_))))))
                             (let ()
                               (declare (not safe))
                               (_loop122778122875_
                                _target122775122870_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx129753129754_))
                       (let ((___splice129757129758_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx129753129754_
                                 '0))))
                         (let ((_tl122777122872_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice129757129758_ '1)))
                               (_target122775122870_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice129757129758_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl122777122872_))
                               (___match129772129773_
                                ___splice129757129758_
                                _target122775122870_
                                _tl122777122872_)
                               (___match129778129779_
                                ___splice129757129758_
                                _target122775122870_
                                _tl122777122872_))))
                       (___kont129763129764_ ___stx129753129754_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp130467
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id122766_
                                                              _ids122697_)))
                                                     (__tmp130466
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl122768_
                                                              _impls122698_)))
                                                     (__tmp130465
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause122915_
                                                              _clauses122699_))))
                                                 (declare (not safe))
                                                 (_lp122694_
                                                  _rest122719_
                                                  __tmp130467
                                                  __tmp130466
                                                  __tmp130465))))
                                           _tl122726122743_
                                           _hd122727122741_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g122722122733_ _g122723122736_))))))
                          (declare (not safe))
                          (_g122721122918_ _clause122720_))))))
            (if (let () (declare (not safe)) (##pair? _rest122700122708_))
                (let ((_hd122705122924_
                       (let ()
                         (declare (not safe))
                         (##car _rest122700122708_)))
                      (_tl122706122926_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest122700122708_))))
                  (let* ((_clause122929_ _hd122705122924_)
                         (_rest122931_ _tl122706122926_))
                    (declare (not safe))
                    (_K122704122921_ _rest122931_ _clause122929_)))
                (let () (declare (not safe)) (_else122702122716_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx122936_ _id122937_ _clauses122938_)
        (let ((_gensym?122940_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx122936_
           _id122937_
           _clauses122938_
           _gensym?122940_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g130470_
        (let ((_g130469_ (let () (declare (not safe)) (##length _g130470_))))
          (cond ((let () (declare (not safe)) (##fx= _g130469_ 3))
                 (apply (lambda (_stx122936_ _id122937_ _clauses122938_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx122936_
                             _id122937_
                             _clauses122938_)))
                        _g130470_))
                ((let () (declare (not safe)) (##fx= _g130469_ 4))
                 (apply (lambda (_stx122942_
                                 _id122943_
                                 _clauses122944_
                                 _gensym?122945_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx122942_
                             _id122943_
                             _clauses122944_
                             _gensym?122945_)))
                        _g130470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g130470_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self121965_ _stx121966_)
        (letrec ((_case-lambda-clause-def121968_
                  (lambda (_id122685_ _impl122686_)
                    (let ((__tmp130471
                           (let ((__tmp130472
                                  (let ((__tmp130475
                                         (let ()
                                           (declare (not safe))
                                           (cons _id122685_ '())))
                                        (__tmp130473
                                         (let ((__tmp130474
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121965_
                                                   _impl122686_))))
                                           (declare (not safe))
                                           (cons __tmp130474 '()))))
                                    (declare (not safe))
                                    (cons __tmp130475 __tmp130473))))
                             (declare (not safe))
                             (cons '%#define-values __tmp130472))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130471 _stx121966_))))
                 (_opt-lambda-dispatch-name121969_
                  (lambda (_id122681_)
                    (if (uninterned-symbol? _id122681_)
                        (let ((_str122683_ (symbol->string _id122681_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str122683_))
                              '"%"
                              _id122681_))
                        _id122681_)))
                 (_kw-lambda-dispatch-name121970_
                  (lambda (_id122676_ _name122677_)
                    (if (uninterned-symbol? _id122676_)
                        (let ((_str122679_ (symbol->string _id122676_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str122679_))
                              _name122677_
                              _id122676_))
                        _id122676_))))
          (let* ((___stx129801129802_ _stx121966_)
                 (_g121975122034_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx129801129802_)))))
            (let ((___kont129803129804_
                   (lambda (_L122585_ _L122586_)
                     (let* ((___stx129781129782_ _L122585_)
                            (_g122603122617_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx129781129782_)))))
                       (let ((___kont129783129784_
                              (lambda (_L122661_) _stx121966_))
                             (___kont129785129786_
                              (lambda (_L122630_)
                                (let ((_g130476_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx121966_
                                          _L122586_
                                          _L122630_))))
                                  (begin
                                    (let ((_g130477_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130476_)
                                                 (##vector-length _g130476_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130477_ 3)))
                                          (error "Context expects 3 values"
                                                 _g130477_)))
                                    (let ((_ids122640_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130476_ 0)))
                                          (_impls122641_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130476_ 1)))
                                          (_clauses122642_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130476_ 2))))
                                      (let* ((_g130478_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids122640_))
                                             (_defs122645_
                                              (map _case-lambda-clause-def121968_
                                                   _ids122640_
                                                   _impls122641_)))
                                        (let ((__tmp130480
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L122586_)))
                                              (__tmp130479
                                               (map gxc#identifier-symbol
                                                    _ids122640_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp130480
                                           '" => "
                                           __tmp130479))
                                        (let ((__tmp130481
                                               (let ((__tmp130482
                                                      (let ((__tmp130483
                                                             (let ((__tmp130484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130485
                                   (let ((__tmp130486
                                          (let ((__tmp130491
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L122586_ '())))
                                                (__tmp130487
                                                 (let ((__tmp130488
                                                        (let ((__tmp130490
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses122642_)))
                      (__tmp130489
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp130490 __tmp130489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130488 '()))))
                                            (declare (not safe))
                                            (cons __tmp130491 __tmp130487))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp130486))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130485
                               _stx121966_))))
                       (declare (not safe))
                       (cons __tmp130484 '()))))
                (declare (not safe))
                (foldr1 cons __tmp130483 _defs122645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp130482))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp130481
                                           _stx121966_)))))))))
                         (let ((___match129792129793_
                                (lambda (_e122608122653_
                                         _hd122607122656_
                                         _tl122606122658_)
                                  (let ((_L122661_ _tl122606122658_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L122661_))
                                        (___kont129783129784_ _L122661_)
                                        (___kont129785129786_
                                         _tl122606122658_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx129781129782_))
                               (let ((_e122608122653_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx129781129782_))))
                                 (let ((_tl122606122658_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122608122653_)))
                                       (_hd122607122656_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122608122653_))))
                                   (___match129792129793_
                                    _e122608122653_
                                    _hd122607122656_
                                    _tl122606122658_)))
                               (let ()
                                 (declare (not safe))
                                 (_g122603122617_))))))))
                  (___kont129805129806_
                   (lambda (_L122403_ _L122404_)
                     (let* ((_g122420122450_
                             (lambda (_g122421122447_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122421122447_))))
                            (_g122419122545_
                             (lambda (_g122421122453_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122421122453_))
                                   (let ((_e122427122455_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122421122453_))))
                                     (let ((_hd122426122458_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122427122455_)))
                                           (_tl122425122460_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122427122455_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122425122460_))
                                           (let ((_e122430122463_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122425122460_))))
                                             (let ((_hd122429122466_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122430122463_)))
                                                   (_tl122428122468_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122430122463_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122429122466_))
                                                   (let ((_e122433122471_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122429122466_))))
                                                     (let ((_hd122432122474_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122433122471_)))
                                                           (_tl122431122476_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122433122471_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122432122474_))
                                                           (let ((_e122436122479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122432122474_))))
                     (let ((_hd122435122482_
                            (let ()
                              (declare (not safe))
                              (##car _e122436122479_)))
                           (_tl122434122484_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122436122479_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122435122482_))
                           (let ((_e122439122487_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122435122482_))))
                             (let ((_hd122438122490_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122439122487_)))
                                   (_tl122437122492_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122439122487_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122437122492_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122434122484_))
                                       (let ((_e122442122495_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122434122484_))))
                                         (let ((_hd122441122498_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122442122495_)))
                                               (_tl122440122500_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122442122495_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122440122500_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl122431122476_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122428122468_))
                                                       (let ((_e122445122503_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122428122468_))))
                 (let ((_hd122444122506_
                        (let () (declare (not safe)) (##car _e122445122503_)))
                       (_tl122443122508_
                        (let () (declare (not safe)) (##cdr _e122445122503_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl122443122508_))
                       ((lambda (_L122511_ _L122512_ _L122513_)
                          (let* ((_lambda-id122537_
                                  (let ((__tmp130494
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L122404_)))
                                        (__tmp130492
                                         (let ((__tmp130493
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L122513_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name121969_
                                            __tmp130493))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp130494
                                     '"__"
                                     __tmp130492)))
                                 (_lambda-id122539_
                                  (let ((__tmp130495
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx121966_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id122537_
                                     __tmp130495)))
                                 (_g130496_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id122539_)))
                                 (_new-case-lambda-expr122542_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L122511_
                                     'id:
                                     _L122513_
                                     'new-id:
                                     _lambda-id122539_))))
                            (let ((__tmp130498
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L122404_)))
                                  (__tmp130497
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id122539_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp130498
                               '" => "
                               __tmp130497))
                            (let ((__tmp130499
                                   (let ((__tmp130500
                                          (let ((__tmp130508
                                                 (let ((__tmp130509
                                                        (let ((__tmp130510
                                                               (let ((__tmp130513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id122539_ '())))
                             (__tmp130511
                              (let ((__tmp130512
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self121965_
                                        _L122512_))))
                                (declare (not safe))
                                (cons __tmp130512 '()))))
                         (declare (not safe))
                         (cons __tmp130513 __tmp130511))))
                  (declare (not safe))
                  (cons '%#define-values __tmp130510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp130509
                                                    _stx121966_)))
                                                (__tmp130501
                                                 (let ((__tmp130502
                                                        (let ((__tmp130503
                                                               (let ((__tmp130504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp130505
                                     (let ((__tmp130507
                                            (let ()
                                              (declare (not safe))
                                              (cons _L122404_ '())))
                                           (__tmp130506
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr122542_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp130507 __tmp130506))))
                                (declare (not safe))
                                (cons '%#define-values __tmp130505))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp130504 _stx121966_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self121965_
                   __tmp130503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130502 '()))))
                                            (declare (not safe))
                                            (cons __tmp130508 __tmp130501))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp130500))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130499
                               _stx121966_))))
                        _hd122444122506_
                        _hd122441122498_
                        _hd122438122490_)
                       (let ()
                         (declare (not safe))
                         (_g122420122450_ _g122421122453_)))))
               (let () (declare (not safe)) (_g122420122450_ _g122421122453_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122420122450_
                                                      _g122421122453_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122420122450_
                                                  _g122421122453_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122420122450_ _g122421122453_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122420122450_ _g122421122453_)))))
                           (let ()
                             (declare (not safe))
                             (_g122420122450_ _g122421122453_)))))
                   (let ()
                     (declare (not safe))
                     (_g122420122450_ _g122421122453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122420122450_
                                                      _g122421122453_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122420122450_
                                              _g122421122453_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122420122450_ _g122421122453_))))))
                       (declare (not safe))
                       (_g122419122545_ _L122403_))))
                  (___kont129807129808_
                   (lambda (_L122117_ _L122118_)
                     (let* ((_g122134122187_
                             (lambda (_g122135122184_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122135122184_))))
                            (_g122133122363_
                             (lambda (_g122135122190_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122135122190_))
                                   (let ((_e122143122192_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122135122190_))))
                                     (let ((_hd122142122195_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122143122192_)))
                                           (_tl122141122197_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122143122192_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122141122197_))
                                           (let ((_e122146122200_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122141122197_))))
                                             (let ((_hd122145122203_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122146122200_)))
                                                   (_tl122144122205_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122146122200_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122145122203_))
                                                   (let ((_e122149122208_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122145122203_))))
                                                     (let ((_hd122148122211_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122149122208_)))
                                                           (_tl122147122213_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122149122208_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122148122211_))
                                                           (let ((_e122152122216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122148122211_))))
                     (let ((_hd122151122219_
                            (let ()
                              (declare (not safe))
                              (##car _e122152122216_)))
                           (_tl122150122221_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122152122216_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122151122219_))
                           (let ((_e122155122224_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122151122219_))))
                             (let ((_hd122154122227_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122155122224_)))
                                   (_tl122153122229_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122155122224_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122153122229_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122150122221_))
                                       (let ((_e122158122232_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122150122221_))))
                                         (let ((_hd122157122235_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122158122232_)))
                                               (_tl122156122237_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122158122232_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd122157122235_))
                                               (let ((_e122161122240_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd122157122235_))))
                                                 (let ((_hd122160122243_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122161122240_)))
                                                       (_tl122159122245_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122161122240_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122159122245_))
                                                       (let ((_e122164122248_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122159122245_))))
                 (let ((_hd122163122251_
                        (let () (declare (not safe)) (##car _e122164122248_)))
                       (_tl122162122253_
                        (let () (declare (not safe)) (##cdr _e122164122248_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd122163122251_))
                       (let ((_e122167122256_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd122163122251_))))
                         (let ((_hd122166122259_
                                (let ()
                                  (declare (not safe))
                                  (##car _e122167122256_)))
                               (_tl122165122261_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e122167122256_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122166122259_))
                               (let ((_e122170122264_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122166122259_))))
                                 (let ((_hd122169122267_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122170122264_)))
                                       (_tl122168122269_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122170122264_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd122169122267_))
                                       (let ((_e122173122272_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd122169122267_))))
                                         (let ((_hd122172122275_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122173122272_)))
                                               (_tl122171122277_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122173122272_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122171122277_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl122168122269_))
                                                   (let ((_e122176122280_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl122168122269_))))
                                                     (let ((_hd122175122283_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122176122280_)))
                                                           (_tl122174122285_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122176122280_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122174122285_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl122165122261_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl122162122253_))
                           (let ((_e122179122288_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl122162122253_))))
                             (let ((_hd122178122291_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122179122288_)))
                                   (_tl122177122293_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122179122288_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122177122293_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl122156122237_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl122147122213_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl122144122205_))
                                               (let ((_e122182122296_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl122144122205_))))
                                                 (let ((_hd122181122299_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122182122296_)))
                                                       (_tl122180122301_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122182122296_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl122180122301_))
                                                       ((lambda (_L122304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L122305_
                         _L122306_
                         _L122307_
                         _L122308_)
                  (let* ((_get-kws-id122348_
                          (let ((__tmp130516
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122118_)))
                                (__tmp130514
                                 (let ((__tmp130515
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122308_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name121970_
                                    __tmp130515
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130516 '"__" __tmp130514)))
                         (_get-kws-id122350_
                          (let ((__tmp130517
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx121966_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id122348_
                             __tmp130517)))
                         (_main-id122352_
                          (let ((__tmp130520
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122118_)))
                                (__tmp130518
                                 (let ((__tmp130519
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122307_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name121970_
                                    __tmp130519
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130520 '"__" __tmp130518)))
                         (_main-id122354_
                          (let ((__tmp130521
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx121966_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id122352_
                             __tmp130521)))
                         (_g130522_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id122350_)))
                         (_g130523_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id122354_)))
                         (_new-kw-dispatch122358_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122304_
                             'id:
                             _L122308_
                             'new-id:
                             _get-kws-id122350_)))
                         (_new-get-kws122360_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122305_
                             'id:
                             _L122307_
                             'new-id:
                             _main-id122354_))))
                    (let ((__tmp130526
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L122118_)))
                          (__tmp130525
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id122350_)))
                          (__tmp130524
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id122354_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp130526
                       '" => "
                       __tmp130525
                       '" => "
                       __tmp130524))
                    (let ((__tmp130527
                           (let ((__tmp130528
                                  (let ((__tmp130541
                                         (let ((__tmp130542
                                                (let ((__tmp130543
                                                       (let ((__tmp130544
                                                              (let ((__tmp130546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id122354_ '())))
                            (__tmp130545
                             (let ()
                               (declare (not safe))
                               (cons _L122306_ '()))))
                        (declare (not safe))
                        (cons __tmp130546 __tmp130545))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130543
                                                   _stx121966_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self121965_
                                            __tmp130542)))
                                        (__tmp130529
                                         (let ((__tmp130536
                                                (let ((__tmp130537
                                                       (let ((__tmp130538
                                                              (let ((__tmp130540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id122350_ '())))
                            (__tmp130539
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws122360_ '()))))
                        (declare (not safe))
                        (cons __tmp130540 __tmp130539))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130537
                                                   _stx121966_)))
                                               (__tmp130530
                                                (let ((__tmp130531
                                                       (let ((__tmp130532
                                                              (let ((__tmp130533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp130535
                                    (let ()
                                      (declare (not safe))
                                      (cons _L122118_ '())))
                                   (__tmp130534
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch122358_ '()))))
                               (declare (not safe))
                               (cons __tmp130535 __tmp130534))))
                        (declare (not safe))
                        (cons '%#define-values __tmp130533))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp130532 _stx121966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp130531 '()))))
                                           (declare (not safe))
                                           (cons __tmp130536 __tmp130530))))
                                    (declare (not safe))
                                    (cons __tmp130541 __tmp130529))))
                             (declare (not safe))
                             (cons '%#begin __tmp130528))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130527 _stx121966_))))
                _hd122181122299_
                _hd122178122291_
                _hd122175122283_
                _hd122172122275_
                _hd122154122227_)
               (let ()
                 (declare (not safe))
                 (_g122134122187_ _g122135122190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122134122187_
                                                  _g122135122190_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g122134122187_
                                              _g122135122190_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g122134122187_ _g122135122190_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122134122187_ _g122135122190_)))))
                           (let ()
                             (declare (not safe))
                             (_g122134122187_ _g122135122190_)))
                       (let ()
                         (declare (not safe))
                         (_g122134122187_ _g122135122190_)))
                   (let ()
                     (declare (not safe))
                     (_g122134122187_ _g122135122190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122134122187_
                                                      _g122135122190_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122134122187_
                                                  _g122135122190_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122134122187_ _g122135122190_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g122134122187_ _g122135122190_)))))
                       (let ()
                         (declare (not safe))
                         (_g122134122187_ _g122135122190_)))))
               (let ()
                 (declare (not safe))
                 (_g122134122187_ _g122135122190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122134122187_
                                                  _g122135122190_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122134122187_ _g122135122190_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122134122187_ _g122135122190_)))))
                           (let ()
                             (declare (not safe))
                             (_g122134122187_ _g122135122190_)))))
                   (let ()
                     (declare (not safe))
                     (_g122134122187_ _g122135122190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122134122187_
                                                      _g122135122190_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122134122187_
                                              _g122135122190_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122134122187_ _g122135122190_))))))
                       (declare (not safe))
                       (_g122133122363_ _L122117_))))
                  (___kont129809129810_
                   (lambda (_L122063_ _L122064_)
                     (let ((__tmp130547
                            (let ((__tmp130548
                                   (let ((__tmp130549
                                          (let ((__tmp130550
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self121965_
                                                    _L122063_))))
                                            (declare (not safe))
                                            (cons __tmp130550 '()))))
                                     (declare (not safe))
                                     (cons _L122064_ __tmp130549))))
                              (declare (not safe))
                              (cons '%#define-values __tmp130548))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp130547 _stx121966_)))))
              (let* ((___match129894129895_
                      (lambda (_e122009122085_
                               _hd122008122088_
                               _tl122007122090_
                               _e122012122093_
                               _hd122011122096_
                               _tl122010122098_
                               _e122015122101_
                               _hd122014122104_
                               _tl122013122106_
                               _e122018122109_
                               _hd122017122112_
                               _tl122016122114_)
                        (let ((_L122117_ _hd122017122112_)
                              (_L122118_ _hd122014122104_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122118_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L122117_)))
                              (___kont129807129808_ _L122117_ _L122118_)
                              (___kont129809129810_
                               _hd122017122112_
                               _hd122011122096_)))))
                     (___match129866129867_
                      (lambda (_e121995122371_
                               _hd121994122374_
                               _tl121993122376_
                               _e121998122379_
                               _hd121997122382_
                               _tl121996122384_
                               _e122001122387_
                               _hd122000122390_
                               _tl121999122392_
                               _e122004122395_
                               _hd122003122398_
                               _tl122002122400_)
                        (let ((_L122403_ _hd122003122398_)
                              (_L122404_ _hd122000122390_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122404_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L122403_)))
                              (___kont129805129806_ _L122403_ _L122404_)
                              (___match129894129895_
                               _e121995122371_
                               _hd121994122374_
                               _tl121993122376_
                               _e121998122379_
                               _hd121997122382_
                               _tl121996122384_
                               _e122001122387_
                               _hd122000122390_
                               _tl121999122392_
                               _e122004122395_
                               _hd122003122398_
                               _tl122002122400_)))))
                     (___match129838129839_
                      (lambda (_e121981122553_
                               _hd121980122556_
                               _tl121979122558_
                               _e121984122561_
                               _hd121983122564_
                               _tl121982122566_
                               _e121987122569_
                               _hd121986122572_
                               _tl121985122574_
                               _e121990122577_
                               _hd121989122580_
                               _tl121988122582_)
                        (let ((_L122585_ _hd121989122580_)
                              (_L122586_ _hd121986122572_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122586_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L122585_)))
                              (___kont129803129804_ _L122585_ _L122586_)
                              (___match129866129867_
                               _e121981122553_
                               _hd121980122556_
                               _tl121979122558_
                               _e121984122561_
                               _hd121983122564_
                               _tl121982122566_
                               _e121987122569_
                               _hd121986122572_
                               _tl121985122574_
                               _e121990122577_
                               _hd121989122580_
                               _tl121988122582_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx129801129802_))
                    (let ((_e121981122553_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx129801129802_))))
                      (let ((_tl121979122558_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121981122553_)))
                            (_hd121980122556_
                             (let ()
                               (declare (not safe))
                               (##car _e121981122553_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121979122558_))
                            (let ((_e121984122561_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121979122558_))))
                              (let ((_tl121982122566_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121984122561_)))
                                    (_hd121983122564_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121984122561_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121983122564_))
                                    (let ((_e121987122569_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121983122564_))))
                                      (let ((_tl121985122574_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121987122569_)))
                                            (_hd121986122572_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121987122569_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121985122574_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121982122566_))
                                                (let ((_e121990122577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121982122566_))))
                                                  (let ((_tl121988122582_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121990122577_)))
                                                        (_hd121989122580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121990122577_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121988122582_))
                                                        (___match129838129839_
                                                         _e121981122553_
                                                         _hd121980122556_
                                                         _tl121979122558_
                                                         _e121984122561_
                                                         _hd121983122564_
                                                         _tl121982122566_
                                                         _e121987122569_
                                                         _hd121986122572_
                                                         _tl121985122574_
                                                         _e121990122577_
                                                         _hd121989122580_
                                                         _tl121988122582_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121975122034_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121975122034_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121982122566_))
                                                (let ((_e122029122055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121982122566_))))
                                                  (let ((_tl122027122060_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122029122055_)))
                                                        (_hd122028122058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122029122055_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122027122060_))
                                                        (___kont129809129810_
                                                         _hd122028122058_
                                                         _hd121983122564_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121975122034_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121975122034_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121982122566_))
                                        (let ((_e122029122055_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121982122566_))))
                                          (let ((_tl122027122060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122029122055_)))
                                                (_hd122028122058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122029122055_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122027122060_))
                                                (___kont129809129810_
                                                 _hd122028122058_
                                                 _hd121983122564_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121975122034_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g121975122034_))))))
                            (let () (declare (not safe)) (_g121975122034_)))))
                    (let () (declare (not safe)) (_g121975122034_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self120896_ _stx120897_)
        (letrec* ((_bind-e__128197128198_
                   (lambda (_id121949_ _expr121950_ _compile?121951_)
                     (let ((__tmp130553
                            (let ()
                              (declare (not safe))
                              (cons _id121949_ '())))
                           (__tmp130551
                            (let ((__tmp130552
                                   (if _compile?121951_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120896_
                                          _expr121950_))
                                       _expr121950_)))
                              (declare (not safe))
                              (cons __tmp130552 '()))))
                       (declare (not safe))
                       (cons __tmp130553 __tmp130551))))
                  (_bind-e__0__128199128200_
                   (lambda (_id121956_ _expr121957_)
                     (let ((_compile?121959_ '#t))
                       (declare (not safe))
                       (_bind-e__128197128198_
                        _id121956_
                        _expr121957_
                        _compile?121959_))))
                  (_bind-e120899_
                   (lambda _g130555_
                     (let ((_g130554_
                            (let ()
                              (declare (not safe))
                              (##length _g130555_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130554_ 2))
                              (apply (lambda (_id121956_ _expr121957_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128199128200_
                                          _id121956_
                                          _expr121957_)))
                                     _g130555_))
                             ((let () (declare (not safe)) (##fx= _g130554_ 3))
                              (apply (lambda (_id121961_
                                              _expr121962_
                                              _compile?121963_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128197128198_
                                          _id121961_
                                          _expr121962_
                                          _compile?121963_)))
                                     _g130555_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130555_))))))
                  (_compile-bindings120900_
                   (lambda (_bindings121533_)
                     (let _lp121535_ ((_rest121537_ _bindings121533_)
                                      (_lift1121538_ '())
                                      (_lift2121539_ '())
                                      (_bind121540_ '()))
                       (let* ((_rest121541121549_ _rest121537_)
                              (_else121543121557_
                               (lambda ()
                                 (values (reverse _lift1121538_)
                                         (reverse _lift2121539_)
                                         (reverse _bind121540_))))
                              (_K121545121936_
                               (lambda (_rest121560_ _hd121561_)
                                 (let* ((___stx129937129938_ _hd121561_)
                                        (_g121565121601_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129937129938_)))))
                                   (let ((___kont129939129940_
                                          (lambda (_L121843_ _L121844_)
                                            (let* ((___stx129917129918_
                                                    _L121843_)
                                                   (_g121859121873_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx129917129918_)))))
                                              (let ((___kont129919129920_
                                                     (lambda (_L121921_)
                                                       (let ((__tmp130556
                                                              (let ((__tmp130557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128197128198_
                                _L121844_
                                _L121843_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130557 _bind121540_))))
                 (declare (not safe))
                 (_lp121535_
                  _rest121560_
                  _lift1121538_
                  _lift2121539_
                  __tmp130556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129921129922_
                                                     (lambda (_L121886_)
                                                       (let ((_g130558_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120897_
                         _L121844_
                         _L121886_
                         '#t))))
                 (begin
                   (let ((_g130559_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130558_)
                                (##vector-length _g130558_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130559_ 3)))
                         (error "Context expects 3 values" _g130559_)))
                   (let ((_ids121896_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130558_ 0)))
                         (_impls121897_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130558_ 1)))
                         (_clauses121898_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130558_ 2))))
                     (let* ((_g130560_
                             (for-each gx#core-bind-runtime! _ids121896_))
                            (_xbind121901_
                             (map _bind-e120899_ _ids121896_ _impls121897_))
                            (_expr*121903_
                             (let ((__tmp130562
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121898_)))
                                   (__tmp130561
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130562
                                __tmp130561)))
                            (_bind*121905_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128197128198_
                                _L121844_
                                _expr*121903_
                                '#f))))
                       (let ((__tmp130564
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121844_)))
                             (__tmp130563
                              (map gxc#identifier-symbol _ids121896_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130564
                          '" => "
                          __tmp130563))
                       (let ((__tmp130566
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2121539_ _xbind121901_)))
                             (__tmp130565
                              (let ()
                                (declare (not safe))
                                (cons _bind*121905_ _bind121540_))))
                         (declare (not safe))
                         (_lp121535_
                          _rest121560_
                          _lift1121538_
                          __tmp130566
                          __tmp130565)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match129928129929_
                                                       (lambda (_e121864121913_
                                                                _hd121863121916_
                                                                _tl121862121918_)
                                                         (let ((_L121921_
                                                                _tl121862121918_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121921_))
                       (___kont129919129920_ _L121921_)
                       (___kont129921129922_ _tl121862121918_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx129917129918_))
                                                      (let ((_e121864121913_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx129917129918_))))
                (let ((_tl121862121918_
                       (let () (declare (not safe)) (##cdr _e121864121913_)))
                      (_hd121863121916_
                       (let () (declare (not safe)) (##car _e121864121913_))))
                  (___match129928129929_
                   _e121864121913_
                   _hd121863121916_
                   _tl121862121918_)))
              (let () (declare (not safe)) (_g121859121873_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont129941129942_
                                          (lambda (_L121671_ _L121672_)
                                            (let* ((_g121686121716_
                                                    (lambda (_g121687121713_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121687121713_))))
                                                   (_g121685121811_
                                                    (lambda (_g121687121719_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121687121719_))
                                                          (let ((_e121693121721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121687121719_))))
                    (let ((_hd121692121724_
                           (let ()
                             (declare (not safe))
                             (##car _e121693121721_)))
                          (_tl121691121726_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121693121721_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121691121726_))
                          (let ((_e121696121729_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121691121726_))))
                            (let ((_hd121695121732_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121696121729_)))
                                  (_tl121694121734_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121696121729_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121695121732_))
                                  (let ((_e121699121737_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121695121732_))))
                                    (let ((_hd121698121740_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121699121737_)))
                                          (_tl121697121742_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121699121737_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121698121740_))
                                          (let ((_e121702121745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121698121740_))))
                                            (let ((_hd121701121748_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121702121745_)))
                                                  (_tl121700121750_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121702121745_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121701121748_))
                                                  (let ((_e121705121753_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121701121748_))))
                                                    (let ((_hd121704121756_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121705121753_)))
                                                          (_tl121703121758_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121705121753_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121703121758_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121700121750_))
                      (let ((_e121708121761_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121700121750_))))
                        (let ((_hd121707121764_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121708121761_)))
                              (_tl121706121766_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121708121761_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121706121766_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121697121742_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121694121734_))
                                      (let ((_e121711121769_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121694121734_))))
                                        (let ((_hd121710121772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121711121769_)))
                                              (_tl121709121774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121711121769_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121709121774_))
                                              ((lambda (_L121777_
                                                        _L121778_
                                                        _L121779_)
                                                 (let* ((_lambda-id121803_
                                                         (let ((__tmp130568
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L121672_)))
                       (__tmp130567 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130568 __tmp130567)))
                (_lambda-id121805_
                 (let ((__tmp130569
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120897_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id121803_ __tmp130569)))
                (_g130570_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id121805_)))
                (_new-case-lambda-expr121808_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L121777_
                    'id:
                    _L121779_
                    'new-id:
                    _lambda-id121805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130572
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L121672_)))
                                                         (__tmp130571
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id121805_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130572
                                                      '" => "
                                                      __tmp130571))
                                                   (let ((__tmp130575
                                                          (let ((__tmp130576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128197128198_
                            _L121672_
                            _new-case-lambda-expr121808_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130576 _rest121560_)))
                 (__tmp130573
                  (let ((__tmp130574
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128199128200_
                            _lambda-id121805_
                            _L121778_))))
                    (declare (not safe))
                    (cons __tmp130574 _lift1121538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp121535_
                                                      __tmp130575
                                                      __tmp130573
                                                      _lift2121539_
                                                      _bind121540_))))
                                               _hd121710121772_
                                               _hd121707121764_
                                               _hd121704121756_)
                                              (let ()
                                                (declare (not safe))
                                                (_g121686121716_
                                                 _g121687121719_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121686121716_ _g121687121719_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121686121716_ _g121687121719_)))
                              (let ()
                                (declare (not safe))
                                (_g121686121716_ _g121687121719_)))))
                      (let ()
                        (declare (not safe))
                        (_g121686121716_ _g121687121719_)))
                  (let ()
                    (declare (not safe))
                    (_g121686121716_ _g121687121719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121686121716_
                                                     _g121687121719_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121686121716_
                                             _g121687121719_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121686121716_ _g121687121719_)))))
                          (let ()
                            (declare (not safe))
                            (_g121686121716_ _g121687121719_)))))
                  (let ()
                    (declare (not safe))
                    (_g121686121716_ _g121687121719_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121685121811_ _L121671_))))
                                         (___kont129943129944_
                                          (lambda (_L121622_ _L121623_)
                                            (let ((__tmp130577
                                                   (let ((__tmp130578
                                                          (let ((__tmp130579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130580
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120896_ _L121622_))))
                           (declare (not safe))
                           (cons __tmp130580 '()))))
                    (declare (not safe))
                    (cons _L121623_ __tmp130579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130578
                                                           _bind121540_))))
                                              (declare (not safe))
                                              (_lp121535_
                                               _rest121560_
                                               _lift1121538_
                                               _lift2121539_
                                               __tmp130577)))))
                                     (let* ((___match129988129989_
                                             (lambda (_e121582121647_
                                                      _hd121581121650_
                                                      _tl121580121652_
                                                      _e121585121655_
                                                      _hd121584121658_
                                                      _tl121583121660_
                                                      _e121588121663_
                                                      _hd121587121666_
                                                      _tl121586121668_)
                                               (let ((_L121671_
                                                      _hd121587121666_)
                                                     (_L121672_
                                                      _hd121584121658_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121672_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L121671_)))
                                                     (___kont129941129942_
                                                      _L121671_
                                                      _L121672_)
                                                     (___kont129943129944_
                                                      _hd121587121666_
                                                      _hd121581121650_)))))
                                            (___match129966129967_
                                             (lambda (_e121571121819_
                                                      _hd121570121822_
                                                      _tl121569121824_
                                                      _e121574121827_
                                                      _hd121573121830_
                                                      _tl121572121832_
                                                      _e121577121835_
                                                      _hd121576121838_
                                                      _tl121575121840_)
                                               (let ((_L121843_
                                                      _hd121576121838_)
                                                     (_L121844_
                                                      _hd121573121830_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121844_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121843_)))
                                                     (___kont129939129940_
                                                      _L121843_
                                                      _L121844_)
                                                     (___match129988129989_
                                                      _e121571121819_
                                                      _hd121570121822_
                                                      _tl121569121824_
                                                      _e121574121827_
                                                      _hd121573121830_
                                                      _tl121572121832_
                                                      _e121577121835_
                                                      _hd121576121838_
                                                      _tl121575121840_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129937129938_))
                                           (let ((_e121571121819_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129937129938_))))
                                             (let ((_tl121569121824_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121571121819_)))
                                                   (_hd121570121822_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121571121819_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121570121822_))
                                                   (let ((_e121574121827_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121570121822_))))
                                                     (let ((_tl121572121832_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121574121827_)))
                                                           (_hd121573121830_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121574121827_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121572121832_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121569121824_))
                       (let ((_e121577121835_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121569121824_))))
                         (let ((_tl121575121840_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121577121835_)))
                               (_hd121576121838_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121577121835_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121575121840_))
                               (___match129966129967_
                                _e121571121819_
                                _hd121570121822_
                                _tl121569121824_
                                _e121574121827_
                                _hd121573121830_
                                _tl121572121832_
                                _e121577121835_
                                _hd121576121838_
                                _tl121575121840_)
                               (let ()
                                 (declare (not safe))
                                 (_g121565121601_)))))
                       (let () (declare (not safe)) (_g121565121601_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121569121824_))
                       (let ((_e121596121614_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121569121824_))))
                         (let ((_tl121594121619_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121596121614_)))
                               (_hd121595121617_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121596121614_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121594121619_))
                               (___kont129943129944_
                                _hd121595121617_
                                _hd121570121822_)
                               (let ()
                                 (declare (not safe))
                                 (_g121565121601_)))))
                       (let () (declare (not safe)) (_g121565121601_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121569121824_))
                                                       (let ((_e121596121614_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121569121824_))))
                 (let ((_tl121594121619_
                        (let () (declare (not safe)) (##cdr _e121596121614_)))
                       (_hd121595121617_
                        (let () (declare (not safe)) (##car _e121596121614_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121594121619_))
                       (___kont129943129944_ _hd121595121617_ _hd121570121822_)
                       (let () (declare (not safe)) (_g121565121601_)))))
               (let () (declare (not safe)) (_g121565121601_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121565121601_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121541121549_))
                             (let ((_hd121546121939_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121541121549_)))
                                   (_tl121547121941_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121541121549_))))
                               (let* ((_hd121944_ _hd121546121939_)
                                      (_rest121946_ _tl121547121941_))
                                 (declare (not safe))
                                 (_K121545121936_ _rest121946_ _hd121944_)))
                             (let ()
                               (declare (not safe))
                               (_else121543121557_)))))))
                  (_lift-kw-lambda?120901_
                   (lambda (_bind121457_)
                     (let* ((___stx130005130006_ _bind121457_)
                            (_g121460121477_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130005130006_)))))
                       (let ((___kont130007130008_
                              (lambda (_L121513_ _L121514_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L121514_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L121513_))
                                    '#f)))
                             (___kont130009130010_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx130005130006_))
                             (let ((_e121466121489_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx130005130006_))))
                               (let ((_tl121464121494_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e121466121489_)))
                                     (_hd121465121492_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e121466121489_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd121465121492_))
                                     (let ((_e121469121497_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd121465121492_))))
                                       (let ((_tl121467121502_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e121469121497_)))
                                             (_hd121468121500_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e121469121497_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl121467121502_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl121464121494_))
                                                 (let ((_e121472121505_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl121464121494_))))
                                                   (let ((_tl121470121510_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e121472121505_)))
                                                         (_hd121471121508_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e121472121505_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl121470121510_))
                                                         (___kont130007130008_
                                                          _hd121471121508_
                                                          _hd121468121500_)
                                                         (___kont130009130010_))))
                                                 (___kont130009130010_))
                                             (___kont130009130010_))))
                                     (___kont130009130010_))))
                             (___kont130009130010_))))))
                  (_lift-kw-lambda-bindings120902_
                   (lambda (_bindings121069_)
                     (let _lp121071_ ((_rest121073_ _bindings121069_)
                                      (_lift1121074_ '())
                                      (_lift2121075_ '())
                                      (_bind121076_ '()))
                       (let* ((_rest121077121085_ _rest121073_)
                              (_else121079121093_
                               (lambda ()
                                 (values (reverse _lift1121074_)
                                         (reverse _lift2121075_)
                                         (reverse _bind121076_))))
                              (_K121081121445_
                               (lambda (_rest121096_ _hd121097_)
                                 (let* ((___stx130035130036_ _hd121097_)
                                        (_g121100121125_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130035130036_)))))
                                   (let ((___kont130037130038_
                                          (lambda (_L121195_ _L121196_)
                                            (let* ((_g121210121263_
                                                    (lambda (_g121211121260_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121211121260_))))
                                                   (_g121209121439_
                                                    (lambda (_g121211121266_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121211121266_))
                                                          (let ((_e121219121268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121211121266_))))
                    (let ((_hd121218121271_
                           (let ()
                             (declare (not safe))
                             (##car _e121219121268_)))
                          (_tl121217121273_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121219121268_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121217121273_))
                          (let ((_e121222121276_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121217121273_))))
                            (let ((_hd121221121279_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121222121276_)))
                                  (_tl121220121281_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121222121276_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121221121279_))
                                  (let ((_e121225121284_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121221121279_))))
                                    (let ((_hd121224121287_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121225121284_)))
                                          (_tl121223121289_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121225121284_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121224121287_))
                                          (let ((_e121228121292_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121224121287_))))
                                            (let ((_hd121227121295_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121228121292_)))
                                                  (_tl121226121297_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121228121292_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121227121295_))
                                                  (let ((_e121231121300_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121227121295_))))
                                                    (let ((_hd121230121303_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121231121300_)))
                                                          (_tl121229121305_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121231121300_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121229121305_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121226121297_))
                      (let ((_e121234121308_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121226121297_))))
                        (let ((_hd121233121311_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121234121308_)))
                              (_tl121232121313_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121234121308_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd121233121311_))
                              (let ((_e121237121316_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd121233121311_))))
                                (let ((_hd121236121319_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121237121316_)))
                                      (_tl121235121321_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121237121316_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121235121321_))
                                      (let ((_e121240121324_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121235121321_))))
                                        (let ((_hd121239121327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121240121324_)))
                                              (_tl121238121329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121240121324_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd121239121327_))
                                              (let ((_e121243121332_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd121239121327_))))
                                                (let ((_hd121242121335_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121243121332_)))
                                                      (_tl121241121337_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121243121332_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd121242121335_))
                                                      (let ((_e121246121340_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd121242121335_))))
                (let ((_hd121245121343_
                       (let () (declare (not safe)) (##car _e121246121340_)))
                      (_tl121244121345_
                       (let () (declare (not safe)) (##cdr _e121246121340_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121245121343_))
                      (let ((_e121249121348_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121245121343_))))
                        (let ((_hd121248121351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121249121348_)))
                              (_tl121247121353_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121249121348_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121247121353_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121244121345_))
                                  (let ((_e121252121356_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121244121345_))))
                                    (let ((_hd121251121359_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121252121356_)))
                                          (_tl121250121361_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121252121356_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121250121361_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121241121337_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121238121329_))
                                                  (let ((_e121255121364_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121238121329_))))
                                                    (let ((_hd121254121367_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121255121364_)))
                                                          (_tl121253121369_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121255121364_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121253121369_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl121232121313_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl121223121289_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121220121281_))
                              (let ((_e121258121372_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121220121281_))))
                                (let ((_hd121257121375_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121258121372_)))
                                      (_tl121256121377_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121258121372_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121256121377_))
                                      ((lambda (_L121380_
                                                _L121381_
                                                _L121382_
                                                _L121383_
                                                _L121384_)
                                         (let* ((_get-kws-id121424_
                                                 (let ((__tmp130582
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121196_)))
                                                       (__tmp130581
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130582
                                                    __tmp130581)))
                                                (_get-kws-id121426_
                                                 (let ((__tmp130583
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120897_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id121424_
                                                    __tmp130583)))
                                                (_main-id121428_
                                                 (let ((__tmp130585
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121196_)))
                                                       (__tmp130584
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130585
                                                    __tmp130584)))
                                                (_main-id121430_
                                                 (let ((__tmp130586
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120897_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id121428_
                                                    __tmp130586)))
                                                (_g130587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id121426_)))
                                                (_g130588_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id121430_)))
                                                (_new-kw-dispatch121434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121380_
                                                    'id:
                                                    _L121384_
                                                    'new-id:
                                                    _get-kws-id121426_)))
                                                (_new-get-kws121436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121381_
                                                    'id:
                                                    _L121383_
                                                    'new-id:
                                                    _main-id121430_))))
                                           (let ((__tmp130591
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L121196_)))
                                                 (__tmp130590
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id121426_)))
                                                 (__tmp130589
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id121430_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130591
                                              '" => "
                                              __tmp130590
                                              '" => "
                                              __tmp130589))
                                           (let ((__tmp130596
                                                  (let ((__tmp130597
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128197128198_
                                                            _main-id121430_
                                                            _L121382_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130597
                                                          _lift1121074_)))
                                                 (__tmp130594
                                                  (let ((__tmp130595
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128197128198_
                                                            _get-kws-id121426_
                                                            _new-get-kws121436_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130595
                                                          _lift2121075_)))
                                                 (__tmp130592
                                                  (let ((__tmp130593
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128197128198_
                                                            _L121196_
                                                            _new-kw-dispatch121434_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130593
                                                          _bind121076_))))
                                             (declare (not safe))
                                             (_lp121071_
                                              _rest121096_
                                              __tmp130596
                                              __tmp130594
                                              __tmp130592))))
                                       _hd121257121375_
                                       _hd121254121367_
                                       _hd121251121359_
                                       _hd121248121351_
                                       _hd121230121303_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121210121263_ _g121211121266_)))))
                              (let ()
                                (declare (not safe))
                                (_g121210121263_ _g121211121266_)))
                          (let ()
                            (declare (not safe))
                            (_g121210121263_ _g121211121266_)))
                      (let ()
                        (declare (not safe))
                        (_g121210121263_ _g121211121266_)))
                  (let ()
                    (declare (not safe))
                    (_g121210121263_ _g121211121266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121210121263_
                                                     _g121211121266_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121210121263_
                                                 _g121211121266_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121210121263_
                                             _g121211121266_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121210121263_ _g121211121266_)))
                              (let ()
                                (declare (not safe))
                                (_g121210121263_ _g121211121266_)))))
                      (let ()
                        (declare (not safe))
                        (_g121210121263_ _g121211121266_)))))
              (let ()
                (declare (not safe))
                (_g121210121263_ _g121211121266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121210121263_
                                                 _g121211121266_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121210121263_ _g121211121266_)))))
                              (let ()
                                (declare (not safe))
                                (_g121210121263_ _g121211121266_)))))
                      (let ()
                        (declare (not safe))
                        (_g121210121263_ _g121211121266_)))
                  (let ()
                    (declare (not safe))
                    (_g121210121263_ _g121211121266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121210121263_
                                                     _g121211121266_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121210121263_
                                             _g121211121266_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121210121263_ _g121211121266_)))))
                          (let ()
                            (declare (not safe))
                            (_g121210121263_ _g121211121266_)))))
                  (let ()
                    (declare (not safe))
                    (_g121210121263_ _g121211121266_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121209121439_ _L121195_))))
                                         (___kont130039130040_
                                          (lambda (_L121146_ _L121147_)
                                            (let ((__tmp130598
                                                   (let ((__tmp130599
                                                          (let ((__tmp130600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L121146_ '()))))
                    (declare (not safe))
                    (cons _L121147_ __tmp130600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130599
                                                           _bind121076_))))
                                              (declare (not safe))
                                              (_lp121071_
                                               _rest121096_
                                               _lift1121074_
                                               _lift2121075_
                                               __tmp130598)))))
                                     (let ((___match130062130063_
                                            (lambda (_e121106121171_
                                                     _hd121105121174_
                                                     _tl121104121176_
                                                     _e121109121179_
                                                     _hd121108121182_
                                                     _tl121107121184_
                                                     _e121112121187_
                                                     _hd121111121190_
                                                     _tl121110121192_)
                                              (let ((_L121195_
                                                     _hd121111121190_)
                                                    (_L121196_
                                                     _hd121108121182_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L121196_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L121195_)))
                                                    (___kont130037130038_
                                                     _L121195_
                                                     _L121196_)
                                                    (___kont130039130040_
                                                     _hd121111121190_
                                                     _hd121105121174_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130035130036_))
                                           (let ((_e121106121171_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130035130036_))))
                                             (let ((_tl121104121176_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121106121171_)))
                                                   (_hd121105121174_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121106121171_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121105121174_))
                                                   (let ((_e121109121179_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121105121174_))))
                                                     (let ((_tl121107121184_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121109121179_)))
                                                           (_hd121108121182_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121109121179_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121107121184_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121104121176_))
                       (let ((_e121112121187_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121104121176_))))
                         (let ((_tl121110121192_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121112121187_)))
                               (_hd121111121190_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121112121187_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121110121192_))
                               (___match130062130063_
                                _e121106121171_
                                _hd121105121174_
                                _tl121104121176_
                                _e121109121179_
                                _hd121108121182_
                                _tl121107121184_
                                _e121112121187_
                                _hd121111121190_
                                _tl121110121192_)
                               (let ()
                                 (declare (not safe))
                                 (_g121100121125_)))))
                       (let () (declare (not safe)) (_g121100121125_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121104121176_))
                       (let ((_e121120121138_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121104121176_))))
                         (let ((_tl121118121143_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121120121138_)))
                               (_hd121119121141_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121120121138_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121118121143_))
                               (___kont130039130040_
                                _hd121119121141_
                                _hd121105121174_)
                               (let ()
                                 (declare (not safe))
                                 (_g121100121125_)))))
                       (let () (declare (not safe)) (_g121100121125_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121104121176_))
                                                       (let ((_e121120121138_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121104121176_))))
                 (let ((_tl121118121143_
                        (let () (declare (not safe)) (##cdr _e121120121138_)))
                       (_hd121119121141_
                        (let () (declare (not safe)) (##car _e121120121138_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121118121143_))
                       (___kont130039130040_ _hd121119121141_ _hd121105121174_)
                       (let () (declare (not safe)) (_g121100121125_)))))
               (let () (declare (not safe)) (_g121100121125_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121100121125_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121077121085_))
                             (let ((_hd121082121448_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121077121085_)))
                                   (_tl121083121450_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121077121085_))))
                               (let* ((_hd121453_ _hd121082121448_)
                                      (_rest121455_ _tl121083121450_))
                                 (declare (not safe))
                                 (_K121081121445_ _rest121455_ _hd121453_)))
                             (let ()
                               (declare (not safe))
                               (_else121079121093_))))))))
          (let* ((___stx130079130080_ _stx120897_)
                 (_g120905120931_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130079130080_)))))
            (let ((___kont130081130082_
                   (lambda (_L120991_ _L120992_)
                     (let ((__tmp130602
                            (lambda ()
                              (if (let ((__tmp130629
                                         (let ((__tmp130630
                                                (lambda (_g121020121023_
                                                         _g121021121025_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g121020121023_
                                                          _g121021121025_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp130630
                                                   '()
                                                   _L120992_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?120901_
                                            __tmp130629))
                                  (let ((_g130616_
                                         (let ((__tmp130618
                                                (let ((__tmp130619
                                                       (lambda (_g121027121030_
                                                                _g121028121032_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121027121030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121028121032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130619
                                                          '()
                                                          _L120992_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings120902_
                                            __tmp130618))))
                                    (begin
                                      (let ((_g130617_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130616_)
                                                   (##vector-length _g130616_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130617_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130617_)))
                                      (let ((_lift1121035_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130616_ 0)))
                                            (_lift2121036_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130616_ 1)))
                                            (_hd121037_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130616_ 2))))
                                        (let* ((_expr121039_
                                                (let ((__tmp130620
                                                       (let ((__tmp130621
                                                              (let ((__tmp130622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L120991_ '()))))
                        (declare (not safe))
                        (cons _hd121037_ __tmp130622))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130620
                                                   _stx120897_)))
                                               (_expr121041_
                                                (let ((__tmp130623
                                                       (let ((__tmp130624
                                                              (let ((__tmp130625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121039_ '()))))
                        (declare (not safe))
                        (cons _lift2121036_ __tmp130625))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130623
                                                   _stx120897_)))
                                               (_expr121043_
                                                (let ((__tmp130626
                                                       (let ((__tmp130627
                                                              (let ((__tmp130628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121041_ '()))))
                        (declare (not safe))
                        (cons _lift1121035_ __tmp130628))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130626
                                                   _stx120897_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self120896_
                                             _expr121043_))))))
                                  (let ((_g130603_
                                         (let ((__tmp130605
                                                (let ((__tmp130606
                                                       (lambda (_g121045121048_
                                                                _g121046121050_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121045121048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121046121050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130606
                                                          '()
                                                          _L120992_))))
                                           (declare (not safe))
                                           (_compile-bindings120900_
                                            __tmp130605))))
                                    (begin
                                      (let ((_g130604_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130603_)
                                                   (##vector-length _g130603_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130604_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130604_)))
                                      (let ((_lift1121053_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130603_ 0)))
                                            (_lift2121054_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130603_ 1)))
                                            (_hd121055_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130603_ 2))))
                                        (let* ((_body121057_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self120896_
                                                   _L120991_)))
                                               (_expr121059_
                                                (let ((__tmp130607
                                                       (let ((__tmp130608
                                                              (let ((__tmp130609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body121057_ '()))))
                        (declare (not safe))
                        (cons _hd121055_ __tmp130609))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130607
                                                   _stx120897_)))
                                               (_expr121061_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2121054_))
                                                    _expr121059_
                                                    (let ((__tmp130610
                                                           (let ((__tmp130611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130612
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121059_ '()))))
                            (declare (not safe))
                            (cons _lift2121054_ __tmp130612))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130611))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130610 _stx120897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr121063_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1121053_))
                                                    _expr121061_
                                                    (let ((__tmp130613
                                                           (let ((__tmp130614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130615
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121061_ '()))))
                            (declare (not safe))
                            (cons _lift1121053_ __tmp130615))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130614))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130613 _stx120897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr121063_)))))))
                           (__tmp130601
                            (let ((__obj130296
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130296)
                              __obj130296)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130602
                        gx#current-expander-context
                        __tmp130601))))
                  (___kont130085130086_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120896_ _stx120897_)))))
              (let ((___match130106130107_
                     (lambda (_e120911120943_
                              _hd120910120946_
                              _tl120909120948_
                              _e120914120951_
                              _hd120913120954_
                              _tl120912120956_
                              ___splice130083130084_
                              _target120915120959_
                              _tl120917120961_)
                       (letrec ((_loop120918120964_
                                 (lambda (_hd120916120967_ _bind120922120969_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120916120967_))
                                       (let ((_e120919120972_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120916120967_))))
                                         (let ((_lp-tl120921120977_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120919120972_)))
                                               (_lp-hd120920120975_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120919120972_))))
                                           (let ((__tmp130633
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120920120975_
                                                          _bind120922120969_))))
                                             (declare (not safe))
                                             (_loop120918120964_
                                              _lp-tl120921120977_
                                              __tmp130633))))
                                       (let ((_bind120923120980_
                                              (reverse _bind120922120969_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120912120956_))
                                             (let ((_e120926120983_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120912120956_))))
                                               (let ((_tl120924120988_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120926120983_)))
                                                     (_hd120925120986_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120926120983_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120924120988_))
                                                     (let ((_L120991_
                                                            _hd120925120986_)
                                                           (_L120992_
                                                            _bind120923120980_))
                                                       (if (let ((__tmp130631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130632
                                 (lambda (_g121012121015_ _g121013121017_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g121012121015_ _g121013121017_)))))
                            (declare (not safe))
                            (foldr1 __tmp130632 '() _L120992_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130631))
                   (___kont130081130082_ _L120991_ _L120992_)
                   (___kont130085130086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130085130086_))))
                                             (___kont130085130086_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120918120964_ _target120915120959_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130079130080_))
                    (let ((_e120911120943_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130079130080_))))
                      (let ((_tl120909120948_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120911120943_)))
                            (_hd120910120946_
                             (let ()
                               (declare (not safe))
                               (##car _e120911120943_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120909120948_))
                            (let ((_e120914120951_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120909120948_))))
                              (let ((_tl120912120956_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120914120951_)))
                                    (_hd120913120954_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120914120951_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120913120954_))
                                    (let ((___splice130083130084_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120913120954_
                                              '0))))
                                      (let ((_tl120917120961_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130083130084_
                                                '1)))
                                            (_target120915120959_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130083130084_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120917120961_))
                                            (___match130106130107_
                                             _e120911120943_
                                             _hd120910120946_
                                             _tl120909120948_
                                             _e120914120951_
                                             _hd120913120954_
                                             _tl120912120956_
                                             ___splice130083130084_
                                             _target120915120959_
                                             _tl120917120961_)
                                            (___kont130085130086_))))
                                    (___kont130085130086_))))
                            (___kont130085130086_))))
                    (___kont130085130086_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self120039_ _stx120040_)
        (letrec* ((_bind-e__128202128203_
                   (lambda (_id120880_ _expr120881_ _compile?120882_)
                     (let ((__tmp130636
                            (let ()
                              (declare (not safe))
                              (cons _id120880_ '())))
                           (__tmp130634
                            (let ((__tmp130635
                                   (if _compile?120882_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120039_
                                          _expr120881_))
                                       _expr120881_)))
                              (declare (not safe))
                              (cons __tmp130635 '()))))
                       (declare (not safe))
                       (cons __tmp130636 __tmp130634))))
                  (_bind-e__0__128204128205_
                   (lambda (_id120887_ _expr120888_)
                     (let ((_compile?120890_ '#t))
                       (declare (not safe))
                       (_bind-e__128202128203_
                        _id120887_
                        _expr120888_
                        _compile?120890_))))
                  (_bind-e120042_
                   (lambda _g130638_
                     (let ((_g130637_
                            (let ()
                              (declare (not safe))
                              (##length _g130638_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130637_ 2))
                              (apply (lambda (_id120887_ _expr120888_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128204128205_
                                          _id120887_
                                          _expr120888_)))
                                     _g130638_))
                             ((let () (declare (not safe)) (##fx= _g130637_ 3))
                              (apply (lambda (_id120892_
                                              _expr120893_
                                              _compile?120894_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128202128203_
                                          _id120892_
                                          _expr120893_
                                          _compile?120894_)))
                                     _g130638_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130638_))))))
                  (_compile-bindings120043_
                   (lambda (_rest120178_)
                     (let _lp120180_ ((_rest120182_ _rest120178_)
                                      (_bind120183_ '()))
                       (let* ((_rest120184120192_ _rest120182_)
                              (_else120186120200_
                               (lambda () (reverse _bind120183_)))
                              (_K120188120867_
                               (lambda (_rest120203_ _hd120204_)
                                 (let* ((___stx130129130130_ _hd120204_)
                                        (_g120209120256_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130129130130_)))))
                                   (let ((___kont130131130132_
                                          (lambda (_L120774_ _L120775_)
                                            (let* ((___stx130109130110_
                                                    _L120774_)
                                                   (_g120790120804_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130109130110_)))))
                                              (let ((___kont130111130112_
                                                     (lambda (_L120852_)
                                                       (let ((__tmp130639
                                                              (let ((__tmp130640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128202128203_
                                _L120775_
                                _L120774_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130640 _bind120183_))))
                 (declare (not safe))
                 (_lp120180_ _rest120203_ __tmp130639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130113130114_
                                                     (lambda (_L120817_)
                                                       (let ((_g130641_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120040_
                         _L120775_
                         _L120817_
                         '#t))))
                 (begin
                   (let ((_g130642_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130641_)
                                (##vector-length _g130641_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130642_ 3)))
                         (error "Context expects 3 values" _g130642_)))
                   (let ((_ids120827_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130641_ 0)))
                         (_impls120828_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130641_ 1)))
                         (_clauses120829_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130641_ 2))))
                     (let* ((_g130643_
                             (for-each gx#core-bind-runtime! _ids120827_))
                            (_xbind120832_
                             (map _bind-e120042_ _ids120827_ _impls120828_))
                            (_expr*120834_
                             (let ((__tmp130645
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120829_)))
                                   (__tmp130644
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130645
                                __tmp130644)))
                            (_bind*120836_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128202128203_
                                _L120775_
                                _expr*120834_
                                '#f))))
                       (let ((__tmp130647
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120775_)))
                             (__tmp130646
                              (map gxc#identifier-symbol _ids120827_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130647
                          '" => "
                          __tmp130646))
                       (let ((__tmp130648
                              (let ((__tmp130649
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind120183_
                                               _xbind120832_))))
                                (declare (not safe))
                                (cons _bind*120836_ __tmp130649))))
                         (declare (not safe))
                         (_lp120180_ _rest120203_ __tmp130648)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130120130121_
                                                       (lambda (_e120795120844_
                                                                _hd120794120847_
                                                                _tl120793120849_)
                                                         (let ((_L120852_
                                                                _tl120793120849_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120852_))
                       (___kont130111130112_ _L120852_)
                       (___kont130113130114_ _tl120793120849_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130109130110_))
                                                      (let ((_e120795120844_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130109130110_))))
                (let ((_tl120793120849_
                       (let () (declare (not safe)) (##cdr _e120795120844_)))
                      (_hd120794120847_
                       (let () (declare (not safe)) (##car _e120795120844_))))
                  (___match130120130121_
                   _e120795120844_
                   _hd120794120847_
                   _tl120793120849_)))
              (let () (declare (not safe)) (_g120790120804_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130133130134_
                                          (lambda (_L120602_ _L120603_)
                                            (let* ((_g120617120647_
                                                    (lambda (_g120618120644_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120618120644_))))
                                                   (_g120616120742_
                                                    (lambda (_g120618120650_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120618120650_))
                                                          (let ((_e120624120652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120618120650_))))
                    (let ((_hd120623120655_
                           (let ()
                             (declare (not safe))
                             (##car _e120624120652_)))
                          (_tl120622120657_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120624120652_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120622120657_))
                          (let ((_e120627120660_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120622120657_))))
                            (let ((_hd120626120663_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120627120660_)))
                                  (_tl120625120665_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120627120660_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120626120663_))
                                  (let ((_e120630120668_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120626120663_))))
                                    (let ((_hd120629120671_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120630120668_)))
                                          (_tl120628120673_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120630120668_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120629120671_))
                                          (let ((_e120633120676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120629120671_))))
                                            (let ((_hd120632120679_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120633120676_)))
                                                  (_tl120631120681_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120633120676_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120632120679_))
                                                  (let ((_e120636120684_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120632120679_))))
                                                    (let ((_hd120635120687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120636120684_)))
                                                          (_tl120634120689_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120636120684_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120634120689_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120631120681_))
                      (let ((_e120639120692_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120631120681_))))
                        (let ((_hd120638120695_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120639120692_)))
                              (_tl120637120697_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120639120692_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120637120697_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120628120673_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120625120665_))
                                      (let ((_e120642120700_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120625120665_))))
                                        (let ((_hd120641120703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120642120700_)))
                                              (_tl120640120705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120642120700_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120640120705_))
                                              ((lambda (_L120708_
                                                        _L120709_
                                                        _L120710_)
                                                 (let* ((_lambda-id120734_
                                                         (let ((__tmp130651
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120603_)))
                       (__tmp130650 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130651 __tmp130650)))
                (_lambda-id120736_
                 (let ((__tmp130652
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120040_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120734_ __tmp130652)))
                (_g130653_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120736_)))
                (_new-case-lambda-expr120739_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120708_
                    'id:
                    _L120710_
                    'new-id:
                    _lambda-id120736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130655
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120603_)))
                                                         (__tmp130654
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120736_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130655
                                                      '" => "
                                                      __tmp130654))
                                                   (let ((__tmp130658
                                                          (let ((__tmp130659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128202128203_
                            _L120603_
                            _new-case-lambda-expr120739_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130659 _rest120203_)))
                 (__tmp130656
                  (let ((__tmp130657
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128204128205_
                            _lambda-id120736_
                            _L120709_))))
                    (declare (not safe))
                    (cons __tmp130657 _bind120183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120180_
                                                      __tmp130658
                                                      __tmp130656))))
                                               _hd120641120703_
                                               _hd120638120695_
                                               _hd120635120687_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120617120647_
                                                 _g120618120650_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120617120647_ _g120618120650_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120617120647_ _g120618120650_)))
                              (let ()
                                (declare (not safe))
                                (_g120617120647_ _g120618120650_)))))
                      (let ()
                        (declare (not safe))
                        (_g120617120647_ _g120618120650_)))
                  (let ()
                    (declare (not safe))
                    (_g120617120647_ _g120618120650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120617120647_
                                                     _g120618120650_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120617120647_
                                             _g120618120650_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120617120647_ _g120618120650_)))))
                          (let ()
                            (declare (not safe))
                            (_g120617120647_ _g120618120650_)))))
                  (let ()
                    (declare (not safe))
                    (_g120617120647_ _g120618120650_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120616120742_ _L120602_))))
                                         (___kont130135130136_
                                          (lambda (_L120326_ _L120327_)
                                            (let* ((_g120341120394_
                                                    (lambda (_g120342120391_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120342120391_))))
                                                   (_g120340120570_
                                                    (lambda (_g120342120397_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120342120397_))
                                                          (let ((_e120350120399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120342120397_))))
                    (let ((_hd120349120402_
                           (let ()
                             (declare (not safe))
                             (##car _e120350120399_)))
                          (_tl120348120404_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120350120399_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120348120404_))
                          (let ((_e120353120407_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120348120404_))))
                            (let ((_hd120352120410_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120353120407_)))
                                  (_tl120351120412_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120353120407_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120352120410_))
                                  (let ((_e120356120415_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120352120410_))))
                                    (let ((_hd120355120418_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120356120415_)))
                                          (_tl120354120420_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120356120415_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120355120418_))
                                          (let ((_e120359120423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120355120418_))))
                                            (let ((_hd120358120426_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120359120423_)))
                                                  (_tl120357120428_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120359120423_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120358120426_))
                                                  (let ((_e120362120431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120358120426_))))
                                                    (let ((_hd120361120434_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120362120431_)))
                                                          (_tl120360120436_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120362120431_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120360120436_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120357120428_))
                      (let ((_e120365120439_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120357120428_))))
                        (let ((_hd120364120442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120365120439_)))
                              (_tl120363120444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120365120439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120364120442_))
                              (let ((_e120368120447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120364120442_))))
                                (let ((_hd120367120450_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120368120447_)))
                                      (_tl120366120452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120368120447_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120366120452_))
                                      (let ((_e120371120455_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120366120452_))))
                                        (let ((_hd120370120458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120371120455_)))
                                              (_tl120369120460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120371120455_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120370120458_))
                                              (let ((_e120374120463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120370120458_))))
                                                (let ((_hd120373120466_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120374120463_)))
                                                      (_tl120372120468_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120374120463_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120373120466_))
                                                      (let ((_e120377120471_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120373120466_))))
                (let ((_hd120376120474_
                       (let () (declare (not safe)) (##car _e120377120471_)))
                      (_tl120375120476_
                       (let () (declare (not safe)) (##cdr _e120377120471_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120376120474_))
                      (let ((_e120380120479_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120376120474_))))
                        (let ((_hd120379120482_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120380120479_)))
                              (_tl120378120484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120380120479_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120378120484_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120375120476_))
                                  (let ((_e120383120487_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120375120476_))))
                                    (let ((_hd120382120490_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120383120487_)))
                                          (_tl120381120492_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120383120487_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120381120492_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120372120468_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120369120460_))
                                                  (let ((_e120386120495_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120369120460_))))
                                                    (let ((_hd120385120498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120386120495_)))
                                                          (_tl120384120500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120386120495_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120384120500_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120363120444_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120354120420_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120351120412_))
                              (let ((_e120389120503_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120351120412_))))
                                (let ((_hd120388120506_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120389120503_)))
                                      (_tl120387120508_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120389120503_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120387120508_))
                                      ((lambda (_L120511_
                                                _L120512_
                                                _L120513_
                                                _L120514_
                                                _L120515_)
                                         (let* ((_get-kws-id120555_
                                                 (let ((__tmp130661
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120327_)))
                                                       (__tmp130660
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130661
                                                    __tmp130660)))
                                                (_get-kws-id120557_
                                                 (let ((__tmp130662
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120040_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120555_
                                                    __tmp130662)))
                                                (_main-id120559_
                                                 (let ((__tmp130664
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120327_)))
                                                       (__tmp130663
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130664
                                                    __tmp130663)))
                                                (_main-id120561_
                                                 (let ((__tmp130665
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120040_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120559_
                                                    __tmp130665)))
                                                (_g130666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120557_)))
                                                (_g130667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120561_)))
                                                (_new-kw-dispatch120565_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120511_
                                                    'id:
                                                    _L120515_
                                                    'new-id:
                                                    _get-kws-id120557_)))
                                                (_new-get-kws120567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120512_
                                                    'id:
                                                    _L120514_
                                                    'new-id:
                                                    _main-id120561_))))
                                           (let ((__tmp130670
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120327_)))
                                                 (__tmp130669
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120557_)))
                                                 (__tmp130668
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120561_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130670
                                              '" => "
                                              __tmp130669
                                              '" => "
                                              __tmp130668))
                                           (let ((__tmp130671
                                                  (let ((__tmp130676
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128202128203_
                                                            _main-id120561_
                                                            _L120513_
                                                            '#f)))
                                                        (__tmp130672
                                                         (let ((__tmp130675
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__128202128203_
                           _get-kws-id120557_
                           _new-get-kws120567_
                           '#f)))
                       (__tmp130673
                        (let ((__tmp130674
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__128202128203_
                                  _L120327_
                                  _new-kw-dispatch120565_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp130674 _rest120203_))))
                   (declare (not safe))
                   (cons __tmp130675 __tmp130673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130676
                                                          __tmp130672))))
                                             (declare (not safe))
                                             (_lp120180_
                                              __tmp130671
                                              _bind120183_))))
                                       _hd120388120506_
                                       _hd120385120498_
                                       _hd120382120490_
                                       _hd120379120482_
                                       _hd120361120434_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120341120394_ _g120342120397_)))))
                              (let ()
                                (declare (not safe))
                                (_g120341120394_ _g120342120397_)))
                          (let ()
                            (declare (not safe))
                            (_g120341120394_ _g120342120397_)))
                      (let ()
                        (declare (not safe))
                        (_g120341120394_ _g120342120397_)))
                  (let ()
                    (declare (not safe))
                    (_g120341120394_ _g120342120397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120341120394_
                                                     _g120342120397_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120341120394_
                                                 _g120342120397_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120341120394_
                                             _g120342120397_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120341120394_ _g120342120397_)))
                              (let ()
                                (declare (not safe))
                                (_g120341120394_ _g120342120397_)))))
                      (let ()
                        (declare (not safe))
                        (_g120341120394_ _g120342120397_)))))
              (let ()
                (declare (not safe))
                (_g120341120394_ _g120342120397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120341120394_
                                                 _g120342120397_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120341120394_ _g120342120397_)))))
                              (let ()
                                (declare (not safe))
                                (_g120341120394_ _g120342120397_)))))
                      (let ()
                        (declare (not safe))
                        (_g120341120394_ _g120342120397_)))
                  (let ()
                    (declare (not safe))
                    (_g120341120394_ _g120342120397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120341120394_
                                                     _g120342120397_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120341120394_
                                             _g120342120397_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120341120394_ _g120342120397_)))))
                          (let ()
                            (declare (not safe))
                            (_g120341120394_ _g120342120397_)))))
                  (let ()
                    (declare (not safe))
                    (_g120341120394_ _g120342120397_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120340120570_ _L120326_))))
                                         (___kont130137130138_
                                          (lambda (_L120277_ _L120278_)
                                            (let ((__tmp130677
                                                   (let ((__tmp130678
                                                          (let ((__tmp130679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130680
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120039_ _L120277_))))
                           (declare (not safe))
                           (cons __tmp130680 '()))))
                    (declare (not safe))
                    (cons _L120278_ __tmp130679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130678
                                                           _bind120183_))))
                                              (declare (not safe))
                                              (_lp120180_
                                               _rest120203_
                                               __tmp130677)))))
                                     (let* ((___match130204130205_
                                             (lambda (_e120237120302_
                                                      _hd120236120305_
                                                      _tl120235120307_
                                                      _e120240120310_
                                                      _hd120239120313_
                                                      _tl120238120315_
                                                      _e120243120318_
                                                      _hd120242120321_
                                                      _tl120241120323_)
                                               (let ((_L120326_
                                                      _hd120242120321_)
                                                     (_L120327_
                                                      _hd120239120313_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120327_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L120326_)))
                                                     (___kont130135130136_
                                                      _L120326_
                                                      _L120327_)
                                                     (___kont130137130138_
                                                      _hd120242120321_
                                                      _hd120236120305_)))))
                                            (___match130182130183_
                                             (lambda (_e120226120578_
                                                      _hd120225120581_
                                                      _tl120224120583_
                                                      _e120229120586_
                                                      _hd120228120589_
                                                      _tl120227120591_
                                                      _e120232120594_
                                                      _hd120231120597_
                                                      _tl120230120599_)
                                               (let ((_L120602_
                                                      _hd120231120597_)
                                                     (_L120603_
                                                      _hd120228120589_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120603_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120602_)))
                                                     (___kont130133130134_
                                                      _L120602_
                                                      _L120603_)
                                                     (___match130204130205_
                                                      _e120226120578_
                                                      _hd120225120581_
                                                      _tl120224120583_
                                                      _e120229120586_
                                                      _hd120228120589_
                                                      _tl120227120591_
                                                      _e120232120594_
                                                      _hd120231120597_
                                                      _tl120230120599_)))))
                                            (___match130160130161_
                                             (lambda (_e120215120750_
                                                      _hd120214120753_
                                                      _tl120213120755_
                                                      _e120218120758_
                                                      _hd120217120761_
                                                      _tl120216120763_
                                                      _e120221120766_
                                                      _hd120220120769_
                                                      _tl120219120771_)
                                               (let ((_L120774_
                                                      _hd120220120769_)
                                                     (_L120775_
                                                      _hd120217120761_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120775_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120774_)))
                                                     (___kont130131130132_
                                                      _L120774_
                                                      _L120775_)
                                                     (___match130182130183_
                                                      _e120215120750_
                                                      _hd120214120753_
                                                      _tl120213120755_
                                                      _e120218120758_
                                                      _hd120217120761_
                                                      _tl120216120763_
                                                      _e120221120766_
                                                      _hd120220120769_
                                                      _tl120219120771_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130129130130_))
                                           (let ((_e120215120750_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130129130130_))))
                                             (let ((_tl120213120755_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120215120750_)))
                                                   (_hd120214120753_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120215120750_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120214120753_))
                                                   (let ((_e120218120758_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120214120753_))))
                                                     (let ((_tl120216120763_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120218120758_)))
                                                           (_hd120217120761_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120218120758_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120216120763_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120213120755_))
                       (let ((_e120221120766_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120213120755_))))
                         (let ((_tl120219120771_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120221120766_)))
                               (_hd120220120769_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120221120766_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120219120771_))
                               (___match130160130161_
                                _e120215120750_
                                _hd120214120753_
                                _tl120213120755_
                                _e120218120758_
                                _hd120217120761_
                                _tl120216120763_
                                _e120221120766_
                                _hd120220120769_
                                _tl120219120771_)
                               (let ()
                                 (declare (not safe))
                                 (_g120209120256_)))))
                       (let () (declare (not safe)) (_g120209120256_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120213120755_))
                       (let ((_e120251120269_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120213120755_))))
                         (let ((_tl120249120274_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120251120269_)))
                               (_hd120250120272_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120251120269_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120249120274_))
                               (___kont130137130138_
                                _hd120250120272_
                                _hd120214120753_)
                               (let ()
                                 (declare (not safe))
                                 (_g120209120256_)))))
                       (let () (declare (not safe)) (_g120209120256_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120213120755_))
                                                       (let ((_e120251120269_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120213120755_))))
                 (let ((_tl120249120274_
                        (let () (declare (not safe)) (##cdr _e120251120269_)))
                       (_hd120250120272_
                        (let () (declare (not safe)) (##car _e120251120269_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120249120274_))
                       (___kont130137130138_ _hd120250120272_ _hd120214120753_)
                       (let () (declare (not safe)) (_g120209120256_)))))
               (let () (declare (not safe)) (_g120209120256_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120209120256_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120184120192_))
                             (let ((_hd120189120870_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120184120192_)))
                                   (_tl120190120872_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120184120192_))))
                               (let* ((_hd120875_ _hd120189120870_)
                                      (_rest120877_ _tl120190120872_))
                                 (declare (not safe))
                                 (_K120188120867_ _rest120877_ _hd120875_)))
                             (let ()
                               (declare (not safe))
                               (_else120186120200_))))))))
          (let* ((___stx130221130222_ _stx120040_)
                 (_g120046120073_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130221130222_)))))
            (let ((___kont130223130224_
                   (lambda (_L120133_ _L120134_ _L120135_)
                     (let ((__tmp130682
                            (lambda ()
                              (let ((_hd120172_
                                     (let ((__tmp130683
                                            (let ((__tmp130684
                                                   (lambda (_g120164120167_
                                                            _g120165120169_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g120164120167_
                                                             _g120165120169_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130684
                                                      '()
                                                      _L120134_))))
                                       (declare (not safe))
                                       (_compile-bindings120043_ __tmp130683)))
                                    (_body120173_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120039_
                                        _L120133_))))
                                (let ((__tmp130685
                                       (let ((__tmp130686
                                              (let ((__tmp130687
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body120173_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd120172_
                                                      __tmp130687))))
                                         (declare (not safe))
                                         (cons _L120135_ __tmp130686))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp130685
                                   _stx120040_)))))
                           (__tmp130681
                            (let ((__obj130297
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130297)
                              __obj130297)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130682
                        gx#current-expander-context
                        __tmp130681))))
                  (___kont130227130228_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120039_ _stx120040_)))))
              (let ((___match130248130249_
                     (lambda (_e120053120085_
                              _hd120052120088_
                              _tl120051120090_
                              _e120056120093_
                              _hd120055120096_
                              _tl120054120098_
                              ___splice130225130226_
                              _target120057120101_
                              _tl120059120103_)
                       (letrec ((_loop120060120106_
                                 (lambda (_hd120058120109_ _bind120064120111_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120058120109_))
                                       (let ((_e120061120114_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120058120109_))))
                                         (let ((_lp-tl120063120119_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120061120114_)))
                                               (_lp-hd120062120117_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120061120114_))))
                                           (let ((__tmp130690
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120062120117_
                                                          _bind120064120111_))))
                                             (declare (not safe))
                                             (_loop120060120106_
                                              _lp-tl120063120119_
                                              __tmp130690))))
                                       (let ((_bind120065120122_
                                              (reverse _bind120064120111_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120054120098_))
                                             (let ((_e120068120125_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120054120098_))))
                                               (let ((_tl120066120130_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120068120125_)))
                                                     (_hd120067120128_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120068120125_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120066120130_))
                                                     (let ((_L120133_
                                                            _hd120067120128_)
                                                           (_L120134_
                                                            _bind120065120122_)
                                                           (_L120135_
                                                            _hd120052120088_))
                                                       (if (let ((__tmp130688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130689
                                 (lambda (_g120156120159_ _g120157120161_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120156120159_ _g120157120161_)))))
                            (declare (not safe))
                            (foldr1 __tmp130689 '() _L120134_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130688))
                   (___kont130223130224_ _L120133_ _L120134_ _L120135_)
                   (___kont130227130228_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130227130228_))))
                                             (___kont130227130228_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120060120106_ _target120057120101_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130221130222_))
                    (let ((_e120053120085_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130221130222_))))
                      (let ((_tl120051120090_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120053120085_)))
                            (_hd120052120088_
                             (let ()
                               (declare (not safe))
                               (##car _e120053120085_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120051120090_))
                            (let ((_e120056120093_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120051120090_))))
                              (let ((_tl120054120098_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120056120093_)))
                                    (_hd120055120096_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120056120093_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120055120096_))
                                    (let ((___splice130225130226_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120055120096_
                                              '0))))
                                      (let ((_tl120059120103_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130225130226_
                                                '1)))
                                            (_target120057120101_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130225130226_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120059120103_))
                                            (___match130248130249_
                                             _e120053120085_
                                             _hd120052120088_
                                             _tl120051120090_
                                             _e120056120093_
                                             _hd120055120096_
                                             _tl120054120098_
                                             ___splice130225130226_
                                             _target120057120101_
                                             _tl120059120103_)
                                            (___kont130227130228_))))
                                    (___kont130227130228_))))
                            (___kont130227130228_))))
                    (___kont130227130228_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind119957_)
        (let* ((___stx130251130252_ _bind119957_)
               (_g119960119977_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx130251130252_)))))
          (let ((___kont130253130254_
                 (lambda (_L120013_ _L120014_)
                   (if (let () (declare (not safe)) (gx#identifier? _L120014_))
                       (let ((_$e120030_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L120013_))))
                         (if _$e120030_
                             _$e120030_
                             (let ((_$e120033_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L120013_))))
                               (if _$e120033_
                                   _$e120033_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120013_))))))
                       '#f)))
                (___kont130255130256_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx130251130252_))
                (let ((_e119966119989_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx130251130252_))))
                  (let ((_tl119964119994_
                         (let () (declare (not safe)) (##cdr _e119966119989_)))
                        (_hd119965119992_
                         (let ()
                           (declare (not safe))
                           (##car _e119966119989_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd119965119992_))
                        (let ((_e119969119997_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd119965119992_))))
                          (let ((_tl119967120002_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e119969119997_)))
                                (_hd119968120000_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e119969119997_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl119967120002_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl119964119994_))
                                    (let ((_e119972120005_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl119964119994_))))
                                      (let ((_tl119970120010_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119972120005_)))
                                            (_hd119971120008_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119972120005_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119970120010_))
                                            (___kont130253130254_
                                             _hd119971120008_
                                             _hd119968120000_)
                                            (___kont130255130256_))))
                                    (___kont130255130256_))
                                (___kont130255130256_))))
                        (___kont130255130256_))))
                (___kont130255130256_))))))))
