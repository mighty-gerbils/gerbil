(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710699092)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp130310 (list gxc#::void::t))
            (__tmp130308
             (let ((__tmp130309
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130309 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp130310
         '()
         __tmp130308
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args128204_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args128204_)))
    (define gxc#::collect-top-level-type-info-bind-methods!
      (let ((__tmp130311
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
        (make-promise __tmp130311)))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx128196_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self128199_
                (let ((__obj130291
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj130291))
               (__tmp130312
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128199_ _stx128196_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130312
           gxc#current-compile-method
           _self128199_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp130315 (list gxc#::false::t))
            (__tmp130313
             (let ((__tmp130314
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130314 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp130315
         '()
         __tmp130313
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args128193_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args128193_)))
    (define gxc#::basic-expression-top-level-type-bind-methods!
      (let ((__tmp130316
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
        (make-promise __tmp130316)))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx128185_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self128188_
                (let ((__obj130293
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj130293))
               (__tmp130317
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128188_ _stx128185_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130317
           gxc#current-compile-method
           _self128188_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp130320 (list gxc#::void::t))
            (__tmp130318
             (let ((__tmp130319
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130319 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp130320
         '()
         __tmp130318
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args128182_
        (apply make-instance gxc#::collect-type-info::t _$args128182_)))
    (define gxc#::collect-type-info-bind-methods!
      (let ((__tmp130321
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
        (make-promise __tmp130321)))
    (define gxc#apply-collect-type-info
      (lambda (_stx128174_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self128177_
                (let ((__obj130295
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj130295))
               (__tmp130322
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128177_ _stx128174_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130322
           gxc#current-compile-method
           _self128177_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp130325 (list gxc#::false::t))
            (__tmp130323
             (let ((__tmp130324
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130324 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp130325
         '()
         __tmp130323
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args128171_
        (apply make-instance gxc#::basic-expression-type::t _$args128171_)))
    (define gxc#::basic-expression-type-bind-methods!
      (let ((__tmp130326
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
        (make-promise __tmp130326)))
    (define gxc#apply-basic-expression-type
      (lambda (_stx128163_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self128166_
                (let ((__obj130297
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj130297))
               (__tmp130327
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128166_ _stx128163_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130327
           gxc#current-compile-method
           _self128166_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp130330 (list gxc#::basic-xform::t))
            (__tmp130328
             (let ((__tmp130329
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130329 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp130330
         '()
         __tmp130328
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args128160_
        (apply make-instance gxc#::lift-top-lambdas::t _$args128160_)))
    (define gxc#::lift-top-lambdas-bind-methods!
      (let ((__tmp130331
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
        (make-promise __tmp130331)))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx128152_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self128155_
                (let ((__obj130299
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj130299))
               (__tmp130332
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128155_ _stx128152_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130332
           gxc#current-compile-method
           _self128155_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self128054_ _stx128055_)
        (let* ((___stx128217128218_ _stx128055_)
               (_g128058128078_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128217128218_)))))
          (let ((___kont128219128220_
                 (lambda (_L128122_ _L128123_)
                   (let ((_sym128141_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128123_))))
                     (if (let ((__tmp130333 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130333 _sym128141_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128141_))
                         (let ((_type128142128144_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L128122_))))
                           (if _type128142128144_
                               (let ((_type128147_ _type128142128144_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym128141_
                                  _type128147_))
                               '#f))))))
                (___kont128221128222_ (lambda () '#!void)))
            (let ((___match128250128251_
                   (lambda (_e128064128090_
                            _hd128063128093_
                            _tl128062128095_
                            _e128067128098_
                            _hd128066128101_
                            _tl128065128103_
                            _e128070128106_
                            _hd128069128109_
                            _tl128068128111_
                            _e128073128114_
                            _hd128072128117_
                            _tl128071128119_)
                     (let ((_L128122_ _hd128072128117_)
                           (_L128123_ _hd128069128109_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128123_))
                           (___kont128219128220_ _L128122_ _L128123_)
                           (___kont128221128222_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128217128218_))
                  (let ((_e128064128090_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128217128218_))))
                    (let ((_tl128062128095_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128064128090_)))
                          (_hd128063128093_
                           (let ()
                             (declare (not safe))
                             (##car _e128064128090_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128062128095_))
                          (let ((_e128067128098_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128062128095_))))
                            (let ((_tl128065128103_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128067128098_)))
                                  (_hd128066128101_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128067128098_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128066128101_))
                                  (let ((_e128070128106_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128066128101_))))
                                    (let ((_tl128068128111_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128070128106_)))
                                          (_hd128069128109_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128070128106_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128068128111_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128065128103_))
                                              (let ((_e128073128114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128065128103_))))
                                                (let ((_tl128071128119_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128073128114_)))
                                                      (_hd128072128117_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128073128114_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128071128119_))
                                                      (___match128250128251_
                                                       _e128064128090_
                                                       _hd128063128093_
                                                       _tl128062128095_
                                                       _e128067128098_
                                                       _hd128066128101_
                                                       _tl128065128103_
                                                       _e128070128106_
                                                       _hd128069128109_
                                                       _tl128068128111_
                                                       _e128073128114_
                                                       _hd128072128117_
                                                       _tl128071128119_)
                                                      (___kont128221128222_))))
                                              (___kont128221128222_))
                                          (___kont128221128222_))))
                                  (___kont128221128222_))))
                          (___kont128221128222_))))
                  (___kont128221128222_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self127909_ _stx127910_)
        (let* ((___stx128253128254_ _stx127910_)
               (_g127913127944_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128253128254_)))))
          (let ((___kont128255128256_
                 (lambda (_L128026_ _L128027_)
                   (let ((_sym128043_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128027_))))
                     (if (let ((__tmp130334 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130334 _sym128043_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128043_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym128043_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym128043_))
                             (let ((_type128044128046_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L128026_))))
                               (if _type128044128046_
                                   (let ((_type128049_ _type128044128046_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym128043_
                                      _type128049_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self127909_ _L128026_)))))
                (___kont128257128258_
                 (lambda (_L127973_ _L127974_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127909_ _L127973_)))))
            (let ((___match128286128287_
                   (lambda (_e127919127994_
                            _hd127918127997_
                            _tl127917127999_
                            _e127922128002_
                            _hd127921128005_
                            _tl127920128007_
                            _e127925128010_
                            _hd127924128013_
                            _tl127923128015_
                            _e127928128018_
                            _hd127927128021_
                            _tl127926128023_)
                     (let ((_L128026_ _hd127927128021_)
                           (_L128027_ _hd127924128013_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128027_))
                           (___kont128255128256_ _L128026_ _L128027_)
                           (___kont128257128258_
                            _hd127927128021_
                            _hd127921128005_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128253128254_))
                  (let ((_e127919127994_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128253128254_))))
                    (let ((_tl127917127999_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127919127994_)))
                          (_hd127918127997_
                           (let ()
                             (declare (not safe))
                             (##car _e127919127994_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127917127999_))
                          (let ((_e127922128002_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127917127999_))))
                            (let ((_tl127920128007_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127922128002_)))
                                  (_hd127921128005_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127922128002_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127921128005_))
                                  (let ((_e127925128010_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127921128005_))))
                                    (let ((_tl127923128015_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127925128010_)))
                                          (_hd127924128013_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127925128010_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127923128015_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127920128007_))
                                              (let ((_e127928128018_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127920128007_))))
                                                (let ((_tl127926128023_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127928128018_)))
                                                      (_hd127927128021_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127928128018_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127926128023_))
                                                      (___match128286128287_
                                                       _e127919127994_
                                                       _hd127918127997_
                                                       _tl127917127999_
                                                       _e127922128002_
                                                       _hd127921128005_
                                                       _tl127920128007_
                                                       _e127925128010_
                                                       _hd127924128013_
                                                       _tl127923128015_
                                                       _e127928128018_
                                                       _hd127927128021_
                                                       _tl127926128023_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127913127944_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127913127944_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127920128007_))
                                              (let ((_e127939127965_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127920128007_))))
                                                (let ((_tl127937127970_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127939127965_)))
                                                      (_hd127938127968_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127939127965_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127937127970_))
                                                      (___kont128257128258_
                                                       _hd127938127968_
                                                       _hd127921128005_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127913127944_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127913127944_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127920128007_))
                                      (let ((_e127939127965_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127920128007_))))
                                        (let ((_tl127937127970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127939127965_)))
                                              (_hd127938127968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127939127965_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127937127970_))
                                              (___kont128257128258_
                                               _hd127938127968_
                                               _hd127921128005_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127913127944_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127913127944_))))))
                          (let () (declare (not safe)) (_g127913127944_)))))
                  (let () (declare (not safe)) (_g127913127944_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self127689_ _stx127690_)
        (letrec ((_collect-e127692_
                  (lambda (_hd127853_ _expr127854_)
                    (let* ((___stx128309128310_ _hd127853_)
                           (_g127857127867_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx128309128310_)))))
                      (let ((___kont128311128312_
                             (lambda (_L127887_)
                               (let ((_sym127898_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L127887_))))
                                 (if (let ((__tmp130335
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp130335 _sym127898_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym127898_))
                                     (let ((_type127899127901_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr127854_))))
                                       (if _type127899127901_
                                           (let ((_type127904_
                                                  _type127899127901_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym127898_
                                              _type127904_
                                              '#t))
                                           '#f))))))
                            (___kont128313128314_ (lambda () '#!void)))
                        (let ((___match128322128323_
                               (lambda (_e127862127879_
                                        _hd127861127882_
                                        _tl127860127884_)
                                 (let ((_L127887_ _hd127861127882_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L127887_))
                                       (___kont128311128312_ _L127887_)
                                       (___kont128313128314_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx128309128310_))
                              (let ((_e127862127879_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx128309128310_))))
                                (let ((_tl127860127884_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127862127879_)))
                                      (_hd127861127882_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127862127879_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127860127884_))
                                      (___match128322128323_
                                       _e127862127879_
                                       _hd127861127882_
                                       _tl127860127884_)
                                      (___kont128313128314_))))
                              (___kont128313128314_))))))))
          (let* ((_g127694127729_
                  (lambda (_g127695127726_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g127695127726_))))
                 (_g127693127850_
                  (lambda (_g127695127732_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g127695127732_))
                        (let ((_e127701127734_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g127695127732_))))
                          (let ((_hd127700127737_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127701127734_)))
                                (_tl127699127739_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127701127734_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl127699127739_))
                                (let ((_e127704127742_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl127699127739_))))
                                  (let ((_hd127703127745_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e127704127742_)))
                                        (_tl127702127747_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e127704127742_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd127703127745_))
                                        (let ((_g130336_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd127703127745_
                                                  '0))))
                                          (begin
                                            (let ((_g130337_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g130336_)
                                                         (##vector-length
                                                          _g130336_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g130337_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g130337_)))
                                            (let ((_target127705127750_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130336_
                                                      0)))
                                                  (_tl127707127752_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130336_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127707127752_))
                                                  (letrec ((_loop127708127755_
                                                            (lambda (_hd127706127758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr127712127760_
                             _hd127713127762_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127706127758_))
                          (let ((_e127709127765_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127706127758_))))
                            (let ((_lp-hd127710127768_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127709127765_)))
                                  (_lp-tl127711127770_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127709127765_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd127710127768_))
                                  (let ((_e127718127773_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd127710127768_))))
                                    (let ((_hd127717127776_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127718127773_)))
                                          (_tl127716127778_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127718127773_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127716127778_))
                                          (let ((_e127721127781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127716127778_))))
                                            (let ((_hd127720127784_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127721127781_)))
                                                  (_tl127719127786_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127721127781_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127719127786_))
                                                  (let ((__tmp130342
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd127720127784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr127712127760_)))
                (__tmp130341
                 (let ()
                   (declare (not safe))
                   (cons _hd127717127776_ _hd127713127762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop127708127755_
                                                     _lp-tl127711127770_
                                                     __tmp130342
                                                     __tmp130341))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127694127729_
                                                     _g127695127732_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127694127729_
                                             _g127695127732_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127694127729_ _g127695127732_)))))
                          (let ((_expr127714127789_
                                 (reverse _expr127712127760_))
                                (_hd127715127791_ (reverse _hd127713127762_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl127702127747_))
                                (let ((_e127724127794_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl127702127747_))))
                                  (let ((_hd127723127797_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e127724127794_)))
                                        (_tl127722127799_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e127724127794_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127722127799_))
                                        ((lambda (_L127802_
                                                  _L127803_
                                                  _L127804_)
                                           (for-each
                                            _collect-e127692_
                                            (let ((__tmp130338
                                                   (lambda (_g127824127827_
                                                            _g127825127829_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127824127827_
                                                             _g127825127829_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130338
                                                      '()
                                                      _L127804_))
                                            (let ((__tmp130339
                                                   (lambda (_g127831127834_
                                                            _g127832127836_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127831127834_
                                                             _g127832127836_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130339
                                                      '()
                                                      _L127803_)))
                                           (for-each
                                            (lambda (_g127838127840_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self127689_
                                                 _g127838127840_)))
                                            (let ((__tmp130340
                                                   (lambda (_g127842127845_
                                                            _g127843127847_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127842127845_
                                                             _g127843127847_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130340
                                                      '()
                                                      _L127803_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self127689_
                                              _L127802_)))
                                         _hd127723127797_
                                         _expr127714127789_
                                         _hd127715127791_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127694127729_ _g127695127732_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127694127729_ _g127695127732_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop127708127755_
                                                       _target127705127750_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127694127729_
                                                     _g127695127732_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g127694127729_ _g127695127732_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127694127729_ _g127695127732_)))))
                        (let ()
                          (declare (not safe))
                          (_g127694127729_ _g127695127732_))))))
            (declare (not safe))
            (_g127693127850_ _stx127690_)))))
    (define gxc#collect-type-call%
      (lambda (_self127176_ _stx127177_)
        (let* ((___stx128325128326_ _stx127177_)
               (_g127181127296_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128325128326_)))))
          (let ((___kont128327128328_
                 (lambda (_L127639_ _L127640_ _L127641_ _L127642_ _L127643_)
                   (let ((__tmp130346
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127642_)))
                         (__tmp130345
                          (let () (declare (not safe)) (gx#stx-e _L127641_)))
                         (__tmp130344
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127640_)))
                         (__tmp130343
                          (let () (declare (not safe)) (gx#stx-e _L127639_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130346
                      __tmp130345
                      __tmp130344
                      __tmp130343))))
                (___kont128329128330_
                 (lambda (_L127467_ _L127468_ _L127469_ _L127470_)
                   (let ((__tmp130349
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127469_)))
                         (__tmp130348
                          (let () (declare (not safe)) (gx#stx-e _L127468_)))
                         (__tmp130347
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127467_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130349
                      __tmp130348
                      __tmp130347
                      '#f))))
                (___kont128331128332_
                 (lambda (_L127333_)
                   (for-each
                    (lambda (_g127346127348_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self127176_ _g127346127348_)))
                    (let ((__tmp130350
                           (lambda (_g127350127353_ _g127351127355_)
                             (let ()
                               (declare (not safe))
                               (cons _g127350127353_ _g127351127355_)))))
                      (declare (not safe))
                      (foldr1 __tmp130350 '() _L127333_))))))
            (let* ((___match128582128583_
                    (lambda (_e127282127301_
                             _hd127281127304_
                             _tl127280127306_
                             ___splice128333128334_
                             _target127283127309_
                             _tl127285127311_)
                      (letrec ((_loop127286127314_
                                (lambda (_hd127284127317_ _expr127290127319_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127284127317_))
                                      (let ((_e127287127322_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127284127317_))))
                                        (let ((_lp-tl127289127327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127287127322_)))
                                              (_lp-hd127288127325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127287127322_))))
                                          (let ((__tmp130351
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127288127325_
                                                         _expr127290127319_))))
                                            (declare (not safe))
                                            (_loop127286127314_
                                             _lp-tl127289127327_
                                             __tmp130351))))
                                      (let ((_expr127291127330_
                                             (reverse _expr127290127319_)))
                                        (___kont128331128332_
                                         _expr127291127330_))))))
                        (let ()
                          (declare (not safe))
                          (_loop127286127314_ _target127283127309_ '())))))
                   (___match128462128463_
                    (lambda (_e127190127511_
                             _hd127189127514_
                             _tl127188127516_
                             _e127193127519_
                             _hd127192127522_
                             _tl127191127524_
                             _e127196127527_
                             _hd127195127530_
                             _tl127194127532_
                             _e127199127535_
                             _hd127198127538_
                             _tl127197127540_
                             _e127202127543_
                             _hd127201127546_
                             _tl127200127548_
                             _e127205127551_
                             _hd127204127554_
                             _tl127203127556_
                             _e127208127559_
                             _hd127207127562_
                             _tl127206127564_
                             _e127211127567_
                             _hd127210127570_
                             _tl127209127572_
                             _e127214127575_
                             _hd127213127578_
                             _tl127212127580_
                             _e127217127583_
                             _hd127216127586_
                             _tl127215127588_
                             _e127220127591_
                             _hd127219127594_
                             _tl127218127596_
                             _e127223127599_
                             _hd127222127602_
                             _tl127221127604_
                             _e127226127607_
                             _hd127225127610_
                             _tl127224127612_
                             _e127229127615_
                             _hd127228127618_
                             _tl127227127620_
                             _e127232127623_
                             _hd127231127626_
                             _tl127230127628_
                             _e127235127631_
                             _hd127234127634_
                             _tl127233127636_)
                      (let ((_L127639_ _hd127234127634_)
                            (_L127640_ _hd127225127610_)
                            (_L127641_ _hd127216127586_)
                            (_L127642_ _hd127207127562_)
                            (_L127643_ _hd127198127538_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L127643_
                               'bind-method!))
                            (___kont128327128328_
                             _L127639_
                             _L127640_
                             _L127641_
                             _L127642_
                             _L127643_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl127188127516_))
                                (let ((___splice128333128334_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl127188127516_
                                          '0))))
                                  (let ((_tl127285127311_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128333128334_
                                            '1)))
                                        (_target127283127309_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128333128334_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127285127311_))
                                        (___match128582128583_
                                         _e127190127511_
                                         _hd127189127514_
                                         _tl127188127516_
                                         ___splice128333128334_
                                         _target127283127309_
                                         _tl127285127311_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127181127296_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127181127296_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128325128326_))
                  (let ((_e127190127511_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128325128326_))))
                    (let ((_tl127188127516_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127190127511_)))
                          (_hd127189127514_
                           (let ()
                             (declare (not safe))
                             (##car _e127190127511_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127188127516_))
                          (let ((_e127193127519_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127188127516_))))
                            (let ((_tl127191127524_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127193127519_)))
                                  (_hd127192127522_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127193127519_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127192127522_))
                                  (let ((_e127196127527_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127192127522_))))
                                    (let ((_tl127194127532_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127196127527_)))
                                          (_hd127195127530_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127196127527_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd127195127530_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd127195127530_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127194127532_))
                                                  (let ((_e127199127535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127194127532_))))
                                                    (let ((_tl127197127540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127199127535_)))
                                                          (_hd127198127538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127199127535_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127197127540_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl127191127524_))
                      (let ((_e127202127543_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127191127524_))))
                        (let ((_tl127200127548_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127202127543_)))
                              (_hd127201127546_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127202127543_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd127201127546_))
                              (let ((_e127205127551_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd127201127546_))))
                                (let ((_tl127203127556_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127205127551_)))
                                      (_hd127204127554_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127205127551_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd127204127554_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd127204127554_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127203127556_))
                                              (let ((_e127208127559_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127203127556_))))
                                                (let ((_tl127206127564_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127208127559_)))
                                                      (_hd127207127562_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127208127559_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127206127564_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl127200127548_))
                                                          (let ((_e127211127567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl127200127548_))))
                    (let ((_tl127209127572_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127211127567_)))
                          (_hd127210127570_
                           (let ()
                             (declare (not safe))
                             (##car _e127211127567_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127210127570_))
                          (let ((_e127214127575_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127210127570_))))
                            (let ((_tl127212127580_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127214127575_)))
                                  (_hd127213127578_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127214127575_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd127213127578_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd127213127578_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127212127580_))
                                          (let ((_e127217127583_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127212127580_))))
                                            (let ((_tl127215127588_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127217127583_)))
                                                  (_hd127216127586_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127217127583_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127215127588_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127209127572_))
                                                      (let ((_e127220127591_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127209127572_))))
                (let ((_tl127218127596_
                       (let () (declare (not safe)) (##cdr _e127220127591_)))
                      (_hd127219127594_
                       (let () (declare (not safe)) (##car _e127220127591_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd127219127594_))
                      (let ((_e127223127599_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd127219127594_))))
                        (let ((_tl127221127604_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127223127599_)))
                              (_hd127222127602_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127223127599_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd127222127602_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd127222127602_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127221127604_))
                                      (let ((_e127226127607_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127221127604_))))
                                        (let ((_tl127224127612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127226127607_)))
                                              (_hd127225127610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127226127607_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127224127612_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127218127596_))
                                                  (let ((_e127229127615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127218127596_))))
                                                    (let ((_tl127227127620_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127229127615_)))
                                                          (_hd127228127618_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127229127615_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd127228127618_))
                                                          (let ((_e127232127623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd127228127618_))))
                    (let ((_tl127230127628_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127232127623_)))
                          (_hd127231127626_
                           (let ()
                             (declare (not safe))
                             (##car _e127232127623_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd127231127626_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd127231127626_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl127230127628_))
                                  (let ((_e127235127631_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl127230127628_))))
                                    (let ((_tl127233127636_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127235127631_)))
                                          (_hd127234127634_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127235127631_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127233127636_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127227127620_))
                                              (___match128462128463_
                                               _e127190127511_
                                               _hd127189127514_
                                               _tl127188127516_
                                               _e127193127519_
                                               _hd127192127522_
                                               _tl127191127524_
                                               _e127196127527_
                                               _hd127195127530_
                                               _tl127194127532_
                                               _e127199127535_
                                               _hd127198127538_
                                               _tl127197127540_
                                               _e127202127543_
                                               _hd127201127546_
                                               _tl127200127548_
                                               _e127205127551_
                                               _hd127204127554_
                                               _tl127203127556_
                                               _e127208127559_
                                               _hd127207127562_
                                               _tl127206127564_
                                               _e127211127567_
                                               _hd127210127570_
                                               _tl127209127572_
                                               _e127214127575_
                                               _hd127213127578_
                                               _tl127212127580_
                                               _e127217127583_
                                               _hd127216127586_
                                               _tl127215127588_
                                               _e127220127591_
                                               _hd127219127594_
                                               _tl127218127596_
                                               _e127223127599_
                                               _hd127222127602_
                                               _tl127221127604_
                                               _e127226127607_
                                               _hd127225127610_
                                               _tl127224127612_
                                               _e127229127615_
                                               _hd127228127618_
                                               _tl127227127620_
                                               _e127232127623_
                                               _hd127231127626_
                                               _tl127230127628_
                                               _e127235127631_
                                               _hd127234127634_
                                               _tl127233127636_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127188127516_))
                                                  (let ((___splice128333128334_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127188127516_
                                                            '0))))
                                                    (let ((_tl127285127311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128333128334_
                                                              '1)))
                                                          (_target127283127309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128333128334_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127285127311_))
                                                          (___match128582128583_
                                                           _e127190127511_
                                                           _hd127189127514_
                                                           _tl127188127516_
                                                           ___splice128333128334_
                                                           _target127283127309_
                                                           _tl127285127311_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127181127296_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127181127296_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127188127516_))
                                              (let ((___splice128333128334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127188127516_
                                                        '0))))
                                                (let ((_tl127285127311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128333128334_
                                                          '1)))
                                                      (_target127283127309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128333128334_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127285127311_))
                                                      (___match128582128583_
                                                       _e127190127511_
                                                       _hd127189127514_
                                                       _tl127188127516_
                                                       ___splice128333128334_
                                                       _target127283127309_
                                                       _tl127285127311_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127181127296_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127181127296_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127188127516_))
                                      (let ((___splice128333128334_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127188127516_
                                                '0))))
                                        (let ((_tl127285127311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128333128334_
                                                  '1)))
                                              (_target127283127309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128333128334_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127285127311_))
                                              (___match128582128583_
                                               _e127190127511_
                                               _hd127189127514_
                                               _tl127188127516_
                                               ___splice128333128334_
                                               _target127283127309_
                                               _tl127285127311_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127181127296_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127181127296_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127188127516_))
                                  (let ((___splice128333128334_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127188127516_
                                            '0))))
                                    (let ((_tl127285127311_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128333128334_
                                              '1)))
                                          (_target127283127309_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128333128334_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127285127311_))
                                          (___match128582128583_
                                           _e127190127511_
                                           _hd127189127514_
                                           _tl127188127516_
                                           ___splice128333128334_
                                           _target127283127309_
                                           _tl127285127311_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127181127296_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127181127296_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127188127516_))
                              (let ((___splice128333128334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127188127516_
                                        '0))))
                                (let ((_tl127285127311_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128333128334_
                                          '1)))
                                      (_target127283127309_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128333128334_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127285127311_))
                                      (___match128582128583_
                                       _e127190127511_
                                       _hd127189127514_
                                       _tl127188127516_
                                       ___splice128333128334_
                                       _target127283127309_
                                       _tl127285127311_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127181127296_)))))
                              (let ()
                                (declare (not safe))
                                (_g127181127296_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127188127516_))
                      (let ((___splice128333128334_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127188127516_ '0))))
                        (let ((_tl127285127311_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128333128334_ '1)))
                              (_target127283127309_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128333128334_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127285127311_))
                              (___match128582128583_
                               _e127190127511_
                               _hd127189127514_
                               _tl127188127516_
                               ___splice128333128334_
                               _target127283127309_
                               _tl127285127311_)
                              (let ()
                                (declare (not safe))
                                (_g127181127296_)))))
                      (let () (declare (not safe)) (_g127181127296_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127218127596_))
                                                      (if (let ((__tmp130352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp130352 'bind-method!))
                  (let ((_L127467_ _hd127225127610_)
                        (_L127468_ _hd127216127586_)
                        (_L127469_ _hd127207127562_)
                        (_L127470_ _hd127198127538_))
                    (___kont128329128330_
                     _L127467_
                     _L127468_
                     _L127469_
                     _L127470_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127188127516_))
                      (let ((___splice128333128334_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127188127516_ '0))))
                        (let ((_tl127285127311_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128333128334_ '1)))
                              (_target127283127309_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128333128334_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127285127311_))
                              (___match128582128583_
                               _e127190127511_
                               _hd127189127514_
                               _tl127188127516_
                               ___splice128333128334_
                               _target127283127309_
                               _tl127285127311_)
                              (let ()
                                (declare (not safe))
                                (_g127181127296_)))))
                      (let () (declare (not safe)) (_g127181127296_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127188127516_))
                  (let ((___splice128333128334_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127188127516_ '0))))
                    (let ((_tl127285127311_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128333128334_ '1)))
                          (_target127283127309_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128333128334_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127285127311_))
                          (___match128582128583_
                           _e127190127511_
                           _hd127189127514_
                           _tl127188127516_
                           ___splice128333128334_
                           _target127283127309_
                           _tl127285127311_)
                          (let () (declare (not safe)) (_g127181127296_)))))
                  (let () (declare (not safe)) (_g127181127296_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127188127516_))
                                                  (let ((___splice128333128334_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127188127516_
                                                            '0))))
                                                    (let ((_tl127285127311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128333128334_
                                                              '1)))
                                                          (_target127283127309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128333128334_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127285127311_))
                                                          (___match128582128583_
                                                           _e127190127511_
                                                           _hd127189127514_
                                                           _tl127188127516_
                                                           ___splice128333128334_
                                                           _target127283127309_
                                                           _tl127285127311_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127181127296_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127181127296_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127188127516_))
                                          (let ((___splice128333128334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127188127516_
                                                    '0))))
                                            (let ((_tl127285127311_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128333128334_
                                                      '1)))
                                                  (_target127283127309_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128333128334_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127285127311_))
                                                  (___match128582128583_
                                                   _e127190127511_
                                                   _hd127189127514_
                                                   _tl127188127516_
                                                   ___splice128333128334_
                                                   _target127283127309_
                                                   _tl127285127311_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127181127296_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127181127296_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127188127516_))
                                      (let ((___splice128333128334_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127188127516_
                                                '0))))
                                        (let ((_tl127285127311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128333128334_
                                                  '1)))
                                              (_target127283127309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128333128334_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127285127311_))
                                              (___match128582128583_
                                               _e127190127511_
                                               _hd127189127514_
                                               _tl127188127516_
                                               ___splice128333128334_
                                               _target127283127309_
                                               _tl127285127311_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127181127296_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127181127296_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127188127516_))
                                  (let ((___splice128333128334_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127188127516_
                                            '0))))
                                    (let ((_tl127285127311_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128333128334_
                                              '1)))
                                          (_target127283127309_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128333128334_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127285127311_))
                                          (___match128582128583_
                                           _e127190127511_
                                           _hd127189127514_
                                           _tl127188127516_
                                           ___splice128333128334_
                                           _target127283127309_
                                           _tl127285127311_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127181127296_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127181127296_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127188127516_))
                          (let ((___splice128333128334_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127188127516_
                                    '0))))
                            (let ((_tl127285127311_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128333128334_ '1)))
                                  (_target127283127309_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128333128334_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127285127311_))
                                  (___match128582128583_
                                   _e127190127511_
                                   _hd127189127514_
                                   _tl127188127516_
                                   ___splice128333128334_
                                   _target127283127309_
                                   _tl127285127311_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127181127296_)))))
                          (let () (declare (not safe)) (_g127181127296_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127188127516_))
                  (let ((___splice128333128334_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127188127516_ '0))))
                    (let ((_tl127285127311_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128333128334_ '1)))
                          (_target127283127309_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128333128334_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127285127311_))
                          (___match128582128583_
                           _e127190127511_
                           _hd127189127514_
                           _tl127188127516_
                           ___splice128333128334_
                           _target127283127309_
                           _tl127285127311_)
                          (let () (declare (not safe)) (_g127181127296_)))))
                  (let () (declare (not safe)) (_g127181127296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127188127516_))
                                                      (let ((___splice128333128334_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127188127516_ '0))))
                (let ((_tl127285127311_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128333128334_ '1)))
                      (_target127283127309_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128333128334_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127285127311_))
                      (___match128582128583_
                       _e127190127511_
                       _hd127189127514_
                       _tl127188127516_
                       ___splice128333128334_
                       _target127283127309_
                       _tl127285127311_)
                      (let () (declare (not safe)) (_g127181127296_)))))
              (let () (declare (not safe)) (_g127181127296_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127188127516_))
                                              (let ((___splice128333128334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127188127516_
                                                        '0))))
                                                (let ((_tl127285127311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128333128334_
                                                          '1)))
                                                      (_target127283127309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128333128334_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127285127311_))
                                                      (___match128582128583_
                                                       _e127190127511_
                                                       _hd127189127514_
                                                       _tl127188127516_
                                                       ___splice128333128334_
                                                       _target127283127309_
                                                       _tl127285127311_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127181127296_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127181127296_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127188127516_))
                                          (let ((___splice128333128334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127188127516_
                                                    '0))))
                                            (let ((_tl127285127311_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128333128334_
                                                      '1)))
                                                  (_target127283127309_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128333128334_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127285127311_))
                                                  (___match128582128583_
                                                   _e127190127511_
                                                   _hd127189127514_
                                                   _tl127188127516_
                                                   ___splice128333128334_
                                                   _target127283127309_
                                                   _tl127285127311_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127181127296_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127181127296_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127188127516_))
                                      (let ((___splice128333128334_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127188127516_
                                                '0))))
                                        (let ((_tl127285127311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128333128334_
                                                  '1)))
                                              (_target127283127309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128333128334_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127285127311_))
                                              (___match128582128583_
                                               _e127190127511_
                                               _hd127189127514_
                                               _tl127188127516_
                                               ___splice128333128334_
                                               _target127283127309_
                                               _tl127285127311_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127181127296_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127181127296_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127188127516_))
                              (let ((___splice128333128334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127188127516_
                                        '0))))
                                (let ((_tl127285127311_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128333128334_
                                          '1)))
                                      (_target127283127309_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128333128334_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127285127311_))
                                      (___match128582128583_
                                       _e127190127511_
                                       _hd127189127514_
                                       _tl127188127516_
                                       ___splice128333128334_
                                       _target127283127309_
                                       _tl127285127311_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127181127296_)))))
                              (let ()
                                (declare (not safe))
                                (_g127181127296_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127188127516_))
                      (let ((___splice128333128334_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127188127516_ '0))))
                        (let ((_tl127285127311_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128333128334_ '1)))
                              (_target127283127309_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128333128334_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127285127311_))
                              (___match128582128583_
                               _e127190127511_
                               _hd127189127514_
                               _tl127188127516_
                               ___splice128333128334_
                               _target127283127309_
                               _tl127285127311_)
                              (let ()
                                (declare (not safe))
                                (_g127181127296_)))))
                      (let () (declare (not safe)) (_g127181127296_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127188127516_))
                  (let ((___splice128333128334_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127188127516_ '0))))
                    (let ((_tl127285127311_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128333128334_ '1)))
                          (_target127283127309_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128333128334_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127285127311_))
                          (___match128582128583_
                           _e127190127511_
                           _hd127189127514_
                           _tl127188127516_
                           ___splice128333128334_
                           _target127283127309_
                           _tl127285127311_)
                          (let () (declare (not safe)) (_g127181127296_)))))
                  (let () (declare (not safe)) (_g127181127296_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127188127516_))
                                                  (let ((___splice128333128334_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127188127516_
                                                            '0))))
                                                    (let ((_tl127285127311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128333128334_
                                                              '1)))
                                                          (_target127283127309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128333128334_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127285127311_))
                                                          (___match128582128583_
                                                           _e127190127511_
                                                           _hd127189127514_
                                                           _tl127188127516_
                                                           ___splice128333128334_
                                                           _target127283127309_
                                                           _tl127285127311_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127181127296_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127181127296_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127188127516_))
                                              (let ((___splice128333128334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127188127516_
                                                        '0))))
                                                (let ((_tl127285127311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128333128334_
                                                          '1)))
                                                      (_target127283127309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128333128334_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127285127311_))
                                                      (___match128582128583_
                                                       _e127190127511_
                                                       _hd127189127514_
                                                       _tl127188127516_
                                                       ___splice128333128334_
                                                       _target127283127309_
                                                       _tl127285127311_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127181127296_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127181127296_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127188127516_))
                                          (let ((___splice128333128334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127188127516_
                                                    '0))))
                                            (let ((_tl127285127311_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128333128334_
                                                      '1)))
                                                  (_target127283127309_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128333128334_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127285127311_))
                                                  (___match128582128583_
                                                   _e127190127511_
                                                   _hd127189127514_
                                                   _tl127188127516_
                                                   ___splice128333128334_
                                                   _target127283127309_
                                                   _tl127285127311_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127181127296_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127181127296_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127188127516_))
                                  (let ((___splice128333128334_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127188127516_
                                            '0))))
                                    (let ((_tl127285127311_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128333128334_
                                              '1)))
                                          (_target127283127309_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128333128334_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127285127311_))
                                          (___match128582128583_
                                           _e127190127511_
                                           _hd127189127514_
                                           _tl127188127516_
                                           ___splice128333128334_
                                           _target127283127309_
                                           _tl127285127311_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127181127296_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127181127296_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127188127516_))
                          (let ((___splice128333128334_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127188127516_
                                    '0))))
                            (let ((_tl127285127311_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128333128334_ '1)))
                                  (_target127283127309_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128333128334_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127285127311_))
                                  (___match128582128583_
                                   _e127190127511_
                                   _hd127189127514_
                                   _tl127188127516_
                                   ___splice128333128334_
                                   _target127283127309_
                                   _tl127285127311_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127181127296_)))))
                          (let () (declare (not safe)) (_g127181127296_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127188127516_))
                      (let ((___splice128333128334_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127188127516_ '0))))
                        (let ((_tl127285127311_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128333128334_ '1)))
                              (_target127283127309_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128333128334_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127285127311_))
                              (___match128582128583_
                               _e127190127511_
                               _hd127189127514_
                               _tl127188127516_
                               ___splice128333128334_
                               _target127283127309_
                               _tl127285127311_)
                              (let ()
                                (declare (not safe))
                                (_g127181127296_)))))
                      (let () (declare (not safe)) (_g127181127296_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127188127516_))
                                                      (let ((___splice128333128334_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127188127516_ '0))))
                (let ((_tl127285127311_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128333128334_ '1)))
                      (_target127283127309_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128333128334_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127285127311_))
                      (___match128582128583_
                       _e127190127511_
                       _hd127189127514_
                       _tl127188127516_
                       ___splice128333128334_
                       _target127283127309_
                       _tl127285127311_)
                      (let () (declare (not safe)) (_g127181127296_)))))
              (let () (declare (not safe)) (_g127181127296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127188127516_))
                                                  (let ((___splice128333128334_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127188127516_
                                                            '0))))
                                                    (let ((_tl127285127311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128333128334_
                                                              '1)))
                                                          (_target127283127309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128333128334_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127285127311_))
                                                          (___match128582128583_
                                                           _e127190127511_
                                                           _hd127189127514_
                                                           _tl127188127516_
                                                           ___splice128333128334_
                                                           _target127283127309_
                                                           _tl127285127311_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127181127296_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127181127296_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127188127516_))
                                              (let ((___splice128333128334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127188127516_
                                                        '0))))
                                                (let ((_tl127285127311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128333128334_
                                                          '1)))
                                                      (_target127283127309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128333128334_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127285127311_))
                                                      (___match128582128583_
                                                       _e127190127511_
                                                       _hd127189127514_
                                                       _tl127188127516_
                                                       ___splice128333128334_
                                                       _target127283127309_
                                                       _tl127285127311_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127181127296_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127181127296_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127188127516_))
                                      (let ((___splice128333128334_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127188127516_
                                                '0))))
                                        (let ((_tl127285127311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128333128334_
                                                  '1)))
                                              (_target127283127309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128333128334_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127285127311_))
                                              (___match128582128583_
                                               _e127190127511_
                                               _hd127189127514_
                                               _tl127188127516_
                                               ___splice128333128334_
                                               _target127283127309_
                                               _tl127285127311_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127181127296_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127181127296_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127188127516_))
                              (let ((___splice128333128334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127188127516_
                                        '0))))
                                (let ((_tl127285127311_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128333128334_
                                          '1)))
                                      (_target127283127309_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128333128334_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127285127311_))
                                      (___match128582128583_
                                       _e127190127511_
                                       _hd127189127514_
                                       _tl127188127516_
                                       ___splice128333128334_
                                       _target127283127309_
                                       _tl127285127311_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127181127296_)))))
                              (let ()
                                (declare (not safe))
                                (_g127181127296_))))))
                  (let () (declare (not safe)) (_g127181127296_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self127115_ _stx127116_)
        (let* ((___stx128585128586_ _stx127116_)
               (_g127119127132_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128585128586_)))))
          (let ((___kont128587128588_
                 (lambda (_L127160_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127115_ _L127160_))))
                (___kont128589128590_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128585128586_))
                (let ((_e127124127144_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128585128586_))))
                  (let ((_tl127122127149_
                         (let () (declare (not safe)) (##cdr _e127124127144_)))
                        (_hd127123127147_
                         (let ()
                           (declare (not safe))
                           (##car _e127124127144_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl127122127149_))
                        (let ((_e127127127152_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl127122127149_))))
                          (let ((_tl127125127157_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127127127152_)))
                                (_hd127126127155_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127127127152_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl127125127157_))
                                (___kont128587128588_ _hd127126127155_)
                                (___kont128589128590_))))
                        (___kont128589128590_))))
                (___kont128589128590_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self126994_ _stx126995_)
        (let* ((_g126997127014_
                (lambda (_g126998127011_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126998127011_))))
               (_g126996127112_
                (lambda (_g126998127017_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126998127017_))
                      (let ((_e127003127019_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126998127017_))))
                        (let ((_hd127002127022_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127003127019_)))
                              (_tl127001127024_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127003127019_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127001127024_))
                              (let ((_e127006127027_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127001127024_))))
                                (let ((_hd127005127030_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127006127027_)))
                                      (_tl127004127032_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127006127027_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127004127032_))
                                      (let ((_e127009127035_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127004127032_))))
                                        (let ((_hd127008127038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127009127035_)))
                                              (_tl127007127040_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127009127035_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127007127040_))
                                              ((lambda (_L127043_ _L127044_)
                                                 (let* ((___stx128607128608_
                                                         _L127044_)
                                                        (_g127060127071_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx128607128608_)))))
                                                   (let ((___kont128609128610_
                                                          (lambda (_L127091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L127092_)
                    (let ((_$e127104_
                           (let ((__tmp130353
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L127092_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp130353))))
                      (if _$e127104_
                          ((lambda (_type-e127107_)
                             (_type-e127107_ _stx126995_ _L127044_))
                           _$e127104_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self126994_ _L127043_))))))
                 (___kont128611128612_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self126994_ _L127043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match128618128619_
                                                            (lambda (_e127066127083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd127065127086_
                             _tl127064127088_)
                      (let ((_L127091_ _tl127064127088_)
                            (_L127092_ _hd127065127086_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L127092_))
                            (___kont128609128610_ _L127091_ _L127092_)
                            (___kont128611128612_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx128607128608_))
                   (let ((_e127066127083_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx128607128608_))))
                     (let ((_tl127064127088_
                            (let ()
                              (declare (not safe))
                              (##cdr _e127066127083_)))
                           (_hd127065127086_
                            (let ()
                              (declare (not safe))
                              (##car _e127066127083_))))
                       (___match128618128619_
                        _e127066127083_
                        _hd127065127086_
                        _tl127064127088_)))
                   (___kont128611128612_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd127008127038_
                                               _hd127005127030_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126997127014_
                                                 _g126998127017_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126997127014_ _g126998127017_)))))
                              (let ()
                                (declare (not safe))
                                (_g126997127014_ _g126998127017_)))))
                      (let ()
                        (declare (not safe))
                        (_g126997127014_ _g126998127017_))))))
          (declare (not safe))
          (_g126996127112_ _stx126995_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx126838_ _ann126839_)
        (let* ((_g126841126878_
                (lambda (_g126842126875_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126842126875_))))
               (_g126840126991_
                (lambda (_g126842126881_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126842126881_))
                      (let ((_e126852126883_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126842126881_))))
                        (let ((_hd126851126886_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126852126883_)))
                              (_tl126850126888_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126852126883_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126850126888_))
                              (let ((_e126855126891_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126850126888_))))
                                (let ((_hd126854126894_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126855126891_)))
                                      (_tl126853126896_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126855126891_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126853126896_))
                                      (let ((_e126858126899_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126853126896_))))
                                        (let ((_hd126857126902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126858126899_)))
                                              (_tl126856126904_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126858126899_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126856126904_))
                                              (let ((_e126861126907_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126856126904_))))
                                                (let ((_hd126860126910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126861126907_)))
                                                      (_tl126859126912_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126861126907_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126859126912_))
                                                      (let ((_e126864126915_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126859126912_))))
                (let ((_hd126863126918_
                       (let () (declare (not safe)) (##car _e126864126915_)))
                      (_tl126862126920_
                       (let () (declare (not safe)) (##cdr _e126864126915_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl126862126920_))
                      (let ((_e126867126923_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126862126920_))))
                        (let ((_hd126866126926_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126867126923_)))
                              (_tl126865126928_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126867126923_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126865126928_))
                              (let ((_e126870126931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126865126928_))))
                                (let ((_hd126869126934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126870126931_)))
                                      (_tl126868126936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126870126931_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126868126936_))
                                      (let ((_e126873126939_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126868126936_))))
                                        (let ((_hd126872126942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126873126939_)))
                                              (_tl126871126944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126873126939_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126871126944_))
                                              ((lambda (_L126947_
                                                        _L126948_
                                                        _L126949_
                                                        _L126950_
                                                        _L126951_
                                                        _L126952_
                                                        _L126953_)
                                                 (let ((_type-id126983_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126953_)))
                                                       (_super126984_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L126952_)))
                                                       (_slots126985_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L126951_)))
                                                       (_ctor-method126986_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126950_)))
                                                       (_struct?126987_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126949_)))
                                                       (_final?126988_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126948_)))
                                                       (_metaclass126989_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L126947_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L126947_))
                                                            '#f)))
                                                   (let ((__obj130300
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
                                                      __obj130300
                                                      _type-id126983_
                                                      _super126984_
                                                      _slots126985_
                                                      _ctor-method126986_
                                                      _struct?126987_
                                                      _final?126988_
                                                      '#f
                                                      _metaclass126989_)
                                                     __obj130300)))
                                               _hd126872126942_
                                               _hd126869126934_
                                               _hd126866126926_
                                               _hd126863126918_
                                               _hd126860126910_
                                               _hd126857126902_
                                               _hd126854126894_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126841126878_
                                                 _g126842126881_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126841126878_ _g126842126881_)))))
                              (let ()
                                (declare (not safe))
                                (_g126841126878_ _g126842126881_)))))
                      (let ()
                        (declare (not safe))
                        (_g126841126878_ _g126842126881_)))))
              (let ()
                (declare (not safe))
                (_g126841126878_ _g126842126881_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126841126878_
                                                 _g126842126881_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126841126878_ _g126842126881_)))))
                              (let ()
                                (declare (not safe))
                                (_g126841126878_ _g126842126881_)))))
                      (let ()
                        (declare (not safe))
                        (_g126841126878_ _g126842126881_))))))
          (declare (not safe))
          (_g126840126991_ _ann126839_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx126767_ _ann126768_)
        (let* ((_g126770126787_
                (lambda (_g126771126784_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126771126784_))))
               (_g126769126835_
                (lambda (_g126771126790_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126771126790_))
                      (let ((_e126776126792_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126771126790_))))
                        (let ((_hd126775126795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126776126792_)))
                              (_tl126774126797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126776126792_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126774126797_))
                              (let ((_e126779126800_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126774126797_))))
                                (let ((_hd126778126803_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126779126800_)))
                                      (_tl126777126805_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126779126800_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126777126805_))
                                      (let ((_e126782126808_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126777126805_))))
                                        (let ((_hd126781126811_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126782126808_)))
                                              (_tl126780126813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126782126808_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126780126813_))
                                              ((lambda (_L126816_ _L126817_)
                                                 (let ((_type-id126832_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126817_)))
                                                       (_super126833_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L126816_))))
                                                   (let ((__obj130301
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
                                                      __obj130301
                                                      _type-id126832_
                                                      _super126833_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj130301)))
                                               _hd126781126811_
                                               _hd126778126803_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126770126787_
                                                 _g126771126790_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126770126787_ _g126771126790_)))))
                              (let ()
                                (declare (not safe))
                                (_g126770126787_ _g126771126790_)))))
                      (let ()
                        (declare (not safe))
                        (_g126770126787_ _g126771126790_))))))
          (declare (not safe))
          (_g126769126835_ _ann126768_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx126715_ _ann126716_)
        (let* ((_g126718126731_
                (lambda (_g126719126728_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126719126728_))))
               (_g126717126764_
                (lambda (_g126719126734_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126719126734_))
                      (let ((_e126723126736_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126719126734_))))
                        (let ((_hd126722126739_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126723126736_)))
                              (_tl126721126741_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126723126736_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126721126741_))
                              (let ((_e126726126744_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126721126741_))))
                                (let ((_hd126725126747_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126726126744_)))
                                      (_tl126724126749_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126726126744_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126724126749_))
                                      ((lambda (_L126752_)
                                         (let ((__tmp130354
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L126752_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp130354)))
                                       _hd126725126747_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126718126731_ _g126719126734_)))))
                              (let ()
                                (declare (not safe))
                                (_g126718126731_ _g126719126734_)))))
                      (let ()
                        (declare (not safe))
                        (_g126718126731_ _g126719126734_))))))
          (declare (not safe))
          (_g126717126764_ _ann126716_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx126663_ _ann126664_)
        (let* ((_g126666126679_
                (lambda (_g126667126676_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126667126676_))))
               (_g126665126712_
                (lambda (_g126667126682_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126667126682_))
                      (let ((_e126671126684_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126667126682_))))
                        (let ((_hd126670126687_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126671126684_)))
                              (_tl126669126689_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126671126684_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126669126689_))
                              (let ((_e126674126692_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126669126689_))))
                                (let ((_hd126673126695_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126674126692_)))
                                      (_tl126672126697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126674126692_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126672126697_))
                                      ((lambda (_L126700_)
                                         (let ((__tmp130355
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L126700_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp130355)))
                                       _hd126673126695_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126666126679_ _g126667126682_)))))
                              (let ()
                                (declare (not safe))
                                (_g126666126679_ _g126667126682_)))))
                      (let ()
                        (declare (not safe))
                        (_g126666126679_ _g126667126682_))))))
          (declare (not safe))
          (_g126665126712_ _ann126664_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx126579_ _ann126580_)
        (let* ((_g126582126603_
                (lambda (_g126583126600_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126583126600_))))
               (_g126581126660_
                (lambda (_g126583126606_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126583126606_))
                      (let ((_e126589126608_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126583126606_))))
                        (let ((_hd126588126611_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126589126608_)))
                              (_tl126587126613_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126589126608_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126587126613_))
                              (let ((_e126592126616_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126587126613_))))
                                (let ((_hd126591126619_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126592126616_)))
                                      (_tl126590126621_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126592126616_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126590126621_))
                                      (let ((_e126595126624_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126590126621_))))
                                        (let ((_hd126594126627_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126595126624_)))
                                              (_tl126593126629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126595126624_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126593126629_))
                                              (let ((_e126598126632_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126593126629_))))
                                                (let ((_hd126597126635_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126598126632_)))
                                                      (_tl126596126637_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126598126632_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126596126637_))
                                                      ((lambda (_L126640_
                                                                _L126641_
                                                                _L126642_)
                                                         (let ((__tmp130358
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126642_)))
                       (__tmp130357
                        (let () (declare (not safe)) (gx#stx-e _L126641_)))
                       (__tmp130356
                        (let () (declare (not safe)) (gx#stx-e _L126640_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp130358
                    __tmp130357
                    __tmp130356)))
               _hd126597126635_
               _hd126594126627_
               _hd126591126619_)
              (let ()
                (declare (not safe))
                (_g126582126603_ _g126583126606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126582126603_
                                                 _g126583126606_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126582126603_ _g126583126606_)))))
                              (let ()
                                (declare (not safe))
                                (_g126582126603_ _g126583126606_)))))
                      (let ()
                        (declare (not safe))
                        (_g126582126603_ _g126583126606_))))))
          (declare (not safe))
          (_g126581126660_ _ann126580_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx126495_ _ann126496_)
        (let* ((_g126498126519_
                (lambda (_g126499126516_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126499126516_))))
               (_g126497126576_
                (lambda (_g126499126522_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126499126522_))
                      (let ((_e126505126524_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126499126522_))))
                        (let ((_hd126504126527_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126505126524_)))
                              (_tl126503126529_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126505126524_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126503126529_))
                              (let ((_e126508126532_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126503126529_))))
                                (let ((_hd126507126535_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126508126532_)))
                                      (_tl126506126537_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126508126532_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126506126537_))
                                      (let ((_e126511126540_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126506126537_))))
                                        (let ((_hd126510126543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126511126540_)))
                                              (_tl126509126545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126511126540_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126509126545_))
                                              (let ((_e126514126548_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126509126545_))))
                                                (let ((_hd126513126551_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126514126548_)))
                                                      (_tl126512126553_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126514126548_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126512126553_))
                                                      ((lambda (_L126556_
                                                                _L126557_
                                                                _L126558_)
                                                         (let ((__tmp130361
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126558_)))
                       (__tmp130360
                        (let () (declare (not safe)) (gx#stx-e _L126557_)))
                       (__tmp130359
                        (let () (declare (not safe)) (gx#stx-e _L126556_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp130361
                    __tmp130360
                    __tmp130359)))
               _hd126513126551_
               _hd126510126543_
               _hd126507126535_)
              (let ()
                (declare (not safe))
                (_g126498126519_ _g126499126522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126498126519_
                                                 _g126499126522_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126498126519_ _g126499126522_)))))
                              (let ()
                                (declare (not safe))
                                (_g126498126519_ _g126499126522_)))))
                      (let ()
                        (declare (not safe))
                        (_g126498126519_ _g126499126522_))))))
          (declare (not safe))
          (_g126497126576_ _ann126496_))))
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
      (lambda (_self125614_ _stx125615_)
        (let* ((___stx128621128622_ _stx125615_)
               (_g125621125817_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128621128622_)))))
          (let ((___kont128623128624_
                 (lambda (_L126483_)
                   (let ((__obj130302
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130302
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126483_))
                      '#f)
                     __obj130302)))
                (___kont128625128626_
                 (lambda (_L126410_
                          _L126411_
                          _L126412_
                          _L126413_
                          _L126414_
                          _L126415_)
                   (let* ((_tab126465_
                           (let () (declare (not safe)) (gx#stx-e _L126412_)))
                          (_keys126467_
                           (if _tab126465_
                               (filter values (vector->list _tab126465_))
                               '#f)))
                     (let ((__tmp130362
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L126411_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys126467_
                        __tmp130362)))))
                (___kont128627128628_
                 (lambda (_L126143_
                          _L126144_
                          _L126145_
                          _L126146_
                          _L126147_
                          _L126148_
                          _L126149_
                          _L126150_
                          _L126151_
                          _L126152_)
                   (let ((__tmp130364
                          (map gx#stx-e
                               (let ((__tmp130365
                                      (lambda (_g126245126248_ _g126246126250_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g126245126248_
                                                _g126246126250_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp130365 '() _L126145_))))
                         (__tmp130363
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126149_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp130364
                      __tmp130363))))
                (___kont128631128632_
                 (lambda (_L125853_)
                   (let ((__obj130303
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130303
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125853_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L125853_)))
                     __obj130303)))
                (___kont128633128634_
                 (lambda (_L125830_)
                   (let ((__obj130304
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130304
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125830_))
                      '#f)
                     __obj130304))))
            (let* ((___match128940128941_
                    (lambda (_e125808125845_ _hd125807125848_ _tl125806125850_)
                      (let ((_L125853_ _tl125806125850_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L125853_))
                            (___kont128631128632_ _L125853_)
                            (___kont128633128634_ _tl125806125850_)))))
                   (___match128934128935_
                    (lambda (_e125702125867_
                             _hd125701125870_
                             _tl125700125872_
                             _e125705125875_
                             _hd125704125878_
                             _tl125703125880_
                             _e125708125883_
                             _hd125707125886_
                             _tl125706125888_
                             _e125711125891_
                             _hd125710125894_
                             _tl125709125896_
                             _e125714125899_
                             _hd125713125902_
                             _tl125712125904_
                             _e125717125907_
                             _hd125716125910_
                             _tl125715125912_
                             _e125720125915_
                             _hd125719125918_
                             _tl125718125920_
                             _e125723125923_
                             _hd125722125926_
                             _tl125721125928_
                             _e125726125931_
                             _hd125725125934_
                             _tl125724125936_
                             _e125729125939_
                             _hd125728125942_
                             _tl125727125944_
                             _e125732125947_
                             _hd125731125950_
                             _tl125730125952_
                             _e125735125955_
                             _hd125734125958_
                             _tl125733125960_
                             _e125738125963_
                             _hd125737125966_
                             _tl125736125968_
                             _e125741125971_
                             _hd125740125974_
                             _tl125739125976_
                             ___splice128629128630_
                             _target125742125979_
                             _tl125744125981_
                             _e125759125984_
                             _hd125758125987_
                             _tl125757125989_
                             _e125762125992_
                             _hd125761125995_
                             _tl125760125997_
                             _e125765126000_
                             _hd125764126003_
                             _tl125763126005_)
                      (letrec ((_loop125745126008_
                                (lambda (_hd125743126011_
                                         _-absent-value125749126013_
                                         _key125750126015_
                                         _-xkwvar125751126017_
                                         _-hash-ref125752126019_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125743126011_))
                                      (let ((_e125746126022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125743126011_))))
                                        (let ((_lp-tl125748126027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125746126022_)))
                                              (_lp-hd125747126025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125746126022_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd125747126025_))
                                              (let ((_e125768126030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd125747126025_))))
                                                (let ((_tl125766126035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125768126030_)))
                                                      (_hd125767126033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125768126030_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd125767126033_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd125767126033_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125766126035_))
                      (let ((_e125771126038_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125766126035_))))
                        (let ((_tl125769126043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125771126038_)))
                              (_hd125770126041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125771126038_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125770126041_))
                              (let ((_e125774126046_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125770126041_))))
                                (let ((_tl125772126051_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125774126046_)))
                                      (_hd125773126049_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125774126046_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125773126049_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125773126049_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125772126051_))
                                              (let ((_e125777126054_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125772126051_))))
                                                (let ((_tl125775126059_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125777126054_)))
                                                      (_hd125776126057_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125777126054_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125775126059_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125769126043_))
                                                          (let ((_e125780126062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125769126043_))))
                    (let ((_tl125778126067_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125780126062_)))
                          (_hd125779126065_
                           (let ()
                             (declare (not safe))
                             (##car _e125780126062_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125779126065_))
                          (let ((_e125783126070_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125779126065_))))
                            (let ((_tl125781126075_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125783126070_)))
                                  (_hd125782126073_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125783126070_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125782126073_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125782126073_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125781126075_))
                                          (let ((_e125786126078_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125781126075_))))
                                            (let ((_tl125784126083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125786126078_)))
                                                  (_hd125785126081_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125786126078_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125784126083_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125778126067_))
                                                      (let ((_e125789126086_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125778126067_))))
                (let ((_tl125787126091_
                       (let () (declare (not safe)) (##cdr _e125789126086_)))
                      (_hd125788126089_
                       (let () (declare (not safe)) (##car _e125789126086_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125788126089_))
                      (let ((_e125792126094_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125788126089_))))
                        (let ((_tl125790126099_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125792126094_)))
                              (_hd125791126097_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125792126094_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125791126097_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd125791126097_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125790126099_))
                                      (let ((_e125795126102_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125790126099_))))
                                        (let ((_tl125793126107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125795126102_)))
                                              (_hd125794126105_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125795126102_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125793126107_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125787126091_))
                                                  (let ((_e125798126110_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125787126091_))))
                                                    (let ((_tl125796126115_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125798126110_)))
                                                          (_hd125797126113_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125798126110_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125797126113_))
                                                          (let ((_e125801126118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125797126113_))))
                    (let ((_tl125799126123_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125801126118_)))
                          (_hd125800126121_
                           (let ()
                             (declare (not safe))
                             (##car _e125801126118_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125800126121_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125800126121_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125799126123_))
                                  (let ((_e125804126126_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125799126123_))))
                                    (let ((_tl125802126131_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125804126126_)))
                                          (_hd125803126129_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125804126126_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125802126131_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125796126115_))
                                              (let ((__tmp130380
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125803126129_
                                                             _-absent-value125749126013_)))
                                                    (__tmp130379
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125794126105_
                                                             _key125750126015_)))
                                                    (__tmp130378
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125785126081_
                                                             _-xkwvar125751126017_)))
                                                    (__tmp130377
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125776126057_
                                                             _-hash-ref125752126019_))))
                                                (declare (not safe))
                                                (_loop125745126008_
                                                 _lp-tl125748126027_
                                                 __tmp130380
                                                 __tmp130379
                                                 __tmp130378
                                                 __tmp130377))
                                              (___match128940128941_
                                               _e125702125867_
                                               _hd125701125870_
                                               _tl125700125872_))
                                          (___match128940128941_
                                           _e125702125867_
                                           _hd125701125870_
                                           _tl125700125872_))))
                                  (___match128940128941_
                                   _e125702125867_
                                   _hd125701125870_
                                   _tl125700125872_))
                              (___match128940128941_
                               _e125702125867_
                               _hd125701125870_
                               _tl125700125872_))
                          (___match128940128941_
                           _e125702125867_
                           _hd125701125870_
                           _tl125700125872_))))
                  (___match128940128941_
                   _e125702125867_
                   _hd125701125870_
                   _tl125700125872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128940128941_
                                                   _e125702125867_
                                                   _hd125701125870_
                                                   _tl125700125872_))
                                              (___match128940128941_
                                               _e125702125867_
                                               _hd125701125870_
                                               _tl125700125872_))))
                                      (___match128940128941_
                                       _e125702125867_
                                       _hd125701125870_
                                       _tl125700125872_))
                                  (___match128940128941_
                                   _e125702125867_
                                   _hd125701125870_
                                   _tl125700125872_))
                              (___match128940128941_
                               _e125702125867_
                               _hd125701125870_
                               _tl125700125872_))))
                      (___match128940128941_
                       _e125702125867_
                       _hd125701125870_
                       _tl125700125872_))))
              (___match128940128941_
               _e125702125867_
               _hd125701125870_
               _tl125700125872_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128940128941_
                                                   _e125702125867_
                                                   _hd125701125870_
                                                   _tl125700125872_))))
                                          (___match128940128941_
                                           _e125702125867_
                                           _hd125701125870_
                                           _tl125700125872_))
                                      (___match128940128941_
                                       _e125702125867_
                                       _hd125701125870_
                                       _tl125700125872_))
                                  (___match128940128941_
                                   _e125702125867_
                                   _hd125701125870_
                                   _tl125700125872_))))
                          (___match128940128941_
                           _e125702125867_
                           _hd125701125870_
                           _tl125700125872_))))
                  (___match128940128941_
                   _e125702125867_
                   _hd125701125870_
                   _tl125700125872_))
              (___match128940128941_
               _e125702125867_
               _hd125701125870_
               _tl125700125872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128940128941_
                                               _e125702125867_
                                               _hd125701125870_
                                               _tl125700125872_))
                                          (___match128940128941_
                                           _e125702125867_
                                           _hd125701125870_
                                           _tl125700125872_))
                                      (___match128940128941_
                                       _e125702125867_
                                       _hd125701125870_
                                       _tl125700125872_))))
                              (___match128940128941_
                               _e125702125867_
                               _hd125701125870_
                               _tl125700125872_))))
                      (___match128940128941_
                       _e125702125867_
                       _hd125701125870_
                       _tl125700125872_))
                  (___match128940128941_
                   _e125702125867_
                   _hd125701125870_
                   _tl125700125872_))
              (___match128940128941_
               _e125702125867_
               _hd125701125870_
               _tl125700125872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128940128941_
                                               _e125702125867_
                                               _hd125701125870_
                                               _tl125700125872_))))
                                      (let ((_-hash-ref125756126140_
                                             (reverse _-hash-ref125752126019_))
                                            (_-xkwvar125755126138_
                                             (reverse _-xkwvar125751126017_))
                                            (_key125754126136_
                                             (reverse _key125750126015_))
                                            (_-absent-value125753126134_
                                             (reverse _-absent-value125749126013_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl125709125896_))
                                            (let ((_L126143_ _hd125764126003_)
                                                  (_L126144_
                                                   _-absent-value125753126134_)
                                                  (_L126145_ _key125754126136_)
                                                  (_L126146_
                                                   _-xkwvar125755126138_)
                                                  (_L126147_
                                                   _-hash-ref125756126140_)
                                                  (_L126148_ _hd125740125974_)
                                                  (_L126149_ _hd125731125950_)
                                                  (_L126150_ _hd125722125926_)
                                                  (_L126151_ _tl125706125888_)
                                                  (_L126152_ _hd125707125886_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126152_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126151_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L126150_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L126152_
                                                          _L126148_))
                                                       (let ((__tmp130375
                                                              (let ((__tmp130376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g126205126208_ _g126206126210_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126205126208_ _g126206126210_)))))
                        (declare (not safe))
                        (foldr1 __tmp130376 '() _L126145_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp130375))
               (let ((__tmp130374
                      (lambda (_g126212126214_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126212126214_
                           'hash-ref))))
                     (__tmp130372
                      (let ((__tmp130373
                             (lambda (_g126216126219_ _g126217126221_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126216126219_ _g126217126221_)))))
                        (declare (not safe))
                        (foldr1 __tmp130373 '() _L126147_))))
                 (declare (not safe))
                 (andmap1 __tmp130374 __tmp130372))
               (let ((__tmp130371
                      (lambda (_g126223126225_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126223126225_
                           'absent-value))))
                     (__tmp130369
                      (let ((__tmp130370
                             (lambda (_g126227126230_ _g126228126232_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126227126230_ _g126228126232_)))))
                        (declare (not safe))
                        (foldr1 __tmp130370 '() _L126144_))))
                 (declare (not safe))
                 (andmap1 __tmp130371 __tmp130369))
               (let ((__tmp130368
                      (lambda (_g126234126236_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g126234126236_ _L126152_))))
                     (__tmp130366
                      (let ((__tmp130367
                             (lambda (_g126238126241_ _g126239126243_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126238126241_ _g126239126243_)))))
                        (declare (not safe))
                        (foldr1 __tmp130367 '() _L126146_))))
                 (declare (not safe))
                 (andmap1 __tmp130368 __tmp130366)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128627128628_
                                                   _L126143_
                                                   _L126144_
                                                   _L126145_
                                                   _L126146_
                                                   _L126147_
                                                   _L126148_
                                                   _L126149_
                                                   _L126150_
                                                   _L126151_
                                                   _L126152_)
                                                  (___match128940128941_
                                                   _e125702125867_
                                                   _hd125701125870_
                                                   _tl125700125872_)))
                                            (___match128940128941_
                                             _e125702125867_
                                             _hd125701125870_
                                             _tl125700125872_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop125745126008_
                           _target125742125979_
                           '()
                           '()
                           '()
                           '())))))
                   (___match128806128807_
                    (lambda (_e125702125867_
                             _hd125701125870_
                             _tl125700125872_
                             _e125705125875_
                             _hd125704125878_
                             _tl125703125880_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125704125878_))
                          (let ((_e125708125883_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125704125878_))))
                            (let ((_tl125706125888_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125708125883_)))
                                  (_hd125707125886_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125708125883_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125703125880_))
                                  (let ((_e125711125891_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125703125880_))))
                                    (let ((_tl125709125896_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125711125891_)))
                                          (_hd125710125894_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125711125891_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125710125894_))
                                          (let ((_e125714125899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125710125894_))))
                                            (let ((_tl125712125904_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125714125899_)))
                                                  (_hd125713125902_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125714125899_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125713125902_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125713125902_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125712125904_))
                                                          (let ((_e125717125907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125712125904_))))
                    (let ((_tl125715125912_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125717125907_)))
                          (_hd125716125910_
                           (let ()
                             (declare (not safe))
                             (##car _e125717125907_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125716125910_))
                          (let ((_e125720125915_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125716125910_))))
                            (let ((_tl125718125920_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125720125915_)))
                                  (_hd125719125918_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125720125915_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125719125918_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125719125918_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125718125920_))
                                          (let ((_e125723125923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125718125920_))))
                                            (let ((_tl125721125928_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125723125923_)))
                                                  (_hd125722125926_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125723125923_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125721125928_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125715125912_))
                                                      (let ((_e125726125931_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125715125912_))))
                (let ((_tl125724125936_
                       (let () (declare (not safe)) (##cdr _e125726125931_)))
                      (_hd125725125934_
                       (let () (declare (not safe)) (##car _e125726125931_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125725125934_))
                      (let ((_e125729125939_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125725125934_))))
                        (let ((_tl125727125944_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125729125939_)))
                              (_hd125728125942_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125729125939_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125728125942_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125728125942_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125727125944_))
                                      (let ((_e125732125947_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125727125944_))))
                                        (let ((_tl125730125952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125732125947_)))
                                              (_hd125731125950_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125732125947_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125730125952_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125724125936_))
                                                  (let ((_e125735125955_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125724125936_))))
                                                    (let ((_tl125733125960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125735125955_)))
                                                          (_hd125734125958_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125735125955_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125734125958_))
                                                          (let ((_e125738125963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125734125958_))))
                    (let ((_tl125736125968_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125738125963_)))
                          (_hd125737125966_
                           (let ()
                             (declare (not safe))
                             (##car _e125738125963_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125737125966_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125737125966_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125736125968_))
                                  (let ((_e125741125971_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125736125968_))))
                                    (let ((_tl125739125976_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125741125971_)))
                                          (_hd125740125974_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125741125971_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125739125976_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125733125960_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl125733125960_))
                                                        '1)
                                                  (let ((___splice128629128630_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125733125960_
                                                            '1))))
                                                    (let ((_tl125744125981_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128629128630_
                                                              '1)))
                                                          (_target125742125979_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128629128630_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125744125981_))
                                                          (let ((_e125759125984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125744125981_))))
                    (let ((_tl125757125989_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125759125984_)))
                          (_hd125758125987_
                           (let ()
                             (declare (not safe))
                             (##car _e125759125984_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125758125987_))
                          (let ((_e125762125992_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125758125987_))))
                            (let ((_tl125760125997_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125762125992_)))
                                  (_hd125761125995_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125762125992_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125761125995_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125761125995_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125760125997_))
                                          (let ((_e125765126000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125760125997_))))
                                            (let ((_tl125763126005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125765126000_)))
                                                  (_hd125764126003_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125765126000_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125763126005_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125757125989_))
                                                      (___match128934128935_
                                                       _e125702125867_
                                                       _hd125701125870_
                                                       _tl125700125872_
                                                       _e125705125875_
                                                       _hd125704125878_
                                                       _tl125703125880_
                                                       _e125708125883_
                                                       _hd125707125886_
                                                       _tl125706125888_
                                                       _e125711125891_
                                                       _hd125710125894_
                                                       _tl125709125896_
                                                       _e125714125899_
                                                       _hd125713125902_
                                                       _tl125712125904_
                                                       _e125717125907_
                                                       _hd125716125910_
                                                       _tl125715125912_
                                                       _e125720125915_
                                                       _hd125719125918_
                                                       _tl125718125920_
                                                       _e125723125923_
                                                       _hd125722125926_
                                                       _tl125721125928_
                                                       _e125726125931_
                                                       _hd125725125934_
                                                       _tl125724125936_
                                                       _e125729125939_
                                                       _hd125728125942_
                                                       _tl125727125944_
                                                       _e125732125947_
                                                       _hd125731125950_
                                                       _tl125730125952_
                                                       _e125735125955_
                                                       _hd125734125958_
                                                       _tl125733125960_
                                                       _e125738125963_
                                                       _hd125737125966_
                                                       _tl125736125968_
                                                       _e125741125971_
                                                       _hd125740125974_
                                                       _tl125739125976_
                                                       ___splice128629128630_
                                                       _target125742125979_
                                                       _tl125744125981_
                                                       _e125759125984_
                                                       _hd125758125987_
                                                       _tl125757125989_
                                                       _e125762125992_
                                                       _hd125761125995_
                                                       _tl125760125997_
                                                       _e125765126000_
                                                       _hd125764126003_
                                                       _tl125763126005_)
                                                      (___match128940128941_
                                                       _e125702125867_
                                                       _hd125701125870_
                                                       _tl125700125872_))
                                                  (___match128940128941_
                                                   _e125702125867_
                                                   _hd125701125870_
                                                   _tl125700125872_))))
                                          (___match128940128941_
                                           _e125702125867_
                                           _hd125701125870_
                                           _tl125700125872_))
                                      (___match128940128941_
                                       _e125702125867_
                                       _hd125701125870_
                                       _tl125700125872_))
                                  (___match128940128941_
                                   _e125702125867_
                                   _hd125701125870_
                                   _tl125700125872_))))
                          (___match128940128941_
                           _e125702125867_
                           _hd125701125870_
                           _tl125700125872_))))
                  (___match128940128941_
                   _e125702125867_
                   _hd125701125870_
                   _tl125700125872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128940128941_
                                                   _e125702125867_
                                                   _hd125701125870_
                                                   _tl125700125872_))
                                              (___match128940128941_
                                               _e125702125867_
                                               _hd125701125870_
                                               _tl125700125872_))
                                          (___match128940128941_
                                           _e125702125867_
                                           _hd125701125870_
                                           _tl125700125872_))))
                                  (___match128940128941_
                                   _e125702125867_
                                   _hd125701125870_
                                   _tl125700125872_))
                              (___match128940128941_
                               _e125702125867_
                               _hd125701125870_
                               _tl125700125872_))
                          (___match128940128941_
                           _e125702125867_
                           _hd125701125870_
                           _tl125700125872_))))
                  (___match128940128941_
                   _e125702125867_
                   _hd125701125870_
                   _tl125700125872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128940128941_
                                                   _e125702125867_
                                                   _hd125701125870_
                                                   _tl125700125872_))
                                              (___match128940128941_
                                               _e125702125867_
                                               _hd125701125870_
                                               _tl125700125872_))))
                                      (___match128940128941_
                                       _e125702125867_
                                       _hd125701125870_
                                       _tl125700125872_))
                                  (___match128940128941_
                                   _e125702125867_
                                   _hd125701125870_
                                   _tl125700125872_))
                              (___match128940128941_
                               _e125702125867_
                               _hd125701125870_
                               _tl125700125872_))))
                      (___match128940128941_
                       _e125702125867_
                       _hd125701125870_
                       _tl125700125872_))))
              (___match128940128941_
               _e125702125867_
               _hd125701125870_
               _tl125700125872_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128940128941_
                                                   _e125702125867_
                                                   _hd125701125870_
                                                   _tl125700125872_))))
                                          (___match128940128941_
                                           _e125702125867_
                                           _hd125701125870_
                                           _tl125700125872_))
                                      (___match128940128941_
                                       _e125702125867_
                                       _hd125701125870_
                                       _tl125700125872_))
                                  (___match128940128941_
                                   _e125702125867_
                                   _hd125701125870_
                                   _tl125700125872_))))
                          (___match128940128941_
                           _e125702125867_
                           _hd125701125870_
                           _tl125700125872_))))
                  (___match128940128941_
                   _e125702125867_
                   _hd125701125870_
                   _tl125700125872_))
              (___match128940128941_
               _e125702125867_
               _hd125701125870_
               _tl125700125872_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128940128941_
                                                   _e125702125867_
                                                   _hd125701125870_
                                                   _tl125700125872_))))
                                          (___match128940128941_
                                           _e125702125867_
                                           _hd125701125870_
                                           _tl125700125872_))))
                                  (___match128940128941_
                                   _e125702125867_
                                   _hd125701125870_
                                   _tl125700125872_))))
                          (___match128940128941_
                           _e125702125867_
                           _hd125701125870_
                           _tl125700125872_))))
                   (___match128794128795_
                    (lambda (_e125635126258_
                             _hd125634126261_
                             _tl125633126263_
                             _e125638126266_
                             _hd125637126269_
                             _tl125636126271_
                             _e125641126274_
                             _hd125640126277_
                             _tl125639126279_
                             _e125644126282_
                             _hd125643126285_
                             _tl125642126287_
                             _e125647126290_
                             _hd125646126293_
                             _tl125645126295_
                             _e125650126298_
                             _hd125649126301_
                             _tl125648126303_
                             _e125653126306_
                             _hd125652126309_
                             _tl125651126311_
                             _e125656126314_
                             _hd125655126317_
                             _tl125654126319_
                             _e125659126322_
                             _hd125658126325_
                             _tl125657126327_
                             _e125662126330_
                             _hd125661126333_
                             _tl125660126335_
                             _e125665126338_
                             _hd125664126341_
                             _tl125663126343_
                             _e125668126346_
                             _hd125667126349_
                             _tl125666126351_
                             _e125671126354_
                             _hd125670126357_
                             _tl125669126359_
                             _e125674126362_
                             _hd125673126365_
                             _tl125672126367_
                             _e125677126370_
                             _hd125676126373_
                             _tl125675126375_
                             _e125680126378_
                             _hd125679126381_
                             _tl125678126383_
                             _e125683126386_
                             _hd125682126389_
                             _tl125681126391_
                             _e125686126394_
                             _hd125685126397_
                             _tl125684126399_
                             _e125689126402_
                             _hd125688126405_
                             _tl125687126407_)
                      (let ((_L126410_ _hd125688126405_)
                            (_L126411_ _hd125679126381_)
                            (_L126412_ _hd125670126357_)
                            (_L126413_ _hd125661126333_)
                            (_L126414_ _hd125652126309_)
                            (_L126415_ _hd125637126269_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L126415_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L126414_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L126413_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L126415_ _L126410_)))
                            (___kont128625128626_
                             _L126410_
                             _L126411_
                             _L126412_
                             _L126413_
                             _L126414_
                             _L126415_)
                            (___match128806128807_
                             _e125635126258_
                             _hd125634126261_
                             _tl125633126263_
                             _e125638126266_
                             _hd125637126269_
                             _tl125636126271_)))))
                   (___match128648128649_
                    (lambda (_e125635126258_ _hd125634126261_ _tl125633126263_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125633126263_))
                          (let ((_e125638126266_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125633126263_))))
                            (let ((_tl125636126271_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125638126266_)))
                                  (_hd125637126269_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125638126266_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125636126271_))
                                  (let ((_e125641126274_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125636126271_))))
                                    (let ((_tl125639126279_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125641126274_)))
                                          (_hd125640126277_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125641126274_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125640126277_))
                                          (let ((_e125644126282_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125640126277_))))
                                            (let ((_tl125642126287_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125644126282_)))
                                                  (_hd125643126285_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125644126282_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125643126285_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125643126285_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125642126287_))
                                                          (let ((_e125647126290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125642126287_))))
                    (let ((_tl125645126295_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125647126290_)))
                          (_hd125646126293_
                           (let ()
                             (declare (not safe))
                             (##car _e125647126290_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125646126293_))
                          (let ((_e125650126298_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125646126293_))))
                            (let ((_tl125648126303_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125650126298_)))
                                  (_hd125649126301_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125650126298_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125649126301_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125649126301_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125648126303_))
                                          (let ((_e125653126306_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125648126303_))))
                                            (let ((_tl125651126311_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125653126306_)))
                                                  (_hd125652126309_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125653126306_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125651126311_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125645126295_))
                                                      (let ((_e125656126314_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125645126295_))))
                (let ((_tl125654126319_
                       (let () (declare (not safe)) (##cdr _e125656126314_)))
                      (_hd125655126317_
                       (let () (declare (not safe)) (##car _e125656126314_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125655126317_))
                      (let ((_e125659126322_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125655126317_))))
                        (let ((_tl125657126327_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125659126322_)))
                              (_hd125658126325_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125659126322_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125658126325_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125658126325_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125657126327_))
                                      (let ((_e125662126330_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125657126327_))))
                                        (let ((_tl125660126335_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125662126330_)))
                                              (_hd125661126333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125662126330_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125660126335_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125654126319_))
                                                  (let ((_e125665126338_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125654126319_))))
                                                    (let ((_tl125663126343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125665126338_)))
                                                          (_hd125664126341_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125665126338_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125664126341_))
                                                          (let ((_e125668126346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125664126341_))))
                    (let ((_tl125666126351_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125668126346_)))
                          (_hd125667126349_
                           (let ()
                             (declare (not safe))
                             (##car _e125668126346_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125667126349_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125667126349_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125666126351_))
                                  (let ((_e125671126354_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125666126351_))))
                                    (let ((_tl125669126359_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125671126354_)))
                                          (_hd125670126357_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125671126354_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125669126359_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125663126343_))
                                              (let ((_e125674126362_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125663126343_))))
                                                (let ((_tl125672126367_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125674126362_)))
                                                      (_hd125673126365_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125674126362_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125673126365_))
                                                      (let ((_e125677126370_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125673126365_))))
                (let ((_tl125675126375_
                       (let () (declare (not safe)) (##cdr _e125677126370_)))
                      (_hd125676126373_
                       (let () (declare (not safe)) (##car _e125677126370_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125676126373_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125676126373_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125675126375_))
                              (let ((_e125680126378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125675126375_))))
                                (let ((_tl125678126383_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125680126378_)))
                                      (_hd125679126381_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125680126378_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125678126383_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125672126367_))
                                          (let ((_e125683126386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125672126367_))))
                                            (let ((_tl125681126391_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125683126386_)))
                                                  (_hd125682126389_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125683126386_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd125682126389_))
                                                  (let ((_e125686126394_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd125682126389_))))
                                                    (let ((_tl125684126399_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125686126394_)))
                                                          (_hd125685126397_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125686126394_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd125685126397_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd125685126397_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125684126399_))
                          (let ((_e125689126402_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125684126399_))))
                            (let ((_tl125687126407_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125689126402_)))
                                  (_hd125688126405_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125689126402_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125687126407_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125681126391_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125639126279_))
                                          (___match128794128795_
                                           _e125635126258_
                                           _hd125634126261_
                                           _tl125633126263_
                                           _e125638126266_
                                           _hd125637126269_
                                           _tl125636126271_
                                           _e125641126274_
                                           _hd125640126277_
                                           _tl125639126279_
                                           _e125644126282_
                                           _hd125643126285_
                                           _tl125642126287_
                                           _e125647126290_
                                           _hd125646126293_
                                           _tl125645126295_
                                           _e125650126298_
                                           _hd125649126301_
                                           _tl125648126303_
                                           _e125653126306_
                                           _hd125652126309_
                                           _tl125651126311_
                                           _e125656126314_
                                           _hd125655126317_
                                           _tl125654126319_
                                           _e125659126322_
                                           _hd125658126325_
                                           _tl125657126327_
                                           _e125662126330_
                                           _hd125661126333_
                                           _tl125660126335_
                                           _e125665126338_
                                           _hd125664126341_
                                           _tl125663126343_
                                           _e125668126346_
                                           _hd125667126349_
                                           _tl125666126351_
                                           _e125671126354_
                                           _hd125670126357_
                                           _tl125669126359_
                                           _e125674126362_
                                           _hd125673126365_
                                           _tl125672126367_
                                           _e125677126370_
                                           _hd125676126373_
                                           _tl125675126375_
                                           _e125680126378_
                                           _hd125679126381_
                                           _tl125678126383_
                                           _e125683126386_
                                           _hd125682126389_
                                           _tl125681126391_
                                           _e125686126394_
                                           _hd125685126397_
                                           _tl125684126399_
                                           _e125689126402_
                                           _hd125688126405_
                                           _tl125687126407_)
                                          (___match128806128807_
                                           _e125635126258_
                                           _hd125634126261_
                                           _tl125633126263_
                                           _e125638126266_
                                           _hd125637126269_
                                           _tl125636126271_))
                                      (___match128806128807_
                                       _e125635126258_
                                       _hd125634126261_
                                       _tl125633126263_
                                       _e125638126266_
                                       _hd125637126269_
                                       _tl125636126271_))
                                  (___match128806128807_
                                   _e125635126258_
                                   _hd125634126261_
                                   _tl125633126263_
                                   _e125638126266_
                                   _hd125637126269_
                                   _tl125636126271_))))
                          (___match128806128807_
                           _e125635126258_
                           _hd125634126261_
                           _tl125633126263_
                           _e125638126266_
                           _hd125637126269_
                           _tl125636126271_))
                      (___match128806128807_
                       _e125635126258_
                       _hd125634126261_
                       _tl125633126263_
                       _e125638126266_
                       _hd125637126269_
                       _tl125636126271_))
                  (___match128806128807_
                   _e125635126258_
                   _hd125634126261_
                   _tl125633126263_
                   _e125638126266_
                   _hd125637126269_
                   _tl125636126271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128806128807_
                                                   _e125635126258_
                                                   _hd125634126261_
                                                   _tl125633126263_
                                                   _e125638126266_
                                                   _hd125637126269_
                                                   _tl125636126271_))))
                                          (___match128806128807_
                                           _e125635126258_
                                           _hd125634126261_
                                           _tl125633126263_
                                           _e125638126266_
                                           _hd125637126269_
                                           _tl125636126271_))
                                      (___match128806128807_
                                       _e125635126258_
                                       _hd125634126261_
                                       _tl125633126263_
                                       _e125638126266_
                                       _hd125637126269_
                                       _tl125636126271_))))
                              (___match128806128807_
                               _e125635126258_
                               _hd125634126261_
                               _tl125633126263_
                               _e125638126266_
                               _hd125637126269_
                               _tl125636126271_))
                          (___match128806128807_
                           _e125635126258_
                           _hd125634126261_
                           _tl125633126263_
                           _e125638126266_
                           _hd125637126269_
                           _tl125636126271_))
                      (___match128806128807_
                       _e125635126258_
                       _hd125634126261_
                       _tl125633126263_
                       _e125638126266_
                       _hd125637126269_
                       _tl125636126271_))))
              (___match128806128807_
               _e125635126258_
               _hd125634126261_
               _tl125633126263_
               _e125638126266_
               _hd125637126269_
               _tl125636126271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128806128807_
                                               _e125635126258_
                                               _hd125634126261_
                                               _tl125633126263_
                                               _e125638126266_
                                               _hd125637126269_
                                               _tl125636126271_))
                                          (___match128806128807_
                                           _e125635126258_
                                           _hd125634126261_
                                           _tl125633126263_
                                           _e125638126266_
                                           _hd125637126269_
                                           _tl125636126271_))))
                                  (___match128806128807_
                                   _e125635126258_
                                   _hd125634126261_
                                   _tl125633126263_
                                   _e125638126266_
                                   _hd125637126269_
                                   _tl125636126271_))
                              (___match128806128807_
                               _e125635126258_
                               _hd125634126261_
                               _tl125633126263_
                               _e125638126266_
                               _hd125637126269_
                               _tl125636126271_))
                          (___match128806128807_
                           _e125635126258_
                           _hd125634126261_
                           _tl125633126263_
                           _e125638126266_
                           _hd125637126269_
                           _tl125636126271_))))
                  (___match128806128807_
                   _e125635126258_
                   _hd125634126261_
                   _tl125633126263_
                   _e125638126266_
                   _hd125637126269_
                   _tl125636126271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128806128807_
                                                   _e125635126258_
                                                   _hd125634126261_
                                                   _tl125633126263_
                                                   _e125638126266_
                                                   _hd125637126269_
                                                   _tl125636126271_))
                                              (___match128806128807_
                                               _e125635126258_
                                               _hd125634126261_
                                               _tl125633126263_
                                               _e125638126266_
                                               _hd125637126269_
                                               _tl125636126271_))))
                                      (___match128806128807_
                                       _e125635126258_
                                       _hd125634126261_
                                       _tl125633126263_
                                       _e125638126266_
                                       _hd125637126269_
                                       _tl125636126271_))
                                  (___match128806128807_
                                   _e125635126258_
                                   _hd125634126261_
                                   _tl125633126263_
                                   _e125638126266_
                                   _hd125637126269_
                                   _tl125636126271_))
                              (___match128806128807_
                               _e125635126258_
                               _hd125634126261_
                               _tl125633126263_
                               _e125638126266_
                               _hd125637126269_
                               _tl125636126271_))))
                      (___match128806128807_
                       _e125635126258_
                       _hd125634126261_
                       _tl125633126263_
                       _e125638126266_
                       _hd125637126269_
                       _tl125636126271_))))
              (___match128806128807_
               _e125635126258_
               _hd125634126261_
               _tl125633126263_
               _e125638126266_
               _hd125637126269_
               _tl125636126271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128806128807_
                                                   _e125635126258_
                                                   _hd125634126261_
                                                   _tl125633126263_
                                                   _e125638126266_
                                                   _hd125637126269_
                                                   _tl125636126271_))))
                                          (___match128806128807_
                                           _e125635126258_
                                           _hd125634126261_
                                           _tl125633126263_
                                           _e125638126266_
                                           _hd125637126269_
                                           _tl125636126271_))
                                      (___match128806128807_
                                       _e125635126258_
                                       _hd125634126261_
                                       _tl125633126263_
                                       _e125638126266_
                                       _hd125637126269_
                                       _tl125636126271_))
                                  (___match128806128807_
                                   _e125635126258_
                                   _hd125634126261_
                                   _tl125633126263_
                                   _e125638126266_
                                   _hd125637126269_
                                   _tl125636126271_))))
                          (___match128806128807_
                           _e125635126258_
                           _hd125634126261_
                           _tl125633126263_
                           _e125638126266_
                           _hd125637126269_
                           _tl125636126271_))))
                  (___match128806128807_
                   _e125635126258_
                   _hd125634126261_
                   _tl125633126263_
                   _e125638126266_
                   _hd125637126269_
                   _tl125636126271_))
              (___match128806128807_
               _e125635126258_
               _hd125634126261_
               _tl125633126263_
               _e125638126266_
               _hd125637126269_
               _tl125636126271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128806128807_
                                                   _e125635126258_
                                                   _hd125634126261_
                                                   _tl125633126263_
                                                   _e125638126266_
                                                   _hd125637126269_
                                                   _tl125636126271_))))
                                          (___match128806128807_
                                           _e125635126258_
                                           _hd125634126261_
                                           _tl125633126263_
                                           _e125638126266_
                                           _hd125637126269_
                                           _tl125636126271_))))
                                  (___match128806128807_
                                   _e125635126258_
                                   _hd125634126261_
                                   _tl125633126263_
                                   _e125638126266_
                                   _hd125637126269_
                                   _tl125636126271_))))
                          (___match128940128941_
                           _e125635126258_
                           _hd125634126261_
                           _tl125633126263_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128621128622_))
                  (let ((_e125626126475_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128621128622_))))
                    (let ((_tl125624126480_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125626126475_)))
                          (_hd125625126478_
                           (let ()
                             (declare (not safe))
                             (##car _e125626126475_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L126483_ _tl125624126480_))
                            (___kont128623128624_ _L126483_))
                          (___match128648128649_
                           _e125626126475_
                           _hd125625126478_
                           _tl125624126480_))))
                  (let () (declare (not safe)) (_g125621125817_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self125568_ _stx125569_)
        (letrec ((_clause-e125571_
                  (lambda (_form125612_)
                    (let ((__obj130305
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
                       __obj130305
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form125612_))
                       (if (let ((__tmp130381
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp130381))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form125612_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form125612_))
                               '#f)
                           '#f))
                      __obj130305))))
          (let* ((_g125573125583_
                  (lambda (_g125574125580_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125574125580_))))
                 (_g125572125609_
                  (lambda (_g125574125586_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125574125586_))
                        (let ((_e125578125588_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125574125586_))))
                          (let ((_hd125577125591_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125578125588_)))
                                (_tl125576125593_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125578125588_))))
                            ((lambda (_L125596_)
                               (let ((_clauses125607_
                                      (map _clause-e125571_ _L125596_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses125607_)))
                             _tl125576125593_)))
                        (let ()
                          (declare (not safe))
                          (_g125573125583_ _g125574125586_))))))
            (declare (not safe))
            (_g125572125609_ _stx125569_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self125499_ _stx125500_)
        (let* ((_g125502125519_
                (lambda (_g125503125516_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125503125516_))))
               (_g125501125565_
                (lambda (_g125503125522_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125503125522_))
                      (let ((_e125508125524_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125503125522_))))
                        (let ((_hd125507125527_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125508125524_)))
                              (_tl125506125529_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125508125524_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125506125529_))
                              (let ((_e125511125532_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125506125529_))))
                                (let ((_hd125510125535_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125511125532_)))
                                      (_tl125509125537_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125511125532_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125509125537_))
                                      (let ((_e125514125540_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125509125537_))))
                                        (let ((_hd125513125543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125514125540_)))
                                              (_tl125512125545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125514125540_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125512125545_))
                                              ((lambda (_L125548_ _L125549_)
                                                 (let ((__tmp130382
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self125499_
                                                             _L125548_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp130382
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd125513125543_
                                               _hd125510125535_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125502125519_
                                                 _g125503125522_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125502125519_ _g125503125522_)))))
                              (let ()
                                (declare (not safe))
                                (_g125502125519_ _g125503125522_)))))
                      (let ()
                        (declare (not safe))
                        (_g125502125519_ _g125503125522_))))))
          (declare (not safe))
          (_g125501125565_ _stx125500_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self125403_ _stx125404_)
        (let* ((___stx128949128950_ _stx125404_)
               (_g125407125427_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128949128950_)))))
          (let ((___kont128951128952_
                 (lambda (_L125471_ _L125472_)
                   (let ((_type-e125489125491_
                          (let ((__tmp130383
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L125472_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp130383))))
                     (if _type-e125489125491_
                         (let ((_type-e125494_ _type-e125489125491_))
                           (_type-e125494_ _stx125404_ _L125471_))
                         '#f))))
                (___kont128953128954_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128949128950_))
                (let ((_e125413125439_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128949128950_))))
                  (let ((_tl125411125444_
                         (let () (declare (not safe)) (##cdr _e125413125439_)))
                        (_hd125412125442_
                         (let ()
                           (declare (not safe))
                           (##car _e125413125439_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125411125444_))
                        (let ((_e125416125447_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125411125444_))))
                          (let ((_tl125414125452_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125416125447_)))
                                (_hd125415125450_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125416125447_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125415125450_))
                                (let ((_e125419125455_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125415125450_))))
                                  (let ((_tl125417125460_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125419125455_)))
                                        (_hd125418125458_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125419125455_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125418125458_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125418125458_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125417125460_))
                                                (let ((_e125422125463_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125417125460_))))
                                                  (let ((_tl125420125468_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125422125463_)))
                                                        (_hd125421125466_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125422125463_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125420125468_))
                                                        (___kont128951128952_
                                                         _tl125414125452_
                                                         _hd125421125466_)
                                                        (___kont128953128954_))))
                                                (___kont128953128954_))
                                            (___kont128953128954_))
                                        (___kont128953128954_))))
                                (___kont128953128954_))))
                        (___kont128953128954_))))
                (___kont128953128954_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self125351_ _stx125352_)
        (let* ((_g125354125367_
                (lambda (_g125355125364_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125355125364_))))
               (_g125353125400_
                (lambda (_g125355125370_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125355125370_))
                      (let ((_e125359125372_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125355125370_))))
                        (let ((_hd125358125375_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125359125372_)))
                              (_tl125357125377_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125359125372_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125357125377_))
                              (let ((_e125362125380_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125357125377_))))
                                (let ((_hd125361125383_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125362125380_)))
                                      (_tl125360125385_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125362125380_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125360125385_))
                                      ((lambda (_L125388_)
                                         (let ((__tmp130384
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125388_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp130384)))
                                       _hd125361125383_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125354125367_ _g125355125370_)))))
                              (let ()
                                (declare (not safe))
                                (_g125354125367_ _g125355125370_)))))
                      (let ()
                        (declare (not safe))
                        (_g125354125367_ _g125355125370_))))))
          (declare (not safe))
          (_g125353125400_ _stx125352_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form124585_)
        (let* ((___stx128987128988_ _form124585_)
               (_g124590124747_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128987128988_)))))
          (let ((___kont128989128990_
                 (lambda (_L125271_ _L125272_ _L125273_) '#t))
                (___kont128995128996_
                 (lambda (_L125059_
                          _L125060_
                          _L125061_
                          _L125062_
                          _L125063_
                          _L125064_)
                   '#t))
                (___kont129001129002_
                 (lambda (_L124855_ _L124856_ _L124857_ _L124858_) '#t))
                (___kont129003129004_ (lambda () '#f)))
            (let* ((___match129128129129_
                    (lambda (_e124709124759_
                             _hd124708124762_
                             _tl124707124764_
                             _e124712124767_
                             _hd124711124770_
                             _tl124710124772_
                             _e124715124775_
                             _hd124714124778_
                             _tl124713124780_
                             _e124718124783_
                             _hd124717124786_
                             _tl124716124788_
                             _e124721124791_
                             _hd124720124794_
                             _tl124719124796_
                             _e124724124799_
                             _hd124723124802_
                             _tl124722124804_
                             _e124727124807_
                             _hd124726124810_
                             _tl124725124812_
                             _e124730124815_
                             _hd124729124818_
                             _tl124728124820_
                             _e124733124823_
                             _hd124732124826_
                             _tl124731124828_
                             _e124736124831_
                             _hd124735124834_
                             _tl124734124836_
                             _e124739124839_
                             _hd124738124842_
                             _tl124737124844_
                             _e124742124847_
                             _hd124741124850_
                             _tl124740124852_)
                      (let ((_L124855_ _hd124741124850_)
                            (_L124856_ _hd124732124826_)
                            (_L124857_ _hd124723124802_)
                            (_L124858_ _hd124708124762_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124858_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124857_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124858_ _L124855_))
                                 (let ((__tmp130385
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L124856_
                                           _L124858_))))
                                   (declare (not safe))
                                   (not __tmp130385)))
                            (___kont129001129002_
                             _L124855_
                             _L124856_
                             _L124857_
                             _L124858_)
                            (___kont129003129004_)))))
                   (___match129100129101_
                    (lambda (_e124709124759_
                             _hd124708124762_
                             _tl124707124764_
                             _e124712124767_
                             _hd124711124770_
                             _tl124710124772_
                             _e124715124775_
                             _hd124714124778_
                             _tl124713124780_
                             _e124718124783_
                             _hd124717124786_
                             _tl124716124788_
                             _e124721124791_
                             _hd124720124794_
                             _tl124719124796_
                             _e124724124799_
                             _hd124723124802_
                             _tl124722124804_
                             _e124727124807_
                             _hd124726124810_
                             _tl124725124812_
                             _e124730124815_
                             _hd124729124818_
                             _tl124728124820_
                             _e124733124823_
                             _hd124732124826_
                             _tl124731124828_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124725124812_))
                          (let ((_e124736124831_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124725124812_))))
                            (let ((_tl124734124836_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124736124831_)))
                                  (_hd124735124834_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124736124831_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd124735124834_))
                                  (let ((_e124739124839_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd124735124834_))))
                                    (let ((_tl124737124844_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124739124839_)))
                                          (_hd124738124842_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124739124839_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd124738124842_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd124738124842_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124737124844_))
                                                  (let ((_e124742124847_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124737124844_))))
                                                    (let ((_tl124740124852_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124742124847_)))
                                                          (_hd124741124850_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124742124847_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124740124852_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl124734124836_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124710124772_))
                          (___match129128129129_
                           _e124709124759_
                           _hd124708124762_
                           _tl124707124764_
                           _e124712124767_
                           _hd124711124770_
                           _tl124710124772_
                           _e124715124775_
                           _hd124714124778_
                           _tl124713124780_
                           _e124718124783_
                           _hd124717124786_
                           _tl124716124788_
                           _e124721124791_
                           _hd124720124794_
                           _tl124719124796_
                           _e124724124799_
                           _hd124723124802_
                           _tl124722124804_
                           _e124727124807_
                           _hd124726124810_
                           _tl124725124812_
                           _e124730124815_
                           _hd124729124818_
                           _tl124728124820_
                           _e124733124823_
                           _hd124732124826_
                           _tl124731124828_
                           _e124736124831_
                           _hd124735124834_
                           _tl124734124836_
                           _e124739124839_
                           _hd124738124842_
                           _tl124737124844_
                           _e124742124847_
                           _hd124741124850_
                           _tl124740124852_)
                          (___kont129003129004_))
                      (___kont129003129004_))
                  (___kont129003129004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129003129004_))
                                              (___kont129003129004_))
                                          (___kont129003129004_))))
                                  (___kont129003129004_))))
                          (___kont129003129004_))))
                   (___match129030129031_
                    (lambda (_e124645124899_
                             _hd124644124902_
                             _tl124643124904_
                             ___splice128997128998_
                             _target124646124907_
                             _tl124648124909_)
                      (letrec ((_loop124649124912_
                                (lambda (_hd124647124915_ _arg124653124917_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124647124915_))
                                      (let ((_e124650124920_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124647124915_))))
                                        (let ((_lp-tl124652124925_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124650124920_)))
                                              (_lp-hd124651124923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124650124920_))))
                                          (let ((__tmp130400
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124651124923_
                                                         _arg124653124917_))))
                                            (declare (not safe))
                                            (_loop124649124912_
                                             _lp-tl124652124925_
                                             __tmp130400))))
                                      (let ((_arg124654124928_
                                             (reverse _arg124653124917_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124643124904_))
                                            (let ((_e124657124931_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124643124904_))))
                                              (let ((_tl124655124936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124657124931_)))
                                                    (_hd124656124934_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124657124931_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124656124934_))
                                                    (let ((_e124660124939_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124656124934_))))
                                                      (let ((_tl124658124944_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124660124939_)))
                    (_hd124659124942_
                     (let () (declare (not safe)) (##car _e124660124939_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124659124942_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124659124942_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124658124944_))
                            (let ((_e124663124947_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124658124944_))))
                              (let ((_tl124661124952_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124663124947_)))
                                    (_hd124662124950_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124663124947_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124662124950_))
                                    (let ((_e124666124955_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124662124950_))))
                                      (let ((_tl124664124960_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124666124955_)))
                                            (_hd124665124958_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124666124955_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124665124958_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124665124958_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124664124960_))
                                                    (let ((_e124669124963_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124664124960_))))
                                                      (let ((_tl124667124968_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124669124963_)))
                    (_hd124668124966_
                     (let () (declare (not safe)) (##car _e124669124963_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124667124968_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124661124952_))
                        (let ((_e124672124971_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124661124952_))))
                          (let ((_tl124670124976_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124672124971_)))
                                (_hd124671124974_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124672124971_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124671124974_))
                                (let ((_e124675124979_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124671124974_))))
                                  (let ((_tl124673124984_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124675124979_)))
                                        (_hd124674124982_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124675124979_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124674124982_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124674124982_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124673124984_))
                                                (let ((_e124678124987_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124673124984_))))
                                                  (let ((_tl124676124992_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124678124987_)))
                                                        (_hd124677124990_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124678124987_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124676124992_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl124670124976_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl124670124976_))
                              '1)
                        (let ((___splice128999129000_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124670124976_
                                  '1))))
                          (let ((_tl124681124997_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128999129000_ '1)))
                                (_target124679124995_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128999129000_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124681124997_))
                                (let ((_e124690125000_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124681124997_))))
                                  (let ((_tl124688125005_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124690125000_)))
                                        (_hd124689125003_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124690125000_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd124689125003_))
                                        (let ((_e124693125008_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd124689125003_))))
                                          (let ((_tl124691125013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e124693125008_)))
                                                (_hd124692125011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e124693125008_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd124692125011_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd124692125011_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl124691125013_))
                                                        (let ((_e124696125016_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl124691125013_))))
                  (let ((_tl124694125021_
                         (let () (declare (not safe)) (##cdr _e124696125016_)))
                        (_hd124695125019_
                         (let ()
                           (declare (not safe))
                           (##car _e124696125016_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl124694125021_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl124688125005_))
                            (letrec ((_loop124682125024_
                                      (lambda (_hd124680125027_
                                               _xarg124686125029_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd124680125027_))
                                            (let ((_e124683125032_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd124680125027_))))
                                              (let ((_lp-tl124685125037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124683125032_)))
                                                    (_lp-hd124684125035_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124683125032_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd124684125035_))
                                                    (let ((_e124699125040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd124684125035_))))
                                                      (let ((_tl124697125045_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124699125040_)))
                    (_hd124698125043_
                     (let () (declare (not safe)) (##car _e124699125040_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124698125043_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd124698125043_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124697125045_))
                            (let ((_e124702125048_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124697125045_))))
                              (let ((_tl124700125053_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124702125048_)))
                                    (_hd124701125051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124702125048_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl124700125053_))
                                    (let ((__tmp130399
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd124701125051_
                                                   _xarg124686125029_))))
                                      (declare (not safe))
                                      (_loop124682125024_
                                       _lp-tl124685125037_
                                       __tmp130399))
                                    (___match129100129101_
                                     _e124645124899_
                                     _hd124644124902_
                                     _tl124643124904_
                                     _e124657124931_
                                     _hd124656124934_
                                     _tl124655124936_
                                     _e124660124939_
                                     _hd124659124942_
                                     _tl124658124944_
                                     _e124663124947_
                                     _hd124662124950_
                                     _tl124661124952_
                                     _e124666124955_
                                     _hd124665124958_
                                     _tl124664124960_
                                     _e124669124963_
                                     _hd124668124966_
                                     _tl124667124968_
                                     _e124672124971_
                                     _hd124671124974_
                                     _tl124670124976_
                                     _e124675124979_
                                     _hd124674124982_
                                     _tl124673124984_
                                     _e124678124987_
                                     _hd124677124990_
                                     _tl124676124992_))))
                            (___match129100129101_
                             _e124645124899_
                             _hd124644124902_
                             _tl124643124904_
                             _e124657124931_
                             _hd124656124934_
                             _tl124655124936_
                             _e124660124939_
                             _hd124659124942_
                             _tl124658124944_
                             _e124663124947_
                             _hd124662124950_
                             _tl124661124952_
                             _e124666124955_
                             _hd124665124958_
                             _tl124664124960_
                             _e124669124963_
                             _hd124668124966_
                             _tl124667124968_
                             _e124672124971_
                             _hd124671124974_
                             _tl124670124976_
                             _e124675124979_
                             _hd124674124982_
                             _tl124673124984_
                             _e124678124987_
                             _hd124677124990_
                             _tl124676124992_))
                        (___match129100129101_
                         _e124645124899_
                         _hd124644124902_
                         _tl124643124904_
                         _e124657124931_
                         _hd124656124934_
                         _tl124655124936_
                         _e124660124939_
                         _hd124659124942_
                         _tl124658124944_
                         _e124663124947_
                         _hd124662124950_
                         _tl124661124952_
                         _e124666124955_
                         _hd124665124958_
                         _tl124664124960_
                         _e124669124963_
                         _hd124668124966_
                         _tl124667124968_
                         _e124672124971_
                         _hd124671124974_
                         _tl124670124976_
                         _e124675124979_
                         _hd124674124982_
                         _tl124673124984_
                         _e124678124987_
                         _hd124677124990_
                         _tl124676124992_))
                    (___match129100129101_
                     _e124645124899_
                     _hd124644124902_
                     _tl124643124904_
                     _e124657124931_
                     _hd124656124934_
                     _tl124655124936_
                     _e124660124939_
                     _hd124659124942_
                     _tl124658124944_
                     _e124663124947_
                     _hd124662124950_
                     _tl124661124952_
                     _e124666124955_
                     _hd124665124958_
                     _tl124664124960_
                     _e124669124963_
                     _hd124668124966_
                     _tl124667124968_
                     _e124672124971_
                     _hd124671124974_
                     _tl124670124976_
                     _e124675124979_
                     _hd124674124982_
                     _tl124673124984_
                     _e124678124987_
                     _hd124677124990_
                     _tl124676124992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129100129101_
                                                     _e124645124899_
                                                     _hd124644124902_
                                                     _tl124643124904_
                                                     _e124657124931_
                                                     _hd124656124934_
                                                     _tl124655124936_
                                                     _e124660124939_
                                                     _hd124659124942_
                                                     _tl124658124944_
                                                     _e124663124947_
                                                     _hd124662124950_
                                                     _tl124661124952_
                                                     _e124666124955_
                                                     _hd124665124958_
                                                     _tl124664124960_
                                                     _e124669124963_
                                                     _hd124668124966_
                                                     _tl124667124968_
                                                     _e124672124971_
                                                     _hd124671124974_
                                                     _tl124670124976_
                                                     _e124675124979_
                                                     _hd124674124982_
                                                     _tl124673124984_
                                                     _e124678124987_
                                                     _hd124677124990_
                                                     _tl124676124992_))))
                                            (let ((_xarg124687125056_
                                                   (reverse _xarg124686125029_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124655124936_))
                                                  (let ((_L125059_
                                                         _hd124695125019_)
                                                        (_L125060_
                                                         _xarg124687125056_)
                                                        (_L125061_
                                                         _hd124677124990_)
                                                        (_L125062_
                                                         _hd124668124966_)
                                                        (_L125063_
                                                         _tl124648124909_)
                                                        (_L125064_
                                                         _arg124654124928_))
                                                    (if (and (let ((__tmp130397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130398
                                   (lambda (_g125107125110_ _g125108125112_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125107125110_
                                             _g125108125112_)))))
                              (declare (not safe))
                              (foldr1 __tmp130398 '() _L125064_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp130397))
                     (let () (declare (not safe)) (gx#identifier? _L125063_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L125062_ 'apply))
                     (fx= (length (let ((__tmp130395
                                         (lambda (_g125114125117_
                                                  _g125115125119_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125114125117_
                                                   _g125115125119_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130395 '() _L125064_)))
                          (length (let ((__tmp130396
                                         (lambda (_g125121125124_
                                                  _g125122125126_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125121125124_
                                                   _g125122125126_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130396 '() _L125060_))))
                     (let ((__tmp130393
                            (let ((__tmp130394
                                   (lambda (_g125128125131_ _g125129125133_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125128125131_
                                             _g125129125133_)))))
                              (declare (not safe))
                              (foldr1 __tmp130394 '() _L125064_)))
                           (__tmp130391
                            (let ((__tmp130392
                                   (lambda (_g125135125138_ _g125136125140_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125135125138_
                                             _g125136125140_)))))
                              (declare (not safe))
                              (foldr1 __tmp130392 '() _L125060_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp130393 __tmp130391))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L125063_ _L125059_))
                     (let ((__tmp130386
                            (let ((__tmp130390
                                   (lambda (_g125142125144_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g125142125144_
                                        _L125061_))))
                                  (__tmp130387
                                   (let ((__tmp130389
                                          (lambda (_g125146125149_
                                                   _g125147125151_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g125146125149_
                                                    _g125147125151_))))
                                         (__tmp130388
                                          (let ()
                                            (declare (not safe))
                                            (cons _L125063_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp130389
                                             __tmp130388
                                             _L125064_))))
                              (declare (not safe))
                              (find __tmp130390 __tmp130387))))
                       (declare (not safe))
                       (not __tmp130386)))
                (___kont128995128996_
                 _L125059_
                 _L125060_
                 _L125061_
                 _L125062_
                 _L125063_
                 _L125064_)
                (___match129100129101_
                 _e124645124899_
                 _hd124644124902_
                 _tl124643124904_
                 _e124657124931_
                 _hd124656124934_
                 _tl124655124936_
                 _e124660124939_
                 _hd124659124942_
                 _tl124658124944_
                 _e124663124947_
                 _hd124662124950_
                 _tl124661124952_
                 _e124666124955_
                 _hd124665124958_
                 _tl124664124960_
                 _e124669124963_
                 _hd124668124966_
                 _tl124667124968_
                 _e124672124971_
                 _hd124671124974_
                 _tl124670124976_
                 _e124675124979_
                 _hd124674124982_
                 _tl124673124984_
                 _e124678124987_
                 _hd124677124990_
                 _tl124676124992_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129100129101_
                                                   _e124645124899_
                                                   _hd124644124902_
                                                   _tl124643124904_
                                                   _e124657124931_
                                                   _hd124656124934_
                                                   _tl124655124936_
                                                   _e124660124939_
                                                   _hd124659124942_
                                                   _tl124658124944_
                                                   _e124663124947_
                                                   _hd124662124950_
                                                   _tl124661124952_
                                                   _e124666124955_
                                                   _hd124665124958_
                                                   _tl124664124960_
                                                   _e124669124963_
                                                   _hd124668124966_
                                                   _tl124667124968_
                                                   _e124672124971_
                                                   _hd124671124974_
                                                   _tl124670124976_
                                                   _e124675124979_
                                                   _hd124674124982_
                                                   _tl124673124984_
                                                   _e124678124987_
                                                   _hd124677124990_
                                                   _tl124676124992_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop124682125024_ _target124679124995_ '())))
                            (___match129100129101_
                             _e124645124899_
                             _hd124644124902_
                             _tl124643124904_
                             _e124657124931_
                             _hd124656124934_
                             _tl124655124936_
                             _e124660124939_
                             _hd124659124942_
                             _tl124658124944_
                             _e124663124947_
                             _hd124662124950_
                             _tl124661124952_
                             _e124666124955_
                             _hd124665124958_
                             _tl124664124960_
                             _e124669124963_
                             _hd124668124966_
                             _tl124667124968_
                             _e124672124971_
                             _hd124671124974_
                             _tl124670124976_
                             _e124675124979_
                             _hd124674124982_
                             _tl124673124984_
                             _e124678124987_
                             _hd124677124990_
                             _tl124676124992_))
                        (___match129100129101_
                         _e124645124899_
                         _hd124644124902_
                         _tl124643124904_
                         _e124657124931_
                         _hd124656124934_
                         _tl124655124936_
                         _e124660124939_
                         _hd124659124942_
                         _tl124658124944_
                         _e124663124947_
                         _hd124662124950_
                         _tl124661124952_
                         _e124666124955_
                         _hd124665124958_
                         _tl124664124960_
                         _e124669124963_
                         _hd124668124966_
                         _tl124667124968_
                         _e124672124971_
                         _hd124671124974_
                         _tl124670124976_
                         _e124675124979_
                         _hd124674124982_
                         _tl124673124984_
                         _e124678124987_
                         _hd124677124990_
                         _tl124676124992_))))
                (___match129100129101_
                 _e124645124899_
                 _hd124644124902_
                 _tl124643124904_
                 _e124657124931_
                 _hd124656124934_
                 _tl124655124936_
                 _e124660124939_
                 _hd124659124942_
                 _tl124658124944_
                 _e124663124947_
                 _hd124662124950_
                 _tl124661124952_
                 _e124666124955_
                 _hd124665124958_
                 _tl124664124960_
                 _e124669124963_
                 _hd124668124966_
                 _tl124667124968_
                 _e124672124971_
                 _hd124671124974_
                 _tl124670124976_
                 _e124675124979_
                 _hd124674124982_
                 _tl124673124984_
                 _e124678124987_
                 _hd124677124990_
                 _tl124676124992_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129100129101_
                                                     _e124645124899_
                                                     _hd124644124902_
                                                     _tl124643124904_
                                                     _e124657124931_
                                                     _hd124656124934_
                                                     _tl124655124936_
                                                     _e124660124939_
                                                     _hd124659124942_
                                                     _tl124658124944_
                                                     _e124663124947_
                                                     _hd124662124950_
                                                     _tl124661124952_
                                                     _e124666124955_
                                                     _hd124665124958_
                                                     _tl124664124960_
                                                     _e124669124963_
                                                     _hd124668124966_
                                                     _tl124667124968_
                                                     _e124672124971_
                                                     _hd124671124974_
                                                     _tl124670124976_
                                                     _e124675124979_
                                                     _hd124674124982_
                                                     _tl124673124984_
                                                     _e124678124987_
                                                     _hd124677124990_
                                                     _tl124676124992_))
                                                (___match129100129101_
                                                 _e124645124899_
                                                 _hd124644124902_
                                                 _tl124643124904_
                                                 _e124657124931_
                                                 _hd124656124934_
                                                 _tl124655124936_
                                                 _e124660124939_
                                                 _hd124659124942_
                                                 _tl124658124944_
                                                 _e124663124947_
                                                 _hd124662124950_
                                                 _tl124661124952_
                                                 _e124666124955_
                                                 _hd124665124958_
                                                 _tl124664124960_
                                                 _e124669124963_
                                                 _hd124668124966_
                                                 _tl124667124968_
                                                 _e124672124971_
                                                 _hd124671124974_
                                                 _tl124670124976_
                                                 _e124675124979_
                                                 _hd124674124982_
                                                 _tl124673124984_
                                                 _e124678124987_
                                                 _hd124677124990_
                                                 _tl124676124992_))))
                                        (___match129100129101_
                                         _e124645124899_
                                         _hd124644124902_
                                         _tl124643124904_
                                         _e124657124931_
                                         _hd124656124934_
                                         _tl124655124936_
                                         _e124660124939_
                                         _hd124659124942_
                                         _tl124658124944_
                                         _e124663124947_
                                         _hd124662124950_
                                         _tl124661124952_
                                         _e124666124955_
                                         _hd124665124958_
                                         _tl124664124960_
                                         _e124669124963_
                                         _hd124668124966_
                                         _tl124667124968_
                                         _e124672124971_
                                         _hd124671124974_
                                         _tl124670124976_
                                         _e124675124979_
                                         _hd124674124982_
                                         _tl124673124984_
                                         _e124678124987_
                                         _hd124677124990_
                                         _tl124676124992_))))
                                (___match129100129101_
                                 _e124645124899_
                                 _hd124644124902_
                                 _tl124643124904_
                                 _e124657124931_
                                 _hd124656124934_
                                 _tl124655124936_
                                 _e124660124939_
                                 _hd124659124942_
                                 _tl124658124944_
                                 _e124663124947_
                                 _hd124662124950_
                                 _tl124661124952_
                                 _e124666124955_
                                 _hd124665124958_
                                 _tl124664124960_
                                 _e124669124963_
                                 _hd124668124966_
                                 _tl124667124968_
                                 _e124672124971_
                                 _hd124671124974_
                                 _tl124670124976_
                                 _e124675124979_
                                 _hd124674124982_
                                 _tl124673124984_
                                 _e124678124987_
                                 _hd124677124990_
                                 _tl124676124992_))))
                        (___match129100129101_
                         _e124645124899_
                         _hd124644124902_
                         _tl124643124904_
                         _e124657124931_
                         _hd124656124934_
                         _tl124655124936_
                         _e124660124939_
                         _hd124659124942_
                         _tl124658124944_
                         _e124663124947_
                         _hd124662124950_
                         _tl124661124952_
                         _e124666124955_
                         _hd124665124958_
                         _tl124664124960_
                         _e124669124963_
                         _hd124668124966_
                         _tl124667124968_
                         _e124672124971_
                         _hd124671124974_
                         _tl124670124976_
                         _e124675124979_
                         _hd124674124982_
                         _tl124673124984_
                         _e124678124987_
                         _hd124677124990_
                         _tl124676124992_))
                    (___match129100129101_
                     _e124645124899_
                     _hd124644124902_
                     _tl124643124904_
                     _e124657124931_
                     _hd124656124934_
                     _tl124655124936_
                     _e124660124939_
                     _hd124659124942_
                     _tl124658124944_
                     _e124663124947_
                     _hd124662124950_
                     _tl124661124952_
                     _e124666124955_
                     _hd124665124958_
                     _tl124664124960_
                     _e124669124963_
                     _hd124668124966_
                     _tl124667124968_
                     _e124672124971_
                     _hd124671124974_
                     _tl124670124976_
                     _e124675124979_
                     _hd124674124982_
                     _tl124673124984_
                     _e124678124987_
                     _hd124677124990_
                     _tl124676124992_))
                (___kont129003129004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129003129004_))
                                            (___kont129003129004_))
                                        (___kont129003129004_))))
                                (___kont129003129004_))))
                        (___kont129003129004_))
                    (___kont129003129004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129003129004_))
                                                (___kont129003129004_))
                                            (___kont129003129004_))))
                                    (___kont129003129004_))))
                            (___kont129003129004_))
                        (___kont129003129004_))
                    (___kont129003129004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129003129004_))))
                                            (___kont129003129004_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124649124912_ _target124646124907_ '())))))
                   (___match129018129019_
                    (lambda (_e124597125159_
                             _hd124596125162_
                             _tl124595125164_
                             ___splice128991128992_
                             _target124598125167_
                             _tl124600125169_)
                      (letrec ((_loop124601125172_
                                (lambda (_hd124599125175_ _arg124605125177_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124599125175_))
                                      (let ((_e124602125180_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124599125175_))))
                                        (let ((_lp-tl124604125185_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124602125180_)))
                                              (_lp-hd124603125183_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124602125180_))))
                                          (let ((__tmp130414
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124603125183_
                                                         _arg124605125177_))))
                                            (declare (not safe))
                                            (_loop124601125172_
                                             _lp-tl124604125185_
                                             __tmp130414))))
                                      (let ((_arg124606125188_
                                             (reverse _arg124605125177_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124595125164_))
                                            (let ((_e124609125191_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124595125164_))))
                                              (let ((_tl124607125196_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124609125191_)))
                                                    (_hd124608125194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124609125191_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124608125194_))
                                                    (let ((_e124612125199_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124608125194_))))
                                                      (let ((_tl124610125204_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124612125199_)))
                    (_hd124611125202_
                     (let () (declare (not safe)) (##car _e124612125199_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124611125202_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124611125202_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124610125204_))
                            (let ((_e124615125207_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124610125204_))))
                              (let ((_tl124613125212_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124615125207_)))
                                    (_hd124614125210_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124615125207_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124614125210_))
                                    (let ((_e124618125215_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124614125210_))))
                                      (let ((_tl124616125220_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124618125215_)))
                                            (_hd124617125218_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124618125215_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124617125218_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124617125218_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124616125220_))
                                                    (let ((_e124621125223_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124616125220_))))
                                                      (let ((_tl124619125228_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124621125223_)))
                    (_hd124620125226_
                     (let () (declare (not safe)) (##car _e124621125223_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124619125228_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124613125212_))
                        (let ((___splice128993128994_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124613125212_
                                  '0))))
                          (let ((_tl124624125233_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128993128994_ '1)))
                                (_target124622125231_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128993128994_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124624125233_))
                                (letrec ((_loop124625125236_
                                          (lambda (_hd124623125239_
                                                   _xarg124629125241_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124623125239_))
                                                (let ((_e124626125244_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124623125239_))))
                                                  (let ((_lp-tl124628125249_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124626125244_)))
                                                        (_lp-hd124627125247_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124626125244_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124627125247_))
                                                        (let ((_e124633125252_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124627125247_))))
                  (let ((_tl124631125257_
                         (let () (declare (not safe)) (##cdr _e124633125252_)))
                        (_hd124632125255_
                         (let ()
                           (declare (not safe))
                           (##car _e124633125252_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124632125255_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124632125255_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124631125257_))
                                (let ((_e124636125260_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124631125257_))))
                                  (let ((_tl124634125265_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124636125260_)))
                                        (_hd124635125263_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124636125260_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124634125265_))
                                        (let ((__tmp130413
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124635125263_
                                                       _xarg124629125241_))))
                                          (declare (not safe))
                                          (_loop124625125236_
                                           _lp-tl124628125249_
                                           __tmp130413))
                                        (___match129030129031_
                                         _e124597125159_
                                         _hd124596125162_
                                         _tl124595125164_
                                         ___splice128991128992_
                                         _target124598125167_
                                         _tl124600125169_))))
                                (___match129030129031_
                                 _e124597125159_
                                 _hd124596125162_
                                 _tl124595125164_
                                 ___splice128991128992_
                                 _target124598125167_
                                 _tl124600125169_))
                            (___match129030129031_
                             _e124597125159_
                             _hd124596125162_
                             _tl124595125164_
                             ___splice128991128992_
                             _target124598125167_
                             _tl124600125169_))
                        (___match129030129031_
                         _e124597125159_
                         _hd124596125162_
                         _tl124595125164_
                         ___splice128991128992_
                         _target124598125167_
                         _tl124600125169_))))
                (___match129030129031_
                 _e124597125159_
                 _hd124596125162_
                 _tl124595125164_
                 ___splice128991128992_
                 _target124598125167_
                 _tl124600125169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124630125268_
                                                       (reverse _xarg124629125241_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124607125196_))
                                                      (let ((_L125271_
                                                             _xarg124630125268_)
                                                            (_L125272_
                                                             _hd124620125226_)
                                                            (_L125273_
                                                             _arg124606125188_))
                                                        (if (and (let ((__tmp130411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp130412
                                       (lambda (_g125301125304_
                                                _g125302125306_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125301125304_
                                                 _g125302125306_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130412 '() _L125273_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp130411))
                         (fx= (length (let ((__tmp130409
                                             (lambda (_g125308125311_
                                                      _g125309125313_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125308125311_
                                                       _g125309125313_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130409 '() _L125273_)))
                              (length (let ((__tmp130410
                                             (lambda (_g125315125318_
                                                      _g125316125320_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125315125318_
                                                       _g125316125320_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130410 '() _L125271_))))
                         (let ((__tmp130407
                                (let ((__tmp130408
                                       (lambda (_g125322125325_
                                                _g125323125327_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125322125325_
                                                 _g125323125327_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130408 '() _L125273_)))
                               (__tmp130405
                                (let ((__tmp130406
                                       (lambda (_g125329125332_
                                                _g125330125334_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125329125332_
                                                 _g125330125334_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130406 '() _L125271_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp130407
                                    __tmp130405))
                         (let ((__tmp130401
                                (let ((__tmp130404
                                       (lambda (_g125336125338_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g125336125338_
                                            _L125272_))))
                                      (__tmp130402
                                       (let ((__tmp130403
                                              (lambda (_g125340125343_
                                                       _g125341125345_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g125340125343_
                                                        _g125341125345_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp130403 '() _L125273_))))
                                  (declare (not safe))
                                  (find __tmp130404 __tmp130402))))
                           (declare (not safe))
                           (not __tmp130401)))
                    (___kont128989128990_ _L125271_ _L125272_ _L125273_)
                    (___match129030129031_
                     _e124597125159_
                     _hd124596125162_
                     _tl124595125164_
                     ___splice128991128992_
                     _target124598125167_
                     _tl124600125169_)))
              (___match129030129031_
               _e124597125159_
               _hd124596125162_
               _tl124595125164_
               ___splice128991128992_
               _target124598125167_
               _tl124600125169_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop124625125236_
                                     _target124622125231_
                                     '())))
                                (___match129030129031_
                                 _e124597125159_
                                 _hd124596125162_
                                 _tl124595125164_
                                 ___splice128991128992_
                                 _target124598125167_
                                 _tl124600125169_))))
                        (___match129030129031_
                         _e124597125159_
                         _hd124596125162_
                         _tl124595125164_
                         ___splice128991128992_
                         _target124598125167_
                         _tl124600125169_))
                    (___match129030129031_
                     _e124597125159_
                     _hd124596125162_
                     _tl124595125164_
                     ___splice128991128992_
                     _target124598125167_
                     _tl124600125169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129030129031_
                                                     _e124597125159_
                                                     _hd124596125162_
                                                     _tl124595125164_
                                                     ___splice128991128992_
                                                     _target124598125167_
                                                     _tl124600125169_))
                                                (___match129030129031_
                                                 _e124597125159_
                                                 _hd124596125162_
                                                 _tl124595125164_
                                                 ___splice128991128992_
                                                 _target124598125167_
                                                 _tl124600125169_))
                                            (___match129030129031_
                                             _e124597125159_
                                             _hd124596125162_
                                             _tl124595125164_
                                             ___splice128991128992_
                                             _target124598125167_
                                             _tl124600125169_))))
                                    (___match129030129031_
                                     _e124597125159_
                                     _hd124596125162_
                                     _tl124595125164_
                                     ___splice128991128992_
                                     _target124598125167_
                                     _tl124600125169_))))
                            (___match129030129031_
                             _e124597125159_
                             _hd124596125162_
                             _tl124595125164_
                             ___splice128991128992_
                             _target124598125167_
                             _tl124600125169_))
                        (___match129030129031_
                         _e124597125159_
                         _hd124596125162_
                         _tl124595125164_
                         ___splice128991128992_
                         _target124598125167_
                         _tl124600125169_))
                    (___match129030129031_
                     _e124597125159_
                     _hd124596125162_
                     _tl124595125164_
                     ___splice128991128992_
                     _target124598125167_
                     _tl124600125169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129030129031_
                                                     _e124597125159_
                                                     _hd124596125162_
                                                     _tl124595125164_
                                                     ___splice128991128992_
                                                     _target124598125167_
                                                     _tl124600125169_))))
                                            (___match129030129031_
                                             _e124597125159_
                                             _hd124596125162_
                                             _tl124595125164_
                                             ___splice128991128992_
                                             _target124598125167_
                                             _tl124600125169_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124601125172_ _target124598125167_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128987128988_))
                  (let ((_e124597125159_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128987128988_))))
                    (let ((_tl124595125164_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124597125159_)))
                          (_hd124596125162_
                           (let ()
                             (declare (not safe))
                             (##car _e124597125159_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124596125162_))
                          (let ((___splice128991128992_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124596125162_
                                    '0))))
                            (let ((_tl124600125169_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128991128992_ '1)))
                                  (_target124598125167_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128991128992_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124600125169_))
                                  (___match129018129019_
                                   _e124597125159_
                                   _hd124596125162_
                                   _tl124595125164_
                                   ___splice128991128992_
                                   _target124598125167_
                                   _tl124600125169_)
                                  (___match129030129031_
                                   _e124597125159_
                                   _hd124596125162_
                                   _tl124595125164_
                                   ___splice128991128992_
                                   _target124598125167_
                                   _tl124600125169_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124595125164_))
                              (let ((_e124712124767_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124595125164_))))
                                (let ((_tl124710124772_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124712124767_)))
                                      (_hd124711124770_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124712124767_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124711124770_))
                                      (let ((_e124715124775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124711124770_))))
                                        (let ((_tl124713124780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124715124775_)))
                                              (_hd124714124778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124715124775_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124714124778_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124714124778_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124713124780_))
                                                      (let ((_e124718124783_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124713124780_))))
                (let ((_tl124716124788_
                       (let () (declare (not safe)) (##cdr _e124718124783_)))
                      (_hd124717124786_
                       (let () (declare (not safe)) (##car _e124718124783_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124717124786_))
                      (let ((_e124721124791_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124717124786_))))
                        (let ((_tl124719124796_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124721124791_)))
                              (_hd124720124794_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124721124791_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124720124794_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124720124794_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124719124796_))
                                      (let ((_e124724124799_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124719124796_))))
                                        (let ((_tl124722124804_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124724124799_)))
                                              (_hd124723124802_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124724124799_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124722124804_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124716124788_))
                                                  (let ((_e124727124807_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124716124788_))))
                                                    (let ((_tl124725124812_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124727124807_)))
                                                          (_hd124726124810_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124727124807_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124726124810_))
                                                          (let ((_e124730124815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124726124810_))))
                    (let ((_tl124728124820_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124730124815_)))
                          (_hd124729124818_
                           (let ()
                             (declare (not safe))
                             (##car _e124730124815_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124729124818_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124729124818_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124728124820_))
                                  (let ((_e124733124823_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124728124820_))))
                                    (let ((_tl124731124828_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124733124823_)))
                                          (_hd124732124826_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124733124823_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124731124828_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124725124812_))
                                              (let ((_e124736124831_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124725124812_))))
                                                (let ((_tl124734124836_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124736124831_)))
                                                      (_hd124735124834_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124736124831_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124735124834_))
                                                      (let ((_e124739124839_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124735124834_))))
                (let ((_tl124737124844_
                       (let () (declare (not safe)) (##cdr _e124739124839_)))
                      (_hd124738124842_
                       (let () (declare (not safe)) (##car _e124739124839_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124738124842_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124738124842_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124737124844_))
                              (let ((_e124742124847_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124737124844_))))
                                (let ((_tl124740124852_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124742124847_)))
                                      (_hd124741124850_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124742124847_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124740124852_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124734124836_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124710124772_))
                                              (___match129128129129_
                                               _e124597125159_
                                               _hd124596125162_
                                               _tl124595125164_
                                               _e124712124767_
                                               _hd124711124770_
                                               _tl124710124772_
                                               _e124715124775_
                                               _hd124714124778_
                                               _tl124713124780_
                                               _e124718124783_
                                               _hd124717124786_
                                               _tl124716124788_
                                               _e124721124791_
                                               _hd124720124794_
                                               _tl124719124796_
                                               _e124724124799_
                                               _hd124723124802_
                                               _tl124722124804_
                                               _e124727124807_
                                               _hd124726124810_
                                               _tl124725124812_
                                               _e124730124815_
                                               _hd124729124818_
                                               _tl124728124820_
                                               _e124733124823_
                                               _hd124732124826_
                                               _tl124731124828_
                                               _e124736124831_
                                               _hd124735124834_
                                               _tl124734124836_
                                               _e124739124839_
                                               _hd124738124842_
                                               _tl124737124844_
                                               _e124742124847_
                                               _hd124741124850_
                                               _tl124740124852_)
                                              (___kont129003129004_))
                                          (___kont129003129004_))
                                      (___kont129003129004_))))
                              (___kont129003129004_))
                          (___kont129003129004_))
                      (___kont129003129004_))))
              (___kont129003129004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont129003129004_))
                                          (___kont129003129004_))))
                                  (___kont129003129004_))
                              (___kont129003129004_))
                          (___kont129003129004_))))
                  (___kont129003129004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129003129004_))
                                              (___kont129003129004_))))
                                      (___kont129003129004_))
                                  (___kont129003129004_))
                              (___kont129003129004_))))
                      (___kont129003129004_))))
              (___kont129003129004_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129003129004_))
                                              (___kont129003129004_))))
                                      (___kont129003129004_))))
                              (___kont129003129004_)))))
                  (___kont129003129004_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form124053_)
        (let* ((___stx129131129132_ _form124053_)
               (_g124057124181_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129131129132_)))))
          (let ((___kont129133129134_
                 (lambda (_L124551_ _L124552_ _L124553_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124552_))))
                (___kont129139129140_
                 (lambda (_L124399_ _L124400_ _L124401_ _L124402_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124399_))))
                (___kont129143129144_
                 (lambda (_L124266_ _L124267_ _L124268_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124266_)))))
            (let* ((___match129240129241_
                    (lambda (_e124149124186_
                             _hd124148124189_
                             _tl124147124191_
                             _e124152124194_
                             _hd124151124197_
                             _tl124150124199_
                             _e124155124202_
                             _hd124154124205_
                             _tl124153124207_
                             _e124158124210_
                             _hd124157124213_
                             _tl124156124215_
                             _e124161124218_
                             _hd124160124221_
                             _tl124159124223_
                             _e124164124226_
                             _hd124163124229_
                             _tl124162124231_
                             _e124167124234_
                             _hd124166124237_
                             _tl124165124239_
                             _e124170124242_
                             _hd124169124245_
                             _tl124168124247_
                             _e124173124250_
                             _hd124172124253_
                             _tl124171124255_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124165124239_))
                          (let ((_e124176124258_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124165124239_))))
                            (let ((_tl124174124263_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124176124258_)))
                                  (_hd124175124261_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124176124258_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124174124263_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124150124199_))
                                      (___kont129143129144_
                                       _hd124172124253_
                                       _hd124163124229_
                                       _hd124148124189_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124057124181_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124057124181_)))))
                          (let () (declare (not safe)) (_g124057124181_)))))
                   (___match129170129171_
                    (lambda (_e124110124303_
                             _hd124109124306_
                             _tl124108124308_
                             ___splice129141129142_
                             _target124111124311_
                             _tl124113124313_)
                      (letrec ((_loop124114124316_
                                (lambda (_hd124112124319_ _arg124118124321_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124112124319_))
                                      (let ((_e124115124324_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124112124319_))))
                                        (let ((_lp-tl124117124329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124115124324_)))
                                              (_lp-hd124116124327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124115124324_))))
                                          (let ((__tmp130415
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124116124327_
                                                         _arg124118124321_))))
                                            (declare (not safe))
                                            (_loop124114124316_
                                             _lp-tl124117124329_
                                             __tmp130415))))
                                      (let ((_arg124119124332_
                                             (reverse _arg124118124321_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124108124308_))
                                            (let ((_e124122124335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124108124308_))))
                                              (let ((_tl124120124340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124122124335_)))
                                                    (_hd124121124338_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124122124335_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124121124338_))
                                                    (let ((_e124125124343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124121124338_))))
                                                      (let ((_tl124123124348_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124125124343_)))
                    (_hd124124124346_
                     (let () (declare (not safe)) (##car _e124125124343_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124124124346_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124124124346_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124123124348_))
                            (let ((_e124128124351_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124123124348_))))
                              (let ((_tl124126124356_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124128124351_)))
                                    (_hd124127124354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124128124351_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124127124354_))
                                    (let ((_e124131124359_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124127124354_))))
                                      (let ((_tl124129124364_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124131124359_)))
                                            (_hd124130124362_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124131124359_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124130124362_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124130124362_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124129124364_))
                                                    (let ((_e124134124367_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124129124364_))))
                                                      (let ((_tl124132124372_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124134124367_)))
                    (_hd124133124370_
                     (let () (declare (not safe)) (##car _e124134124367_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124132124372_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124126124356_))
                        (let ((_e124137124375_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124126124356_))))
                          (let ((_tl124135124380_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124137124375_)))
                                (_hd124136124378_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124137124375_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124136124378_))
                                (let ((_e124140124383_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124136124378_))))
                                  (let ((_tl124138124388_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124140124383_)))
                                        (_hd124139124386_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124140124383_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124139124386_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124139124386_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124138124388_))
                                                (let ((_e124143124391_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124138124388_))))
                                                  (let ((_tl124141124396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124143124391_)))
                                                        (_hd124142124394_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124143124391_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124141124396_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl124120124340_))
                                                            (___kont129139129140_
                                                             _hd124142124394_
                                                             _hd124133124370_
                                                             _tl124113124313_
                                                             _arg124119124332_)
                                                            (___match129240129241_
                                                             _e124110124303_
                                                             _hd124109124306_
                                                             _tl124108124308_
                                                             _e124122124335_
                                                             _hd124121124338_
                                                             _tl124120124340_
                                                             _e124125124343_
                                                             _hd124124124346_
                                                             _tl124123124348_
                                                             _e124128124351_
                                                             _hd124127124354_
                                                             _tl124126124356_
                                                             _e124131124359_
                                                             _hd124130124362_
                                                             _tl124129124364_
                                                             _e124134124367_
                                                             _hd124133124370_
                                                             _tl124132124372_
                                                             _e124137124375_
                                                             _hd124136124378_
                                                             _tl124135124380_
                                                             _e124140124383_
                                                             _hd124139124386_
                                                             _tl124138124388_
                                                             _e124143124391_
                                                             _hd124142124394_
                                                             _tl124141124396_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g124057124181_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124057124181_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124057124181_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g124057124181_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124057124181_)))))
                        (let () (declare (not safe)) (_g124057124181_)))
                    (let () (declare (not safe)) (_g124057124181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124057124181_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124057124181_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124057124181_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g124057124181_)))))
                            (let () (declare (not safe)) (_g124057124181_)))
                        (let () (declare (not safe)) (_g124057124181_)))
                    (let () (declare (not safe)) (_g124057124181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124057124181_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g124057124181_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop124114124316_ _target124111124311_ '())))))
                   (___match129158129159_
                    (lambda (_e124064124439_
                             _hd124063124442_
                             _tl124062124444_
                             ___splice129135129136_
                             _target124065124447_
                             _tl124067124449_)
                      (letrec ((_loop124068124452_
                                (lambda (_hd124066124455_ _arg124072124457_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124066124455_))
                                      (let ((_e124069124460_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124066124455_))))
                                        (let ((_lp-tl124071124465_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124069124460_)))
                                              (_lp-hd124070124463_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124069124460_))))
                                          (let ((__tmp130417
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124070124463_
                                                         _arg124072124457_))))
                                            (declare (not safe))
                                            (_loop124068124452_
                                             _lp-tl124071124465_
                                             __tmp130417))))
                                      (let ((_arg124073124468_
                                             (reverse _arg124072124457_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124062124444_))
                                            (let ((_e124076124471_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124062124444_))))
                                              (let ((_tl124074124476_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124076124471_)))
                                                    (_hd124075124474_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124076124471_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124075124474_))
                                                    (let ((_e124079124479_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124075124474_))))
                                                      (let ((_tl124077124484_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124079124479_)))
                    (_hd124078124482_
                     (let () (declare (not safe)) (##car _e124079124479_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124078124482_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124078124482_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124077124484_))
                            (let ((_e124082124487_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124077124484_))))
                              (let ((_tl124080124492_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124082124487_)))
                                    (_hd124081124490_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124082124487_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124081124490_))
                                    (let ((_e124085124495_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124081124490_))))
                                      (let ((_tl124083124500_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124085124495_)))
                                            (_hd124084124498_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124085124495_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124084124498_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124084124498_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124083124500_))
                                                    (let ((_e124088124503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124083124500_))))
                                                      (let ((_tl124086124508_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124088124503_)))
                    (_hd124087124506_
                     (let () (declare (not safe)) (##car _e124088124503_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124086124508_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124080124492_))
                        (let ((___splice129137129138_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124080124492_
                                  '0))))
                          (let ((_tl124091124513_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129137129138_ '1)))
                                (_target124089124511_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129137129138_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124091124513_))
                                (letrec ((_loop124092124516_
                                          (lambda (_hd124090124519_
                                                   _xarg124096124521_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124090124519_))
                                                (let ((_e124093124524_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124090124519_))))
                                                  (let ((_lp-tl124095124529_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124093124524_)))
                                                        (_lp-hd124094124527_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124093124524_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124094124527_))
                                                        (let ((_e124100124532_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124094124527_))))
                  (let ((_tl124098124537_
                         (let () (declare (not safe)) (##cdr _e124100124532_)))
                        (_hd124099124535_
                         (let ()
                           (declare (not safe))
                           (##car _e124100124532_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124099124535_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124099124535_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124098124537_))
                                (let ((_e124103124540_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124098124537_))))
                                  (let ((_tl124101124545_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124103124540_)))
                                        (_hd124102124543_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124103124540_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124101124545_))
                                        (let ((__tmp130416
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124102124543_
                                                       _xarg124096124521_))))
                                          (declare (not safe))
                                          (_loop124092124516_
                                           _lp-tl124095124529_
                                           __tmp130416))
                                        (___match129170129171_
                                         _e124064124439_
                                         _hd124063124442_
                                         _tl124062124444_
                                         ___splice129135129136_
                                         _target124065124447_
                                         _tl124067124449_))))
                                (___match129170129171_
                                 _e124064124439_
                                 _hd124063124442_
                                 _tl124062124444_
                                 ___splice129135129136_
                                 _target124065124447_
                                 _tl124067124449_))
                            (___match129170129171_
                             _e124064124439_
                             _hd124063124442_
                             _tl124062124444_
                             ___splice129135129136_
                             _target124065124447_
                             _tl124067124449_))
                        (___match129170129171_
                         _e124064124439_
                         _hd124063124442_
                         _tl124062124444_
                         ___splice129135129136_
                         _target124065124447_
                         _tl124067124449_))))
                (___match129170129171_
                 _e124064124439_
                 _hd124063124442_
                 _tl124062124444_
                 ___splice129135129136_
                 _target124065124447_
                 _tl124067124449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124097124548_
                                                       (reverse _xarg124096124521_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124074124476_))
                                                      (___kont129133129134_
                                                       _xarg124097124548_
                                                       _hd124087124506_
                                                       _arg124073124468_)
                                                      (___match129170129171_
                                                       _e124064124439_
                                                       _hd124063124442_
                                                       _tl124062124444_
                                                       ___splice129135129136_
                                                       _target124065124447_
                                                       _tl124067124449_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop124092124516_
                                     _target124089124511_
                                     '())))
                                (___match129170129171_
                                 _e124064124439_
                                 _hd124063124442_
                                 _tl124062124444_
                                 ___splice129135129136_
                                 _target124065124447_
                                 _tl124067124449_))))
                        (___match129170129171_
                         _e124064124439_
                         _hd124063124442_
                         _tl124062124444_
                         ___splice129135129136_
                         _target124065124447_
                         _tl124067124449_))
                    (___match129170129171_
                     _e124064124439_
                     _hd124063124442_
                     _tl124062124444_
                     ___splice129135129136_
                     _target124065124447_
                     _tl124067124449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129170129171_
                                                     _e124064124439_
                                                     _hd124063124442_
                                                     _tl124062124444_
                                                     ___splice129135129136_
                                                     _target124065124447_
                                                     _tl124067124449_))
                                                (___match129170129171_
                                                 _e124064124439_
                                                 _hd124063124442_
                                                 _tl124062124444_
                                                 ___splice129135129136_
                                                 _target124065124447_
                                                 _tl124067124449_))
                                            (___match129170129171_
                                             _e124064124439_
                                             _hd124063124442_
                                             _tl124062124444_
                                             ___splice129135129136_
                                             _target124065124447_
                                             _tl124067124449_))))
                                    (___match129170129171_
                                     _e124064124439_
                                     _hd124063124442_
                                     _tl124062124444_
                                     ___splice129135129136_
                                     _target124065124447_
                                     _tl124067124449_))))
                            (___match129170129171_
                             _e124064124439_
                             _hd124063124442_
                             _tl124062124444_
                             ___splice129135129136_
                             _target124065124447_
                             _tl124067124449_))
                        (___match129170129171_
                         _e124064124439_
                         _hd124063124442_
                         _tl124062124444_
                         ___splice129135129136_
                         _target124065124447_
                         _tl124067124449_))
                    (___match129170129171_
                     _e124064124439_
                     _hd124063124442_
                     _tl124062124444_
                     ___splice129135129136_
                     _target124065124447_
                     _tl124067124449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129170129171_
                                                     _e124064124439_
                                                     _hd124063124442_
                                                     _tl124062124444_
                                                     ___splice129135129136_
                                                     _target124065124447_
                                                     _tl124067124449_))))
                                            (___match129170129171_
                                             _e124064124439_
                                             _hd124063124442_
                                             _tl124062124444_
                                             ___splice129135129136_
                                             _target124065124447_
                                             _tl124067124449_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124068124452_ _target124065124447_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129131129132_))
                  (let ((_e124064124439_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129131129132_))))
                    (let ((_tl124062124444_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124064124439_)))
                          (_hd124063124442_
                           (let ()
                             (declare (not safe))
                             (##car _e124064124439_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124063124442_))
                          (let ((___splice129135129136_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124063124442_
                                    '0))))
                            (let ((_tl124067124449_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129135129136_ '1)))
                                  (_target124065124447_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129135129136_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124067124449_))
                                  (___match129158129159_
                                   _e124064124439_
                                   _hd124063124442_
                                   _tl124062124444_
                                   ___splice129135129136_
                                   _target124065124447_
                                   _tl124067124449_)
                                  (___match129170129171_
                                   _e124064124439_
                                   _hd124063124442_
                                   _tl124062124444_
                                   ___splice129135129136_
                                   _target124065124447_
                                   _tl124067124449_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124062124444_))
                              (let ((_e124152124194_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124062124444_))))
                                (let ((_tl124150124199_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124152124194_)))
                                      (_hd124151124197_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124152124194_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124151124197_))
                                      (let ((_e124155124202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124151124197_))))
                                        (let ((_tl124153124207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124155124202_)))
                                              (_hd124154124205_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124155124202_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124154124205_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124154124205_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124153124207_))
                                                      (let ((_e124158124210_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124153124207_))))
                (let ((_tl124156124215_
                       (let () (declare (not safe)) (##cdr _e124158124210_)))
                      (_hd124157124213_
                       (let () (declare (not safe)) (##car _e124158124210_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124157124213_))
                      (let ((_e124161124218_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124157124213_))))
                        (let ((_tl124159124223_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124161124218_)))
                              (_hd124160124221_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124161124218_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124160124221_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124160124221_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124159124223_))
                                      (let ((_e124164124226_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124159124223_))))
                                        (let ((_tl124162124231_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124164124226_)))
                                              (_hd124163124229_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124164124226_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124162124231_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124156124215_))
                                                  (let ((_e124167124234_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124156124215_))))
                                                    (let ((_tl124165124239_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124167124234_)))
                                                          (_hd124166124237_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124167124234_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124166124237_))
                                                          (let ((_e124170124242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124166124237_))))
                    (let ((_tl124168124247_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124170124242_)))
                          (_hd124169124245_
                           (let ()
                             (declare (not safe))
                             (##car _e124170124242_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124169124245_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124169124245_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124168124247_))
                                  (let ((_e124173124250_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124168124247_))))
                                    (let ((_tl124171124255_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124173124250_)))
                                          (_hd124172124253_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124173124250_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124171124255_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124165124239_))
                                              (let ((_e124176124258_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124165124239_))))
                                                (let ((_tl124174124263_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124176124258_)))
                                                      (_hd124175124261_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124176124258_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124174124263_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124150124199_))
                                                          (___kont129143129144_
                                                           _hd124172124253_
                                                           _hd124163124229_
                                                           _hd124063124442_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124057124181_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124057124181_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124057124181_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g124057124181_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124057124181_)))
                              (let () (declare (not safe)) (_g124057124181_)))
                          (let () (declare (not safe)) (_g124057124181_)))))
                  (let () (declare (not safe)) (_g124057124181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124057124181_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124057124181_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124057124181_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124057124181_)))
                              (let ()
                                (declare (not safe))
                                (_g124057124181_)))))
                      (let () (declare (not safe)) (_g124057124181_)))))
              (let () (declare (not safe)) (_g124057124181_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124057124181_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124057124181_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124057124181_)))))
                              (let ()
                                (declare (not safe))
                                (_g124057124181_))))))
                  (let () (declare (not safe)) (_g124057124181_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form123857_)
        (let* ((_g123859123873_
                (lambda (_g123860123870_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123860123870_))))
               (_g123858124050_
                (lambda (_g123860123876_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123860123876_))
                      (let ((_e123865123878_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123860123876_))))
                        (let ((_hd123864123881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123865123878_)))
                              (_tl123863123883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123865123878_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123863123883_))
                              (let ((_e123868123886_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123863123883_))))
                                (let ((_hd123867123889_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123868123886_)))
                                      (_tl123866123891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123868123886_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123866123891_))
                                      ((lambda (_L123894_ _L123895_)
                                         (let* ((___stx129253129254_ _L123895_)
                                                (_g123910123938_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx129253129254_)))))
                                           (let ((___kont129255129256_
                                                  (lambda (_L124029_)
                                                    (length (let ((__tmp130418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124039124042_ _g124040124044_)
                             (let ()
                               (declare (not safe))
                               (cons _g124039124042_ _g124040124044_)))))
                      (declare (not safe))
                      (foldr1 __tmp130418 '() _L124029_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129259129260_
                                                  (lambda (_L123980_ _L123981_)
                                                    (let ((__tmp130419
                                                           (length (let ((__tmp130420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g123992123995_ _g123993123997_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g123992123995_
                                            _g123993123997_)))))
                             (declare (not safe))
                             (foldr1 __tmp130420 '() _L123981_)))))
              (declare (not safe))
              (cons __tmp130419 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129263129264_
                                                  (lambda (_L123943_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match129278129279_
                                                     (lambda (___splice129261129262_
                                                              _target123924123956_
                                                              _tl123926123958_)
                                                       (letrec ((_loop123927123961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123925123964_ _arg123931123966_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123925123964_))
                               (let ((_e123928123969_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123925123964_))))
                                 (let ((_lp-tl123930123974_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123928123969_)))
                                       (_lp-hd123929123972_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123928123969_))))
                                   (let ((__tmp130421
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123929123972_
                                                  _arg123931123966_))))
                                     (declare (not safe))
                                     (_loop123927123961_
                                      _lp-tl123930123974_
                                      __tmp130421))))
                               (let ((_arg123932123977_
                                      (reverse _arg123931123966_)))
                                 (___kont129259129260_
                                  _tl123926123958_
                                  _arg123932123977_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123927123961_ _target123924123956_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129272129273_
                                                     (lambda (___splice129257129258_
                                                              _target123913124005_
                                                              _tl123915124007_)
                                                       (letrec ((_loop123916124010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123914124013_ _arg123920124015_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123914124013_))
                               (let ((_e123917124018_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123914124013_))))
                                 (let ((_lp-tl123919124023_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123917124018_)))
                                       (_lp-hd123918124021_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123917124018_))))
                                   (let ((__tmp130422
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123918124021_
                                                  _arg123920124015_))))
                                     (declare (not safe))
                                     (_loop123916124010_
                                      _lp-tl123919124023_
                                      __tmp130422))))
                               (let ((_arg123921124026_
                                      (reverse _arg123920124015_)))
                                 (___kont129255129256_ _arg123921124026_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123916124010_ _target123913124005_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx129253129254_))
                                                   (let ((___splice129257129258_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx129253129254_
                                                             '0))))
                                                     (let ((_tl123915124007_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129257129258_
                                                               '1)))
                                                           (_target123913124005_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129257129258_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl123915124007_))
                                                           (___match129272129273_
                                                            ___splice129257129258_
                                                            _target123913124005_
                                                            _tl123915124007_)
                                                           (___match129278129279_
                                                            ___splice129257129258_
                                                            _target123913124005_
                                                            _tl123915124007_))))
                                                   (___kont129263129264_
                                                    ___stx129253129254_))))))
                                       _hd123867123889_
                                       _hd123864123881_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123859123873_ _g123860123876_)))))
                              (let ()
                                (declare (not safe))
                                (_g123859123873_ _g123860123876_)))))
                      (let ()
                        (declare (not safe))
                        (_g123859123873_ _g123860123876_))))))
          (declare (not safe))
          (_g123858124050_ _form123857_))))
    (define gxc#lambda-expr?
      (lambda (_expr123810_)
        (let* ((___stx129281129282_ _expr123810_)
               (_g123813123823_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129281129282_)))))
          (let ((___kont129283129284_ (lambda (_L123843_) '#t))
                (___kont129285129286_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129281129282_))
                (let ((_e123818123835_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129281129282_))))
                  (let ((_tl123816123840_
                         (let () (declare (not safe)) (##cdr _e123818123835_)))
                        (_hd123817123838_
                         (let ()
                           (declare (not safe))
                           (##car _e123818123835_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123817123838_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd123817123838_))
                            (___kont129283129284_ _tl123816123840_)
                            (___kont129285129286_))
                        (___kont129285129286_))))
                (___kont129285129286_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr123763_)
        (let* ((___stx129299129300_ _expr123763_)
               (_g123766123776_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129299129300_)))))
          (let ((___kont129301129302_ (lambda (_L123796_) '#t))
                (___kont129303129304_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129299129300_))
                (let ((_e123771123788_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129299129300_))))
                  (let ((_tl123769123793_
                         (let () (declare (not safe)) (##cdr _e123771123788_)))
                        (_hd123770123791_
                         (let ()
                           (declare (not safe))
                           (##car _e123771123788_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123770123791_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd123770123791_))
                            (___kont129301129302_ _tl123769123793_)
                            (___kont129303129304_))
                        (___kont129303129304_))))
                (___kont129303129304_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr123632_)
        (let* ((___stx129317129318_ _expr123632_)
               (_g123635123665_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129317129318_)))))
          (let ((___kont129319129320_
                 (lambda (_L123733_ _L123734_ _L123735_)
                   (if (let () (declare (not safe)) (gx#identifier? _L123735_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L123734_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L123733_))
                           '#f)
                       '#f)))
                (___kont129321129322_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129317129318_))
                (let ((_e123642123677_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129317129318_))))
                  (let ((_tl123640123682_
                         (let () (declare (not safe)) (##cdr _e123642123677_)))
                        (_hd123641123680_
                         (let ()
                           (declare (not safe))
                           (##car _e123642123677_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123641123680_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123641123680_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123640123682_))
                                (let ((_e123645123685_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123640123682_))))
                                  (let ((_tl123643123690_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123645123685_)))
                                        (_hd123644123688_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123645123685_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123644123688_))
                                        (let ((_e123648123693_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123644123688_))))
                                          (let ((_tl123646123698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123648123693_)))
                                                (_hd123647123696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123648123693_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123647123696_))
                                                (let ((_e123651123701_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123647123696_))))
                                                  (let ((_tl123649123706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123651123701_)))
                                                        (_hd123650123704_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123651123701_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123650123704_))
                                                        (let ((_e123654123709_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123650123704_))))
                  (let ((_tl123652123714_
                         (let () (declare (not safe)) (##cdr _e123654123709_)))
                        (_hd123653123712_
                         (let ()
                           (declare (not safe))
                           (##car _e123654123709_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123652123714_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123649123706_))
                            (let ((_e123657123717_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123649123706_))))
                              (let ((_tl123655123722_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123657123717_)))
                                    (_hd123656123720_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123657123717_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123655123722_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123646123698_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123643123690_))
                                            (let ((_e123660123725_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123643123690_))))
                                              (let ((_tl123658123730_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123660123725_)))
                                                    (_hd123659123728_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123660123725_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123658123730_))
                                                    (___kont129319129320_
                                                     _hd123659123728_
                                                     _hd123656123720_
                                                     _hd123653123712_)
                                                    (___kont129321129322_))))
                                            (___kont129321129322_))
                                        (___kont129321129322_))
                                    (___kont129321129322_))))
                            (___kont129321129322_))
                        (___kont129321129322_))))
                (___kont129321129322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129321129322_))))
                                        (___kont129321129322_))))
                                (___kont129321129322_))
                            (___kont129321129322_))
                        (___kont129321129322_))))
                (___kont129321129322_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr122957_)
        (let* ((___stx129379129380_ _expr122957_)
               (_g122960123118_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129379129380_)))))
          (let ((___kont129381129382_
                 (lambda (_L123506_
                          _L123507_
                          _L123508_
                          _L123509_
                          _L123510_
                          _L123511_
                          _L123512_
                          _L123513_
                          _L123514_
                          _L123515_
                          _L123516_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L123513_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L123509_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L123508_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L123516_
                                      _L123507_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L123515_
                                          _L123512_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123510_
                                              _L123506_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123514_
                                              _L123511_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont129383129384_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129379129380_))
                (let ((_e122975123130_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129379129380_))))
                  (let ((_tl122973123135_
                         (let () (declare (not safe)) (##cdr _e122975123130_)))
                        (_hd122974123133_
                         (let ()
                           (declare (not safe))
                           (##car _e122975123130_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122974123133_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122974123133_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122973123135_))
                                (let ((_e122978123138_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122973123135_))))
                                  (let ((_tl122976123143_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122978123138_)))
                                        (_hd122977123141_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122978123138_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122977123141_))
                                        (let ((_e122981123146_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122977123141_))))
                                          (let ((_tl122979123151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122981123146_)))
                                                (_hd122980123149_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122981123146_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122980123149_))
                                                (let ((_e122984123154_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122980123149_))))
                                                  (let ((_tl122982123159_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122984123154_)))
                                                        (_hd122983123157_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122984123154_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122983123157_))
                                                        (let ((_e122987123162_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122983123157_))))
                  (let ((_tl122985123167_
                         (let () (declare (not safe)) (##cdr _e122987123162_)))
                        (_hd122986123165_
                         (let ()
                           (declare (not safe))
                           (##car _e122987123162_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122985123167_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122982123159_))
                            (let ((_e122990123170_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122982123159_))))
                              (let ((_tl122988123175_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122990123170_)))
                                    (_hd122989123173_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122990123170_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122989123173_))
                                    (let ((_e122993123178_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122989123173_))))
                                      (let ((_tl122991123183_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122993123178_)))
                                            (_hd122992123181_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122993123178_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122992123181_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd122992123181_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122991123183_))
                                                    (let ((_e122996123186_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122991123183_))))
                                                      (let ((_tl122994123191_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122996123186_)))
                    (_hd122995123189_
                     (let () (declare (not safe)) (##car _e122996123186_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122995123189_))
                    (let ((_e122999123194_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122995123189_))))
                      (let ((_tl122997123199_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122999123194_)))
                            (_hd122998123197_
                             (let ()
                               (declare (not safe))
                               (##car _e122999123194_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd122998123197_))
                            (let ((_e123002123202_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd122998123197_))))
                              (let ((_tl123000123207_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123002123202_)))
                                    (_hd123001123205_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123002123202_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123001123205_))
                                    (let ((_e123005123210_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123001123205_))))
                                      (let ((_tl123003123215_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123005123210_)))
                                            (_hd123004123213_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123005123210_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123003123215_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123000123207_))
                                                (let ((_e123008123218_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123000123207_))))
                                                  (let ((_tl123006123223_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123008123218_)))
                                                        (_hd123007123221_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123008123218_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123006123223_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122997123199_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl122994123191_))
                        (let ((_e123011123226_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122994123191_))))
                          (let ((_tl123009123231_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123011123226_)))
                                (_hd123010123229_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123011123226_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123010123229_))
                                (let ((_e123014123234_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123010123229_))))
                                  (let ((_tl123012123239_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123014123234_)))
                                        (_hd123013123237_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123014123234_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123013123237_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd123013123237_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123012123239_))
                                                (let ((_e123017123242_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123012123239_))))
                                                  (let ((_tl123015123247_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123017123242_)))
                                                        (_hd123016123245_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123017123242_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123016123245_))
                                                        (let ((_e123020123250_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123016123245_))))
                  (let ((_tl123018123255_
                         (let () (declare (not safe)) (##cdr _e123020123250_)))
                        (_hd123019123253_
                         (let ()
                           (declare (not safe))
                           (##car _e123020123250_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123015123247_))
                        (let ((_e123023123258_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123015123247_))))
                          (let ((_tl123021123263_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123023123258_)))
                                (_hd123022123261_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123023123258_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123022123261_))
                                (let ((_e123026123266_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123022123261_))))
                                  (let ((_tl123024123271_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123026123266_)))
                                        (_hd123025123269_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123026123266_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123025123269_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd123025123269_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123024123271_))
                                                (let ((_e123029123274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123024123271_))))
                                                  (let ((_tl123027123279_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123029123274_)))
                                                        (_hd123028123277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123029123274_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123028123277_))
                                                        (let ((_e123032123282_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123028123277_))))
                  (let ((_tl123030123287_
                         (let () (declare (not safe)) (##cdr _e123032123282_)))
                        (_hd123031123285_
                         (let ()
                           (declare (not safe))
                           (##car _e123032123282_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123031123285_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123031123285_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123030123287_))
                                (let ((_e123035123290_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123030123287_))))
                                  (let ((_tl123033123295_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123035123290_)))
                                        (_hd123034123293_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123035123290_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123033123295_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123027123279_))
                                            (let ((_e123038123298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123027123279_))))
                                              (let ((_tl123036123303_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123038123298_)))
                                                    (_hd123037123301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123038123298_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123037123301_))
                                                    (let ((_e123041123306_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123037123301_))))
                                                      (let ((_tl123039123311_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123041123306_)))
                    (_hd123040123309_
                     (let () (declare (not safe)) (##car _e123041123306_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123040123309_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123040123309_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123039123311_))
                            (let ((_e123044123314_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123039123311_))))
                              (let ((_tl123042123319_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123044123314_)))
                                    (_hd123043123317_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123044123314_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123042123319_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123036123303_))
                                        (let ((_e123047123322_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123036123303_))))
                                          (let ((_tl123045123327_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123047123322_)))
                                                (_hd123046123325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123047123322_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123046123325_))
                                                (let ((_e123050123330_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123046123325_))))
                                                  (let ((_tl123048123335_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123050123330_)))
                                                        (_hd123049123333_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123050123330_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd123049123333_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd123049123333_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123048123335_))
                        (let ((_e123053123338_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123048123335_))))
                          (let ((_tl123051123343_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123053123338_)))
                                (_hd123052123341_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123053123338_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123051123343_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123021123263_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123009123231_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122988123175_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122979123151_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122976123143_))
                                                    (let ((_e123056123346_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122976123143_))))
                                                      (let ((_tl123054123351_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123056123346_)))
                    (_hd123055123349_
                     (let () (declare (not safe)) (##car _e123056123346_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123055123349_))
                    (let ((_e123059123354_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123055123349_))))
                      (let ((_tl123057123359_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123059123354_)))
                            (_hd123058123357_
                             (let ()
                               (declare (not safe))
                               (##car _e123059123354_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123058123357_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd123058123357_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123057123359_))
                                    (let ((_e123062123362_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123057123359_))))
                                      (let ((_tl123060123367_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123062123362_)))
                                            (_hd123061123365_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123062123362_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123060123367_))
                                            (let ((_e123065123370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123060123367_))))
                                              (let ((_tl123063123375_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123065123370_)))
                                                    (_hd123064123373_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123065123370_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123064123373_))
                                                    (let ((_e123068123378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123064123373_))))
                                                      (let ((_tl123066123383_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123068123378_)))
                    (_hd123067123381_
                     (let () (declare (not safe)) (##car _e123068123378_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123067123381_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123067123381_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123066123383_))
                            (let ((_e123071123386_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123066123383_))))
                              (let ((_tl123069123391_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123071123386_)))
                                    (_hd123070123389_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123071123386_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123070123389_))
                                    (let ((_e123074123394_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123070123389_))))
                                      (let ((_tl123072123399_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123074123394_)))
                                            (_hd123073123397_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123074123394_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123073123397_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123073123397_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123072123399_))
                                                    (let ((_e123077123402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123072123399_))))
                                                      (let ((_tl123075123407_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123077123402_)))
                    (_hd123076123405_
                     (let () (declare (not safe)) (##car _e123077123402_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123075123407_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123069123391_))
                        (let ((_e123080123410_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123069123391_))))
                          (let ((_tl123078123415_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123080123410_)))
                                (_hd123079123413_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123080123410_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123079123413_))
                                (let ((_e123083123418_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123079123413_))))
                                  (let ((_tl123081123423_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123083123418_)))
                                        (_hd123082123421_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123083123418_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123082123421_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123082123421_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123081123423_))
                                                (let ((_e123086123426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123081123423_))))
                                                  (let ((_tl123084123431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123086123426_)))
                                                        (_hd123085123429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123086123426_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123084123431_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl123078123415_))
                                                            (let ((_e123089123434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl123078123415_))))
                      (let ((_tl123087123439_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123089123434_)))
                            (_hd123088123437_
                             (let ()
                               (declare (not safe))
                               (##car _e123089123434_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123088123437_))
                            (let ((_e123092123442_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123088123437_))))
                              (let ((_tl123090123447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123092123442_)))
                                    (_hd123091123445_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123092123442_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd123091123445_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd123091123445_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123090123447_))
                                            (let ((_e123095123450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123090123447_))))
                                              (let ((_tl123093123455_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123095123450_)))
                                                    (_hd123094123453_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123095123450_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123093123455_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123087123439_))
                                                        (let ((_e123098123458_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123087123439_))))
                  (let ((_tl123096123463_
                         (let () (declare (not safe)) (##cdr _e123098123458_)))
                        (_hd123097123461_
                         (let ()
                           (declare (not safe))
                           (##car _e123098123458_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd123097123461_))
                        (let ((_e123101123466_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd123097123461_))))
                          (let ((_tl123099123471_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123101123466_)))
                                (_hd123100123469_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123101123466_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd123100123469_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd123100123469_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123099123471_))
                                        (let ((_e123104123474_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123099123471_))))
                                          (let ((_tl123102123479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123104123474_)))
                                                (_hd123103123477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123104123474_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123102123479_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123096123463_))
                                                    (let ((_e123107123482_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123096123463_))))
                                                      (let ((_tl123105123487_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123107123482_)))
                    (_hd123106123485_
                     (let () (declare (not safe)) (##car _e123107123482_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123106123485_))
                    (let ((_e123110123490_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123106123485_))))
                      (let ((_tl123108123495_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123110123490_)))
                            (_hd123109123493_
                             (let ()
                               (declare (not safe))
                               (##car _e123110123490_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123109123493_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd123109123493_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123108123495_))
                                    (let ((_e123113123498_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123108123495_))))
                                      (let ((_tl123111123503_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123113123498_)))
                                            (_hd123112123501_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123113123498_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123111123503_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123105123487_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123063123375_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123054123351_))
                                                        (___kont129381129382_
                                                         _hd123112123501_
                                                         _hd123103123477_
                                                         _hd123085123429_
                                                         _hd123076123405_
                                                         _hd123061123365_
                                                         _hd123052123341_
                                                         _hd123043123317_
                                                         _hd123034123293_
                                                         _hd123019123253_
                                                         _hd123004123213_
                                                         _hd122986123165_)
                                                        (___kont129383129384_))
                                                    (___kont129383129384_))
                                                (___kont129383129384_))
                                            (___kont129383129384_))))
                                    (___kont129383129384_))
                                (___kont129383129384_))
                            (___kont129383129384_))))
                    (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129383129384_))
                                                (___kont129383129384_))))
                                        (___kont129383129384_))
                                    (___kont129383129384_))
                                (___kont129383129384_))))
                        (___kont129383129384_))))
                (___kont129383129384_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129383129384_))))
                                            (___kont129383129384_))
                                        (___kont129383129384_))
                                    (___kont129383129384_))))
                            (___kont129383129384_))))
                    (___kont129383129384_))
                (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129383129384_))
                                            (___kont129383129384_))
                                        (___kont129383129384_))))
                                (___kont129383129384_))))
                        (___kont129383129384_))
                    (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129383129384_))
                                                (___kont129383129384_))
                                            (___kont129383129384_))))
                                    (___kont129383129384_))))
                            (___kont129383129384_))
                        (___kont129383129384_))
                    (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129383129384_))))
                                            (___kont129383129384_))))
                                    (___kont129383129384_))
                                (___kont129383129384_))
                            (___kont129383129384_))))
                    (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129383129384_))
                                                (___kont129383129384_))
                                            (___kont129383129384_))
                                        (___kont129383129384_))
                                    (___kont129383129384_))
                                (___kont129383129384_))))
                        (___kont129383129384_))
                    (___kont129383129384_))
                (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129383129384_))))
                                        (___kont129383129384_))
                                    (___kont129383129384_))))
                            (___kont129383129384_))
                        (___kont129383129384_))
                    (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129383129384_))))
                                            (___kont129383129384_))
                                        (___kont129383129384_))))
                                (___kont129383129384_))
                            (___kont129383129384_))
                        (___kont129383129384_))))
                (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129383129384_))
                                            (___kont129383129384_))
                                        (___kont129383129384_))))
                                (___kont129383129384_))))
                        (___kont129383129384_))))
                (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129383129384_))
                                            (___kont129383129384_))
                                        (___kont129383129384_))))
                                (___kont129383129384_))))
                        (___kont129383129384_))
                    (___kont129383129384_))
                (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129383129384_))
                                            (___kont129383129384_))))
                                    (___kont129383129384_))))
                            (___kont129383129384_))))
                    (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129383129384_))
                                                (___kont129383129384_))
                                            (___kont129383129384_))))
                                    (___kont129383129384_))))
                            (___kont129383129384_))
                        (___kont129383129384_))))
                (___kont129383129384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129383129384_))))
                                        (___kont129383129384_))))
                                (___kont129383129384_))
                            (___kont129383129384_))
                        (___kont129383129384_))))
                (___kont129383129384_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx122699_ _id122700_ _clauses122701_ _gensym?122702_)
        (let _lp122704_ ((_rest122706_ _clauses122701_)
                         (_ids122707_ '())
                         (_impls122708_ '())
                         (_clauses122709_ '()))
          (let* ((_rest122710122718_ _rest122706_)
                 (_else122712122726_
                  (lambda ()
                    (values (reverse _ids122707_)
                            (reverse _impls122708_)
                            (reverse _clauses122709_))))
                 (_K122714122931_
                  (lambda (_rest122729_ _clause122730_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause122730_))
                        (let ((__tmp130478
                               (let ()
                                 (declare (not safe))
                                 (cons _clause122730_ _clauses122709_))))
                          (declare (not safe))
                          (_lp122704_
                           _rest122729_
                           _ids122707_
                           _impls122708_
                           __tmp130478))
                        (let* ((_g122732122743_
                                (lambda (_g122733122740_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g122733122740_))))
                               (_g122731122928_
                                (lambda (_g122733122746_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g122733122746_))
                                      (let ((_e122738122748_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g122733122746_))))
                                        (let ((_hd122737122751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122738122748_)))
                                              (_tl122736122753_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122738122748_))))
                                          ((lambda (_L122756_ _L122757_)
                                             (let* ((_id122774_
                                                     (let ((__tmp130425
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id122700_)))
                                                           (__tmp130424
                                                            (length _clauses122709_))
                                                           (__tmp130423
                                                            (if _gensym?122702_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp130425
                                                        '"__"
                                                        __tmp130424
                                                        __tmp130423)))
                                                    (_id122776_
                                                     (let ((__tmp130426
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx122699_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id122774_
                                                        __tmp130426)))
                                                    (_impl122778_
                                                     (let ((__tmp130427
                                                            (let ((__tmp130429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp130428
                           (let ()
                             (declare (not safe))
                             (cons _L122757_ _L122756_))))
                      (declare (not safe))
                      (cons __tmp130429 __tmp130428))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp130427 _stx122699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause122925_
                                                     (let* ((___stx129763129764_
                                                             _L122757_)
                                                            (_g122782122810_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx129763129764_)))))
               (let ((___kont129765129766_
                      (lambda (_L122904_)
                        (let ((__tmp130430
                               (let ((__tmp130431
                                      (let ((__tmp130432
                                             (let ((__tmp130433
                                                    (let ((__tmp130439
                                                           (let ((__tmp130440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id122776_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130440)))
                  (__tmp130434
                   (let ((__tmp130435
                          (lambda (_g122914122917_ _g122915122919_)
                            (let ((__tmp130436
                                   (let ((__tmp130438
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp130437
                                          (let ()
                                            (declare (not safe))
                                            (cons _g122914122917_ '()))))
                                     (declare (not safe))
                                     (cons __tmp130438 __tmp130437))))
                              (declare (not safe))
                              (cons __tmp130436 _g122915122919_)))))
                     (declare (not safe))
                     (foldr1 __tmp130435 '() _L122904_))))
              (declare (not safe))
              (cons __tmp130439 __tmp130434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130433))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130432
                                         _stx122699_))))
                                 (declare (not safe))
                                 (cons __tmp130431 '()))))
                          (declare (not safe))
                          (cons _L122757_ __tmp130430))))
                     (___kont129769129770_
                      (lambda (_L122855_ _L122856_)
                        (let ((__tmp130441
                               (let ((__tmp130442
                                      (let ((__tmp130443
                                             (let ((__tmp130444
                                                    (let ((__tmp130458
                                                           (let ((__tmp130459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130459)))
                  (__tmp130445
                   (let ((__tmp130456
                          (let ((__tmp130457
                                 (let ()
                                   (declare (not safe))
                                   (cons _id122776_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130457)))
                         (__tmp130446
                          (let ((__tmp130452
                                 (let ((__tmp130453
                                        (let ((__tmp130455
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp130454
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L122855_ '()))))
                                          (declare (not safe))
                                          (cons __tmp130455 __tmp130454))))
                                   (declare (not safe))
                                   (cons __tmp130453 '())))
                                (__tmp130447
                                 (let ((__tmp130448
                                        (lambda (_g122867122870_
                                                 _g122868122872_)
                                          (let ((__tmp130449
                                                 (let ((__tmp130451
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp130450
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g122867122870_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp130451
                                                         __tmp130450))))
                                            (declare (not safe))
                                            (cons __tmp130449
                                                  _g122868122872_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp130448 '() _L122856_))))
                            (declare (not safe))
                            (foldr1 cons __tmp130452 __tmp130447))))
                     (declare (not safe))
                     (cons __tmp130456 __tmp130446))))
              (declare (not safe))
              (cons __tmp130458 __tmp130445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130444))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130443
                                         _stx122699_))))
                                 (declare (not safe))
                                 (cons __tmp130442 '()))))
                          (declare (not safe))
                          (cons _L122757_ __tmp130441))))
                     (___kont129773129774_
                      (lambda (_L122815_)
                        (let ((__tmp130460
                               (let ((__tmp130461
                                      (let ((__tmp130462
                                             (let ((__tmp130463
                                                    (let ((__tmp130471
                                                           (let ((__tmp130472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130472)))
                  (__tmp130464
                   (let ((__tmp130469
                          (let ((__tmp130470
                                 (let ()
                                   (declare (not safe))
                                   (cons _id122776_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130470)))
                         (__tmp130465
                          (let ((__tmp130466
                                 (let ((__tmp130468
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp130467
                                        (let ()
                                          (declare (not safe))
                                          (cons _L122815_ '()))))
                                   (declare (not safe))
                                   (cons __tmp130468 __tmp130467))))
                            (declare (not safe))
                            (cons __tmp130466 '()))))
                     (declare (not safe))
                     (cons __tmp130469 __tmp130465))))
              (declare (not safe))
              (cons __tmp130471 __tmp130464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130463))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130462
                                         _stx122699_))))
                                 (declare (not safe))
                                 (cons __tmp130461 '()))))
                          (declare (not safe))
                          (cons _L122757_ __tmp130460)))))
                 (let* ((___match129788129789_
                         (lambda (___splice129771129772_
                                  _target122796122831_
                                  _tl122798122833_)
                           (letrec ((_loop122799122836_
                                     (lambda (_hd122797122839_
                                              _arg122803122841_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd122797122839_))
                                           (let ((_e122800122844_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd122797122839_))))
                                             (let ((_lp-tl122802122849_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122800122844_)))
                                                   (_lp-hd122801122847_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122800122844_))))
                                               (let ((__tmp130473
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd122801122847_
                                                              _arg122803122841_))))
                                                 (declare (not safe))
                                                 (_loop122799122836_
                                                  _lp-tl122802122849_
                                                  __tmp130473))))
                                           (let ((_arg122804122852_
                                                  (reverse _arg122803122841_)))
                                             (___kont129769129770_
                                              _tl122798122833_
                                              _arg122804122852_))))))
                             (let ()
                               (declare (not safe))
                               (_loop122799122836_
                                _target122796122831_
                                '())))))
                        (___match129782129783_
                         (lambda (___splice129767129768_
                                  _target122785122880_
                                  _tl122787122882_)
                           (letrec ((_loop122788122885_
                                     (lambda (_hd122786122888_
                                              _arg122792122890_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd122786122888_))
                                           (let ((_e122789122893_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd122786122888_))))
                                             (let ((_lp-tl122791122898_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122789122893_)))
                                                   (_lp-hd122790122896_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122789122893_))))
                                               (let ((__tmp130474
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd122790122896_
                                                              _arg122792122890_))))
                                                 (declare (not safe))
                                                 (_loop122788122885_
                                                  _lp-tl122791122898_
                                                  __tmp130474))))
                                           (let ((_arg122793122901_
                                                  (reverse _arg122792122890_)))
                                             (___kont129765129766_
                                              _arg122793122901_))))))
                             (let ()
                               (declare (not safe))
                               (_loop122788122885_
                                _target122785122880_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx129763129764_))
                       (let ((___splice129767129768_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx129763129764_
                                 '0))))
                         (let ((_tl122787122882_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice129767129768_ '1)))
                               (_target122785122880_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice129767129768_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl122787122882_))
                               (___match129782129783_
                                ___splice129767129768_
                                _target122785122880_
                                _tl122787122882_)
                               (___match129788129789_
                                ___splice129767129768_
                                _target122785122880_
                                _tl122787122882_))))
                       (___kont129773129774_ ___stx129763129764_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp130477
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id122776_
                                                              _ids122707_)))
                                                     (__tmp130476
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl122778_
                                                              _impls122708_)))
                                                     (__tmp130475
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause122925_
                                                              _clauses122709_))))
                                                 (declare (not safe))
                                                 (_lp122704_
                                                  _rest122729_
                                                  __tmp130477
                                                  __tmp130476
                                                  __tmp130475))))
                                           _tl122736122753_
                                           _hd122737122751_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g122732122743_ _g122733122746_))))))
                          (declare (not safe))
                          (_g122731122928_ _clause122730_))))))
            (if (let () (declare (not safe)) (##pair? _rest122710122718_))
                (let ((_hd122715122934_
                       (let ()
                         (declare (not safe))
                         (##car _rest122710122718_)))
                      (_tl122716122936_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest122710122718_))))
                  (let* ((_clause122939_ _hd122715122934_)
                         (_rest122941_ _tl122716122936_))
                    (declare (not safe))
                    (_K122714122931_ _rest122941_ _clause122939_)))
                (let () (declare (not safe)) (_else122712122726_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx122946_ _id122947_ _clauses122948_)
        (let ((_gensym?122950_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx122946_
           _id122947_
           _clauses122948_
           _gensym?122950_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g130480_
        (let ((_g130479_ (let () (declare (not safe)) (##length _g130480_))))
          (cond ((let () (declare (not safe)) (##fx= _g130479_ 3))
                 (apply (lambda (_stx122946_ _id122947_ _clauses122948_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx122946_
                             _id122947_
                             _clauses122948_)))
                        _g130480_))
                ((let () (declare (not safe)) (##fx= _g130479_ 4))
                 (apply (lambda (_stx122952_
                                 _id122953_
                                 _clauses122954_
                                 _gensym?122955_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx122952_
                             _id122953_
                             _clauses122954_
                             _gensym?122955_)))
                        _g130480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g130480_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self121975_ _stx121976_)
        (letrec ((_case-lambda-clause-def121978_
                  (lambda (_id122695_ _impl122696_)
                    (let ((__tmp130481
                           (let ((__tmp130482
                                  (let ((__tmp130485
                                         (let ()
                                           (declare (not safe))
                                           (cons _id122695_ '())))
                                        (__tmp130483
                                         (let ((__tmp130484
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121975_
                                                   _impl122696_))))
                                           (declare (not safe))
                                           (cons __tmp130484 '()))))
                                    (declare (not safe))
                                    (cons __tmp130485 __tmp130483))))
                             (declare (not safe))
                             (cons '%#define-values __tmp130482))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130481 _stx121976_))))
                 (_opt-lambda-dispatch-name121979_
                  (lambda (_id122691_)
                    (if (uninterned-symbol? _id122691_)
                        (let ((_str122693_ (symbol->string _id122691_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str122693_))
                              '"%"
                              _id122691_))
                        _id122691_)))
                 (_kw-lambda-dispatch-name121980_
                  (lambda (_id122686_ _name122687_)
                    (if (uninterned-symbol? _id122686_)
                        (let ((_str122689_ (symbol->string _id122686_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str122689_))
                              _name122687_
                              _id122686_))
                        _id122686_))))
          (let* ((___stx129811129812_ _stx121976_)
                 (_g121985122044_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx129811129812_)))))
            (let ((___kont129813129814_
                   (lambda (_L122595_ _L122596_)
                     (let* ((___stx129791129792_ _L122595_)
                            (_g122613122627_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx129791129792_)))))
                       (let ((___kont129793129794_
                              (lambda (_L122671_) _stx121976_))
                             (___kont129795129796_
                              (lambda (_L122640_)
                                (let ((_g130486_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx121976_
                                          _L122596_
                                          _L122640_))))
                                  (begin
                                    (let ((_g130487_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130486_)
                                                 (##vector-length _g130486_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130487_ 3)))
                                          (error "Context expects 3 values"
                                                 _g130487_)))
                                    (let ((_ids122650_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130486_ 0)))
                                          (_impls122651_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130486_ 1)))
                                          (_clauses122652_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130486_ 2))))
                                      (let* ((_g130488_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids122650_))
                                             (_defs122655_
                                              (map _case-lambda-clause-def121978_
                                                   _ids122650_
                                                   _impls122651_)))
                                        (let ((__tmp130490
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L122596_)))
                                              (__tmp130489
                                               (map gxc#identifier-symbol
                                                    _ids122650_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp130490
                                           '" => "
                                           __tmp130489))
                                        (let ((__tmp130491
                                               (let ((__tmp130492
                                                      (let ((__tmp130493
                                                             (let ((__tmp130494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130495
                                   (let ((__tmp130496
                                          (let ((__tmp130501
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L122596_ '())))
                                                (__tmp130497
                                                 (let ((__tmp130498
                                                        (let ((__tmp130500
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses122652_)))
                      (__tmp130499
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp130500 __tmp130499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130498 '()))))
                                            (declare (not safe))
                                            (cons __tmp130501 __tmp130497))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp130496))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130495
                               _stx121976_))))
                       (declare (not safe))
                       (cons __tmp130494 '()))))
                (declare (not safe))
                (foldr1 cons __tmp130493 _defs122655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp130492))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp130491
                                           _stx121976_)))))))))
                         (let ((___match129802129803_
                                (lambda (_e122618122663_
                                         _hd122617122666_
                                         _tl122616122668_)
                                  (let ((_L122671_ _tl122616122668_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L122671_))
                                        (___kont129793129794_ _L122671_)
                                        (___kont129795129796_
                                         _tl122616122668_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx129791129792_))
                               (let ((_e122618122663_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx129791129792_))))
                                 (let ((_tl122616122668_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122618122663_)))
                                       (_hd122617122666_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122618122663_))))
                                   (___match129802129803_
                                    _e122618122663_
                                    _hd122617122666_
                                    _tl122616122668_)))
                               (let ()
                                 (declare (not safe))
                                 (_g122613122627_))))))))
                  (___kont129815129816_
                   (lambda (_L122413_ _L122414_)
                     (let* ((_g122430122460_
                             (lambda (_g122431122457_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122431122457_))))
                            (_g122429122555_
                             (lambda (_g122431122463_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122431122463_))
                                   (let ((_e122437122465_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122431122463_))))
                                     (let ((_hd122436122468_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122437122465_)))
                                           (_tl122435122470_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122437122465_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122435122470_))
                                           (let ((_e122440122473_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122435122470_))))
                                             (let ((_hd122439122476_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122440122473_)))
                                                   (_tl122438122478_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122440122473_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122439122476_))
                                                   (let ((_e122443122481_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122439122476_))))
                                                     (let ((_hd122442122484_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122443122481_)))
                                                           (_tl122441122486_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122443122481_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122442122484_))
                                                           (let ((_e122446122489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122442122484_))))
                     (let ((_hd122445122492_
                            (let ()
                              (declare (not safe))
                              (##car _e122446122489_)))
                           (_tl122444122494_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122446122489_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122445122492_))
                           (let ((_e122449122497_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122445122492_))))
                             (let ((_hd122448122500_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122449122497_)))
                                   (_tl122447122502_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122449122497_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122447122502_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122444122494_))
                                       (let ((_e122452122505_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122444122494_))))
                                         (let ((_hd122451122508_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122452122505_)))
                                               (_tl122450122510_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122452122505_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122450122510_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl122441122486_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122438122478_))
                                                       (let ((_e122455122513_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122438122478_))))
                 (let ((_hd122454122516_
                        (let () (declare (not safe)) (##car _e122455122513_)))
                       (_tl122453122518_
                        (let () (declare (not safe)) (##cdr _e122455122513_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl122453122518_))
                       ((lambda (_L122521_ _L122522_ _L122523_)
                          (let* ((_lambda-id122547_
                                  (let ((__tmp130504
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L122414_)))
                                        (__tmp130502
                                         (let ((__tmp130503
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L122523_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name121979_
                                            __tmp130503))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp130504
                                     '"__"
                                     __tmp130502)))
                                 (_lambda-id122549_
                                  (let ((__tmp130505
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx121976_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id122547_
                                     __tmp130505)))
                                 (_g130506_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id122549_)))
                                 (_new-case-lambda-expr122552_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L122521_
                                     'id:
                                     _L122523_
                                     'new-id:
                                     _lambda-id122549_))))
                            (let ((__tmp130508
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L122414_)))
                                  (__tmp130507
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id122549_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp130508
                               '" => "
                               __tmp130507))
                            (let ((__tmp130509
                                   (let ((__tmp130510
                                          (let ((__tmp130518
                                                 (let ((__tmp130519
                                                        (let ((__tmp130520
                                                               (let ((__tmp130523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id122549_ '())))
                             (__tmp130521
                              (let ((__tmp130522
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self121975_
                                        _L122522_))))
                                (declare (not safe))
                                (cons __tmp130522 '()))))
                         (declare (not safe))
                         (cons __tmp130523 __tmp130521))))
                  (declare (not safe))
                  (cons '%#define-values __tmp130520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp130519
                                                    _stx121976_)))
                                                (__tmp130511
                                                 (let ((__tmp130512
                                                        (let ((__tmp130513
                                                               (let ((__tmp130514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp130515
                                     (let ((__tmp130517
                                            (let ()
                                              (declare (not safe))
                                              (cons _L122414_ '())))
                                           (__tmp130516
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr122552_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp130517 __tmp130516))))
                                (declare (not safe))
                                (cons '%#define-values __tmp130515))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp130514 _stx121976_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self121975_
                   __tmp130513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130512 '()))))
                                            (declare (not safe))
                                            (cons __tmp130518 __tmp130511))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp130510))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130509
                               _stx121976_))))
                        _hd122454122516_
                        _hd122451122508_
                        _hd122448122500_)
                       (let ()
                         (declare (not safe))
                         (_g122430122460_ _g122431122463_)))))
               (let () (declare (not safe)) (_g122430122460_ _g122431122463_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122430122460_
                                                      _g122431122463_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122430122460_
                                                  _g122431122463_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122430122460_ _g122431122463_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122430122460_ _g122431122463_)))))
                           (let ()
                             (declare (not safe))
                             (_g122430122460_ _g122431122463_)))))
                   (let ()
                     (declare (not safe))
                     (_g122430122460_ _g122431122463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122430122460_
                                                      _g122431122463_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122430122460_
                                              _g122431122463_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122430122460_ _g122431122463_))))))
                       (declare (not safe))
                       (_g122429122555_ _L122413_))))
                  (___kont129817129818_
                   (lambda (_L122127_ _L122128_)
                     (let* ((_g122144122197_
                             (lambda (_g122145122194_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122145122194_))))
                            (_g122143122373_
                             (lambda (_g122145122200_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122145122200_))
                                   (let ((_e122153122202_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122145122200_))))
                                     (let ((_hd122152122205_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122153122202_)))
                                           (_tl122151122207_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122153122202_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122151122207_))
                                           (let ((_e122156122210_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122151122207_))))
                                             (let ((_hd122155122213_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122156122210_)))
                                                   (_tl122154122215_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122156122210_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122155122213_))
                                                   (let ((_e122159122218_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122155122213_))))
                                                     (let ((_hd122158122221_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122159122218_)))
                                                           (_tl122157122223_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122159122218_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122158122221_))
                                                           (let ((_e122162122226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122158122221_))))
                     (let ((_hd122161122229_
                            (let ()
                              (declare (not safe))
                              (##car _e122162122226_)))
                           (_tl122160122231_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122162122226_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122161122229_))
                           (let ((_e122165122234_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122161122229_))))
                             (let ((_hd122164122237_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122165122234_)))
                                   (_tl122163122239_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122165122234_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122163122239_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122160122231_))
                                       (let ((_e122168122242_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122160122231_))))
                                         (let ((_hd122167122245_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122168122242_)))
                                               (_tl122166122247_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122168122242_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd122167122245_))
                                               (let ((_e122171122250_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd122167122245_))))
                                                 (let ((_hd122170122253_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122171122250_)))
                                                       (_tl122169122255_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122171122250_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122169122255_))
                                                       (let ((_e122174122258_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122169122255_))))
                 (let ((_hd122173122261_
                        (let () (declare (not safe)) (##car _e122174122258_)))
                       (_tl122172122263_
                        (let () (declare (not safe)) (##cdr _e122174122258_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd122173122261_))
                       (let ((_e122177122266_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd122173122261_))))
                         (let ((_hd122176122269_
                                (let ()
                                  (declare (not safe))
                                  (##car _e122177122266_)))
                               (_tl122175122271_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e122177122266_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122176122269_))
                               (let ((_e122180122274_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122176122269_))))
                                 (let ((_hd122179122277_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122180122274_)))
                                       (_tl122178122279_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122180122274_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd122179122277_))
                                       (let ((_e122183122282_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd122179122277_))))
                                         (let ((_hd122182122285_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122183122282_)))
                                               (_tl122181122287_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122183122282_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122181122287_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl122178122279_))
                                                   (let ((_e122186122290_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl122178122279_))))
                                                     (let ((_hd122185122293_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122186122290_)))
                                                           (_tl122184122295_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122186122290_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122184122295_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl122175122271_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl122172122263_))
                           (let ((_e122189122298_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl122172122263_))))
                             (let ((_hd122188122301_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122189122298_)))
                                   (_tl122187122303_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122189122298_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122187122303_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl122166122247_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl122157122223_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl122154122215_))
                                               (let ((_e122192122306_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl122154122215_))))
                                                 (let ((_hd122191122309_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122192122306_)))
                                                       (_tl122190122311_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122192122306_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl122190122311_))
                                                       ((lambda (_L122314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L122315_
                         _L122316_
                         _L122317_
                         _L122318_)
                  (let* ((_get-kws-id122358_
                          (let ((__tmp130526
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122128_)))
                                (__tmp130524
                                 (let ((__tmp130525
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122318_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name121980_
                                    __tmp130525
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130526 '"__" __tmp130524)))
                         (_get-kws-id122360_
                          (let ((__tmp130527
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx121976_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id122358_
                             __tmp130527)))
                         (_main-id122362_
                          (let ((__tmp130530
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122128_)))
                                (__tmp130528
                                 (let ((__tmp130529
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122317_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name121980_
                                    __tmp130529
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130530 '"__" __tmp130528)))
                         (_main-id122364_
                          (let ((__tmp130531
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx121976_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id122362_
                             __tmp130531)))
                         (_g130532_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id122360_)))
                         (_g130533_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id122364_)))
                         (_new-kw-dispatch122368_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122314_
                             'id:
                             _L122318_
                             'new-id:
                             _get-kws-id122360_)))
                         (_new-get-kws122370_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122315_
                             'id:
                             _L122317_
                             'new-id:
                             _main-id122364_))))
                    (let ((__tmp130536
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L122128_)))
                          (__tmp130535
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id122360_)))
                          (__tmp130534
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id122364_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp130536
                       '" => "
                       __tmp130535
                       '" => "
                       __tmp130534))
                    (let ((__tmp130537
                           (let ((__tmp130538
                                  (let ((__tmp130551
                                         (let ((__tmp130552
                                                (let ((__tmp130553
                                                       (let ((__tmp130554
                                                              (let ((__tmp130556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id122364_ '())))
                            (__tmp130555
                             (let ()
                               (declare (not safe))
                               (cons _L122316_ '()))))
                        (declare (not safe))
                        (cons __tmp130556 __tmp130555))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130553
                                                   _stx121976_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self121975_
                                            __tmp130552)))
                                        (__tmp130539
                                         (let ((__tmp130546
                                                (let ((__tmp130547
                                                       (let ((__tmp130548
                                                              (let ((__tmp130550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id122360_ '())))
                            (__tmp130549
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws122370_ '()))))
                        (declare (not safe))
                        (cons __tmp130550 __tmp130549))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130547
                                                   _stx121976_)))
                                               (__tmp130540
                                                (let ((__tmp130541
                                                       (let ((__tmp130542
                                                              (let ((__tmp130543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp130545
                                    (let ()
                                      (declare (not safe))
                                      (cons _L122128_ '())))
                                   (__tmp130544
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch122368_ '()))))
                               (declare (not safe))
                               (cons __tmp130545 __tmp130544))))
                        (declare (not safe))
                        (cons '%#define-values __tmp130543))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp130542 _stx121976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp130541 '()))))
                                           (declare (not safe))
                                           (cons __tmp130546 __tmp130540))))
                                    (declare (not safe))
                                    (cons __tmp130551 __tmp130539))))
                             (declare (not safe))
                             (cons '%#begin __tmp130538))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130537 _stx121976_))))
                _hd122191122309_
                _hd122188122301_
                _hd122185122293_
                _hd122182122285_
                _hd122164122237_)
               (let ()
                 (declare (not safe))
                 (_g122144122197_ _g122145122200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122144122197_
                                                  _g122145122200_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g122144122197_
                                              _g122145122200_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g122144122197_ _g122145122200_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122144122197_ _g122145122200_)))))
                           (let ()
                             (declare (not safe))
                             (_g122144122197_ _g122145122200_)))
                       (let ()
                         (declare (not safe))
                         (_g122144122197_ _g122145122200_)))
                   (let ()
                     (declare (not safe))
                     (_g122144122197_ _g122145122200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122144122197_
                                                      _g122145122200_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122144122197_
                                                  _g122145122200_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122144122197_ _g122145122200_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g122144122197_ _g122145122200_)))))
                       (let ()
                         (declare (not safe))
                         (_g122144122197_ _g122145122200_)))))
               (let ()
                 (declare (not safe))
                 (_g122144122197_ _g122145122200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122144122197_
                                                  _g122145122200_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122144122197_ _g122145122200_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122144122197_ _g122145122200_)))))
                           (let ()
                             (declare (not safe))
                             (_g122144122197_ _g122145122200_)))))
                   (let ()
                     (declare (not safe))
                     (_g122144122197_ _g122145122200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122144122197_
                                                      _g122145122200_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122144122197_
                                              _g122145122200_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122144122197_ _g122145122200_))))))
                       (declare (not safe))
                       (_g122143122373_ _L122127_))))
                  (___kont129819129820_
                   (lambda (_L122073_ _L122074_)
                     (let ((__tmp130557
                            (let ((__tmp130558
                                   (let ((__tmp130559
                                          (let ((__tmp130560
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self121975_
                                                    _L122073_))))
                                            (declare (not safe))
                                            (cons __tmp130560 '()))))
                                     (declare (not safe))
                                     (cons _L122074_ __tmp130559))))
                              (declare (not safe))
                              (cons '%#define-values __tmp130558))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp130557 _stx121976_)))))
              (let* ((___match129904129905_
                      (lambda (_e122019122095_
                               _hd122018122098_
                               _tl122017122100_
                               _e122022122103_
                               _hd122021122106_
                               _tl122020122108_
                               _e122025122111_
                               _hd122024122114_
                               _tl122023122116_
                               _e122028122119_
                               _hd122027122122_
                               _tl122026122124_)
                        (let ((_L122127_ _hd122027122122_)
                              (_L122128_ _hd122024122114_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122128_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L122127_)))
                              (___kont129817129818_ _L122127_ _L122128_)
                              (___kont129819129820_
                               _hd122027122122_
                               _hd122021122106_)))))
                     (___match129876129877_
                      (lambda (_e122005122381_
                               _hd122004122384_
                               _tl122003122386_
                               _e122008122389_
                               _hd122007122392_
                               _tl122006122394_
                               _e122011122397_
                               _hd122010122400_
                               _tl122009122402_
                               _e122014122405_
                               _hd122013122408_
                               _tl122012122410_)
                        (let ((_L122413_ _hd122013122408_)
                              (_L122414_ _hd122010122400_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122414_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L122413_)))
                              (___kont129815129816_ _L122413_ _L122414_)
                              (___match129904129905_
                               _e122005122381_
                               _hd122004122384_
                               _tl122003122386_
                               _e122008122389_
                               _hd122007122392_
                               _tl122006122394_
                               _e122011122397_
                               _hd122010122400_
                               _tl122009122402_
                               _e122014122405_
                               _hd122013122408_
                               _tl122012122410_)))))
                     (___match129848129849_
                      (lambda (_e121991122563_
                               _hd121990122566_
                               _tl121989122568_
                               _e121994122571_
                               _hd121993122574_
                               _tl121992122576_
                               _e121997122579_
                               _hd121996122582_
                               _tl121995122584_
                               _e122000122587_
                               _hd121999122590_
                               _tl121998122592_)
                        (let ((_L122595_ _hd121999122590_)
                              (_L122596_ _hd121996122582_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122596_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L122595_)))
                              (___kont129813129814_ _L122595_ _L122596_)
                              (___match129876129877_
                               _e121991122563_
                               _hd121990122566_
                               _tl121989122568_
                               _e121994122571_
                               _hd121993122574_
                               _tl121992122576_
                               _e121997122579_
                               _hd121996122582_
                               _tl121995122584_
                               _e122000122587_
                               _hd121999122590_
                               _tl121998122592_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx129811129812_))
                    (let ((_e121991122563_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx129811129812_))))
                      (let ((_tl121989122568_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121991122563_)))
                            (_hd121990122566_
                             (let ()
                               (declare (not safe))
                               (##car _e121991122563_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121989122568_))
                            (let ((_e121994122571_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121989122568_))))
                              (let ((_tl121992122576_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121994122571_)))
                                    (_hd121993122574_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121994122571_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121993122574_))
                                    (let ((_e121997122579_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121993122574_))))
                                      (let ((_tl121995122584_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121997122579_)))
                                            (_hd121996122582_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121997122579_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121995122584_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121992122576_))
                                                (let ((_e122000122587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121992122576_))))
                                                  (let ((_tl121998122592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122000122587_)))
                                                        (_hd121999122590_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122000122587_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121998122592_))
                                                        (___match129848129849_
                                                         _e121991122563_
                                                         _hd121990122566_
                                                         _tl121989122568_
                                                         _e121994122571_
                                                         _hd121993122574_
                                                         _tl121992122576_
                                                         _e121997122579_
                                                         _hd121996122582_
                                                         _tl121995122584_
                                                         _e122000122587_
                                                         _hd121999122590_
                                                         _tl121998122592_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121985122044_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121985122044_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121992122576_))
                                                (let ((_e122039122065_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121992122576_))))
                                                  (let ((_tl122037122070_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122039122065_)))
                                                        (_hd122038122068_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122039122065_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122037122070_))
                                                        (___kont129819129820_
                                                         _hd122038122068_
                                                         _hd121993122574_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121985122044_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121985122044_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121992122576_))
                                        (let ((_e122039122065_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121992122576_))))
                                          (let ((_tl122037122070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122039122065_)))
                                                (_hd122038122068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122039122065_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122037122070_))
                                                (___kont129819129820_
                                                 _hd122038122068_
                                                 _hd121993122574_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121985122044_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g121985122044_))))))
                            (let () (declare (not safe)) (_g121985122044_)))))
                    (let () (declare (not safe)) (_g121985122044_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self120906_ _stx120907_)
        (letrec* ((_bind-e__128207128208_
                   (lambda (_id121959_ _expr121960_ _compile?121961_)
                     (let ((__tmp130563
                            (let ()
                              (declare (not safe))
                              (cons _id121959_ '())))
                           (__tmp130561
                            (let ((__tmp130562
                                   (if _compile?121961_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120906_
                                          _expr121960_))
                                       _expr121960_)))
                              (declare (not safe))
                              (cons __tmp130562 '()))))
                       (declare (not safe))
                       (cons __tmp130563 __tmp130561))))
                  (_bind-e__0__128209128210_
                   (lambda (_id121966_ _expr121967_)
                     (let ((_compile?121969_ '#t))
                       (declare (not safe))
                       (_bind-e__128207128208_
                        _id121966_
                        _expr121967_
                        _compile?121969_))))
                  (_bind-e120909_
                   (lambda _g130565_
                     (let ((_g130564_
                            (let ()
                              (declare (not safe))
                              (##length _g130565_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130564_ 2))
                              (apply (lambda (_id121966_ _expr121967_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128209128210_
                                          _id121966_
                                          _expr121967_)))
                                     _g130565_))
                             ((let () (declare (not safe)) (##fx= _g130564_ 3))
                              (apply (lambda (_id121971_
                                              _expr121972_
                                              _compile?121973_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128207128208_
                                          _id121971_
                                          _expr121972_
                                          _compile?121973_)))
                                     _g130565_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130565_))))))
                  (_compile-bindings120910_
                   (lambda (_bindings121543_)
                     (let _lp121545_ ((_rest121547_ _bindings121543_)
                                      (_lift1121548_ '())
                                      (_lift2121549_ '())
                                      (_bind121550_ '()))
                       (let* ((_rest121551121559_ _rest121547_)
                              (_else121553121567_
                               (lambda ()
                                 (values (reverse _lift1121548_)
                                         (reverse _lift2121549_)
                                         (reverse _bind121550_))))
                              (_K121555121946_
                               (lambda (_rest121570_ _hd121571_)
                                 (let* ((___stx129947129948_ _hd121571_)
                                        (_g121575121611_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129947129948_)))))
                                   (let ((___kont129949129950_
                                          (lambda (_L121853_ _L121854_)
                                            (let* ((___stx129927129928_
                                                    _L121853_)
                                                   (_g121869121883_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx129927129928_)))))
                                              (let ((___kont129929129930_
                                                     (lambda (_L121931_)
                                                       (let ((__tmp130566
                                                              (let ((__tmp130567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128207128208_
                                _L121854_
                                _L121853_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130567 _bind121550_))))
                 (declare (not safe))
                 (_lp121545_
                  _rest121570_
                  _lift1121548_
                  _lift2121549_
                  __tmp130566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129931129932_
                                                     (lambda (_L121896_)
                                                       (let ((_g130568_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120907_
                         _L121854_
                         _L121896_
                         '#t))))
                 (begin
                   (let ((_g130569_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130568_)
                                (##vector-length _g130568_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130569_ 3)))
                         (error "Context expects 3 values" _g130569_)))
                   (let ((_ids121906_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130568_ 0)))
                         (_impls121907_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130568_ 1)))
                         (_clauses121908_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130568_ 2))))
                     (let* ((_g130570_
                             (for-each gx#core-bind-runtime! _ids121906_))
                            (_xbind121911_
                             (map _bind-e120909_ _ids121906_ _impls121907_))
                            (_expr*121913_
                             (let ((__tmp130572
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121908_)))
                                   (__tmp130571
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130572
                                __tmp130571)))
                            (_bind*121915_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128207128208_
                                _L121854_
                                _expr*121913_
                                '#f))))
                       (let ((__tmp130574
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121854_)))
                             (__tmp130573
                              (map gxc#identifier-symbol _ids121906_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130574
                          '" => "
                          __tmp130573))
                       (let ((__tmp130576
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2121549_ _xbind121911_)))
                             (__tmp130575
                              (let ()
                                (declare (not safe))
                                (cons _bind*121915_ _bind121550_))))
                         (declare (not safe))
                         (_lp121545_
                          _rest121570_
                          _lift1121548_
                          __tmp130576
                          __tmp130575)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match129938129939_
                                                       (lambda (_e121874121923_
                                                                _hd121873121926_
                                                                _tl121872121928_)
                                                         (let ((_L121931_
                                                                _tl121872121928_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121931_))
                       (___kont129929129930_ _L121931_)
                       (___kont129931129932_ _tl121872121928_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx129927129928_))
                                                      (let ((_e121874121923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx129927129928_))))
                (let ((_tl121872121928_
                       (let () (declare (not safe)) (##cdr _e121874121923_)))
                      (_hd121873121926_
                       (let () (declare (not safe)) (##car _e121874121923_))))
                  (___match129938129939_
                   _e121874121923_
                   _hd121873121926_
                   _tl121872121928_)))
              (let () (declare (not safe)) (_g121869121883_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont129951129952_
                                          (lambda (_L121681_ _L121682_)
                                            (let* ((_g121696121726_
                                                    (lambda (_g121697121723_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121697121723_))))
                                                   (_g121695121821_
                                                    (lambda (_g121697121729_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121697121729_))
                                                          (let ((_e121703121731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121697121729_))))
                    (let ((_hd121702121734_
                           (let ()
                             (declare (not safe))
                             (##car _e121703121731_)))
                          (_tl121701121736_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121703121731_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121701121736_))
                          (let ((_e121706121739_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121701121736_))))
                            (let ((_hd121705121742_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121706121739_)))
                                  (_tl121704121744_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121706121739_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121705121742_))
                                  (let ((_e121709121747_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121705121742_))))
                                    (let ((_hd121708121750_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121709121747_)))
                                          (_tl121707121752_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121709121747_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121708121750_))
                                          (let ((_e121712121755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121708121750_))))
                                            (let ((_hd121711121758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121712121755_)))
                                                  (_tl121710121760_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121712121755_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121711121758_))
                                                  (let ((_e121715121763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121711121758_))))
                                                    (let ((_hd121714121766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121715121763_)))
                                                          (_tl121713121768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121715121763_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121713121768_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121710121760_))
                      (let ((_e121718121771_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121710121760_))))
                        (let ((_hd121717121774_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121718121771_)))
                              (_tl121716121776_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121718121771_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121716121776_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121707121752_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121704121744_))
                                      (let ((_e121721121779_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121704121744_))))
                                        (let ((_hd121720121782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121721121779_)))
                                              (_tl121719121784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121721121779_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121719121784_))
                                              ((lambda (_L121787_
                                                        _L121788_
                                                        _L121789_)
                                                 (let* ((_lambda-id121813_
                                                         (let ((__tmp130578
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L121682_)))
                       (__tmp130577 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130578 __tmp130577)))
                (_lambda-id121815_
                 (let ((__tmp130579
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120907_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id121813_ __tmp130579)))
                (_g130580_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id121815_)))
                (_new-case-lambda-expr121818_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L121787_
                    'id:
                    _L121789_
                    'new-id:
                    _lambda-id121815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130582
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L121682_)))
                                                         (__tmp130581
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id121815_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130582
                                                      '" => "
                                                      __tmp130581))
                                                   (let ((__tmp130585
                                                          (let ((__tmp130586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128207128208_
                            _L121682_
                            _new-case-lambda-expr121818_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130586 _rest121570_)))
                 (__tmp130583
                  (let ((__tmp130584
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128209128210_
                            _lambda-id121815_
                            _L121788_))))
                    (declare (not safe))
                    (cons __tmp130584 _lift1121548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp121545_
                                                      __tmp130585
                                                      __tmp130583
                                                      _lift2121549_
                                                      _bind121550_))))
                                               _hd121720121782_
                                               _hd121717121774_
                                               _hd121714121766_)
                                              (let ()
                                                (declare (not safe))
                                                (_g121696121726_
                                                 _g121697121729_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121696121726_ _g121697121729_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121696121726_ _g121697121729_)))
                              (let ()
                                (declare (not safe))
                                (_g121696121726_ _g121697121729_)))))
                      (let ()
                        (declare (not safe))
                        (_g121696121726_ _g121697121729_)))
                  (let ()
                    (declare (not safe))
                    (_g121696121726_ _g121697121729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121696121726_
                                                     _g121697121729_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121696121726_
                                             _g121697121729_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121696121726_ _g121697121729_)))))
                          (let ()
                            (declare (not safe))
                            (_g121696121726_ _g121697121729_)))))
                  (let ()
                    (declare (not safe))
                    (_g121696121726_ _g121697121729_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121695121821_ _L121681_))))
                                         (___kont129953129954_
                                          (lambda (_L121632_ _L121633_)
                                            (let ((__tmp130587
                                                   (let ((__tmp130588
                                                          (let ((__tmp130589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130590
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120906_ _L121632_))))
                           (declare (not safe))
                           (cons __tmp130590 '()))))
                    (declare (not safe))
                    (cons _L121633_ __tmp130589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130588
                                                           _bind121550_))))
                                              (declare (not safe))
                                              (_lp121545_
                                               _rest121570_
                                               _lift1121548_
                                               _lift2121549_
                                               __tmp130587)))))
                                     (let* ((___match129998129999_
                                             (lambda (_e121592121657_
                                                      _hd121591121660_
                                                      _tl121590121662_
                                                      _e121595121665_
                                                      _hd121594121668_
                                                      _tl121593121670_
                                                      _e121598121673_
                                                      _hd121597121676_
                                                      _tl121596121678_)
                                               (let ((_L121681_
                                                      _hd121597121676_)
                                                     (_L121682_
                                                      _hd121594121668_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121682_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L121681_)))
                                                     (___kont129951129952_
                                                      _L121681_
                                                      _L121682_)
                                                     (___kont129953129954_
                                                      _hd121597121676_
                                                      _hd121591121660_)))))
                                            (___match129976129977_
                                             (lambda (_e121581121829_
                                                      _hd121580121832_
                                                      _tl121579121834_
                                                      _e121584121837_
                                                      _hd121583121840_
                                                      _tl121582121842_
                                                      _e121587121845_
                                                      _hd121586121848_
                                                      _tl121585121850_)
                                               (let ((_L121853_
                                                      _hd121586121848_)
                                                     (_L121854_
                                                      _hd121583121840_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121854_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121853_)))
                                                     (___kont129949129950_
                                                      _L121853_
                                                      _L121854_)
                                                     (___match129998129999_
                                                      _e121581121829_
                                                      _hd121580121832_
                                                      _tl121579121834_
                                                      _e121584121837_
                                                      _hd121583121840_
                                                      _tl121582121842_
                                                      _e121587121845_
                                                      _hd121586121848_
                                                      _tl121585121850_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129947129948_))
                                           (let ((_e121581121829_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129947129948_))))
                                             (let ((_tl121579121834_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121581121829_)))
                                                   (_hd121580121832_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121581121829_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121580121832_))
                                                   (let ((_e121584121837_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121580121832_))))
                                                     (let ((_tl121582121842_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121584121837_)))
                                                           (_hd121583121840_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121584121837_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121582121842_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121579121834_))
                       (let ((_e121587121845_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121579121834_))))
                         (let ((_tl121585121850_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121587121845_)))
                               (_hd121586121848_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121587121845_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121585121850_))
                               (___match129976129977_
                                _e121581121829_
                                _hd121580121832_
                                _tl121579121834_
                                _e121584121837_
                                _hd121583121840_
                                _tl121582121842_
                                _e121587121845_
                                _hd121586121848_
                                _tl121585121850_)
                               (let ()
                                 (declare (not safe))
                                 (_g121575121611_)))))
                       (let () (declare (not safe)) (_g121575121611_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121579121834_))
                       (let ((_e121606121624_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121579121834_))))
                         (let ((_tl121604121629_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121606121624_)))
                               (_hd121605121627_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121606121624_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121604121629_))
                               (___kont129953129954_
                                _hd121605121627_
                                _hd121580121832_)
                               (let ()
                                 (declare (not safe))
                                 (_g121575121611_)))))
                       (let () (declare (not safe)) (_g121575121611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121579121834_))
                                                       (let ((_e121606121624_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121579121834_))))
                 (let ((_tl121604121629_
                        (let () (declare (not safe)) (##cdr _e121606121624_)))
                       (_hd121605121627_
                        (let () (declare (not safe)) (##car _e121606121624_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121604121629_))
                       (___kont129953129954_ _hd121605121627_ _hd121580121832_)
                       (let () (declare (not safe)) (_g121575121611_)))))
               (let () (declare (not safe)) (_g121575121611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121575121611_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121551121559_))
                             (let ((_hd121556121949_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121551121559_)))
                                   (_tl121557121951_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121551121559_))))
                               (let* ((_hd121954_ _hd121556121949_)
                                      (_rest121956_ _tl121557121951_))
                                 (declare (not safe))
                                 (_K121555121946_ _rest121956_ _hd121954_)))
                             (let ()
                               (declare (not safe))
                               (_else121553121567_)))))))
                  (_lift-kw-lambda?120911_
                   (lambda (_bind121467_)
                     (let* ((___stx130015130016_ _bind121467_)
                            (_g121470121487_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130015130016_)))))
                       (let ((___kont130017130018_
                              (lambda (_L121523_ _L121524_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L121524_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L121523_))
                                    '#f)))
                             (___kont130019130020_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx130015130016_))
                             (let ((_e121476121499_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx130015130016_))))
                               (let ((_tl121474121504_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e121476121499_)))
                                     (_hd121475121502_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e121476121499_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd121475121502_))
                                     (let ((_e121479121507_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd121475121502_))))
                                       (let ((_tl121477121512_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e121479121507_)))
                                             (_hd121478121510_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e121479121507_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl121477121512_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl121474121504_))
                                                 (let ((_e121482121515_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl121474121504_))))
                                                   (let ((_tl121480121520_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e121482121515_)))
                                                         (_hd121481121518_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e121482121515_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl121480121520_))
                                                         (___kont130017130018_
                                                          _hd121481121518_
                                                          _hd121478121510_)
                                                         (___kont130019130020_))))
                                                 (___kont130019130020_))
                                             (___kont130019130020_))))
                                     (___kont130019130020_))))
                             (___kont130019130020_))))))
                  (_lift-kw-lambda-bindings120912_
                   (lambda (_bindings121079_)
                     (let _lp121081_ ((_rest121083_ _bindings121079_)
                                      (_lift1121084_ '())
                                      (_lift2121085_ '())
                                      (_bind121086_ '()))
                       (let* ((_rest121087121095_ _rest121083_)
                              (_else121089121103_
                               (lambda ()
                                 (values (reverse _lift1121084_)
                                         (reverse _lift2121085_)
                                         (reverse _bind121086_))))
                              (_K121091121455_
                               (lambda (_rest121106_ _hd121107_)
                                 (let* ((___stx130045130046_ _hd121107_)
                                        (_g121110121135_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130045130046_)))))
                                   (let ((___kont130047130048_
                                          (lambda (_L121205_ _L121206_)
                                            (let* ((_g121220121273_
                                                    (lambda (_g121221121270_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121221121270_))))
                                                   (_g121219121449_
                                                    (lambda (_g121221121276_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121221121276_))
                                                          (let ((_e121229121278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121221121276_))))
                    (let ((_hd121228121281_
                           (let ()
                             (declare (not safe))
                             (##car _e121229121278_)))
                          (_tl121227121283_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121229121278_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121227121283_))
                          (let ((_e121232121286_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121227121283_))))
                            (let ((_hd121231121289_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121232121286_)))
                                  (_tl121230121291_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121232121286_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121231121289_))
                                  (let ((_e121235121294_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121231121289_))))
                                    (let ((_hd121234121297_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121235121294_)))
                                          (_tl121233121299_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121235121294_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121234121297_))
                                          (let ((_e121238121302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121234121297_))))
                                            (let ((_hd121237121305_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121238121302_)))
                                                  (_tl121236121307_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121238121302_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121237121305_))
                                                  (let ((_e121241121310_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121237121305_))))
                                                    (let ((_hd121240121313_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121241121310_)))
                                                          (_tl121239121315_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121241121310_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121239121315_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121236121307_))
                      (let ((_e121244121318_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121236121307_))))
                        (let ((_hd121243121321_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121244121318_)))
                              (_tl121242121323_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121244121318_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd121243121321_))
                              (let ((_e121247121326_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd121243121321_))))
                                (let ((_hd121246121329_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121247121326_)))
                                      (_tl121245121331_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121247121326_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121245121331_))
                                      (let ((_e121250121334_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121245121331_))))
                                        (let ((_hd121249121337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121250121334_)))
                                              (_tl121248121339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121250121334_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd121249121337_))
                                              (let ((_e121253121342_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd121249121337_))))
                                                (let ((_hd121252121345_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121253121342_)))
                                                      (_tl121251121347_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121253121342_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd121252121345_))
                                                      (let ((_e121256121350_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd121252121345_))))
                (let ((_hd121255121353_
                       (let () (declare (not safe)) (##car _e121256121350_)))
                      (_tl121254121355_
                       (let () (declare (not safe)) (##cdr _e121256121350_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121255121353_))
                      (let ((_e121259121358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121255121353_))))
                        (let ((_hd121258121361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121259121358_)))
                              (_tl121257121363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121259121358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121257121363_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121254121355_))
                                  (let ((_e121262121366_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121254121355_))))
                                    (let ((_hd121261121369_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121262121366_)))
                                          (_tl121260121371_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121262121366_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121260121371_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121251121347_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121248121339_))
                                                  (let ((_e121265121374_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121248121339_))))
                                                    (let ((_hd121264121377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121265121374_)))
                                                          (_tl121263121379_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121265121374_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121263121379_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl121242121323_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl121233121299_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121230121291_))
                              (let ((_e121268121382_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121230121291_))))
                                (let ((_hd121267121385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121268121382_)))
                                      (_tl121266121387_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121268121382_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121266121387_))
                                      ((lambda (_L121390_
                                                _L121391_
                                                _L121392_
                                                _L121393_
                                                _L121394_)
                                         (let* ((_get-kws-id121434_
                                                 (let ((__tmp130592
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121206_)))
                                                       (__tmp130591
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130592
                                                    __tmp130591)))
                                                (_get-kws-id121436_
                                                 (let ((__tmp130593
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120907_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id121434_
                                                    __tmp130593)))
                                                (_main-id121438_
                                                 (let ((__tmp130595
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121206_)))
                                                       (__tmp130594
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130595
                                                    __tmp130594)))
                                                (_main-id121440_
                                                 (let ((__tmp130596
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120907_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id121438_
                                                    __tmp130596)))
                                                (_g130597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id121436_)))
                                                (_g130598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id121440_)))
                                                (_new-kw-dispatch121444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121390_
                                                    'id:
                                                    _L121394_
                                                    'new-id:
                                                    _get-kws-id121436_)))
                                                (_new-get-kws121446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121391_
                                                    'id:
                                                    _L121393_
                                                    'new-id:
                                                    _main-id121440_))))
                                           (let ((__tmp130601
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L121206_)))
                                                 (__tmp130600
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id121436_)))
                                                 (__tmp130599
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id121440_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130601
                                              '" => "
                                              __tmp130600
                                              '" => "
                                              __tmp130599))
                                           (let ((__tmp130606
                                                  (let ((__tmp130607
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128207128208_
                                                            _main-id121440_
                                                            _L121392_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130607
                                                          _lift1121084_)))
                                                 (__tmp130604
                                                  (let ((__tmp130605
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128207128208_
                                                            _get-kws-id121436_
                                                            _new-get-kws121446_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130605
                                                          _lift2121085_)))
                                                 (__tmp130602
                                                  (let ((__tmp130603
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128207128208_
                                                            _L121206_
                                                            _new-kw-dispatch121444_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130603
                                                          _bind121086_))))
                                             (declare (not safe))
                                             (_lp121081_
                                              _rest121106_
                                              __tmp130606
                                              __tmp130604
                                              __tmp130602))))
                                       _hd121267121385_
                                       _hd121264121377_
                                       _hd121261121369_
                                       _hd121258121361_
                                       _hd121240121313_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121220121273_ _g121221121276_)))))
                              (let ()
                                (declare (not safe))
                                (_g121220121273_ _g121221121276_)))
                          (let ()
                            (declare (not safe))
                            (_g121220121273_ _g121221121276_)))
                      (let ()
                        (declare (not safe))
                        (_g121220121273_ _g121221121276_)))
                  (let ()
                    (declare (not safe))
                    (_g121220121273_ _g121221121276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121220121273_
                                                     _g121221121276_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121220121273_
                                                 _g121221121276_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121220121273_
                                             _g121221121276_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121220121273_ _g121221121276_)))
                              (let ()
                                (declare (not safe))
                                (_g121220121273_ _g121221121276_)))))
                      (let ()
                        (declare (not safe))
                        (_g121220121273_ _g121221121276_)))))
              (let ()
                (declare (not safe))
                (_g121220121273_ _g121221121276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121220121273_
                                                 _g121221121276_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121220121273_ _g121221121276_)))))
                              (let ()
                                (declare (not safe))
                                (_g121220121273_ _g121221121276_)))))
                      (let ()
                        (declare (not safe))
                        (_g121220121273_ _g121221121276_)))
                  (let ()
                    (declare (not safe))
                    (_g121220121273_ _g121221121276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121220121273_
                                                     _g121221121276_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121220121273_
                                             _g121221121276_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121220121273_ _g121221121276_)))))
                          (let ()
                            (declare (not safe))
                            (_g121220121273_ _g121221121276_)))))
                  (let ()
                    (declare (not safe))
                    (_g121220121273_ _g121221121276_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121219121449_ _L121205_))))
                                         (___kont130049130050_
                                          (lambda (_L121156_ _L121157_)
                                            (let ((__tmp130608
                                                   (let ((__tmp130609
                                                          (let ((__tmp130610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L121156_ '()))))
                    (declare (not safe))
                    (cons _L121157_ __tmp130610))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130609
                                                           _bind121086_))))
                                              (declare (not safe))
                                              (_lp121081_
                                               _rest121106_
                                               _lift1121084_
                                               _lift2121085_
                                               __tmp130608)))))
                                     (let ((___match130072130073_
                                            (lambda (_e121116121181_
                                                     _hd121115121184_
                                                     _tl121114121186_
                                                     _e121119121189_
                                                     _hd121118121192_
                                                     _tl121117121194_
                                                     _e121122121197_
                                                     _hd121121121200_
                                                     _tl121120121202_)
                                              (let ((_L121205_
                                                     _hd121121121200_)
                                                    (_L121206_
                                                     _hd121118121192_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L121206_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L121205_)))
                                                    (___kont130047130048_
                                                     _L121205_
                                                     _L121206_)
                                                    (___kont130049130050_
                                                     _hd121121121200_
                                                     _hd121115121184_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130045130046_))
                                           (let ((_e121116121181_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130045130046_))))
                                             (let ((_tl121114121186_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121116121181_)))
                                                   (_hd121115121184_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121116121181_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121115121184_))
                                                   (let ((_e121119121189_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121115121184_))))
                                                     (let ((_tl121117121194_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121119121189_)))
                                                           (_hd121118121192_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121119121189_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121117121194_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121114121186_))
                       (let ((_e121122121197_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121114121186_))))
                         (let ((_tl121120121202_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121122121197_)))
                               (_hd121121121200_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121122121197_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121120121202_))
                               (___match130072130073_
                                _e121116121181_
                                _hd121115121184_
                                _tl121114121186_
                                _e121119121189_
                                _hd121118121192_
                                _tl121117121194_
                                _e121122121197_
                                _hd121121121200_
                                _tl121120121202_)
                               (let ()
                                 (declare (not safe))
                                 (_g121110121135_)))))
                       (let () (declare (not safe)) (_g121110121135_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121114121186_))
                       (let ((_e121130121148_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121114121186_))))
                         (let ((_tl121128121153_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121130121148_)))
                               (_hd121129121151_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121130121148_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121128121153_))
                               (___kont130049130050_
                                _hd121129121151_
                                _hd121115121184_)
                               (let ()
                                 (declare (not safe))
                                 (_g121110121135_)))))
                       (let () (declare (not safe)) (_g121110121135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121114121186_))
                                                       (let ((_e121130121148_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121114121186_))))
                 (let ((_tl121128121153_
                        (let () (declare (not safe)) (##cdr _e121130121148_)))
                       (_hd121129121151_
                        (let () (declare (not safe)) (##car _e121130121148_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121128121153_))
                       (___kont130049130050_ _hd121129121151_ _hd121115121184_)
                       (let () (declare (not safe)) (_g121110121135_)))))
               (let () (declare (not safe)) (_g121110121135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121110121135_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121087121095_))
                             (let ((_hd121092121458_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121087121095_)))
                                   (_tl121093121460_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121087121095_))))
                               (let* ((_hd121463_ _hd121092121458_)
                                      (_rest121465_ _tl121093121460_))
                                 (declare (not safe))
                                 (_K121091121455_ _rest121465_ _hd121463_)))
                             (let ()
                               (declare (not safe))
                               (_else121089121103_))))))))
          (let* ((___stx130089130090_ _stx120907_)
                 (_g120915120941_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130089130090_)))))
            (let ((___kont130091130092_
                   (lambda (_L121001_ _L121002_)
                     (let ((__tmp130612
                            (lambda ()
                              (if (let ((__tmp130639
                                         (let ((__tmp130640
                                                (lambda (_g121030121033_
                                                         _g121031121035_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g121030121033_
                                                          _g121031121035_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp130640
                                                   '()
                                                   _L121002_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?120911_
                                            __tmp130639))
                                  (let ((_g130626_
                                         (let ((__tmp130628
                                                (let ((__tmp130629
                                                       (lambda (_g121037121040_
                                                                _g121038121042_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121037121040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121038121042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130629
                                                          '()
                                                          _L121002_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings120912_
                                            __tmp130628))))
                                    (begin
                                      (let ((_g130627_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130626_)
                                                   (##vector-length _g130626_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130627_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130627_)))
                                      (let ((_lift1121045_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130626_ 0)))
                                            (_lift2121046_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130626_ 1)))
                                            (_hd121047_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130626_ 2))))
                                        (let* ((_expr121049_
                                                (let ((__tmp130630
                                                       (let ((__tmp130631
                                                              (let ((__tmp130632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L121001_ '()))))
                        (declare (not safe))
                        (cons _hd121047_ __tmp130632))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130630
                                                   _stx120907_)))
                                               (_expr121051_
                                                (let ((__tmp130633
                                                       (let ((__tmp130634
                                                              (let ((__tmp130635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121049_ '()))))
                        (declare (not safe))
                        (cons _lift2121046_ __tmp130635))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130633
                                                   _stx120907_)))
                                               (_expr121053_
                                                (let ((__tmp130636
                                                       (let ((__tmp130637
                                                              (let ((__tmp130638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121051_ '()))))
                        (declare (not safe))
                        (cons _lift1121045_ __tmp130638))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130636
                                                   _stx120907_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self120906_
                                             _expr121053_))))))
                                  (let ((_g130613_
                                         (let ((__tmp130615
                                                (let ((__tmp130616
                                                       (lambda (_g121055121058_
                                                                _g121056121060_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121055121058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121056121060_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130616
                                                          '()
                                                          _L121002_))))
                                           (declare (not safe))
                                           (_compile-bindings120910_
                                            __tmp130615))))
                                    (begin
                                      (let ((_g130614_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130613_)
                                                   (##vector-length _g130613_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130614_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130614_)))
                                      (let ((_lift1121063_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130613_ 0)))
                                            (_lift2121064_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130613_ 1)))
                                            (_hd121065_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130613_ 2))))
                                        (let* ((_body121067_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self120906_
                                                   _L121001_)))
                                               (_expr121069_
                                                (let ((__tmp130617
                                                       (let ((__tmp130618
                                                              (let ((__tmp130619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body121067_ '()))))
                        (declare (not safe))
                        (cons _hd121065_ __tmp130619))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130617
                                                   _stx120907_)))
                                               (_expr121071_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2121064_))
                                                    _expr121069_
                                                    (let ((__tmp130620
                                                           (let ((__tmp130621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130622
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121069_ '()))))
                            (declare (not safe))
                            (cons _lift2121064_ __tmp130622))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130621))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130620 _stx120907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr121073_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1121063_))
                                                    _expr121071_
                                                    (let ((__tmp130623
                                                           (let ((__tmp130624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130625
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121071_ '()))))
                            (declare (not safe))
                            (cons _lift1121063_ __tmp130625))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130624))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130623 _stx120907_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr121073_)))))))
                           (__tmp130611
                            (let ((__obj130306
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130306)
                              __obj130306)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130612
                        gx#current-expander-context
                        __tmp130611))))
                  (___kont130095130096_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120906_ _stx120907_)))))
              (let ((___match130116130117_
                     (lambda (_e120921120953_
                              _hd120920120956_
                              _tl120919120958_
                              _e120924120961_
                              _hd120923120964_
                              _tl120922120966_
                              ___splice130093130094_
                              _target120925120969_
                              _tl120927120971_)
                       (letrec ((_loop120928120974_
                                 (lambda (_hd120926120977_ _bind120932120979_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120926120977_))
                                       (let ((_e120929120982_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120926120977_))))
                                         (let ((_lp-tl120931120987_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120929120982_)))
                                               (_lp-hd120930120985_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120929120982_))))
                                           (let ((__tmp130643
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120930120985_
                                                          _bind120932120979_))))
                                             (declare (not safe))
                                             (_loop120928120974_
                                              _lp-tl120931120987_
                                              __tmp130643))))
                                       (let ((_bind120933120990_
                                              (reverse _bind120932120979_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120922120966_))
                                             (let ((_e120936120993_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120922120966_))))
                                               (let ((_tl120934120998_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120936120993_)))
                                                     (_hd120935120996_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120936120993_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120934120998_))
                                                     (let ((_L121001_
                                                            _hd120935120996_)
                                                           (_L121002_
                                                            _bind120933120990_))
                                                       (if (let ((__tmp130641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130642
                                 (lambda (_g121022121025_ _g121023121027_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g121022121025_ _g121023121027_)))))
                            (declare (not safe))
                            (foldr1 __tmp130642 '() _L121002_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130641))
                   (___kont130091130092_ _L121001_ _L121002_)
                   (___kont130095130096_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130095130096_))))
                                             (___kont130095130096_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120928120974_ _target120925120969_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130089130090_))
                    (let ((_e120921120953_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130089130090_))))
                      (let ((_tl120919120958_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120921120953_)))
                            (_hd120920120956_
                             (let ()
                               (declare (not safe))
                               (##car _e120921120953_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120919120958_))
                            (let ((_e120924120961_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120919120958_))))
                              (let ((_tl120922120966_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120924120961_)))
                                    (_hd120923120964_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120924120961_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120923120964_))
                                    (let ((___splice130093130094_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120923120964_
                                              '0))))
                                      (let ((_tl120927120971_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130093130094_
                                                '1)))
                                            (_target120925120969_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130093130094_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120927120971_))
                                            (___match130116130117_
                                             _e120921120953_
                                             _hd120920120956_
                                             _tl120919120958_
                                             _e120924120961_
                                             _hd120923120964_
                                             _tl120922120966_
                                             ___splice130093130094_
                                             _target120925120969_
                                             _tl120927120971_)
                                            (___kont130095130096_))))
                                    (___kont130095130096_))))
                            (___kont130095130096_))))
                    (___kont130095130096_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self120049_ _stx120050_)
        (letrec* ((_bind-e__128212128213_
                   (lambda (_id120890_ _expr120891_ _compile?120892_)
                     (let ((__tmp130646
                            (let ()
                              (declare (not safe))
                              (cons _id120890_ '())))
                           (__tmp130644
                            (let ((__tmp130645
                                   (if _compile?120892_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120049_
                                          _expr120891_))
                                       _expr120891_)))
                              (declare (not safe))
                              (cons __tmp130645 '()))))
                       (declare (not safe))
                       (cons __tmp130646 __tmp130644))))
                  (_bind-e__0__128214128215_
                   (lambda (_id120897_ _expr120898_)
                     (let ((_compile?120900_ '#t))
                       (declare (not safe))
                       (_bind-e__128212128213_
                        _id120897_
                        _expr120898_
                        _compile?120900_))))
                  (_bind-e120052_
                   (lambda _g130648_
                     (let ((_g130647_
                            (let ()
                              (declare (not safe))
                              (##length _g130648_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130647_ 2))
                              (apply (lambda (_id120897_ _expr120898_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128214128215_
                                          _id120897_
                                          _expr120898_)))
                                     _g130648_))
                             ((let () (declare (not safe)) (##fx= _g130647_ 3))
                              (apply (lambda (_id120902_
                                              _expr120903_
                                              _compile?120904_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128212128213_
                                          _id120902_
                                          _expr120903_
                                          _compile?120904_)))
                                     _g130648_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130648_))))))
                  (_compile-bindings120053_
                   (lambda (_rest120188_)
                     (let _lp120190_ ((_rest120192_ _rest120188_)
                                      (_bind120193_ '()))
                       (let* ((_rest120194120202_ _rest120192_)
                              (_else120196120210_
                               (lambda () (reverse _bind120193_)))
                              (_K120198120877_
                               (lambda (_rest120213_ _hd120214_)
                                 (let* ((___stx130139130140_ _hd120214_)
                                        (_g120219120266_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130139130140_)))))
                                   (let ((___kont130141130142_
                                          (lambda (_L120784_ _L120785_)
                                            (let* ((___stx130119130120_
                                                    _L120784_)
                                                   (_g120800120814_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130119130120_)))))
                                              (let ((___kont130121130122_
                                                     (lambda (_L120862_)
                                                       (let ((__tmp130649
                                                              (let ((__tmp130650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128212128213_
                                _L120785_
                                _L120784_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130650 _bind120193_))))
                 (declare (not safe))
                 (_lp120190_ _rest120213_ __tmp130649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130123130124_
                                                     (lambda (_L120827_)
                                                       (let ((_g130651_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120050_
                         _L120785_
                         _L120827_
                         '#t))))
                 (begin
                   (let ((_g130652_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130651_)
                                (##vector-length _g130651_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130652_ 3)))
                         (error "Context expects 3 values" _g130652_)))
                   (let ((_ids120837_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130651_ 0)))
                         (_impls120838_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130651_ 1)))
                         (_clauses120839_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130651_ 2))))
                     (let* ((_g130653_
                             (for-each gx#core-bind-runtime! _ids120837_))
                            (_xbind120842_
                             (map _bind-e120052_ _ids120837_ _impls120838_))
                            (_expr*120844_
                             (let ((__tmp130655
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120839_)))
                                   (__tmp130654
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130655
                                __tmp130654)))
                            (_bind*120846_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128212128213_
                                _L120785_
                                _expr*120844_
                                '#f))))
                       (let ((__tmp130657
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120785_)))
                             (__tmp130656
                              (map gxc#identifier-symbol _ids120837_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130657
                          '" => "
                          __tmp130656))
                       (let ((__tmp130658
                              (let ((__tmp130659
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind120193_
                                               _xbind120842_))))
                                (declare (not safe))
                                (cons _bind*120846_ __tmp130659))))
                         (declare (not safe))
                         (_lp120190_ _rest120213_ __tmp130658)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130130130131_
                                                       (lambda (_e120805120854_
                                                                _hd120804120857_
                                                                _tl120803120859_)
                                                         (let ((_L120862_
                                                                _tl120803120859_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120862_))
                       (___kont130121130122_ _L120862_)
                       (___kont130123130124_ _tl120803120859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130119130120_))
                                                      (let ((_e120805120854_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130119130120_))))
                (let ((_tl120803120859_
                       (let () (declare (not safe)) (##cdr _e120805120854_)))
                      (_hd120804120857_
                       (let () (declare (not safe)) (##car _e120805120854_))))
                  (___match130130130131_
                   _e120805120854_
                   _hd120804120857_
                   _tl120803120859_)))
              (let () (declare (not safe)) (_g120800120814_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130143130144_
                                          (lambda (_L120612_ _L120613_)
                                            (let* ((_g120627120657_
                                                    (lambda (_g120628120654_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120628120654_))))
                                                   (_g120626120752_
                                                    (lambda (_g120628120660_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120628120660_))
                                                          (let ((_e120634120662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120628120660_))))
                    (let ((_hd120633120665_
                           (let ()
                             (declare (not safe))
                             (##car _e120634120662_)))
                          (_tl120632120667_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120634120662_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120632120667_))
                          (let ((_e120637120670_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120632120667_))))
                            (let ((_hd120636120673_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120637120670_)))
                                  (_tl120635120675_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120637120670_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120636120673_))
                                  (let ((_e120640120678_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120636120673_))))
                                    (let ((_hd120639120681_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120640120678_)))
                                          (_tl120638120683_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120640120678_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120639120681_))
                                          (let ((_e120643120686_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120639120681_))))
                                            (let ((_hd120642120689_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120643120686_)))
                                                  (_tl120641120691_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120643120686_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120642120689_))
                                                  (let ((_e120646120694_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120642120689_))))
                                                    (let ((_hd120645120697_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120646120694_)))
                                                          (_tl120644120699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120646120694_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120644120699_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120641120691_))
                      (let ((_e120649120702_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120641120691_))))
                        (let ((_hd120648120705_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120649120702_)))
                              (_tl120647120707_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120649120702_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120647120707_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120638120683_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120635120675_))
                                      (let ((_e120652120710_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120635120675_))))
                                        (let ((_hd120651120713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120652120710_)))
                                              (_tl120650120715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120652120710_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120650120715_))
                                              ((lambda (_L120718_
                                                        _L120719_
                                                        _L120720_)
                                                 (let* ((_lambda-id120744_
                                                         (let ((__tmp130661
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120613_)))
                       (__tmp130660 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130661 __tmp130660)))
                (_lambda-id120746_
                 (let ((__tmp130662
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120050_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120744_ __tmp130662)))
                (_g130663_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120746_)))
                (_new-case-lambda-expr120749_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120718_
                    'id:
                    _L120720_
                    'new-id:
                    _lambda-id120746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130665
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120613_)))
                                                         (__tmp130664
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120746_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130665
                                                      '" => "
                                                      __tmp130664))
                                                   (let ((__tmp130668
                                                          (let ((__tmp130669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128212128213_
                            _L120613_
                            _new-case-lambda-expr120749_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130669 _rest120213_)))
                 (__tmp130666
                  (let ((__tmp130667
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128214128215_
                            _lambda-id120746_
                            _L120719_))))
                    (declare (not safe))
                    (cons __tmp130667 _bind120193_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120190_
                                                      __tmp130668
                                                      __tmp130666))))
                                               _hd120651120713_
                                               _hd120648120705_
                                               _hd120645120697_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120627120657_
                                                 _g120628120660_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120627120657_ _g120628120660_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120627120657_ _g120628120660_)))
                              (let ()
                                (declare (not safe))
                                (_g120627120657_ _g120628120660_)))))
                      (let ()
                        (declare (not safe))
                        (_g120627120657_ _g120628120660_)))
                  (let ()
                    (declare (not safe))
                    (_g120627120657_ _g120628120660_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120627120657_
                                                     _g120628120660_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120627120657_
                                             _g120628120660_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120627120657_ _g120628120660_)))))
                          (let ()
                            (declare (not safe))
                            (_g120627120657_ _g120628120660_)))))
                  (let ()
                    (declare (not safe))
                    (_g120627120657_ _g120628120660_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120626120752_ _L120612_))))
                                         (___kont130145130146_
                                          (lambda (_L120336_ _L120337_)
                                            (let* ((_g120351120404_
                                                    (lambda (_g120352120401_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120352120401_))))
                                                   (_g120350120580_
                                                    (lambda (_g120352120407_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120352120407_))
                                                          (let ((_e120360120409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120352120407_))))
                    (let ((_hd120359120412_
                           (let ()
                             (declare (not safe))
                             (##car _e120360120409_)))
                          (_tl120358120414_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120360120409_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120358120414_))
                          (let ((_e120363120417_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120358120414_))))
                            (let ((_hd120362120420_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120363120417_)))
                                  (_tl120361120422_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120363120417_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120362120420_))
                                  (let ((_e120366120425_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120362120420_))))
                                    (let ((_hd120365120428_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120366120425_)))
                                          (_tl120364120430_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120366120425_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120365120428_))
                                          (let ((_e120369120433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120365120428_))))
                                            (let ((_hd120368120436_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120369120433_)))
                                                  (_tl120367120438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120369120433_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120368120436_))
                                                  (let ((_e120372120441_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120368120436_))))
                                                    (let ((_hd120371120444_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120372120441_)))
                                                          (_tl120370120446_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120372120441_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120370120446_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120367120438_))
                      (let ((_e120375120449_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120367120438_))))
                        (let ((_hd120374120452_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120375120449_)))
                              (_tl120373120454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120375120449_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120374120452_))
                              (let ((_e120378120457_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120374120452_))))
                                (let ((_hd120377120460_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120378120457_)))
                                      (_tl120376120462_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120378120457_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120376120462_))
                                      (let ((_e120381120465_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120376120462_))))
                                        (let ((_hd120380120468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120381120465_)))
                                              (_tl120379120470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120381120465_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120380120468_))
                                              (let ((_e120384120473_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120380120468_))))
                                                (let ((_hd120383120476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120384120473_)))
                                                      (_tl120382120478_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120384120473_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120383120476_))
                                                      (let ((_e120387120481_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120383120476_))))
                (let ((_hd120386120484_
                       (let () (declare (not safe)) (##car _e120387120481_)))
                      (_tl120385120486_
                       (let () (declare (not safe)) (##cdr _e120387120481_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120386120484_))
                      (let ((_e120390120489_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120386120484_))))
                        (let ((_hd120389120492_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120390120489_)))
                              (_tl120388120494_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120390120489_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120388120494_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120385120486_))
                                  (let ((_e120393120497_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120385120486_))))
                                    (let ((_hd120392120500_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120393120497_)))
                                          (_tl120391120502_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120393120497_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120391120502_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120382120478_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120379120470_))
                                                  (let ((_e120396120505_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120379120470_))))
                                                    (let ((_hd120395120508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120396120505_)))
                                                          (_tl120394120510_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120396120505_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120394120510_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120373120454_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120364120430_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120361120422_))
                              (let ((_e120399120513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120361120422_))))
                                (let ((_hd120398120516_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120399120513_)))
                                      (_tl120397120518_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120399120513_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120397120518_))
                                      ((lambda (_L120521_
                                                _L120522_
                                                _L120523_
                                                _L120524_
                                                _L120525_)
                                         (let* ((_get-kws-id120565_
                                                 (let ((__tmp130671
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120337_)))
                                                       (__tmp130670
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130671
                                                    __tmp130670)))
                                                (_get-kws-id120567_
                                                 (let ((__tmp130672
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120050_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120565_
                                                    __tmp130672)))
                                                (_main-id120569_
                                                 (let ((__tmp130674
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120337_)))
                                                       (__tmp130673
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130674
                                                    __tmp130673)))
                                                (_main-id120571_
                                                 (let ((__tmp130675
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120050_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120569_
                                                    __tmp130675)))
                                                (_g130676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120567_)))
                                                (_g130677_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120571_)))
                                                (_new-kw-dispatch120575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120521_
                                                    'id:
                                                    _L120525_
                                                    'new-id:
                                                    _get-kws-id120567_)))
                                                (_new-get-kws120577_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120522_
                                                    'id:
                                                    _L120524_
                                                    'new-id:
                                                    _main-id120571_))))
                                           (let ((__tmp130680
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120337_)))
                                                 (__tmp130679
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120567_)))
                                                 (__tmp130678
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120571_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130680
                                              '" => "
                                              __tmp130679
                                              '" => "
                                              __tmp130678))
                                           (let ((__tmp130681
                                                  (let ((__tmp130686
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128212128213_
                                                            _main-id120571_
                                                            _L120523_
                                                            '#f)))
                                                        (__tmp130682
                                                         (let ((__tmp130685
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__128212128213_
                           _get-kws-id120567_
                           _new-get-kws120577_
                           '#f)))
                       (__tmp130683
                        (let ((__tmp130684
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__128212128213_
                                  _L120337_
                                  _new-kw-dispatch120575_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp130684 _rest120213_))))
                   (declare (not safe))
                   (cons __tmp130685 __tmp130683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130686
                                                          __tmp130682))))
                                             (declare (not safe))
                                             (_lp120190_
                                              __tmp130681
                                              _bind120193_))))
                                       _hd120398120516_
                                       _hd120395120508_
                                       _hd120392120500_
                                       _hd120389120492_
                                       _hd120371120444_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120351120404_ _g120352120407_)))))
                              (let ()
                                (declare (not safe))
                                (_g120351120404_ _g120352120407_)))
                          (let ()
                            (declare (not safe))
                            (_g120351120404_ _g120352120407_)))
                      (let ()
                        (declare (not safe))
                        (_g120351120404_ _g120352120407_)))
                  (let ()
                    (declare (not safe))
                    (_g120351120404_ _g120352120407_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120351120404_
                                                     _g120352120407_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120351120404_
                                                 _g120352120407_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120351120404_
                                             _g120352120407_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120351120404_ _g120352120407_)))
                              (let ()
                                (declare (not safe))
                                (_g120351120404_ _g120352120407_)))))
                      (let ()
                        (declare (not safe))
                        (_g120351120404_ _g120352120407_)))))
              (let ()
                (declare (not safe))
                (_g120351120404_ _g120352120407_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120351120404_
                                                 _g120352120407_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120351120404_ _g120352120407_)))))
                              (let ()
                                (declare (not safe))
                                (_g120351120404_ _g120352120407_)))))
                      (let ()
                        (declare (not safe))
                        (_g120351120404_ _g120352120407_)))
                  (let ()
                    (declare (not safe))
                    (_g120351120404_ _g120352120407_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120351120404_
                                                     _g120352120407_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120351120404_
                                             _g120352120407_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120351120404_ _g120352120407_)))))
                          (let ()
                            (declare (not safe))
                            (_g120351120404_ _g120352120407_)))))
                  (let ()
                    (declare (not safe))
                    (_g120351120404_ _g120352120407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120350120580_ _L120336_))))
                                         (___kont130147130148_
                                          (lambda (_L120287_ _L120288_)
                                            (let ((__tmp130687
                                                   (let ((__tmp130688
                                                          (let ((__tmp130689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130690
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120049_ _L120287_))))
                           (declare (not safe))
                           (cons __tmp130690 '()))))
                    (declare (not safe))
                    (cons _L120288_ __tmp130689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130688
                                                           _bind120193_))))
                                              (declare (not safe))
                                              (_lp120190_
                                               _rest120213_
                                               __tmp130687)))))
                                     (let* ((___match130214130215_
                                             (lambda (_e120247120312_
                                                      _hd120246120315_
                                                      _tl120245120317_
                                                      _e120250120320_
                                                      _hd120249120323_
                                                      _tl120248120325_
                                                      _e120253120328_
                                                      _hd120252120331_
                                                      _tl120251120333_)
                                               (let ((_L120336_
                                                      _hd120252120331_)
                                                     (_L120337_
                                                      _hd120249120323_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120337_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L120336_)))
                                                     (___kont130145130146_
                                                      _L120336_
                                                      _L120337_)
                                                     (___kont130147130148_
                                                      _hd120252120331_
                                                      _hd120246120315_)))))
                                            (___match130192130193_
                                             (lambda (_e120236120588_
                                                      _hd120235120591_
                                                      _tl120234120593_
                                                      _e120239120596_
                                                      _hd120238120599_
                                                      _tl120237120601_
                                                      _e120242120604_
                                                      _hd120241120607_
                                                      _tl120240120609_)
                                               (let ((_L120612_
                                                      _hd120241120607_)
                                                     (_L120613_
                                                      _hd120238120599_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120613_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120612_)))
                                                     (___kont130143130144_
                                                      _L120612_
                                                      _L120613_)
                                                     (___match130214130215_
                                                      _e120236120588_
                                                      _hd120235120591_
                                                      _tl120234120593_
                                                      _e120239120596_
                                                      _hd120238120599_
                                                      _tl120237120601_
                                                      _e120242120604_
                                                      _hd120241120607_
                                                      _tl120240120609_)))))
                                            (___match130170130171_
                                             (lambda (_e120225120760_
                                                      _hd120224120763_
                                                      _tl120223120765_
                                                      _e120228120768_
                                                      _hd120227120771_
                                                      _tl120226120773_
                                                      _e120231120776_
                                                      _hd120230120779_
                                                      _tl120229120781_)
                                               (let ((_L120784_
                                                      _hd120230120779_)
                                                     (_L120785_
                                                      _hd120227120771_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120785_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120784_)))
                                                     (___kont130141130142_
                                                      _L120784_
                                                      _L120785_)
                                                     (___match130192130193_
                                                      _e120225120760_
                                                      _hd120224120763_
                                                      _tl120223120765_
                                                      _e120228120768_
                                                      _hd120227120771_
                                                      _tl120226120773_
                                                      _e120231120776_
                                                      _hd120230120779_
                                                      _tl120229120781_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130139130140_))
                                           (let ((_e120225120760_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130139130140_))))
                                             (let ((_tl120223120765_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120225120760_)))
                                                   (_hd120224120763_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120225120760_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120224120763_))
                                                   (let ((_e120228120768_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120224120763_))))
                                                     (let ((_tl120226120773_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120228120768_)))
                                                           (_hd120227120771_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120228120768_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120226120773_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120223120765_))
                       (let ((_e120231120776_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120223120765_))))
                         (let ((_tl120229120781_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120231120776_)))
                               (_hd120230120779_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120231120776_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120229120781_))
                               (___match130170130171_
                                _e120225120760_
                                _hd120224120763_
                                _tl120223120765_
                                _e120228120768_
                                _hd120227120771_
                                _tl120226120773_
                                _e120231120776_
                                _hd120230120779_
                                _tl120229120781_)
                               (let ()
                                 (declare (not safe))
                                 (_g120219120266_)))))
                       (let () (declare (not safe)) (_g120219120266_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120223120765_))
                       (let ((_e120261120279_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120223120765_))))
                         (let ((_tl120259120284_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120261120279_)))
                               (_hd120260120282_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120261120279_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120259120284_))
                               (___kont130147130148_
                                _hd120260120282_
                                _hd120224120763_)
                               (let ()
                                 (declare (not safe))
                                 (_g120219120266_)))))
                       (let () (declare (not safe)) (_g120219120266_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120223120765_))
                                                       (let ((_e120261120279_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120223120765_))))
                 (let ((_tl120259120284_
                        (let () (declare (not safe)) (##cdr _e120261120279_)))
                       (_hd120260120282_
                        (let () (declare (not safe)) (##car _e120261120279_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120259120284_))
                       (___kont130147130148_ _hd120260120282_ _hd120224120763_)
                       (let () (declare (not safe)) (_g120219120266_)))))
               (let () (declare (not safe)) (_g120219120266_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120219120266_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120194120202_))
                             (let ((_hd120199120880_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120194120202_)))
                                   (_tl120200120882_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120194120202_))))
                               (let* ((_hd120885_ _hd120199120880_)
                                      (_rest120887_ _tl120200120882_))
                                 (declare (not safe))
                                 (_K120198120877_ _rest120887_ _hd120885_)))
                             (let ()
                               (declare (not safe))
                               (_else120196120210_))))))))
          (let* ((___stx130231130232_ _stx120050_)
                 (_g120056120083_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130231130232_)))))
            (let ((___kont130233130234_
                   (lambda (_L120143_ _L120144_ _L120145_)
                     (let ((__tmp130692
                            (lambda ()
                              (let ((_hd120182_
                                     (let ((__tmp130693
                                            (let ((__tmp130694
                                                   (lambda (_g120174120177_
                                                            _g120175120179_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g120174120177_
                                                             _g120175120179_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130694
                                                      '()
                                                      _L120144_))))
                                       (declare (not safe))
                                       (_compile-bindings120053_ __tmp130693)))
                                    (_body120183_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120049_
                                        _L120143_))))
                                (let ((__tmp130695
                                       (let ((__tmp130696
                                              (let ((__tmp130697
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body120183_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd120182_
                                                      __tmp130697))))
                                         (declare (not safe))
                                         (cons _L120145_ __tmp130696))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp130695
                                   _stx120050_)))))
                           (__tmp130691
                            (let ((__obj130307
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130307)
                              __obj130307)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130692
                        gx#current-expander-context
                        __tmp130691))))
                  (___kont130237130238_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120049_ _stx120050_)))))
              (let ((___match130258130259_
                     (lambda (_e120063120095_
                              _hd120062120098_
                              _tl120061120100_
                              _e120066120103_
                              _hd120065120106_
                              _tl120064120108_
                              ___splice130235130236_
                              _target120067120111_
                              _tl120069120113_)
                       (letrec ((_loop120070120116_
                                 (lambda (_hd120068120119_ _bind120074120121_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120068120119_))
                                       (let ((_e120071120124_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120068120119_))))
                                         (let ((_lp-tl120073120129_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120071120124_)))
                                               (_lp-hd120072120127_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120071120124_))))
                                           (let ((__tmp130700
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120072120127_
                                                          _bind120074120121_))))
                                             (declare (not safe))
                                             (_loop120070120116_
                                              _lp-tl120073120129_
                                              __tmp130700))))
                                       (let ((_bind120075120132_
                                              (reverse _bind120074120121_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120064120108_))
                                             (let ((_e120078120135_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120064120108_))))
                                               (let ((_tl120076120140_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120078120135_)))
                                                     (_hd120077120138_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120078120135_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120076120140_))
                                                     (let ((_L120143_
                                                            _hd120077120138_)
                                                           (_L120144_
                                                            _bind120075120132_)
                                                           (_L120145_
                                                            _hd120062120098_))
                                                       (if (let ((__tmp130698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130699
                                 (lambda (_g120166120169_ _g120167120171_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120166120169_ _g120167120171_)))))
                            (declare (not safe))
                            (foldr1 __tmp130699 '() _L120144_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130698))
                   (___kont130233130234_ _L120143_ _L120144_ _L120145_)
                   (___kont130237130238_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130237130238_))))
                                             (___kont130237130238_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120070120116_ _target120067120111_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130231130232_))
                    (let ((_e120063120095_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130231130232_))))
                      (let ((_tl120061120100_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120063120095_)))
                            (_hd120062120098_
                             (let ()
                               (declare (not safe))
                               (##car _e120063120095_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120061120100_))
                            (let ((_e120066120103_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120061120100_))))
                              (let ((_tl120064120108_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120066120103_)))
                                    (_hd120065120106_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120066120103_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120065120106_))
                                    (let ((___splice130235130236_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120065120106_
                                              '0))))
                                      (let ((_tl120069120113_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130235130236_
                                                '1)))
                                            (_target120067120111_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130235130236_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120069120113_))
                                            (___match130258130259_
                                             _e120063120095_
                                             _hd120062120098_
                                             _tl120061120100_
                                             _e120066120103_
                                             _hd120065120106_
                                             _tl120064120108_
                                             ___splice130235130236_
                                             _target120067120111_
                                             _tl120069120113_)
                                            (___kont130237130238_))))
                                    (___kont130237130238_))))
                            (___kont130237130238_))))
                    (___kont130237130238_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind119967_)
        (let* ((___stx130261130262_ _bind119967_)
               (_g119970119987_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx130261130262_)))))
          (let ((___kont130263130264_
                 (lambda (_L120023_ _L120024_)
                   (if (let () (declare (not safe)) (gx#identifier? _L120024_))
                       (let ((_$e120040_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L120023_))))
                         (if _$e120040_
                             _$e120040_
                             (let ((_$e120043_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L120023_))))
                               (if _$e120043_
                                   _$e120043_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120023_))))))
                       '#f)))
                (___kont130265130266_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx130261130262_))
                (let ((_e119976119999_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx130261130262_))))
                  (let ((_tl119974120004_
                         (let () (declare (not safe)) (##cdr _e119976119999_)))
                        (_hd119975120002_
                         (let ()
                           (declare (not safe))
                           (##car _e119976119999_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd119975120002_))
                        (let ((_e119979120007_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd119975120002_))))
                          (let ((_tl119977120012_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e119979120007_)))
                                (_hd119978120010_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e119979120007_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl119977120012_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl119974120004_))
                                    (let ((_e119982120015_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl119974120004_))))
                                      (let ((_tl119980120020_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119982120015_)))
                                            (_hd119981120018_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119982120015_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119980120020_))
                                            (___kont130263130264_
                                             _hd119981120018_
                                             _hd119978120010_)
                                            (___kont130265130266_))))
                                    (___kont130265130266_))
                                (___kont130265130266_))))
                        (___kont130265130266_))))
                (___kont130265130266_))))))))
