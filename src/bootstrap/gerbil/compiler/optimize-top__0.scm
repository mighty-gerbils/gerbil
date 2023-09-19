(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1695117617)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl31177_ (make-table 'test: eq?)))
           (hash-copy! _tbl31177_ (force gxc#&void))
           (table-set! _tbl31177_ '%#begin gxc#collect-begin%)
           (table-set! _tbl31177_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl31177_ '%#module gxc#collect-module%)
           (table-set!
            _tbl31177_
            '%#define-values
            gxc#collect-top-level-type-define-values%)
           _tbl31177_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx31170_ . _args31172_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx31170_ _args31172_))
         gxc#current-compile-methods
         (force gxc#&collect-top-level-type-info))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl31167_ (make-table 'test: eq?)))
           (hash-copy! _tbl31167_ (force gxc#&false))
           (table-set! _tbl31167_ '%#call gxc#basic-expression-type-call%)
           _tbl31167_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx31160_ . _args31162_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx31160_ _args31162_))
         gxc#current-compile-methods
         (force gxc#&basic-expression-top-level-type))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl31157_ (make-table 'test: eq?)))
           (hash-copy! _tbl31157_ (force gxc#&void))
           (table-set! _tbl31157_ '%#begin gxc#collect-begin%)
           (table-set! _tbl31157_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl31157_ '%#module gxc#collect-module%)
           (table-set!
            _tbl31157_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl31157_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl31157_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl31157_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl31157_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl31157_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl31157_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl31157_ '%#call gxc#collect-type-call%)
           (table-set! _tbl31157_ '%#if gxc#collect-operands)
           (table-set! _tbl31157_ '%#set! gxc#collect-body-setq%)
           _tbl31157_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx31150_ . _args31152_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx31150_ _args31152_))
         gxc#current-compile-methods
         (force gxc#&collect-type-info))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl31147_ (make-table 'test: eq?)))
           (hash-copy! _tbl31147_ (force gxc#&false))
           (table-set! _tbl31147_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl31147_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl31147_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl31147_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set!
            _tbl31147_
            '%#let-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl31147_
            '%#letrec-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl31147_
            '%#letrec*-values
            gxc#basic-expression-type-let-values%)
           (table-set! _tbl31147_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl31147_ '%#ref gxc#basic-expression-type-ref%)
           _tbl31147_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx31140_ . _args31142_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx31140_ _args31142_))
         gxc#current-compile-methods
         (force gxc#&basic-expression-type))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl31137_ (make-table 'test: eq?)))
           (hash-copy! _tbl31137_ (force gxc#&basic-xform))
           (table-set!
            _tbl31137_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl31137_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl31137_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl31137_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl31137_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx31130_ . _args31132_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx31130_ _args31132_))
         gxc#current-compile-methods
         (force gxc#&lift-top-lambdas))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx31033_)
        (let* ((___stx3119031191_ _stx31033_)
               (_g3103631056_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3119031191_))))
          (let ((___kont3119231193_
                 (lambda (_L31100_ _L31101_)
                   (let ((_sym31119_ (gxc#identifier-symbol _L31101_)))
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym31119_
                          '#f)
                         (gxc#verbose
                          '"skipping type inference for mutable binding "
                          _sym31119_)
                         (let ((_type3112031122_
                                (gxc#apply-basic-expression-top-level-type
                                 _L31100_)))
                           (if _type3112031122_
                               (let ((_type31125_ _type3112031122_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym31119_
                                  _type31125_))
                               '#f))))))
                (___kont3119431195_ (lambda () '#!void)))
            (let ((___match3122331224_
                   (lambda (_e3104031068_
                            _hd3104131071_
                            _tl3104231073_
                            _e3104331076_
                            _hd3104431079_
                            _tl3104531081_
                            _e3104631084_
                            _hd3104731087_
                            _tl3104831089_
                            _e3104931092_
                            _hd3105031095_
                            _tl3105131097_)
                     (let ((_L31100_ _hd3105031095_) (_L31101_ _hd3104731087_))
                       (if (gx#identifier? _L31101_)
                           (___kont3119231193_ _L31100_ _L31101_)
                           (___kont3119431195_))))))
              (if (gx#stx-pair? ___stx3119031191_)
                  (let ((_e3104031068_ (gx#stx-e ___stx3119031191_)))
                    (let ((_tl3104231073_
                           (let () (declare (not safe)) (##cdr _e3104031068_)))
                          (_hd3104131071_
                           (let ()
                             (declare (not safe))
                             (##car _e3104031068_))))
                      (if (gx#stx-pair? _tl3104231073_)
                          (let ((_e3104331076_ (gx#stx-e _tl3104231073_)))
                            (let ((_tl3104531081_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3104331076_)))
                                  (_hd3104431079_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3104331076_))))
                              (if (gx#stx-pair? _hd3104431079_)
                                  (let ((_e3104631084_
                                         (gx#stx-e _hd3104431079_)))
                                    (let ((_tl3104831089_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3104631084_)))
                                          (_hd3104731087_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3104631084_))))
                                      (if (gx#stx-null? _tl3104831089_)
                                          (if (gx#stx-pair? _tl3104531081_)
                                              (let ((_e3104931092_
                                                     (gx#stx-e
                                                      _tl3104531081_)))
                                                (let ((_tl3105131097_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3104931092_)))
                                                      (_hd3105031095_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3104931092_))))
                                                  (if (gx#stx-null?
                                                       _tl3105131097_)
                                                      (___match3122331224_
                                                       _e3104031068_
                                                       _hd3104131071_
                                                       _tl3104231073_
                                                       _e3104331076_
                                                       _hd3104431079_
                                                       _tl3104531081_
                                                       _e3104631084_
                                                       _hd3104731087_
                                                       _tl3104831089_
                                                       _e3104931092_
                                                       _hd3105031095_
                                                       _tl3105131097_)
                                                      (___kont3119431195_))))
                                              (___kont3119431195_))
                                          (___kont3119431195_))))
                                  (___kont3119431195_))))
                          (___kont3119431195_))))
                  (___kont3119431195_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx30889_)
        (let* ((___stx3122631227_ _stx30889_)
               (_g3089230923_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3122631227_))))
          (let ((___kont3122831229_
                 (lambda (_L31005_ _L31006_)
                   (let ((_sym31022_ (gxc#identifier-symbol _L31006_)))
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym31022_
                          '#f)
                         (gxc#verbose
                          '"skipping type inference for mutable binding "
                          _sym31022_)
                         (if (gxc#optimizer-lookup-type _sym31022_)
                             (gxc#verbose
                              '"skipping type inference for already declared type "
                              _sym31022_)
                             (let ((_type3102331025_
                                    (gxc#apply-basic-expression-type
                                     _L31005_)))
                               (if _type3102331025_
                                   (let ((_type31028_ _type3102331025_))
                                     (gxc#optimizer-declare-type!__0
                                      _sym31022_
                                      _type31028_))
                                   '#f))))
                     (gxc#compile-e _L31005_))))
                (___kont3123031231_
                 (lambda (_L30952_ _L30953_) (gxc#compile-e _L30952_))))
            (let ((___match3125931260_
                   (lambda (_e3089630973_
                            _hd3089730976_
                            _tl3089830978_
                            _e3089930981_
                            _hd3090030984_
                            _tl3090130986_
                            _e3090230989_
                            _hd3090330992_
                            _tl3090430994_
                            _e3090530997_
                            _hd3090631000_
                            _tl3090731002_)
                     (let ((_L31005_ _hd3090631000_) (_L31006_ _hd3090330992_))
                       (if (gx#identifier? _L31006_)
                           (___kont3122831229_ _L31005_ _L31006_)
                           (___kont3123031231_
                            _hd3090631000_
                            _hd3090030984_))))))
              (if (gx#stx-pair? ___stx3122631227_)
                  (let ((_e3089630973_ (gx#stx-e ___stx3122631227_)))
                    (let ((_tl3089830978_
                           (let () (declare (not safe)) (##cdr _e3089630973_)))
                          (_hd3089730976_
                           (let ()
                             (declare (not safe))
                             (##car _e3089630973_))))
                      (if (gx#stx-pair? _tl3089830978_)
                          (let ((_e3089930981_ (gx#stx-e _tl3089830978_)))
                            (let ((_tl3090130986_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3089930981_)))
                                  (_hd3090030984_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3089930981_))))
                              (if (gx#stx-pair? _hd3090030984_)
                                  (let ((_e3090230989_
                                         (gx#stx-e _hd3090030984_)))
                                    (let ((_tl3090430994_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3090230989_)))
                                          (_hd3090330992_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3090230989_))))
                                      (if (gx#stx-null? _tl3090430994_)
                                          (if (gx#stx-pair? _tl3090130986_)
                                              (let ((_e3090530997_
                                                     (gx#stx-e
                                                      _tl3090130986_)))
                                                (let ((_tl3090731002_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3090530997_)))
                                                      (_hd3090631000_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3090530997_))))
                                                  (if (gx#stx-null?
                                                       _tl3090731002_)
                                                      (___match3125931260_
                                                       _e3089630973_
                                                       _hd3089730976_
                                                       _tl3089830978_
                                                       _e3089930981_
                                                       _hd3090030984_
                                                       _tl3090130986_
                                                       _e3090230989_
                                                       _hd3090330992_
                                                       _tl3090430994_
                                                       _e3090530997_
                                                       _hd3090631000_
                                                       _tl3090731002_)
                                                      (_g3089230923_))))
                                              (_g3089230923_))
                                          (if (gx#stx-pair? _tl3090130986_)
                                              (let ((_e3091630944_
                                                     (gx#stx-e
                                                      _tl3090130986_)))
                                                (let ((_tl3091830949_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3091630944_)))
                                                      (_hd3091730947_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3091630944_))))
                                                  (if (gx#stx-null?
                                                       _tl3091830949_)
                                                      (___kont3123031231_
                                                       _hd3091730947_
                                                       _hd3090030984_)
                                                      (_g3089230923_))))
                                              (_g3089230923_)))))
                                  (if (gx#stx-pair? _tl3090130986_)
                                      (let ((_e3091630944_
                                             (gx#stx-e _tl3090130986_)))
                                        (let ((_tl3091830949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3091630944_)))
                                              (_hd3091730947_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3091630944_))))
                                          (if (gx#stx-null? _tl3091830949_)
                                              (___kont3123031231_
                                               _hd3091730947_
                                               _hd3090030984_)
                                              (_g3089230923_))))
                                      (_g3089230923_)))))
                          (_g3089230923_))))
                  (_g3089230923_)))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx30674_)
        (letrec ((_collect-e30676_
                  (lambda (_hd30833_ _expr30834_)
                    (let* ((___stx3128231283_ _hd30833_)
                           (_g3083730847_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3128231283_))))
                      (let ((___kont3128431285_
                             (lambda (_L30867_)
                               (let ((_sym30878_
                                      (gxc#identifier-symbol _L30867_)))
                                 (if (table-ref
                                      (gxc#current-compile-mutators)
                                      _sym30878_
                                      '#f)
                                     (gxc#verbose
                                      '"skipping type declaration for mutable binding "
                                      _sym30878_)
                                     (let ((_type3087930881_
                                            (gxc#apply-basic-expression-type
                                             _expr30834_)))
                                       (if _type3087930881_
                                           (let ((_type30884_
                                                  _type3087930881_))
                                             (gxc#optimizer-declare-type!__%
                                              _sym30878_
                                              _type30884_
                                              '#t))
                                           '#f))))))
                            (___kont3128631287_ (lambda () '#!void)))
                        (let ((___match3129531296_
                               (lambda (_e3084030859_
                                        _hd3084130862_
                                        _tl3084230864_)
                                 (let ((_L30867_ _hd3084130862_))
                                   (if (gx#identifier? _L30867_)
                                       (___kont3128431285_ _L30867_)
                                       (___kont3128631287_))))))
                          (if (gx#stx-pair? ___stx3128231283_)
                              (let ((_e3084030859_
                                     (gx#stx-e ___stx3128231283_)))
                                (let ((_tl3084230864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3084030859_)))
                                      (_hd3084130862_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3084030859_))))
                                  (if (gx#stx-null? _tl3084230864_)
                                      (___match3129531296_
                                       _e3084030859_
                                       _hd3084130862_
                                       _tl3084230864_)
                                      (___kont3128631287_))))
                              (___kont3128631287_))))))))
          (let* ((_g3067830713_
                  (lambda (_g3067930710_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g3067930710_)))
                 (_g3067730830_
                  (lambda (_g3067930716_)
                    (if (gx#stx-pair? _g3067930716_)
                        (let ((_e3068330718_ (gx#stx-e _g3067930716_)))
                          (let ((_hd3068430721_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3068330718_)))
                                (_tl3068530723_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3068330718_))))
                            (if (gx#stx-pair? _tl3068530723_)
                                (let ((_e3068630726_
                                       (gx#stx-e _tl3068530723_)))
                                  (let ((_hd3068730729_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3068630726_)))
                                        (_tl3068830731_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3068630726_))))
                                    (if (gx#stx-pair/null? _hd3068730729_)
                                        (let ((_g34507_
                                               (gx#syntax-split-splice
                                                _hd3068730729_
                                                '0)))
                                          (begin
                                            (let ((_g34508_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g34507_)
                                                         (##vector-length
                                                          _g34507_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g34508_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g34508_)))
                                            (let ((_target3068930734_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g34507_
                                                      0)))
                                                  (_tl3069130736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g34507_
                                                      1))))
                                              (if (gx#stx-null? _tl3069130736_)
                                                  (letrec ((_loop3069230739_
                                                            (lambda (_hd3069030742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3069630744_
                             _hd3069730746_)
                      (if (gx#stx-pair? _hd3069030742_)
                          (let ((_e3069330749_ (gx#stx-e _hd3069030742_)))
                            (let ((_lp-hd3069430752_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3069330749_)))
                                  (_lp-tl3069530754_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3069330749_))))
                              (if (gx#stx-pair? _lp-hd3069430752_)
                                  (let ((_e3070030757_
                                         (gx#stx-e _lp-hd3069430752_)))
                                    (let ((_hd3070130760_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3070030757_)))
                                          (_tl3070230762_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3070030757_))))
                                      (if (gx#stx-pair? _tl3070230762_)
                                          (let ((_e3070330765_
                                                 (gx#stx-e _tl3070230762_)))
                                            (let ((_hd3070430768_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3070330765_)))
                                                  (_tl3070530770_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3070330765_))))
                                              (if (gx#stx-null? _tl3070530770_)
                                                  (_loop3069230739_
                                                   _lp-tl3069530754_
                                                   (cons _hd3070430768_
                                                         _expr3069630744_)
                                                   (cons _hd3070130760_
                                                         _hd3069730746_))
                                                  (_g3067830713_
                                                   _g3067930716_))))
                                          (_g3067830713_ _g3067930716_))))
                                  (_g3067830713_ _g3067930716_))))
                          (let ((_expr3069830773_ (reverse _expr3069630744_))
                                (_hd3069930775_ (reverse _hd3069730746_)))
                            (if (gx#stx-pair? _tl3068830731_)
                                (let ((_e3070630778_
                                       (gx#stx-e _tl3068830731_)))
                                  (let ((_hd3070730781_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3070630778_)))
                                        (_tl3070830783_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3070630778_))))
                                    (if (gx#stx-null? _tl3070830783_)
                                        ((lambda (_L30786_ _L30787_ _L30788_)
                                           (for-each
                                            _collect-e30676_
                                            (foldr1 (lambda (_g3080830811_
                                                             _g3080930813_)
                                                      (cons _g3080830811_
                                                            _g3080930813_))
                                                    '()
                                                    _L30788_)
                                            (foldr1 (lambda (_g3081530818_
                                                             _g3081630820_)
                                                      (cons _g3081530818_
                                                            _g3081630820_))
                                                    '()
                                                    _L30787_))
                                           (for-each
                                            gxc#compile-e
                                            (foldr1 (lambda (_g3082230825_
                                                             _g3082330827_)
                                                      (cons _g3082230825_
                                                            _g3082330827_))
                                                    '()
                                                    _L30787_))
                                           (gxc#compile-e _L30786_))
                                         _hd3070730781_
                                         _expr3069830773_
                                         _hd3069930775_)
                                        (_g3067830713_ _g3067930716_))))
                                (_g3067830713_ _g3067930716_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3069230739_
                                                     _target3068930734_
                                                     '()
                                                     '()))
                                                  (_g3067830713_
                                                   _g3067930716_)))))
                                        (_g3067830713_ _g3067930716_))))
                                (_g3067830713_ _g3067930716_))))
                        (_g3067830713_ _g3067930716_)))))
            (_g3067730830_ _stx30674_)))))
    (define gxc#collect-type-call%
      (lambda (_stx30166_)
        (let* ((___stx3129831299_ _stx30166_)
               (_g3017030285_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3129831299_))))
          (let ((___kont3130031301_
                 (lambda (_L30624_ _L30625_ _L30626_ _L30627_ _L30628_)
                   (gxc#optimizer-declare-method!__%
                    (gxc#identifier-symbol _L30627_)
                    (gx#stx-e _L30626_)
                    (gxc#identifier-symbol _L30625_)
                    (gx#stx-e _L30624_))))
                (___kont3130231303_
                 (lambda (_L30452_ _L30453_ _L30454_ _L30455_)
                   (gxc#optimizer-declare-method!__%
                    (gxc#identifier-symbol _L30454_)
                    (gx#stx-e _L30453_)
                    (gxc#identifier-symbol _L30452_)
                    '#f)))
                (___kont3130431305_
                 (lambda (_L30322_)
                   (for-each
                    gxc#compile-e
                    (foldr1 (lambda (_g3033530338_ _g3033630340_)
                              (cons _g3033530338_ _g3033630340_))
                            '()
                            _L30322_)))))
            (let* ((___match3155531556_
                    (lambda (_e3026930290_
                             _hd3027030293_
                             _tl3027130295_
                             ___splice3130631307_
                             _target3027230298_
                             _tl3027430300_)
                      (letrec ((_loop3027530303_
                                (lambda (_hd3027330306_ _expr3027930308_)
                                  (if (gx#stx-pair? _hd3027330306_)
                                      (let ((_e3027630311_
                                             (gx#stx-e _hd3027330306_)))
                                        (let ((_lp-tl3027830316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3027630311_)))
                                              (_lp-hd3027730314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3027630311_))))
                                          (_loop3027530303_
                                           _lp-tl3027830316_
                                           (cons _lp-hd3027730314_
                                                 _expr3027930308_))))
                                      (let ((_expr3028030319_
                                             (reverse _expr3027930308_)))
                                        (___kont3130431305_
                                         _expr3028030319_))))))
                        (_loop3027530303_ _target3027230298_ '()))))
                   (___match3143531436_
                    (lambda (_e3017730496_
                             _hd3017830499_
                             _tl3017930501_
                             _e3018030504_
                             _hd3018130507_
                             _tl3018230509_
                             _e3018330512_
                             _hd3018430515_
                             _tl3018530517_
                             _e3018630520_
                             _hd3018730523_
                             _tl3018830525_
                             _e3018930528_
                             _hd3019030531_
                             _tl3019130533_
                             _e3019230536_
                             _hd3019330539_
                             _tl3019430541_
                             _e3019530544_
                             _hd3019630547_
                             _tl3019730549_
                             _e3019830552_
                             _hd3019930555_
                             _tl3020030557_
                             _e3020130560_
                             _hd3020230563_
                             _tl3020330565_
                             _e3020430568_
                             _hd3020530571_
                             _tl3020630573_
                             _e3020730576_
                             _hd3020830579_
                             _tl3020930581_
                             _e3021030584_
                             _hd3021130587_
                             _tl3021230589_
                             _e3021330592_
                             _hd3021430595_
                             _tl3021530597_
                             _e3021630600_
                             _hd3021730603_
                             _tl3021830605_
                             _e3021930608_
                             _hd3022030611_
                             _tl3022130613_
                             _e3022230616_
                             _hd3022330619_
                             _tl3022430621_)
                      (let ((_L30624_ _hd3022330619_)
                            (_L30625_ _hd3021430595_)
                            (_L30626_ _hd3020530571_)
                            (_L30627_ _hd3019630547_)
                            (_L30628_ _hd3018730523_))
                        (if (gxc#runtime-identifier=? _L30628_ 'bind-method!)
                            (___kont3130031301_
                             _L30624_
                             _L30625_
                             _L30626_
                             _L30627_
                             _L30628_)
                            (if (gx#stx-pair/null? _tl3017930501_)
                                (let ((___splice3130631307_
                                       (gx#syntax-split-splice
                                        _tl3017930501_
                                        '0)))
                                  (let ((_tl3027430300_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3130631307_
                                            '1)))
                                        (_target3027230298_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3130631307_
                                            '0))))
                                    (if (gx#stx-null? _tl3027430300_)
                                        (___match3155531556_
                                         _e3017730496_
                                         _hd3017830499_
                                         _tl3017930501_
                                         ___splice3130631307_
                                         _target3027230298_
                                         _tl3027430300_)
                                        (_g3017030285_))))
                                (_g3017030285_)))))))
              (if (gx#stx-pair? ___stx3129831299_)
                  (let ((_e3017730496_ (gx#stx-e ___stx3129831299_)))
                    (let ((_tl3017930501_
                           (let () (declare (not safe)) (##cdr _e3017730496_)))
                          (_hd3017830499_
                           (let ()
                             (declare (not safe))
                             (##car _e3017730496_))))
                      (if (gx#stx-pair? _tl3017930501_)
                          (let ((_e3018030504_ (gx#stx-e _tl3017930501_)))
                            (let ((_tl3018230509_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3018030504_)))
                                  (_hd3018130507_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3018030504_))))
                              (if (gx#stx-pair? _hd3018130507_)
                                  (let ((_e3018330512_
                                         (gx#stx-e _hd3018130507_)))
                                    (let ((_tl3018530517_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3018330512_)))
                                          (_hd3018430515_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3018330512_))))
                                      (if (gx#identifier? _hd3018430515_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd3018430515_)
                                              (if (gx#stx-pair? _tl3018530517_)
                                                  (let ((_e3018630520_
                                                         (gx#stx-e
                                                          _tl3018530517_)))
                                                    (let ((_tl3018830525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3018630520_)))
                                                          (_hd3018730523_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3018630520_))))
                                                      (if (gx#stx-null?
                                                           _tl3018830525_)
                                                          (if (gx#stx-pair?
                                                               _tl3018230509_)
                                                              (let ((_e3018930528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl3018230509_)))
                        (let ((_tl3019130533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3018930528_)))
                              (_hd3019030531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3018930528_))))
                          (if (gx#stx-pair? _hd3019030531_)
                              (let ((_e3019230536_ (gx#stx-e _hd3019030531_)))
                                (let ((_tl3019430541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3019230536_)))
                                      (_hd3019330539_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3019230536_))))
                                  (if (gx#identifier? _hd3019330539_)
                                      (if (gx#stx-eq? '%#ref _hd3019330539_)
                                          (if (gx#stx-pair? _tl3019430541_)
                                              (let ((_e3019530544_
                                                     (gx#stx-e
                                                      _tl3019430541_)))
                                                (let ((_tl3019730549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3019530544_)))
                                                      (_hd3019630547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3019530544_))))
                                                  (if (gx#stx-null?
                                                       _tl3019730549_)
                                                      (if (gx#stx-pair?
                                                           _tl3019130533_)
                                                          (let ((_e3019830552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3019130533_)))
                    (let ((_tl3020030557_
                           (let () (declare (not safe)) (##cdr _e3019830552_)))
                          (_hd3019930555_
                           (let ()
                             (declare (not safe))
                             (##car _e3019830552_))))
                      (if (gx#stx-pair? _hd3019930555_)
                          (let ((_e3020130560_ (gx#stx-e _hd3019930555_)))
                            (let ((_tl3020330565_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3020130560_)))
                                  (_hd3020230563_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3020130560_))))
                              (if (gx#identifier? _hd3020230563_)
                                  (if (gx#stx-eq? '%#quote _hd3020230563_)
                                      (if (gx#stx-pair? _tl3020330565_)
                                          (let ((_e3020430568_
                                                 (gx#stx-e _tl3020330565_)))
                                            (let ((_tl3020630573_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3020430568_)))
                                                  (_hd3020530571_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3020430568_))))
                                              (if (gx#stx-null? _tl3020630573_)
                                                  (if (gx#stx-pair?
                                                       _tl3020030557_)
                                                      (let ((_e3020730576_
                                                             (gx#stx-e
                                                              _tl3020030557_)))
                                                        (let ((_tl3020930581_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3020730576_)))
                      (_hd3020830579_
                       (let () (declare (not safe)) (##car _e3020730576_))))
                  (if (gx#stx-pair? _hd3020830579_)
                      (let ((_e3021030584_ (gx#stx-e _hd3020830579_)))
                        (let ((_tl3021230589_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3021030584_)))
                              (_hd3021130587_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3021030584_))))
                          (if (gx#identifier? _hd3021130587_)
                              (if (gx#stx-eq? '%#ref _hd3021130587_)
                                  (if (gx#stx-pair? _tl3021230589_)
                                      (let ((_e3021330592_
                                             (gx#stx-e _tl3021230589_)))
                                        (let ((_tl3021530597_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3021330592_)))
                                              (_hd3021430595_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3021330592_))))
                                          (if (gx#stx-null? _tl3021530597_)
                                              (if (gx#stx-pair? _tl3020930581_)
                                                  (let ((_e3021630600_
                                                         (gx#stx-e
                                                          _tl3020930581_)))
                                                    (let ((_tl3021830605_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3021630600_)))
                                                          (_hd3021730603_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3021630600_))))
                                                      (if (gx#stx-pair?
                                                           _hd3021730603_)
                                                          (let ((_e3021930608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3021730603_)))
                    (let ((_tl3022130613_
                           (let () (declare (not safe)) (##cdr _e3021930608_)))
                          (_hd3022030611_
                           (let ()
                             (declare (not safe))
                             (##car _e3021930608_))))
                      (if (gx#identifier? _hd3022030611_)
                          (if (gx#stx-eq? '%#quote _hd3022030611_)
                              (if (gx#stx-pair? _tl3022130613_)
                                  (let ((_e3022230616_
                                         (gx#stx-e _tl3022130613_)))
                                    (let ((_tl3022430621_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3022230616_)))
                                          (_hd3022330619_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3022230616_))))
                                      (if (gx#stx-null? _tl3022430621_)
                                          (if (gx#stx-null? _tl3021830605_)
                                              (___match3143531436_
                                               _e3017730496_
                                               _hd3017830499_
                                               _tl3017930501_
                                               _e3018030504_
                                               _hd3018130507_
                                               _tl3018230509_
                                               _e3018330512_
                                               _hd3018430515_
                                               _tl3018530517_
                                               _e3018630520_
                                               _hd3018730523_
                                               _tl3018830525_
                                               _e3018930528_
                                               _hd3019030531_
                                               _tl3019130533_
                                               _e3019230536_
                                               _hd3019330539_
                                               _tl3019430541_
                                               _e3019530544_
                                               _hd3019630547_
                                               _tl3019730549_
                                               _e3019830552_
                                               _hd3019930555_
                                               _tl3020030557_
                                               _e3020130560_
                                               _hd3020230563_
                                               _tl3020330565_
                                               _e3020430568_
                                               _hd3020530571_
                                               _tl3020630573_
                                               _e3020730576_
                                               _hd3020830579_
                                               _tl3020930581_
                                               _e3021030584_
                                               _hd3021130587_
                                               _tl3021230589_
                                               _e3021330592_
                                               _hd3021430595_
                                               _tl3021530597_
                                               _e3021630600_
                                               _hd3021730603_
                                               _tl3021830605_
                                               _e3021930608_
                                               _hd3022030611_
                                               _tl3022130613_
                                               _e3022230616_
                                               _hd3022330619_
                                               _tl3022430621_)
                                              (if (gx#stx-pair/null?
                                                   _tl3017930501_)
                                                  (let ((___splice3130631307_
                                                         (gx#syntax-split-splice
                                                          _tl3017930501_
                                                          '0)))
                                                    (let ((_tl3027430300_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3130631307_
                                                              '1)))
                                                          (_target3027230298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3130631307_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3027430300_)
                                                          (___match3155531556_
                                                           _e3017730496_
                                                           _hd3017830499_
                                                           _tl3017930501_
                                                           ___splice3130631307_
                                                           _target3027230298_
                                                           _tl3027430300_)
                                                          (_g3017030285_))))
                                                  (_g3017030285_)))
                                          (if (gx#stx-pair/null?
                                               _tl3017930501_)
                                              (let ((___splice3130631307_
                                                     (gx#syntax-split-splice
                                                      _tl3017930501_
                                                      '0)))
                                                (let ((_tl3027430300_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3130631307_
                                                          '1)))
                                                      (_target3027230298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3130631307_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3027430300_)
                                                      (___match3155531556_
                                                       _e3017730496_
                                                       _hd3017830499_
                                                       _tl3017930501_
                                                       ___splice3130631307_
                                                       _target3027230298_
                                                       _tl3027430300_)
                                                      (_g3017030285_))))
                                              (_g3017030285_)))))
                                  (if (gx#stx-pair/null? _tl3017930501_)
                                      (let ((___splice3130631307_
                                             (gx#syntax-split-splice
                                              _tl3017930501_
                                              '0)))
                                        (let ((_tl3027430300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3130631307_
                                                  '1)))
                                              (_target3027230298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3130631307_
                                                  '0))))
                                          (if (gx#stx-null? _tl3027430300_)
                                              (___match3155531556_
                                               _e3017730496_
                                               _hd3017830499_
                                               _tl3017930501_
                                               ___splice3130631307_
                                               _target3027230298_
                                               _tl3027430300_)
                                              (_g3017030285_))))
                                      (_g3017030285_)))
                              (if (gx#stx-pair/null? _tl3017930501_)
                                  (let ((___splice3130631307_
                                         (gx#syntax-split-splice
                                          _tl3017930501_
                                          '0)))
                                    (let ((_tl3027430300_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3130631307_
                                              '1)))
                                          (_target3027230298_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3130631307_
                                              '0))))
                                      (if (gx#stx-null? _tl3027430300_)
                                          (___match3155531556_
                                           _e3017730496_
                                           _hd3017830499_
                                           _tl3017930501_
                                           ___splice3130631307_
                                           _target3027230298_
                                           _tl3027430300_)
                                          (_g3017030285_))))
                                  (_g3017030285_)))
                          (if (gx#stx-pair/null? _tl3017930501_)
                              (let ((___splice3130631307_
                                     (gx#syntax-split-splice
                                      _tl3017930501_
                                      '0)))
                                (let ((_tl3027430300_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3130631307_
                                          '1)))
                                      (_target3027230298_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3130631307_
                                          '0))))
                                  (if (gx#stx-null? _tl3027430300_)
                                      (___match3155531556_
                                       _e3017730496_
                                       _hd3017830499_
                                       _tl3017930501_
                                       ___splice3130631307_
                                       _target3027230298_
                                       _tl3027430300_)
                                      (_g3017030285_))))
                              (_g3017030285_)))))
                  (if (gx#stx-pair/null? _tl3017930501_)
                      (let ((___splice3130631307_
                             (gx#syntax-split-splice _tl3017930501_ '0)))
                        (let ((_tl3027430300_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3130631307_ '1)))
                              (_target3027230298_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3130631307_ '0))))
                          (if (gx#stx-null? _tl3027430300_)
                              (___match3155531556_
                               _e3017730496_
                               _hd3017830499_
                               _tl3017930501_
                               ___splice3130631307_
                               _target3027230298_
                               _tl3027430300_)
                              (_g3017030285_))))
                      (_g3017030285_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl3020930581_)
                                                      (if (gxc#runtime-identifier=?
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '-bind-method)
                                                           'bind-method!)
                                                          (let ((_L30452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3021430595_)
                        (_L30453_ _hd3020530571_)
                        (_L30454_ _hd3019630547_)
                        (_L30455_ _hd3018730523_))
                    (___kont3130231303_ _L30452_ _L30453_ _L30454_ _L30455_))
                  (if (gx#stx-pair/null? _tl3017930501_)
                      (let ((___splice3130631307_
                             (gx#syntax-split-splice _tl3017930501_ '0)))
                        (let ((_tl3027430300_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3130631307_ '1)))
                              (_target3027230298_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3130631307_ '0))))
                          (if (gx#stx-null? _tl3027430300_)
                              (___match3155531556_
                               _e3017730496_
                               _hd3017830499_
                               _tl3017930501_
                               ___splice3130631307_
                               _target3027230298_
                               _tl3027430300_)
                              (_g3017030285_))))
                      (_g3017030285_)))
              (if (gx#stx-pair/null? _tl3017930501_)
                  (let ((___splice3130631307_
                         (gx#syntax-split-splice _tl3017930501_ '0)))
                    (let ((_tl3027430300_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3130631307_ '1)))
                          (_target3027230298_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3130631307_ '0))))
                      (if (gx#stx-null? _tl3027430300_)
                          (___match3155531556_
                           _e3017730496_
                           _hd3017830499_
                           _tl3017930501_
                           ___splice3130631307_
                           _target3027230298_
                           _tl3027430300_)
                          (_g3017030285_))))
                  (_g3017030285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl3017930501_)
                                                  (let ((___splice3130631307_
                                                         (gx#syntax-split-splice
                                                          _tl3017930501_
                                                          '0)))
                                                    (let ((_tl3027430300_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3130631307_
                                                              '1)))
                                                          (_target3027230298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3130631307_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3027430300_)
                                                          (___match3155531556_
                                                           _e3017730496_
                                                           _hd3017830499_
                                                           _tl3017930501_
                                                           ___splice3130631307_
                                                           _target3027230298_
                                                           _tl3027430300_)
                                                          (_g3017030285_))))
                                                  (_g3017030285_)))))
                                      (if (gx#stx-pair/null? _tl3017930501_)
                                          (let ((___splice3130631307_
                                                 (gx#syntax-split-splice
                                                  _tl3017930501_
                                                  '0)))
                                            (let ((_tl3027430300_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3130631307_
                                                      '1)))
                                                  (_target3027230298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3130631307_
                                                      '0))))
                                              (if (gx#stx-null? _tl3027430300_)
                                                  (___match3155531556_
                                                   _e3017730496_
                                                   _hd3017830499_
                                                   _tl3017930501_
                                                   ___splice3130631307_
                                                   _target3027230298_
                                                   _tl3027430300_)
                                                  (_g3017030285_))))
                                          (_g3017030285_)))
                                  (if (gx#stx-pair/null? _tl3017930501_)
                                      (let ((___splice3130631307_
                                             (gx#syntax-split-splice
                                              _tl3017930501_
                                              '0)))
                                        (let ((_tl3027430300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3130631307_
                                                  '1)))
                                              (_target3027230298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3130631307_
                                                  '0))))
                                          (if (gx#stx-null? _tl3027430300_)
                                              (___match3155531556_
                                               _e3017730496_
                                               _hd3017830499_
                                               _tl3017930501_
                                               ___splice3130631307_
                                               _target3027230298_
                                               _tl3027430300_)
                                              (_g3017030285_))))
                                      (_g3017030285_)))
                              (if (gx#stx-pair/null? _tl3017930501_)
                                  (let ((___splice3130631307_
                                         (gx#syntax-split-splice
                                          _tl3017930501_
                                          '0)))
                                    (let ((_tl3027430300_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3130631307_
                                              '1)))
                                          (_target3027230298_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3130631307_
                                              '0))))
                                      (if (gx#stx-null? _tl3027430300_)
                                          (___match3155531556_
                                           _e3017730496_
                                           _hd3017830499_
                                           _tl3017930501_
                                           ___splice3130631307_
                                           _target3027230298_
                                           _tl3027430300_)
                                          (_g3017030285_))))
                                  (_g3017030285_)))))
                      (if (gx#stx-pair/null? _tl3017930501_)
                          (let ((___splice3130631307_
                                 (gx#syntax-split-splice _tl3017930501_ '0)))
                            (let ((_tl3027430300_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3130631307_ '1)))
                                  (_target3027230298_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3130631307_ '0))))
                              (if (gx#stx-null? _tl3027430300_)
                                  (___match3155531556_
                                   _e3017730496_
                                   _hd3017830499_
                                   _tl3017930501_
                                   ___splice3130631307_
                                   _target3027230298_
                                   _tl3027430300_)
                                  (_g3017030285_))))
                          (_g3017030285_)))))
              (if (gx#stx-pair/null? _tl3017930501_)
                  (let ((___splice3130631307_
                         (gx#syntax-split-splice _tl3017930501_ '0)))
                    (let ((_tl3027430300_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3130631307_ '1)))
                          (_target3027230298_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3130631307_ '0))))
                      (if (gx#stx-null? _tl3027430300_)
                          (___match3155531556_
                           _e3017730496_
                           _hd3017830499_
                           _tl3017930501_
                           ___splice3130631307_
                           _target3027230298_
                           _tl3027430300_)
                          (_g3017030285_))))
                  (_g3017030285_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _tl3017930501_)
                                                      (let ((___splice3130631307_
                                                             (gx#syntax-split-splice
                                                              _tl3017930501_
                                                              '0)))
                                                        (let ((_tl3027430300_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice3130631307_ '1)))
                      (_target3027230298_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice3130631307_ '0))))
                  (if (gx#stx-null? _tl3027430300_)
                      (___match3155531556_
                       _e3017730496_
                       _hd3017830499_
                       _tl3017930501_
                       ___splice3130631307_
                       _target3027230298_
                       _tl3027430300_)
                      (_g3017030285_))))
              (_g3017030285_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl3017930501_)
                                              (let ((___splice3130631307_
                                                     (gx#syntax-split-splice
                                                      _tl3017930501_
                                                      '0)))
                                                (let ((_tl3027430300_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3130631307_
                                                          '1)))
                                                      (_target3027230298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3130631307_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3027430300_)
                                                      (___match3155531556_
                                                       _e3017730496_
                                                       _hd3017830499_
                                                       _tl3017930501_
                                                       ___splice3130631307_
                                                       _target3027230298_
                                                       _tl3027430300_)
                                                      (_g3017030285_))))
                                              (_g3017030285_)))
                                      (if (gx#stx-pair/null? _tl3017930501_)
                                          (let ((___splice3130631307_
                                                 (gx#syntax-split-splice
                                                  _tl3017930501_
                                                  '0)))
                                            (let ((_tl3027430300_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3130631307_
                                                      '1)))
                                                  (_target3027230298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3130631307_
                                                      '0))))
                                              (if (gx#stx-null? _tl3027430300_)
                                                  (___match3155531556_
                                                   _e3017730496_
                                                   _hd3017830499_
                                                   _tl3017930501_
                                                   ___splice3130631307_
                                                   _target3027230298_
                                                   _tl3027430300_)
                                                  (_g3017030285_))))
                                          (_g3017030285_)))
                                  (if (gx#stx-pair/null? _tl3017930501_)
                                      (let ((___splice3130631307_
                                             (gx#syntax-split-splice
                                              _tl3017930501_
                                              '0)))
                                        (let ((_tl3027430300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3130631307_
                                                  '1)))
                                              (_target3027230298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3130631307_
                                                  '0))))
                                          (if (gx#stx-null? _tl3027430300_)
                                              (___match3155531556_
                                               _e3017730496_
                                               _hd3017830499_
                                               _tl3017930501_
                                               ___splice3130631307_
                                               _target3027230298_
                                               _tl3027430300_)
                                              (_g3017030285_))))
                                      (_g3017030285_)))))
                          (if (gx#stx-pair/null? _tl3017930501_)
                              (let ((___splice3130631307_
                                     (gx#syntax-split-splice
                                      _tl3017930501_
                                      '0)))
                                (let ((_tl3027430300_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3130631307_
                                          '1)))
                                      (_target3027230298_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3130631307_
                                          '0))))
                                  (if (gx#stx-null? _tl3027430300_)
                                      (___match3155531556_
                                       _e3017730496_
                                       _hd3017830499_
                                       _tl3017930501_
                                       ___splice3130631307_
                                       _target3027230298_
                                       _tl3027430300_)
                                      (_g3017030285_))))
                              (_g3017030285_)))))
                  (if (gx#stx-pair/null? _tl3017930501_)
                      (let ((___splice3130631307_
                             (gx#syntax-split-splice _tl3017930501_ '0)))
                        (let ((_tl3027430300_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3130631307_ '1)))
                              (_target3027230298_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3130631307_ '0))))
                          (if (gx#stx-null? _tl3027430300_)
                              (___match3155531556_
                               _e3017730496_
                               _hd3017830499_
                               _tl3017930501_
                               ___splice3130631307_
                               _target3027230298_
                               _tl3027430300_)
                              (_g3017030285_))))
                      (_g3017030285_)))
              (if (gx#stx-pair/null? _tl3017930501_)
                  (let ((___splice3130631307_
                         (gx#syntax-split-splice _tl3017930501_ '0)))
                    (let ((_tl3027430300_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3130631307_ '1)))
                          (_target3027230298_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3130631307_ '0))))
                      (if (gx#stx-null? _tl3027430300_)
                          (___match3155531556_
                           _e3017730496_
                           _hd3017830499_
                           _tl3017930501_
                           ___splice3130631307_
                           _target3027230298_
                           _tl3027430300_)
                          (_g3017030285_))))
                  (_g3017030285_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl3017930501_)
                                                  (let ((___splice3130631307_
                                                         (gx#syntax-split-splice
                                                          _tl3017930501_
                                                          '0)))
                                                    (let ((_tl3027430300_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3130631307_
                                                              '1)))
                                                          (_target3027230298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3130631307_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3027430300_)
                                                          (___match3155531556_
                                                           _e3017730496_
                                                           _hd3017830499_
                                                           _tl3017930501_
                                                           ___splice3130631307_
                                                           _target3027230298_
                                                           _tl3027430300_)
                                                          (_g3017030285_))))
                                                  (_g3017030285_)))
                                          (if (gx#stx-pair/null?
                                               _tl3017930501_)
                                              (let ((___splice3130631307_
                                                     (gx#syntax-split-splice
                                                      _tl3017930501_
                                                      '0)))
                                                (let ((_tl3027430300_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3130631307_
                                                          '1)))
                                                      (_target3027230298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3130631307_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3027430300_)
                                                      (___match3155531556_
                                                       _e3017730496_
                                                       _hd3017830499_
                                                       _tl3017930501_
                                                       ___splice3130631307_
                                                       _target3027230298_
                                                       _tl3027430300_)
                                                      (_g3017030285_))))
                                              (_g3017030285_)))
                                      (if (gx#stx-pair/null? _tl3017930501_)
                                          (let ((___splice3130631307_
                                                 (gx#syntax-split-splice
                                                  _tl3017930501_
                                                  '0)))
                                            (let ((_tl3027430300_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3130631307_
                                                      '1)))
                                                  (_target3027230298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3130631307_
                                                      '0))))
                                              (if (gx#stx-null? _tl3027430300_)
                                                  (___match3155531556_
                                                   _e3017730496_
                                                   _hd3017830499_
                                                   _tl3017930501_
                                                   ___splice3130631307_
                                                   _target3027230298_
                                                   _tl3027430300_)
                                                  (_g3017030285_))))
                                          (_g3017030285_)))))
                              (if (gx#stx-pair/null? _tl3017930501_)
                                  (let ((___splice3130631307_
                                         (gx#syntax-split-splice
                                          _tl3017930501_
                                          '0)))
                                    (let ((_tl3027430300_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3130631307_
                                              '1)))
                                          (_target3027230298_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3130631307_
                                              '0))))
                                      (if (gx#stx-null? _tl3027430300_)
                                          (___match3155531556_
                                           _e3017730496_
                                           _hd3017830499_
                                           _tl3017930501_
                                           ___splice3130631307_
                                           _target3027230298_
                                           _tl3027430300_)
                                          (_g3017030285_))))
                                  (_g3017030285_)))))
                      (if (gx#stx-pair/null? _tl3017930501_)
                          (let ((___splice3130631307_
                                 (gx#syntax-split-splice _tl3017930501_ '0)))
                            (let ((_tl3027430300_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3130631307_ '1)))
                                  (_target3027230298_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3130631307_ '0))))
                              (if (gx#stx-null? _tl3027430300_)
                                  (___match3155531556_
                                   _e3017730496_
                                   _hd3017830499_
                                   _tl3017930501_
                                   ___splice3130631307_
                                   _target3027230298_
                                   _tl3027430300_)
                                  (_g3017030285_))))
                          (_g3017030285_)))
                  (if (gx#stx-pair/null? _tl3017930501_)
                      (let ((___splice3130631307_
                             (gx#syntax-split-splice _tl3017930501_ '0)))
                        (let ((_tl3027430300_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3130631307_ '1)))
                              (_target3027230298_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3130631307_ '0))))
                          (if (gx#stx-null? _tl3027430300_)
                              (___match3155531556_
                               _e3017730496_
                               _hd3017830499_
                               _tl3017930501_
                               ___splice3130631307_
                               _target3027230298_
                               _tl3027430300_)
                              (_g3017030285_))))
                      (_g3017030285_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _tl3017930501_)
                                                      (let ((___splice3130631307_
                                                             (gx#syntax-split-splice
                                                              _tl3017930501_
                                                              '0)))
                                                        (let ((_tl3027430300_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice3130631307_ '1)))
                      (_target3027230298_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice3130631307_ '0))))
                  (if (gx#stx-null? _tl3027430300_)
                      (___match3155531556_
                       _e3017730496_
                       _hd3017830499_
                       _tl3017930501_
                       ___splice3130631307_
                       _target3027230298_
                       _tl3027430300_)
                      (_g3017030285_))))
              (_g3017030285_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl3017930501_)
                                                  (let ((___splice3130631307_
                                                         (gx#syntax-split-splice
                                                          _tl3017930501_
                                                          '0)))
                                                    (let ((_tl3027430300_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3130631307_
                                                              '1)))
                                                          (_target3027230298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3130631307_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3027430300_)
                                                          (___match3155531556_
                                                           _e3017730496_
                                                           _hd3017830499_
                                                           _tl3017930501_
                                                           ___splice3130631307_
                                                           _target3027230298_
                                                           _tl3027430300_)
                                                          (_g3017030285_))))
                                                  (_g3017030285_)))
                                          (if (gx#stx-pair/null?
                                               _tl3017930501_)
                                              (let ((___splice3130631307_
                                                     (gx#syntax-split-splice
                                                      _tl3017930501_
                                                      '0)))
                                                (let ((_tl3027430300_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3130631307_
                                                          '1)))
                                                      (_target3027230298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3130631307_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl3027430300_)
                                                      (___match3155531556_
                                                       _e3017730496_
                                                       _hd3017830499_
                                                       _tl3017930501_
                                                       ___splice3130631307_
                                                       _target3027230298_
                                                       _tl3027430300_)
                                                      (_g3017030285_))))
                                              (_g3017030285_)))))
                                  (if (gx#stx-pair/null? _tl3017930501_)
                                      (let ((___splice3130631307_
                                             (gx#syntax-split-splice
                                              _tl3017930501_
                                              '0)))
                                        (let ((_tl3027430300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3130631307_
                                                  '1)))
                                              (_target3027230298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3130631307_
                                                  '0))))
                                          (if (gx#stx-null? _tl3027430300_)
                                              (___match3155531556_
                                               _e3017730496_
                                               _hd3017830499_
                                               _tl3017930501_
                                               ___splice3130631307_
                                               _target3027230298_
                                               _tl3027430300_)
                                              (_g3017030285_))))
                                      (_g3017030285_)))))
                          (if (gx#stx-pair/null? _tl3017930501_)
                              (let ((___splice3130631307_
                                     (gx#syntax-split-splice
                                      _tl3017930501_
                                      '0)))
                                (let ((_tl3027430300_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3130631307_
                                          '1)))
                                      (_target3027230298_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3130631307_
                                          '0))))
                                  (if (gx#stx-null? _tl3027430300_)
                                      (___match3155531556_
                                       _e3017730496_
                                       _hd3017830499_
                                       _tl3017930501_
                                       ___splice3130631307_
                                       _target3027230298_
                                       _tl3027430300_)
                                      (_g3017030285_))))
                              (_g3017030285_)))))
                  (_g3017030285_)))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx30106_)
        (let* ((___stx3155831559_ _stx30106_)
               (_g3010930122_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3155831559_))))
          (let ((___kont3156031561_
                 (lambda (_L30150_) (gxc#compile-e _L30150_)))
                (___kont3156231563_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3155831559_)
                (let ((_e3011230134_ (gx#stx-e ___stx3155831559_)))
                  (let ((_tl3011430139_
                         (let () (declare (not safe)) (##cdr _e3011230134_)))
                        (_hd3011330137_
                         (let () (declare (not safe)) (##car _e3011230134_))))
                    (if (gx#stx-pair? _tl3011430139_)
                        (let ((_e3011530142_ (gx#stx-e _tl3011430139_)))
                          (let ((_tl3011730147_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3011530142_)))
                                (_hd3011630145_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3011530142_))))
                            (if (gx#stx-null? _tl3011730147_)
                                (___kont3156031561_ _hd3011630145_)
                                (___kont3156231563_))))
                        (___kont3156231563_))))
                (___kont3156231563_))))))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx30039_)
        (let* ((_g3004130058_
                (lambda (_g3004230055_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3004230055_)))
               (_g3004030103_
                (lambda (_g3004230061_)
                  (if (gx#stx-pair? _g3004230061_)
                      (let ((_e3004530063_ (gx#stx-e _g3004230061_)))
                        (let ((_hd3004630066_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3004530063_)))
                              (_tl3004730068_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3004530063_))))
                          (if (gx#stx-pair? _tl3004730068_)
                              (let ((_e3004830071_ (gx#stx-e _tl3004730068_)))
                                (let ((_hd3004930074_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3004830071_)))
                                      (_tl3005030076_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3004830071_))))
                                  (if (gx#stx-pair? _tl3005030076_)
                                      (let ((_e3005130079_
                                             (gx#stx-e _tl3005030076_)))
                                        (let ((_hd3005230082_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3005130079_)))
                                              (_tl3005330084_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3005130079_))))
                                          (if (gx#stx-null? _tl3005330084_)
                                              ((lambda (_L30087_ _L30088_)
                                                 (gxc#compile-e _L30087_))
                                               _hd3005230082_
                                               _hd3004930074_)
                                              (_g3004130058_ _g3004230061_))))
                                      (_g3004130058_ _g3004230061_))))
                              (_g3004130058_ _g3004230061_))))
                      (_g3004130058_ _g3004230061_)))))
          (_g3004030103_ _stx30039_))))
    (define gxc#basic-expression-type-lambda%
      (lambda (_stx28392_)
        (let* ((___stx3158031581_ _stx28392_)
               (_g2840128761_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3158031581_))))
          (let ((___kont3158231583_
                 (lambda (_L30027_)
                   (let ((__obj34495 (make-object gxc#!lambda::t '5)))
                     (gxc#!lambda:::init!__0
                      __obj34495
                      'lambda
                      (gxc#lambda-form-arity _L30027_)
                      '#f)
                     __obj34495)))
                (___kont3158431585_
                 (lambda (_L29962_ _L29963_ _L29964_ _L29965_ _L29966_)
                   (let* ((_type-t30009_ (gxc#identifier-symbol _L29963_))
                          (_type30011_
                           (gxc#optimizer-resolve-type _type-t30009_)))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _type30011_
                            'gxc#!struct-type::t))
                         (let ()
                           (declare (not safe))
                           (##structure gxc#!struct-cons::t _type-t30009_))
                         '#f))))
                (___kont3158631587_
                 (lambda (_L29777_ _L29778_ _L29779_ _L29780_ _L29781_)
                   (let* ((_type-t29824_ (gxc#identifier-symbol _L29778_))
                          (_type29826_
                           (gxc#optimizer-resolve-type _type-t29824_)))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _type29826_
                            'gxc#!class-type::t))
                         (let ()
                           (declare (not safe))
                           (##structure gxc#!class-cons::t _type-t29824_))
                         '#f))))
                (___kont3158831589_
                 (lambda (_L29563_ _L29564_ _L29565_ _L29566_)
                   (let* ((_type-t29639_ (gxc#identifier-symbol _L29564_))
                          (_type29641_
                           (gxc#optimizer-resolve-type _type-t29639_)))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _type29641_
                            'gxc#!struct-type::t))
                         (let ()
                           (declare (not safe))
                           (##structure gxc#!struct-cons::t _type-t29639_))
                         '#f))))
                (___kont3159431595_
                 (lambda (_L29354_
                          _L29355_
                          _L29356_
                          _L29357_
                          _L29358_
                          _L29359_)
                   (let* ((_tab29409_ (gx#stx-e _L29356_))
                          (_keys29411_
                           (if _tab29409_
                               (filter values (vector->list _tab29409_))
                               '#f)))
                     (let ((__tmp34509 (gxc#identifier-symbol _L29355_)))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys29411_
                        __tmp34509)))))
                (___kont3159631597_
                 (lambda (_L29087_
                          _L29088_
                          _L29089_
                          _L29090_
                          _L29091_
                          _L29092_
                          _L29093_
                          _L29094_
                          _L29095_
                          _L29096_)
                   (let ((__tmp34511
                          (map gx#stx-e
                               (foldr1 (lambda (_g2918929192_ _g2919029194_)
                                         (cons _g2918929192_ _g2919029194_))
                                       '()
                                       _L29089_)))
                         (__tmp34510 (gxc#identifier-symbol _L29093_)))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp34511
                      __tmp34510))))
                (___kont3160031601_
                 (lambda (_L28797_)
                   (let ((__obj34496 (make-object gxc#!lambda::t '5)))
                     (gxc#!lambda:::init!__0
                      __obj34496
                      'lambda
                      (gxc#lambda-form-arity _L28797_)
                      (gxc#dispatch-lambda-form-delegate _L28797_))
                     __obj34496)))
                (___kont3160231603_
                 (lambda (_L28774_)
                   (let ((__obj34497 (make-object gxc#!lambda::t '5)))
                     (gxc#!lambda:::init!__0
                      __obj34497
                      'lambda
                      (gxc#lambda-form-arity _L28774_)
                      '#f)
                     __obj34497))))
            (let* ((___match3218532186_
                    (lambda (_e2875028789_ _hd2875128792_ _tl2875228794_)
                      (let ((_L28797_ _tl2875228794_))
                        (if (gxc#dispatch-lambda-form? _L28797_)
                            (___kont3160031601_ _L28797_)
                            (___kont3160231603_ _tl2875228794_)))))
                   (___match3217932180_
                    (lambda (_e2864428811_
                             _hd2864528814_
                             _tl2864628816_
                             _e2864728819_
                             _hd2864828822_
                             _tl2864928824_
                             _e2865028827_
                             _hd2865128830_
                             _tl2865228832_
                             _e2865328835_
                             _hd2865428838_
                             _tl2865528840_
                             _e2865628843_
                             _hd2865728846_
                             _tl2865828848_
                             _e2865928851_
                             _hd2866028854_
                             _tl2866128856_
                             _e2866228859_
                             _hd2866328862_
                             _tl2866428864_
                             _e2866528867_
                             _hd2866628870_
                             _tl2866728872_
                             _e2866828875_
                             _hd2866928878_
                             _tl2867028880_
                             _e2867128883_
                             _hd2867228886_
                             _tl2867328888_
                             _e2867428891_
                             _hd2867528894_
                             _tl2867628896_
                             _e2867728899_
                             _hd2867828902_
                             _tl2867928904_
                             _e2868028907_
                             _hd2868128910_
                             _tl2868228912_
                             _e2868328915_
                             _hd2868428918_
                             _tl2868528920_
                             ___splice3159831599_
                             _target2868628923_
                             _tl2868828925_
                             _e2870128928_
                             _hd2870228931_
                             _tl2870328933_
                             _e2870428936_
                             _hd2870528939_
                             _tl2870628941_
                             _e2870728944_
                             _hd2870828947_
                             _tl2870928949_)
                      (letrec ((_loop2868928952_
                                (lambda (_hd2868728955_
                                         _-absent-value2869328957_
                                         _key2869428959_
                                         _-xkwvar2869528961_
                                         _-hash-ref2869628963_)
                                  (if (gx#stx-pair? _hd2868728955_)
                                      (let ((_e2869028966_
                                             (gx#stx-e _hd2868728955_)))
                                        (let ((_lp-tl2869228971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2869028966_)))
                                              (_lp-hd2869128969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2869028966_))))
                                          (if (gx#stx-pair? _lp-hd2869128969_)
                                              (let ((_e2871028974_
                                                     (gx#stx-e
                                                      _lp-hd2869128969_)))
                                                (let ((_tl2871228979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2871028974_)))
                                                      (_hd2871128977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2871028974_))))
                                                  (if (gx#identifier?
                                                       _hd2871128977_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd2871128977_)
                                                          (if (gx#stx-pair?
                                                               _tl2871228979_)
                                                              (let ((_e2871328982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2871228979_)))
                        (let ((_tl2871528987_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2871328982_)))
                              (_hd2871428985_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2871328982_))))
                          (if (gx#stx-pair? _hd2871428985_)
                              (let ((_e2871628990_ (gx#stx-e _hd2871428985_)))
                                (let ((_tl2871828995_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2871628990_)))
                                      (_hd2871728993_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2871628990_))))
                                  (if (gx#identifier? _hd2871728993_)
                                      (if (gx#stx-eq? '%#ref _hd2871728993_)
                                          (if (gx#stx-pair? _tl2871828995_)
                                              (let ((_e2871928998_
                                                     (gx#stx-e
                                                      _tl2871828995_)))
                                                (let ((_tl2872129003_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2871928998_)))
                                                      (_hd2872029001_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2871928998_))))
                                                  (if (gx#stx-null?
                                                       _tl2872129003_)
                                                      (if (gx#stx-pair?
                                                           _tl2871528987_)
                                                          (let ((_e2872229006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2871528987_)))
                    (let ((_tl2872429011_
                           (let () (declare (not safe)) (##cdr _e2872229006_)))
                          (_hd2872329009_
                           (let ()
                             (declare (not safe))
                             (##car _e2872229006_))))
                      (if (gx#stx-pair? _hd2872329009_)
                          (let ((_e2872529014_ (gx#stx-e _hd2872329009_)))
                            (let ((_tl2872729019_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2872529014_)))
                                  (_hd2872629017_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2872529014_))))
                              (if (gx#identifier? _hd2872629017_)
                                  (if (gx#stx-eq? '%#ref _hd2872629017_)
                                      (if (gx#stx-pair? _tl2872729019_)
                                          (let ((_e2872829022_
                                                 (gx#stx-e _tl2872729019_)))
                                            (let ((_tl2873029027_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2872829022_)))
                                                  (_hd2872929025_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2872829022_))))
                                              (if (gx#stx-null? _tl2873029027_)
                                                  (if (gx#stx-pair?
                                                       _tl2872429011_)
                                                      (let ((_e2873129030_
                                                             (gx#stx-e
                                                              _tl2872429011_)))
                                                        (let ((_tl2873329035_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2873129030_)))
                      (_hd2873229033_
                       (let () (declare (not safe)) (##car _e2873129030_))))
                  (if (gx#stx-pair? _hd2873229033_)
                      (let ((_e2873429038_ (gx#stx-e _hd2873229033_)))
                        (let ((_tl2873629043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2873429038_)))
                              (_hd2873529041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2873429038_))))
                          (if (gx#identifier? _hd2873529041_)
                              (if (gx#stx-eq? '%#quote _hd2873529041_)
                                  (if (gx#stx-pair? _tl2873629043_)
                                      (let ((_e2873729046_
                                             (gx#stx-e _tl2873629043_)))
                                        (let ((_tl2873929051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2873729046_)))
                                              (_hd2873829049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2873729046_))))
                                          (if (gx#stx-null? _tl2873929051_)
                                              (if (gx#stx-pair? _tl2873329035_)
                                                  (let ((_e2874029054_
                                                         (gx#stx-e
                                                          _tl2873329035_)))
                                                    (let ((_tl2874229059_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2874029054_)))
                                                          (_hd2874129057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2874029054_))))
                                                      (if (gx#stx-pair?
                                                           _hd2874129057_)
                                                          (let ((_e2874329062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2874129057_)))
                    (let ((_tl2874529067_
                           (let () (declare (not safe)) (##cdr _e2874329062_)))
                          (_hd2874429065_
                           (let ()
                             (declare (not safe))
                             (##car _e2874329062_))))
                      (if (gx#identifier? _hd2874429065_)
                          (if (gx#stx-eq? '%#ref _hd2874429065_)
                              (if (gx#stx-pair? _tl2874529067_)
                                  (let ((_e2874629070_
                                         (gx#stx-e _tl2874529067_)))
                                    (let ((_tl2874829075_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2874629070_)))
                                          (_hd2874729073_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2874629070_))))
                                      (if (gx#stx-null? _tl2874829075_)
                                          (if (gx#stx-null? _tl2874229059_)
                                              (_loop2868928952_
                                               _lp-tl2869228971_
                                               (cons _hd2874729073_
                                                     _-absent-value2869328957_)
                                               (cons _hd2873829049_
                                                     _key2869428959_)
                                               (cons _hd2872929025_
                                                     _-xkwvar2869528961_)
                                               (cons _hd2872029001_
                                                     _-hash-ref2869628963_))
                                              (___match3218532186_
                                               _e2864428811_
                                               _hd2864528814_
                                               _tl2864628816_))
                                          (___match3218532186_
                                           _e2864428811_
                                           _hd2864528814_
                                           _tl2864628816_))))
                                  (___match3218532186_
                                   _e2864428811_
                                   _hd2864528814_
                                   _tl2864628816_))
                              (___match3218532186_
                               _e2864428811_
                               _hd2864528814_
                               _tl2864628816_))
                          (___match3218532186_
                           _e2864428811_
                           _hd2864528814_
                           _tl2864628816_))))
                  (___match3218532186_
                   _e2864428811_
                   _hd2864528814_
                   _tl2864628816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3218532186_
                                                   _e2864428811_
                                                   _hd2864528814_
                                                   _tl2864628816_))
                                              (___match3218532186_
                                               _e2864428811_
                                               _hd2864528814_
                                               _tl2864628816_))))
                                      (___match3218532186_
                                       _e2864428811_
                                       _hd2864528814_
                                       _tl2864628816_))
                                  (___match3218532186_
                                   _e2864428811_
                                   _hd2864528814_
                                   _tl2864628816_))
                              (___match3218532186_
                               _e2864428811_
                               _hd2864528814_
                               _tl2864628816_))))
                      (___match3218532186_
                       _e2864428811_
                       _hd2864528814_
                       _tl2864628816_))))
              (___match3218532186_
               _e2864428811_
               _hd2864528814_
               _tl2864628816_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3218532186_
                                                   _e2864428811_
                                                   _hd2864528814_
                                                   _tl2864628816_))))
                                          (___match3218532186_
                                           _e2864428811_
                                           _hd2864528814_
                                           _tl2864628816_))
                                      (___match3218532186_
                                       _e2864428811_
                                       _hd2864528814_
                                       _tl2864628816_))
                                  (___match3218532186_
                                   _e2864428811_
                                   _hd2864528814_
                                   _tl2864628816_))))
                          (___match3218532186_
                           _e2864428811_
                           _hd2864528814_
                           _tl2864628816_))))
                  (___match3218532186_
                   _e2864428811_
                   _hd2864528814_
                   _tl2864628816_))
              (___match3218532186_
               _e2864428811_
               _hd2864528814_
               _tl2864628816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3218532186_
                                               _e2864428811_
                                               _hd2864528814_
                                               _tl2864628816_))
                                          (___match3218532186_
                                           _e2864428811_
                                           _hd2864528814_
                                           _tl2864628816_))
                                      (___match3218532186_
                                       _e2864428811_
                                       _hd2864528814_
                                       _tl2864628816_))))
                              (___match3218532186_
                               _e2864428811_
                               _hd2864528814_
                               _tl2864628816_))))
                      (___match3218532186_
                       _e2864428811_
                       _hd2864528814_
                       _tl2864628816_))
                  (___match3218532186_
                   _e2864428811_
                   _hd2864528814_
                   _tl2864628816_))
              (___match3218532186_
               _e2864428811_
               _hd2864528814_
               _tl2864628816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3218532186_
                                               _e2864428811_
                                               _hd2864528814_
                                               _tl2864628816_))))
                                      (let ((_-hash-ref2870029084_
                                             (reverse _-hash-ref2869628963_))
                                            (_-xkwvar2869929082_
                                             (reverse _-xkwvar2869528961_))
                                            (_key2869829080_
                                             (reverse _key2869428959_))
                                            (_-absent-value2869729078_
                                             (reverse _-absent-value2869328957_)))
                                        (if (gx#stx-null? _tl2865528840_)
                                            (let ((_L29087_ _hd2870828947_)
                                                  (_L29088_
                                                   _-absent-value2869729078_)
                                                  (_L29089_ _key2869829080_)
                                                  (_L29090_
                                                   _-xkwvar2869929082_)
                                                  (_L29091_
                                                   _-hash-ref2870029084_)
                                                  (_L29092_ _hd2868428918_)
                                                  (_L29093_ _hd2867528894_)
                                                  (_L29094_ _hd2866628870_)
                                                  (_L29095_ _tl2865228832_)
                                                  (_L29096_ _hd2865128830_))
                                              (if (and (gx#identifier?
                                                        _L29096_)
                                                       (gx#identifier?
                                                        _L29095_)
                                                       (gxc#runtime-identifier=?
                                                        _L29094_
                                                        'apply)
                                                       (gx#free-identifier=?
                                                        _L29096_
                                                        _L29092_)
                                                       (andmap1 gx#stx-keyword?
                                                                (foldr1 (lambda (_g2914929152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g2915029154_)
                                  (cons _g2914929152_ _g2915029154_))
                                '()
                                _L29089_))
               (andmap1 (lambda (_g2915629158_)
                          (gxc#runtime-identifier=? _g2915629158_ 'hash-ref))
                        (foldr1 (lambda (_g2916029163_ _g2916129165_)
                                  (cons _g2916029163_ _g2916129165_))
                                '()
                                _L29091_))
               (andmap1 (lambda (_g2916729169_)
                          (gxc#runtime-identifier=?
                           _g2916729169_
                           'absent-value))
                        (foldr1 (lambda (_g2917129174_ _g2917229176_)
                                  (cons _g2917129174_ _g2917229176_))
                                '()
                                _L29088_))
               (andmap1 (lambda (_g2917829180_)
                          (gx#free-identifier=? _g2917829180_ _L29096_))
                        (foldr1 (lambda (_g2918229185_ _g2918329187_)
                                  (cons _g2918229185_ _g2918329187_))
                                '()
                                _L29090_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3159631597_
                                                   _L29087_
                                                   _L29088_
                                                   _L29089_
                                                   _L29090_
                                                   _L29091_
                                                   _L29092_
                                                   _L29093_
                                                   _L29094_
                                                   _L29095_
                                                   _L29096_)
                                                  (___match3218532186_
                                                   _e2864428811_
                                                   _hd2864528814_
                                                   _tl2864628816_)))
                                            (___match3218532186_
                                             _e2864428811_
                                             _hd2864528814_
                                             _tl2864628816_)))))))
                        (_loop2868928952_
                         _target2868628923_
                         '()
                         '()
                         '()
                         '()))))
                   (___match3205132052_
                    (lambda (_e2864428811_
                             _hd2864528814_
                             _tl2864628816_
                             _e2864728819_
                             _hd2864828822_
                             _tl2864928824_)
                      (if (gx#stx-pair? _hd2864828822_)
                          (let ((_e2865028827_ (gx#stx-e _hd2864828822_)))
                            (let ((_tl2865228832_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2865028827_)))
                                  (_hd2865128830_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2865028827_))))
                              (if (gx#stx-pair? _tl2864928824_)
                                  (let ((_e2865328835_
                                         (gx#stx-e _tl2864928824_)))
                                    (let ((_tl2865528840_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2865328835_)))
                                          (_hd2865428838_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2865328835_))))
                                      (if (gx#stx-pair? _hd2865428838_)
                                          (let ((_e2865628843_
                                                 (gx#stx-e _hd2865428838_)))
                                            (let ((_tl2865828848_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2865628843_)))
                                                  (_hd2865728846_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2865628843_))))
                                              (if (gx#identifier?
                                                   _hd2865728846_)
                                                  (if (gx#stx-eq?
                                                       '%#call
                                                       _hd2865728846_)
                                                      (if (gx#stx-pair?
                                                           _tl2865828848_)
                                                          (let ((_e2865928851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2865828848_)))
                    (let ((_tl2866128856_
                           (let () (declare (not safe)) (##cdr _e2865928851_)))
                          (_hd2866028854_
                           (let ()
                             (declare (not safe))
                             (##car _e2865928851_))))
                      (if (gx#stx-pair? _hd2866028854_)
                          (let ((_e2866228859_ (gx#stx-e _hd2866028854_)))
                            (let ((_tl2866428864_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2866228859_)))
                                  (_hd2866328862_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2866228859_))))
                              (if (gx#identifier? _hd2866328862_)
                                  (if (gx#stx-eq? '%#ref _hd2866328862_)
                                      (if (gx#stx-pair? _tl2866428864_)
                                          (let ((_e2866528867_
                                                 (gx#stx-e _tl2866428864_)))
                                            (let ((_tl2866728872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2866528867_)))
                                                  (_hd2866628870_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2866528867_))))
                                              (if (gx#stx-null? _tl2866728872_)
                                                  (if (gx#stx-pair?
                                                       _tl2866128856_)
                                                      (let ((_e2866828875_
                                                             (gx#stx-e
                                                              _tl2866128856_)))
                                                        (let ((_tl2867028880_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2866828875_)))
                      (_hd2866928878_
                       (let () (declare (not safe)) (##car _e2866828875_))))
                  (if (gx#stx-pair? _hd2866928878_)
                      (let ((_e2867128883_ (gx#stx-e _hd2866928878_)))
                        (let ((_tl2867328888_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2867128883_)))
                              (_hd2867228886_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2867128883_))))
                          (if (gx#identifier? _hd2867228886_)
                              (if (gx#stx-eq? '%#ref _hd2867228886_)
                                  (if (gx#stx-pair? _tl2867328888_)
                                      (let ((_e2867428891_
                                             (gx#stx-e _tl2867328888_)))
                                        (let ((_tl2867628896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2867428891_)))
                                              (_hd2867528894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2867428891_))))
                                          (if (gx#stx-null? _tl2867628896_)
                                              (if (gx#stx-pair? _tl2867028880_)
                                                  (let ((_e2867728899_
                                                         (gx#stx-e
                                                          _tl2867028880_)))
                                                    (let ((_tl2867928904_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2867728899_)))
                                                          (_hd2867828902_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2867728899_))))
                                                      (if (gx#stx-pair?
                                                           _hd2867828902_)
                                                          (let ((_e2868028907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2867828902_)))
                    (let ((_tl2868228912_
                           (let () (declare (not safe)) (##cdr _e2868028907_)))
                          (_hd2868128910_
                           (let ()
                             (declare (not safe))
                             (##car _e2868028907_))))
                      (if (gx#identifier? _hd2868128910_)
                          (if (gx#stx-eq? '%#ref _hd2868128910_)
                              (if (gx#stx-pair? _tl2868228912_)
                                  (let ((_e2868328915_
                                         (gx#stx-e _tl2868228912_)))
                                    (let ((_tl2868528920_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2868328915_)))
                                          (_hd2868428918_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2868328915_))))
                                      (if (gx#stx-null? _tl2868528920_)
                                          (if (gx#stx-pair/null?
                                               _tl2867928904_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2867928904_)
                                                        '1)
                                                  (let ((___splice3159831599_
                                                         (gx#syntax-split-splice
                                                          _tl2867928904_
                                                          '1)))
                                                    (let ((_tl2868828925_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3159831599_
                                                              '1)))
                                                          (_target2868628923_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3159831599_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2868828925_)
                                                          (let ((_e2870128928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2868828925_)))
                    (let ((_tl2870328933_
                           (let () (declare (not safe)) (##cdr _e2870128928_)))
                          (_hd2870228931_
                           (let ()
                             (declare (not safe))
                             (##car _e2870128928_))))
                      (if (gx#stx-pair? _hd2870228931_)
                          (let ((_e2870428936_ (gx#stx-e _hd2870228931_)))
                            (let ((_tl2870628941_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2870428936_)))
                                  (_hd2870528939_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2870428936_))))
                              (if (gx#identifier? _hd2870528939_)
                                  (if (gx#stx-eq? '%#ref _hd2870528939_)
                                      (if (gx#stx-pair? _tl2870628941_)
                                          (let ((_e2870728944_
                                                 (gx#stx-e _tl2870628941_)))
                                            (let ((_tl2870928949_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2870728944_)))
                                                  (_hd2870828947_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2870728944_))))
                                              (if (gx#stx-null? _tl2870928949_)
                                                  (if (gx#stx-null?
                                                       _tl2870328933_)
                                                      (___match3217932180_
                                                       _e2864428811_
                                                       _hd2864528814_
                                                       _tl2864628816_
                                                       _e2864728819_
                                                       _hd2864828822_
                                                       _tl2864928824_
                                                       _e2865028827_
                                                       _hd2865128830_
                                                       _tl2865228832_
                                                       _e2865328835_
                                                       _hd2865428838_
                                                       _tl2865528840_
                                                       _e2865628843_
                                                       _hd2865728846_
                                                       _tl2865828848_
                                                       _e2865928851_
                                                       _hd2866028854_
                                                       _tl2866128856_
                                                       _e2866228859_
                                                       _hd2866328862_
                                                       _tl2866428864_
                                                       _e2866528867_
                                                       _hd2866628870_
                                                       _tl2866728872_
                                                       _e2866828875_
                                                       _hd2866928878_
                                                       _tl2867028880_
                                                       _e2867128883_
                                                       _hd2867228886_
                                                       _tl2867328888_
                                                       _e2867428891_
                                                       _hd2867528894_
                                                       _tl2867628896_
                                                       _e2867728899_
                                                       _hd2867828902_
                                                       _tl2867928904_
                                                       _e2868028907_
                                                       _hd2868128910_
                                                       _tl2868228912_
                                                       _e2868328915_
                                                       _hd2868428918_
                                                       _tl2868528920_
                                                       ___splice3159831599_
                                                       _target2868628923_
                                                       _tl2868828925_
                                                       _e2870128928_
                                                       _hd2870228931_
                                                       _tl2870328933_
                                                       _e2870428936_
                                                       _hd2870528939_
                                                       _tl2870628941_
                                                       _e2870728944_
                                                       _hd2870828947_
                                                       _tl2870928949_)
                                                      (___match3218532186_
                                                       _e2864428811_
                                                       _hd2864528814_
                                                       _tl2864628816_))
                                                  (___match3218532186_
                                                   _e2864428811_
                                                   _hd2864528814_
                                                   _tl2864628816_))))
                                          (___match3218532186_
                                           _e2864428811_
                                           _hd2864528814_
                                           _tl2864628816_))
                                      (___match3218532186_
                                       _e2864428811_
                                       _hd2864528814_
                                       _tl2864628816_))
                                  (___match3218532186_
                                   _e2864428811_
                                   _hd2864528814_
                                   _tl2864628816_))))
                          (___match3218532186_
                           _e2864428811_
                           _hd2864528814_
                           _tl2864628816_))))
                  (___match3218532186_
                   _e2864428811_
                   _hd2864528814_
                   _tl2864628816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3218532186_
                                                   _e2864428811_
                                                   _hd2864528814_
                                                   _tl2864628816_))
                                              (___match3218532186_
                                               _e2864428811_
                                               _hd2864528814_
                                               _tl2864628816_))
                                          (___match3218532186_
                                           _e2864428811_
                                           _hd2864528814_
                                           _tl2864628816_))))
                                  (___match3218532186_
                                   _e2864428811_
                                   _hd2864528814_
                                   _tl2864628816_))
                              (___match3218532186_
                               _e2864428811_
                               _hd2864528814_
                               _tl2864628816_))
                          (___match3218532186_
                           _e2864428811_
                           _hd2864528814_
                           _tl2864628816_))))
                  (___match3218532186_
                   _e2864428811_
                   _hd2864528814_
                   _tl2864628816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3218532186_
                                                   _e2864428811_
                                                   _hd2864528814_
                                                   _tl2864628816_))
                                              (___match3218532186_
                                               _e2864428811_
                                               _hd2864528814_
                                               _tl2864628816_))))
                                      (___match3218532186_
                                       _e2864428811_
                                       _hd2864528814_
                                       _tl2864628816_))
                                  (___match3218532186_
                                   _e2864428811_
                                   _hd2864528814_
                                   _tl2864628816_))
                              (___match3218532186_
                               _e2864428811_
                               _hd2864528814_
                               _tl2864628816_))))
                      (___match3218532186_
                       _e2864428811_
                       _hd2864528814_
                       _tl2864628816_))))
              (___match3218532186_
               _e2864428811_
               _hd2864528814_
               _tl2864628816_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3218532186_
                                                   _e2864428811_
                                                   _hd2864528814_
                                                   _tl2864628816_))))
                                          (___match3218532186_
                                           _e2864428811_
                                           _hd2864528814_
                                           _tl2864628816_))
                                      (___match3218532186_
                                       _e2864428811_
                                       _hd2864528814_
                                       _tl2864628816_))
                                  (___match3218532186_
                                   _e2864428811_
                                   _hd2864528814_
                                   _tl2864628816_))))
                          (___match3218532186_
                           _e2864428811_
                           _hd2864528814_
                           _tl2864628816_))))
                  (___match3218532186_
                   _e2864428811_
                   _hd2864528814_
                   _tl2864628816_))
              (___match3218532186_
               _e2864428811_
               _hd2864528814_
               _tl2864628816_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3218532186_
                                                   _e2864428811_
                                                   _hd2864528814_
                                                   _tl2864628816_))))
                                          (___match3218532186_
                                           _e2864428811_
                                           _hd2864528814_
                                           _tl2864628816_))))
                                  (___match3218532186_
                                   _e2864428811_
                                   _hd2864528814_
                                   _tl2864628816_))))
                          (___match3218532186_
                           _e2864428811_
                           _hd2864528814_
                           _tl2864628816_))))
                   (___match3203932040_
                    (lambda (_e2857729202_
                             _hd2857829205_
                             _tl2857929207_
                             _e2858029210_
                             _hd2858129213_
                             _tl2858229215_
                             _e2858329218_
                             _hd2858429221_
                             _tl2858529223_
                             _e2858629226_
                             _hd2858729229_
                             _tl2858829231_
                             _e2858929234_
                             _hd2859029237_
                             _tl2859129239_
                             _e2859229242_
                             _hd2859329245_
                             _tl2859429247_
                             _e2859529250_
                             _hd2859629253_
                             _tl2859729255_
                             _e2859829258_
                             _hd2859929261_
                             _tl2860029263_
                             _e2860129266_
                             _hd2860229269_
                             _tl2860329271_
                             _e2860429274_
                             _hd2860529277_
                             _tl2860629279_
                             _e2860729282_
                             _hd2860829285_
                             _tl2860929287_
                             _e2861029290_
                             _hd2861129293_
                             _tl2861229295_
                             _e2861329298_
                             _hd2861429301_
                             _tl2861529303_
                             _e2861629306_
                             _hd2861729309_
                             _tl2861829311_
                             _e2861929314_
                             _hd2862029317_
                             _tl2862129319_
                             _e2862229322_
                             _hd2862329325_
                             _tl2862429327_
                             _e2862529330_
                             _hd2862629333_
                             _tl2862729335_
                             _e2862829338_
                             _hd2862929341_
                             _tl2863029343_
                             _e2863129346_
                             _hd2863229349_
                             _tl2863329351_)
                      (let ((_L29354_ _hd2863229349_)
                            (_L29355_ _hd2862329325_)
                            (_L29356_ _hd2861429301_)
                            (_L29357_ _hd2860529277_)
                            (_L29358_ _hd2859629253_)
                            (_L29359_ _hd2858129213_))
                        (if (and (gx#identifier? _L29359_)
                                 (gxc#runtime-identifier=? _L29358_ 'apply)
                                 (gxc#runtime-identifier=?
                                  _L29357_
                                  'keyword-dispatch)
                                 (gx#free-identifier=? _L29359_ _L29354_))
                            (___kont3159431595_
                             _L29354_
                             _L29355_
                             _L29356_
                             _L29357_
                             _L29358_
                             _L29359_)
                            (___match3205132052_
                             _e2857729202_
                             _hd2857829205_
                             _tl2857929207_
                             _e2858029210_
                             _hd2858129213_
                             _tl2858229215_)))))
                   (___match3196331964_
                    (lambda (_e2857729202_
                             _hd2857829205_
                             _tl2857929207_
                             _e2858029210_
                             _hd2858129213_
                             _tl2858229215_
                             _e2858329218_
                             _hd2858429221_
                             _tl2858529223_
                             _e2858629226_
                             _hd2858729229_
                             _tl2858829231_
                             _e2858929234_
                             _hd2859029237_
                             _tl2859129239_
                             _e2859229242_
                             _hd2859329245_
                             _tl2859429247_
                             _e2859529250_
                             _hd2859629253_
                             _tl2859729255_
                             _e2859829258_
                             _hd2859929261_
                             _tl2860029263_
                             _e2860129266_
                             _hd2860229269_
                             _tl2860329271_
                             _e2860429274_
                             _hd2860529277_
                             _tl2860629279_)
                      (if (gx#stx-pair? _tl2860029263_)
                          (let ((_e2860729282_ (gx#stx-e _tl2860029263_)))
                            (let ((_tl2860929287_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2860729282_)))
                                  (_hd2860829285_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2860729282_))))
                              (if (gx#stx-pair? _hd2860829285_)
                                  (let ((_e2861029290_
                                         (gx#stx-e _hd2860829285_)))
                                    (let ((_tl2861229295_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2861029290_)))
                                          (_hd2861129293_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2861029290_))))
                                      (if (gx#identifier? _hd2861129293_)
                                          (if (gx#stx-eq?
                                               '%#quote
                                               _hd2861129293_)
                                              (if (gx#stx-pair? _tl2861229295_)
                                                  (let ((_e2861329298_
                                                         (gx#stx-e
                                                          _tl2861229295_)))
                                                    (let ((_tl2861529303_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2861329298_)))
                                                          (_hd2861429301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2861329298_))))
                                                      (if (gx#stx-null?
                                                           _tl2861529303_)
                                                          (if (gx#stx-pair?
                                                               _tl2860929287_)
                                                              (let ((_e2861629306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2860929287_)))
                        (let ((_tl2861829311_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2861629306_)))
                              (_hd2861729309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2861629306_))))
                          (if (gx#stx-pair? _hd2861729309_)
                              (let ((_e2861929314_ (gx#stx-e _hd2861729309_)))
                                (let ((_tl2862129319_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2861929314_)))
                                      (_hd2862029317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2861929314_))))
                                  (if (gx#identifier? _hd2862029317_)
                                      (if (gx#stx-eq? '%#ref _hd2862029317_)
                                          (if (gx#stx-pair? _tl2862129319_)
                                              (let ((_e2862229322_
                                                     (gx#stx-e
                                                      _tl2862129319_)))
                                                (let ((_tl2862429327_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2862229322_)))
                                                      (_hd2862329325_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2862229322_))))
                                                  (if (gx#stx-null?
                                                       _tl2862429327_)
                                                      (if (gx#stx-pair?
                                                           _tl2861829311_)
                                                          (let ((_e2862529330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2861829311_)))
                    (let ((_tl2862729335_
                           (let () (declare (not safe)) (##cdr _e2862529330_)))
                          (_hd2862629333_
                           (let ()
                             (declare (not safe))
                             (##car _e2862529330_))))
                      (if (gx#stx-pair? _hd2862629333_)
                          (let ((_e2862829338_ (gx#stx-e _hd2862629333_)))
                            (let ((_tl2863029343_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2862829338_)))
                                  (_hd2862929341_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2862829338_))))
                              (if (gx#identifier? _hd2862929341_)
                                  (if (gx#stx-eq? '%#ref _hd2862929341_)
                                      (if (gx#stx-pair? _tl2863029343_)
                                          (let ((_e2863129346_
                                                 (gx#stx-e _tl2863029343_)))
                                            (let ((_tl2863329351_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2863129346_)))
                                                  (_hd2863229349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2863129346_))))
                                              (if (gx#stx-null? _tl2863329351_)
                                                  (if (gx#stx-null?
                                                       _tl2862729335_)
                                                      (if (gx#stx-null?
                                                           _tl2858529223_)
                                                          (___match3203932040_
                                                           _e2857729202_
                                                           _hd2857829205_
                                                           _tl2857929207_
                                                           _e2858029210_
                                                           _hd2858129213_
                                                           _tl2858229215_
                                                           _e2858329218_
                                                           _hd2858429221_
                                                           _tl2858529223_
                                                           _e2858629226_
                                                           _hd2858729229_
                                                           _tl2858829231_
                                                           _e2858929234_
                                                           _hd2859029237_
                                                           _tl2859129239_
                                                           _e2859229242_
                                                           _hd2859329245_
                                                           _tl2859429247_
                                                           _e2859529250_
                                                           _hd2859629253_
                                                           _tl2859729255_
                                                           _e2859829258_
                                                           _hd2859929261_
                                                           _tl2860029263_
                                                           _e2860129266_
                                                           _hd2860229269_
                                                           _tl2860329271_
                                                           _e2860429274_
                                                           _hd2860529277_
                                                           _tl2860629279_
                                                           _e2860729282_
                                                           _hd2860829285_
                                                           _tl2860929287_
                                                           _e2861029290_
                                                           _hd2861129293_
                                                           _tl2861229295_
                                                           _e2861329298_
                                                           _hd2861429301_
                                                           _tl2861529303_
                                                           _e2861629306_
                                                           _hd2861729309_
                                                           _tl2861829311_
                                                           _e2861929314_
                                                           _hd2862029317_
                                                           _tl2862129319_
                                                           _e2862229322_
                                                           _hd2862329325_
                                                           _tl2862429327_
                                                           _e2862529330_
                                                           _hd2862629333_
                                                           _tl2862729335_
                                                           _e2862829338_
                                                           _hd2862929341_
                                                           _tl2863029343_
                                                           _e2863129346_
                                                           _hd2863229349_
                                                           _tl2863329351_)
                                                          (___match3205132052_
                                                           _e2857729202_
                                                           _hd2857829205_
                                                           _tl2857929207_
                                                           _e2858029210_
                                                           _hd2858129213_
                                                           _tl2858229215_))
                                                      (___match3205132052_
                                                       _e2857729202_
                                                       _hd2857829205_
                                                       _tl2857929207_
                                                       _e2858029210_
                                                       _hd2858129213_
                                                       _tl2858229215_))
                                                  (___match3205132052_
                                                   _e2857729202_
                                                   _hd2857829205_
                                                   _tl2857929207_
                                                   _e2858029210_
                                                   _hd2858129213_
                                                   _tl2858229215_))))
                                          (___match3205132052_
                                           _e2857729202_
                                           _hd2857829205_
                                           _tl2857929207_
                                           _e2858029210_
                                           _hd2858129213_
                                           _tl2858229215_))
                                      (___match3205132052_
                                       _e2857729202_
                                       _hd2857829205_
                                       _tl2857929207_
                                       _e2858029210_
                                       _hd2858129213_
                                       _tl2858229215_))
                                  (___match3205132052_
                                   _e2857729202_
                                   _hd2857829205_
                                   _tl2857929207_
                                   _e2858029210_
                                   _hd2858129213_
                                   _tl2858229215_))))
                          (___match3205132052_
                           _e2857729202_
                           _hd2857829205_
                           _tl2857929207_
                           _e2858029210_
                           _hd2858129213_
                           _tl2858229215_))))
                  (___match3205132052_
                   _e2857729202_
                   _hd2857829205_
                   _tl2857929207_
                   _e2858029210_
                   _hd2858129213_
                   _tl2858229215_))
              (___match3205132052_
               _e2857729202_
               _hd2857829205_
               _tl2857929207_
               _e2858029210_
               _hd2858129213_
               _tl2858229215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3205132052_
                                               _e2857729202_
                                               _hd2857829205_
                                               _tl2857929207_
                                               _e2858029210_
                                               _hd2858129213_
                                               _tl2858229215_))
                                          (___match3205132052_
                                           _e2857729202_
                                           _hd2857829205_
                                           _tl2857929207_
                                           _e2858029210_
                                           _hd2858129213_
                                           _tl2858229215_))
                                      (___match3205132052_
                                       _e2857729202_
                                       _hd2857829205_
                                       _tl2857929207_
                                       _e2858029210_
                                       _hd2858129213_
                                       _tl2858229215_))))
                              (___match3205132052_
                               _e2857729202_
                               _hd2857829205_
                               _tl2857929207_
                               _e2858029210_
                               _hd2858129213_
                               _tl2858229215_))))
                      (___match3205132052_
                       _e2857729202_
                       _hd2857829205_
                       _tl2857929207_
                       _e2858029210_
                       _hd2858129213_
                       _tl2858229215_))
                  (___match3205132052_
                   _e2857729202_
                   _hd2857829205_
                   _tl2857929207_
                   _e2858029210_
                   _hd2858129213_
                   _tl2858229215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3205132052_
                                                   _e2857729202_
                                                   _hd2857829205_
                                                   _tl2857929207_
                                                   _e2858029210_
                                                   _hd2858129213_
                                                   _tl2858229215_))
                                              (___match3205132052_
                                               _e2857729202_
                                               _hd2857829205_
                                               _tl2857929207_
                                               _e2858029210_
                                               _hd2858129213_
                                               _tl2858229215_))
                                          (___match3205132052_
                                           _e2857729202_
                                           _hd2857829205_
                                           _tl2857929207_
                                           _e2858029210_
                                           _hd2858129213_
                                           _tl2858229215_))))
                                  (___match3205132052_
                                   _e2857729202_
                                   _hd2857829205_
                                   _tl2857929207_
                                   _e2858029210_
                                   _hd2858129213_
                                   _tl2858229215_))))
                          (___match3205132052_
                           _e2857729202_
                           _hd2857829205_
                           _tl2857929207_
                           _e2858029210_
                           _hd2858129213_
                           _tl2858229215_))))
                   (___match3189931900_
                    (lambda (_e2857729202_
                             _hd2857829205_
                             _tl2857929207_
                             _e2858029210_
                             _hd2858129213_
                             _tl2858229215_)
                      (if (gx#stx-pair? _tl2858229215_)
                          (let ((_e2858329218_ (gx#stx-e _tl2858229215_)))
                            (let ((_tl2858529223_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2858329218_)))
                                  (_hd2858429221_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2858329218_))))
                              (if (gx#stx-pair? _hd2858429221_)
                                  (let ((_e2858629226_
                                         (gx#stx-e _hd2858429221_)))
                                    (let ((_tl2858829231_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2858629226_)))
                                          (_hd2858729229_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2858629226_))))
                                      (if (gx#identifier? _hd2858729229_)
                                          (if (gx#stx-eq?
                                               '%#call
                                               _hd2858729229_)
                                              (if (gx#stx-pair? _tl2858829231_)
                                                  (let ((_e2858929234_
                                                         (gx#stx-e
                                                          _tl2858829231_)))
                                                    (let ((_tl2859129239_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2858929234_)))
                                                          (_hd2859029237_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2858929234_))))
                                                      (if (gx#stx-pair?
                                                           _hd2859029237_)
                                                          (let ((_e2859229242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2859029237_)))
                    (let ((_tl2859429247_
                           (let () (declare (not safe)) (##cdr _e2859229242_)))
                          (_hd2859329245_
                           (let ()
                             (declare (not safe))
                             (##car _e2859229242_))))
                      (if (gx#identifier? _hd2859329245_)
                          (if (gx#stx-eq? '%#ref _hd2859329245_)
                              (if (gx#stx-pair? _tl2859429247_)
                                  (let ((_e2859529250_
                                         (gx#stx-e _tl2859429247_)))
                                    (let ((_tl2859729255_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2859529250_)))
                                          (_hd2859629253_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2859529250_))))
                                      (if (gx#stx-null? _tl2859729255_)
                                          (if (gx#stx-pair? _tl2859129239_)
                                              (let ((_e2859829258_
                                                     (gx#stx-e
                                                      _tl2859129239_)))
                                                (let ((_tl2860029263_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2859829258_)))
                                                      (_hd2859929261_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2859829258_))))
                                                  (if (gx#stx-pair?
                                                       _hd2859929261_)
                                                      (let ((_e2860129266_
                                                             (gx#stx-e
                                                              _hd2859929261_)))
                                                        (let ((_tl2860329271_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2860129266_)))
                      (_hd2860229269_
                       (let () (declare (not safe)) (##car _e2860129266_))))
                  (if (gx#identifier? _hd2860229269_)
                      (if (gx#stx-eq? '%#ref _hd2860229269_)
                          (if (gx#stx-pair? _tl2860329271_)
                              (let ((_e2860429274_ (gx#stx-e _tl2860329271_)))
                                (let ((_tl2860629279_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2860429274_)))
                                      (_hd2860529277_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2860429274_))))
                                  (if (gx#stx-null? _tl2860629279_)
                                      (if (gx#stx-pair? _tl2860029263_)
                                          (let ((_e2860729282_
                                                 (gx#stx-e _tl2860029263_)))
                                            (let ((_tl2860929287_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2860729282_)))
                                                  (_hd2860829285_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2860729282_))))
                                              (if (gx#stx-pair? _hd2860829285_)
                                                  (let ((_e2861029290_
                                                         (gx#stx-e
                                                          _hd2860829285_)))
                                                    (let ((_tl2861229295_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2861029290_)))
                                                          (_hd2861129293_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2861029290_))))
                                                      (if (gx#identifier?
                                                           _hd2861129293_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _hd2861129293_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2861229295_)
                          (let ((_e2861329298_ (gx#stx-e _tl2861229295_)))
                            (let ((_tl2861529303_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2861329298_)))
                                  (_hd2861429301_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2861329298_))))
                              (if (gx#stx-null? _tl2861529303_)
                                  (if (gx#stx-pair? _tl2860929287_)
                                      (let ((_e2861629306_
                                             (gx#stx-e _tl2860929287_)))
                                        (let ((_tl2861829311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2861629306_)))
                                              (_hd2861729309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2861629306_))))
                                          (if (gx#stx-pair? _hd2861729309_)
                                              (let ((_e2861929314_
                                                     (gx#stx-e
                                                      _hd2861729309_)))
                                                (let ((_tl2862129319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2861929314_)))
                                                      (_hd2862029317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2861929314_))))
                                                  (if (gx#identifier?
                                                       _hd2862029317_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2862029317_)
                                                          (if (gx#stx-pair?
                                                               _tl2862129319_)
                                                              (let ((_e2862229322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2862129319_)))
                        (let ((_tl2862429327_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2862229322_)))
                              (_hd2862329325_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2862229322_))))
                          (if (gx#stx-null? _tl2862429327_)
                              (if (gx#stx-pair? _tl2861829311_)
                                  (let ((_e2862529330_
                                         (gx#stx-e _tl2861829311_)))
                                    (let ((_tl2862729335_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2862529330_)))
                                          (_hd2862629333_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2862529330_))))
                                      (if (gx#stx-pair? _hd2862629333_)
                                          (let ((_e2862829338_
                                                 (gx#stx-e _hd2862629333_)))
                                            (let ((_tl2863029343_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2862829338_)))
                                                  (_hd2862929341_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2862829338_))))
                                              (if (gx#identifier?
                                                   _hd2862929341_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2862929341_)
                                                      (if (gx#stx-pair?
                                                           _tl2863029343_)
                                                          (let ((_e2863129346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2863029343_)))
                    (let ((_tl2863329351_
                           (let () (declare (not safe)) (##cdr _e2863129346_)))
                          (_hd2863229349_
                           (let ()
                             (declare (not safe))
                             (##car _e2863129346_))))
                      (if (gx#stx-null? _tl2863329351_)
                          (if (gx#stx-null? _tl2862729335_)
                              (if (gx#stx-null? _tl2858529223_)
                                  (___match3203932040_
                                   _e2857729202_
                                   _hd2857829205_
                                   _tl2857929207_
                                   _e2858029210_
                                   _hd2858129213_
                                   _tl2858229215_
                                   _e2858329218_
                                   _hd2858429221_
                                   _tl2858529223_
                                   _e2858629226_
                                   _hd2858729229_
                                   _tl2858829231_
                                   _e2858929234_
                                   _hd2859029237_
                                   _tl2859129239_
                                   _e2859229242_
                                   _hd2859329245_
                                   _tl2859429247_
                                   _e2859529250_
                                   _hd2859629253_
                                   _tl2859729255_
                                   _e2859829258_
                                   _hd2859929261_
                                   _tl2860029263_
                                   _e2860129266_
                                   _hd2860229269_
                                   _tl2860329271_
                                   _e2860429274_
                                   _hd2860529277_
                                   _tl2860629279_
                                   _e2860729282_
                                   _hd2860829285_
                                   _tl2860929287_
                                   _e2861029290_
                                   _hd2861129293_
                                   _tl2861229295_
                                   _e2861329298_
                                   _hd2861429301_
                                   _tl2861529303_
                                   _e2861629306_
                                   _hd2861729309_
                                   _tl2861829311_
                                   _e2861929314_
                                   _hd2862029317_
                                   _tl2862129319_
                                   _e2862229322_
                                   _hd2862329325_
                                   _tl2862429327_
                                   _e2862529330_
                                   _hd2862629333_
                                   _tl2862729335_
                                   _e2862829338_
                                   _hd2862929341_
                                   _tl2863029343_
                                   _e2863129346_
                                   _hd2863229349_
                                   _tl2863329351_)
                                  (___match3205132052_
                                   _e2857729202_
                                   _hd2857829205_
                                   _tl2857929207_
                                   _e2858029210_
                                   _hd2858129213_
                                   _tl2858229215_))
                              (___match3205132052_
                               _e2857729202_
                               _hd2857829205_
                               _tl2857929207_
                               _e2858029210_
                               _hd2858129213_
                               _tl2858229215_))
                          (___match3205132052_
                           _e2857729202_
                           _hd2857829205_
                           _tl2857929207_
                           _e2858029210_
                           _hd2858129213_
                           _tl2858229215_))))
                  (___match3205132052_
                   _e2857729202_
                   _hd2857829205_
                   _tl2857929207_
                   _e2858029210_
                   _hd2858129213_
                   _tl2858229215_))
              (___match3205132052_
               _e2857729202_
               _hd2857829205_
               _tl2857929207_
               _e2858029210_
               _hd2858129213_
               _tl2858229215_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3205132052_
                                                   _e2857729202_
                                                   _hd2857829205_
                                                   _tl2857929207_
                                                   _e2858029210_
                                                   _hd2858129213_
                                                   _tl2858229215_))))
                                          (___match3205132052_
                                           _e2857729202_
                                           _hd2857829205_
                                           _tl2857929207_
                                           _e2858029210_
                                           _hd2858129213_
                                           _tl2858229215_))))
                                  (___match3205132052_
                                   _e2857729202_
                                   _hd2857829205_
                                   _tl2857929207_
                                   _e2858029210_
                                   _hd2858129213_
                                   _tl2858229215_))
                              (___match3205132052_
                               _e2857729202_
                               _hd2857829205_
                               _tl2857929207_
                               _e2858029210_
                               _hd2858129213_
                               _tl2858229215_))))
                      (___match3205132052_
                       _e2857729202_
                       _hd2857829205_
                       _tl2857929207_
                       _e2858029210_
                       _hd2858129213_
                       _tl2858229215_))
                  (___match3205132052_
                   _e2857729202_
                   _hd2857829205_
                   _tl2857929207_
                   _e2858029210_
                   _hd2858129213_
                   _tl2858229215_))
              (___match3205132052_
               _e2857729202_
               _hd2857829205_
               _tl2857929207_
               _e2858029210_
               _hd2858129213_
               _tl2858229215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3205132052_
                                               _e2857729202_
                                               _hd2857829205_
                                               _tl2857929207_
                                               _e2858029210_
                                               _hd2858129213_
                                               _tl2858229215_))))
                                      (___match3205132052_
                                       _e2857729202_
                                       _hd2857829205_
                                       _tl2857929207_
                                       _e2858029210_
                                       _hd2858129213_
                                       _tl2858229215_))
                                  (___match3205132052_
                                   _e2857729202_
                                   _hd2857829205_
                                   _tl2857929207_
                                   _e2858029210_
                                   _hd2858129213_
                                   _tl2858229215_))))
                          (___match3205132052_
                           _e2857729202_
                           _hd2857829205_
                           _tl2857929207_
                           _e2858029210_
                           _hd2858129213_
                           _tl2858229215_))
                      (___match3205132052_
                       _e2857729202_
                       _hd2857829205_
                       _tl2857929207_
                       _e2858029210_
                       _hd2858129213_
                       _tl2858229215_))
                  (___match3205132052_
                   _e2857729202_
                   _hd2857829205_
                   _tl2857929207_
                   _e2858029210_
                   _hd2858129213_
                   _tl2858229215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3205132052_
                                                   _e2857729202_
                                                   _hd2857829205_
                                                   _tl2857929207_
                                                   _e2858029210_
                                                   _hd2858129213_
                                                   _tl2858229215_))))
                                          (___match3205132052_
                                           _e2857729202_
                                           _hd2857829205_
                                           _tl2857929207_
                                           _e2858029210_
                                           _hd2858129213_
                                           _tl2858229215_))
                                      (___match3205132052_
                                       _e2857729202_
                                       _hd2857829205_
                                       _tl2857929207_
                                       _e2858029210_
                                       _hd2858129213_
                                       _tl2858229215_))))
                              (___match3205132052_
                               _e2857729202_
                               _hd2857829205_
                               _tl2857929207_
                               _e2858029210_
                               _hd2858129213_
                               _tl2858229215_))
                          (___match3205132052_
                           _e2857729202_
                           _hd2857829205_
                           _tl2857929207_
                           _e2858029210_
                           _hd2858129213_
                           _tl2858229215_))
                      (___match3205132052_
                       _e2857729202_
                       _hd2857829205_
                       _tl2857929207_
                       _e2858029210_
                       _hd2858129213_
                       _tl2858229215_))))
              (___match3205132052_
               _e2857729202_
               _hd2857829205_
               _tl2857929207_
               _e2858029210_
               _hd2858129213_
               _tl2858229215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3205132052_
                                               _e2857729202_
                                               _hd2857829205_
                                               _tl2857929207_
                                               _e2858029210_
                                               _hd2858129213_
                                               _tl2858229215_))
                                          (___match3205132052_
                                           _e2857729202_
                                           _hd2857829205_
                                           _tl2857929207_
                                           _e2858029210_
                                           _hd2858129213_
                                           _tl2858229215_))))
                                  (___match3205132052_
                                   _e2857729202_
                                   _hd2857829205_
                                   _tl2857929207_
                                   _e2858029210_
                                   _hd2858129213_
                                   _tl2858229215_))
                              (___match3205132052_
                               _e2857729202_
                               _hd2857829205_
                               _tl2857929207_
                               _e2858029210_
                               _hd2858129213_
                               _tl2858229215_))
                          (___match3205132052_
                           _e2857729202_
                           _hd2857829205_
                           _tl2857929207_
                           _e2858029210_
                           _hd2858129213_
                           _tl2858229215_))))
                  (___match3205132052_
                   _e2857729202_
                   _hd2857829205_
                   _tl2857929207_
                   _e2858029210_
                   _hd2858129213_
                   _tl2858229215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3205132052_
                                                   _e2857729202_
                                                   _hd2857829205_
                                                   _tl2857929207_
                                                   _e2858029210_
                                                   _hd2858129213_
                                                   _tl2858229215_))
                                              (___match3205132052_
                                               _e2857729202_
                                               _hd2857829205_
                                               _tl2857929207_
                                               _e2858029210_
                                               _hd2858129213_
                                               _tl2858229215_))
                                          (___match3205132052_
                                           _e2857729202_
                                           _hd2857829205_
                                           _tl2857929207_
                                           _e2858029210_
                                           _hd2858129213_
                                           _tl2858229215_))))
                                  (___match3205132052_
                                   _e2857729202_
                                   _hd2857829205_
                                   _tl2857929207_
                                   _e2858029210_
                                   _hd2858129213_
                                   _tl2858229215_))))
                          (___match3205132052_
                           _e2857729202_
                           _hd2857829205_
                           _tl2857929207_
                           _e2858029210_
                           _hd2858129213_
                           _tl2858229215_))))
                   (___match3188731888_
                    (lambda (_e2851729419_
                             _hd2851829422_
                             _tl2851929424_
                             _e2852029427_
                             _hd2852129430_
                             _tl2852229432_
                             ___splice3159031591_
                             _target2852329435_
                             _tl2852529437_)
                      (letrec ((_loop2852629440_
                                (lambda (_hd2852429443_ _arg2853029445_)
                                  (if (gx#stx-pair? _hd2852429443_)
                                      (let ((_e2852729448_
                                             (gx#stx-e _hd2852429443_)))
                                        (let ((_lp-tl2852929453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2852729448_)))
                                              (_lp-hd2852829451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2852729448_))))
                                          (_loop2852629440_
                                           _lp-tl2852929453_
                                           (cons _lp-hd2852829451_
                                                 _arg2853029445_))))
                                      (let ((_arg2853129456_
                                             (reverse _arg2853029445_)))
                                        (if (gx#stx-pair? _tl2852229432_)
                                            (let ((_e2853229459_
                                                   (gx#stx-e _tl2852229432_)))
                                              (let ((_tl2853429464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2853229459_)))
                                                    (_hd2853329462_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2853229459_))))
                                                (if (gx#stx-pair?
                                                     _hd2853329462_)
                                                    (let ((_e2853529467_
                                                           (gx#stx-e
                                                            _hd2853329462_)))
                                                      (let ((_tl2853729472_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2853529467_)))
                    (_hd2853629470_
                     (let () (declare (not safe)) (##car _e2853529467_))))
                (if (gx#identifier? _hd2853629470_)
                    (if (gx#stx-eq? '%#call _hd2853629470_)
                        (if (gx#stx-pair? _tl2853729472_)
                            (let ((_e2853829475_ (gx#stx-e _tl2853729472_)))
                              (let ((_tl2854029480_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2853829475_)))
                                    (_hd2853929478_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2853829475_))))
                                (if (gx#stx-pair? _hd2853929478_)
                                    (let ((_e2854129483_
                                           (gx#stx-e _hd2853929478_)))
                                      (let ((_tl2854329488_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2854129483_)))
                                            (_hd2854229486_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2854129483_))))
                                        (if (gx#identifier? _hd2854229486_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2854229486_)
                                                (if (gx#stx-pair?
                                                     _tl2854329488_)
                                                    (let ((_e2854429491_
                                                           (gx#stx-e
                                                            _tl2854329488_)))
                                                      (let ((_tl2854629496_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2854429491_)))
                    (_hd2854529494_
                     (let () (declare (not safe)) (##car _e2854429491_))))
                (if (gx#stx-null? _tl2854629496_)
                    (if (gx#stx-pair? _tl2854029480_)
                        (let ((_e2854729499_ (gx#stx-e _tl2854029480_)))
                          (let ((_tl2854929504_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2854729499_)))
                                (_hd2854829502_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2854729499_))))
                            (if (gx#stx-pair? _hd2854829502_)
                                (let ((_e2855029507_
                                       (gx#stx-e _hd2854829502_)))
                                  (let ((_tl2855229512_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2855029507_)))
                                        (_hd2855129510_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2855029507_))))
                                    (if (gx#identifier? _hd2855129510_)
                                        (if (gx#stx-eq? '%#ref _hd2855129510_)
                                            (if (gx#stx-pair? _tl2855229512_)
                                                (let ((_e2855329515_
                                                       (gx#stx-e
                                                        _tl2855229512_)))
                                                  (let ((_tl2855529520_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2855329515_)))
                                                        (_hd2855429518_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2855329515_))))
                                                    (if (gx#stx-null?
                                                         _tl2855529520_)
                                                        (if (gx#stx-pair/null?
                                                             _tl2854929504_)
                                                            (let ((___splice3159231593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl2854929504_ '0)))
                      (let ((_tl2855829525_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3159231593_ '1)))
                            (_target2855629523_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3159231593_ '0))))
                        (if (gx#stx-null? _tl2855829525_)
                            (letrec ((_loop2855929528_
                                      (lambda (_hd2855729531_ _xarg2856329533_)
                                        (if (gx#stx-pair? _hd2855729531_)
                                            (let ((_e2856029536_
                                                   (gx#stx-e _hd2855729531_)))
                                              (let ((_lp-tl2856229541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2856029536_)))
                                                    (_lp-hd2856129539_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2856029536_))))
                                                (if (gx#stx-pair?
                                                     _lp-hd2856129539_)
                                                    (let ((_e2856529544_
                                                           (gx#stx-e
                                                            _lp-hd2856129539_)))
                                                      (let ((_tl2856729549_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2856529544_)))
                    (_hd2856629547_
                     (let () (declare (not safe)) (##car _e2856529544_))))
                (if (gx#identifier? _hd2856629547_)
                    (if (gx#stx-eq? '%#ref _hd2856629547_)
                        (if (gx#stx-pair? _tl2856729549_)
                            (let ((_e2856829552_ (gx#stx-e _tl2856729549_)))
                              (let ((_tl2857029557_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2856829552_)))
                                    (_hd2856929555_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2856829552_))))
                                (if (gx#stx-null? _tl2857029557_)
                                    (_loop2855929528_
                                     _lp-tl2856229541_
                                     (cons _hd2856929555_ _xarg2856329533_))
                                    (___match3196331964_
                                     _e2851729419_
                                     _hd2851829422_
                                     _tl2851929424_
                                     _e2852029427_
                                     _hd2852129430_
                                     _tl2852229432_
                                     _e2853229459_
                                     _hd2853329462_
                                     _tl2853429464_
                                     _e2853529467_
                                     _hd2853629470_
                                     _tl2853729472_
                                     _e2853829475_
                                     _hd2853929478_
                                     _tl2854029480_
                                     _e2854129483_
                                     _hd2854229486_
                                     _tl2854329488_
                                     _e2854429491_
                                     _hd2854529494_
                                     _tl2854629496_
                                     _e2854729499_
                                     _hd2854829502_
                                     _tl2854929504_
                                     _e2855029507_
                                     _hd2855129510_
                                     _tl2855229512_
                                     _e2855329515_
                                     _hd2855429518_
                                     _tl2855529520_))))
                            (___match3196331964_
                             _e2851729419_
                             _hd2851829422_
                             _tl2851929424_
                             _e2852029427_
                             _hd2852129430_
                             _tl2852229432_
                             _e2853229459_
                             _hd2853329462_
                             _tl2853429464_
                             _e2853529467_
                             _hd2853629470_
                             _tl2853729472_
                             _e2853829475_
                             _hd2853929478_
                             _tl2854029480_
                             _e2854129483_
                             _hd2854229486_
                             _tl2854329488_
                             _e2854429491_
                             _hd2854529494_
                             _tl2854629496_
                             _e2854729499_
                             _hd2854829502_
                             _tl2854929504_
                             _e2855029507_
                             _hd2855129510_
                             _tl2855229512_
                             _e2855329515_
                             _hd2855429518_
                             _tl2855529520_))
                        (___match3196331964_
                         _e2851729419_
                         _hd2851829422_
                         _tl2851929424_
                         _e2852029427_
                         _hd2852129430_
                         _tl2852229432_
                         _e2853229459_
                         _hd2853329462_
                         _tl2853429464_
                         _e2853529467_
                         _hd2853629470_
                         _tl2853729472_
                         _e2853829475_
                         _hd2853929478_
                         _tl2854029480_
                         _e2854129483_
                         _hd2854229486_
                         _tl2854329488_
                         _e2854429491_
                         _hd2854529494_
                         _tl2854629496_
                         _e2854729499_
                         _hd2854829502_
                         _tl2854929504_
                         _e2855029507_
                         _hd2855129510_
                         _tl2855229512_
                         _e2855329515_
                         _hd2855429518_
                         _tl2855529520_))
                    (___match3196331964_
                     _e2851729419_
                     _hd2851829422_
                     _tl2851929424_
                     _e2852029427_
                     _hd2852129430_
                     _tl2852229432_
                     _e2853229459_
                     _hd2853329462_
                     _tl2853429464_
                     _e2853529467_
                     _hd2853629470_
                     _tl2853729472_
                     _e2853829475_
                     _hd2853929478_
                     _tl2854029480_
                     _e2854129483_
                     _hd2854229486_
                     _tl2854329488_
                     _e2854429491_
                     _hd2854529494_
                     _tl2854629496_
                     _e2854729499_
                     _hd2854829502_
                     _tl2854929504_
                     _e2855029507_
                     _hd2855129510_
                     _tl2855229512_
                     _e2855329515_
                     _hd2855429518_
                     _tl2855529520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3196331964_
                                                     _e2851729419_
                                                     _hd2851829422_
                                                     _tl2851929424_
                                                     _e2852029427_
                                                     _hd2852129430_
                                                     _tl2852229432_
                                                     _e2853229459_
                                                     _hd2853329462_
                                                     _tl2853429464_
                                                     _e2853529467_
                                                     _hd2853629470_
                                                     _tl2853729472_
                                                     _e2853829475_
                                                     _hd2853929478_
                                                     _tl2854029480_
                                                     _e2854129483_
                                                     _hd2854229486_
                                                     _tl2854329488_
                                                     _e2854429491_
                                                     _hd2854529494_
                                                     _tl2854629496_
                                                     _e2854729499_
                                                     _hd2854829502_
                                                     _tl2854929504_
                                                     _e2855029507_
                                                     _hd2855129510_
                                                     _tl2855229512_
                                                     _e2855329515_
                                                     _hd2855429518_
                                                     _tl2855529520_))))
                                            (let ((_xarg2856429560_
                                                   (reverse _xarg2856329533_)))
                                              (if (gx#stx-null? _tl2853429464_)
                                                  (let ((_L29563_
                                                         _xarg2856429560_)
                                                        (_L29564_
                                                         _hd2855429518_)
                                                        (_L29565_
                                                         _hd2854529494_)
                                                        (_L29566_
                                                         _arg2853129456_))
                                                    (if (and (gx#identifier-list?
                                                              (foldr1 (lambda (_g2960329606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2960429608_)
                                (cons _g2960329606_ _g2960429608_))
                              '()
                              _L29566_))
                     (gxc#runtime-identifier=? _L29565_ 'make-struct-instance)
                     (fx= (length (foldr1 (lambda (_g2961029613_ _g2961129615_)
                                            (cons _g2961029613_ _g2961129615_))
                                          '()
                                          _L29566_))
                          (length (foldr1 (lambda (_g2961729620_ _g2961829622_)
                                            (cons _g2961729620_ _g2961829622_))
                                          '()
                                          _L29563_)))
                     (andmap2 gx#free-identifier=?
                              (foldr1 (lambda (_g2962429627_ _g2962529629_)
                                        (cons _g2962429627_ _g2962529629_))
                                      '()
                                      _L29566_)
                              (foldr1 (lambda (_g2963129634_ _g2963229636_)
                                        (cons _g2963129634_ _g2963229636_))
                                      '()
                                      _L29563_)))
                (___kont3158831589_ _L29563_ _L29564_ _L29565_ _L29566_)
                (___match3196331964_
                 _e2851729419_
                 _hd2851829422_
                 _tl2851929424_
                 _e2852029427_
                 _hd2852129430_
                 _tl2852229432_
                 _e2853229459_
                 _hd2853329462_
                 _tl2853429464_
                 _e2853529467_
                 _hd2853629470_
                 _tl2853729472_
                 _e2853829475_
                 _hd2853929478_
                 _tl2854029480_
                 _e2854129483_
                 _hd2854229486_
                 _tl2854329488_
                 _e2854429491_
                 _hd2854529494_
                 _tl2854629496_
                 _e2854729499_
                 _hd2854829502_
                 _tl2854929504_
                 _e2855029507_
                 _hd2855129510_
                 _tl2855229512_
                 _e2855329515_
                 _hd2855429518_
                 _tl2855529520_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3196331964_
                                                   _e2851729419_
                                                   _hd2851829422_
                                                   _tl2851929424_
                                                   _e2852029427_
                                                   _hd2852129430_
                                                   _tl2852229432_
                                                   _e2853229459_
                                                   _hd2853329462_
                                                   _tl2853429464_
                                                   _e2853529467_
                                                   _hd2853629470_
                                                   _tl2853729472_
                                                   _e2853829475_
                                                   _hd2853929478_
                                                   _tl2854029480_
                                                   _e2854129483_
                                                   _hd2854229486_
                                                   _tl2854329488_
                                                   _e2854429491_
                                                   _hd2854529494_
                                                   _tl2854629496_
                                                   _e2854729499_
                                                   _hd2854829502_
                                                   _tl2854929504_
                                                   _e2855029507_
                                                   _hd2855129510_
                                                   _tl2855229512_
                                                   _e2855329515_
                                                   _hd2855429518_
                                                   _tl2855529520_)))))))
                              (_loop2855929528_ _target2855629523_ '()))
                            (___match3196331964_
                             _e2851729419_
                             _hd2851829422_
                             _tl2851929424_
                             _e2852029427_
                             _hd2852129430_
                             _tl2852229432_
                             _e2853229459_
                             _hd2853329462_
                             _tl2853429464_
                             _e2853529467_
                             _hd2853629470_
                             _tl2853729472_
                             _e2853829475_
                             _hd2853929478_
                             _tl2854029480_
                             _e2854129483_
                             _hd2854229486_
                             _tl2854329488_
                             _e2854429491_
                             _hd2854529494_
                             _tl2854629496_
                             _e2854729499_
                             _hd2854829502_
                             _tl2854929504_
                             _e2855029507_
                             _hd2855129510_
                             _tl2855229512_
                             _e2855329515_
                             _hd2855429518_
                             _tl2855529520_))))
                    (___match3196331964_
                     _e2851729419_
                     _hd2851829422_
                     _tl2851929424_
                     _e2852029427_
                     _hd2852129430_
                     _tl2852229432_
                     _e2853229459_
                     _hd2853329462_
                     _tl2853429464_
                     _e2853529467_
                     _hd2853629470_
                     _tl2853729472_
                     _e2853829475_
                     _hd2853929478_
                     _tl2854029480_
                     _e2854129483_
                     _hd2854229486_
                     _tl2854329488_
                     _e2854429491_
                     _hd2854529494_
                     _tl2854629496_
                     _e2854729499_
                     _hd2854829502_
                     _tl2854929504_
                     _e2855029507_
                     _hd2855129510_
                     _tl2855229512_
                     _e2855329515_
                     _hd2855429518_
                     _tl2855529520_))
                (___match3205132052_
                 _e2851729419_
                 _hd2851829422_
                 _tl2851929424_
                 _e2852029427_
                 _hd2852129430_
                 _tl2852229432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match3205132052_
                                                 _e2851729419_
                                                 _hd2851829422_
                                                 _tl2851929424_
                                                 _e2852029427_
                                                 _hd2852129430_
                                                 _tl2852229432_))
                                            (___match3205132052_
                                             _e2851729419_
                                             _hd2851829422_
                                             _tl2851929424_
                                             _e2852029427_
                                             _hd2852129430_
                                             _tl2852229432_))
                                        (___match3205132052_
                                         _e2851729419_
                                         _hd2851829422_
                                         _tl2851929424_
                                         _e2852029427_
                                         _hd2852129430_
                                         _tl2852229432_))))
                                (___match3205132052_
                                 _e2851729419_
                                 _hd2851829422_
                                 _tl2851929424_
                                 _e2852029427_
                                 _hd2852129430_
                                 _tl2852229432_))))
                        (___match3205132052_
                         _e2851729419_
                         _hd2851829422_
                         _tl2851929424_
                         _e2852029427_
                         _hd2852129430_
                         _tl2852229432_))
                    (___match3205132052_
                     _e2851729419_
                     _hd2851829422_
                     _tl2851929424_
                     _e2852029427_
                     _hd2852129430_
                     _tl2852229432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3205132052_
                                                     _e2851729419_
                                                     _hd2851829422_
                                                     _tl2851929424_
                                                     _e2852029427_
                                                     _hd2852129430_
                                                     _tl2852229432_))
                                                (___match3205132052_
                                                 _e2851729419_
                                                 _hd2851829422_
                                                 _tl2851929424_
                                                 _e2852029427_
                                                 _hd2852129430_
                                                 _tl2852229432_))
                                            (___match3205132052_
                                             _e2851729419_
                                             _hd2851829422_
                                             _tl2851929424_
                                             _e2852029427_
                                             _hd2852129430_
                                             _tl2852229432_))))
                                    (___match3205132052_
                                     _e2851729419_
                                     _hd2851829422_
                                     _tl2851929424_
                                     _e2852029427_
                                     _hd2852129430_
                                     _tl2852229432_))))
                            (___match3205132052_
                             _e2851729419_
                             _hd2851829422_
                             _tl2851929424_
                             _e2852029427_
                             _hd2852129430_
                             _tl2852229432_))
                        (___match3205132052_
                         _e2851729419_
                         _hd2851829422_
                         _tl2851929424_
                         _e2852029427_
                         _hd2852129430_
                         _tl2852229432_))
                    (___match3205132052_
                     _e2851729419_
                     _hd2851829422_
                     _tl2851929424_
                     _e2852029427_
                     _hd2852129430_
                     _tl2852229432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3205132052_
                                                     _e2851729419_
                                                     _hd2851829422_
                                                     _tl2851929424_
                                                     _e2852029427_
                                                     _hd2852129430_
                                                     _tl2852229432_))))
                                            (___match3205132052_
                                             _e2851729419_
                                             _hd2851829422_
                                             _tl2851929424_
                                             _e2852029427_
                                             _hd2852129430_
                                             _tl2852229432_)))))))
                        (_loop2852629440_ _target2852329435_ '()))))
                   (___match3187931880_
                    (lambda (_e2851729419_
                             _hd2851829422_
                             _tl2851929424_
                             _e2852029427_
                             _hd2852129430_
                             _tl2852229432_)
                      (if (gx#stx-pair/null? _hd2852129430_)
                          (let ((___splice3159031591_
                                 (gx#syntax-split-splice _hd2852129430_ '0)))
                            (let ((_tl2852529437_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3159031591_ '1)))
                                  (_target2852329435_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3159031591_ '0))))
                              (if (gx#stx-null? _tl2852529437_)
                                  (___match3188731888_
                                   _e2851729419_
                                   _hd2851829422_
                                   _tl2851929424_
                                   _e2852029427_
                                   _hd2852129430_
                                   _tl2852229432_
                                   ___splice3159031591_
                                   _target2852329435_
                                   _tl2852529437_)
                                  (___match3189931900_
                                   _e2851729419_
                                   _hd2851829422_
                                   _tl2851929424_
                                   _e2852029427_
                                   _hd2852129430_
                                   _tl2852229432_))))
                          (___match3189931900_
                           _e2851729419_
                           _hd2851829422_
                           _tl2851929424_
                           _e2852029427_
                           _hd2852129430_
                           _tl2852229432_))))
                   (___match3186731868_
                    (lambda (_e2846529649_
                             _hd2846629652_
                             _tl2846729654_
                             _e2846829657_
                             _hd2846929660_
                             _tl2847029662_
                             _e2847129665_
                             _hd2847229668_
                             _tl2847329670_
                             _e2847429673_
                             _hd2847529676_
                             _tl2847629678_
                             _e2847729681_
                             _hd2847829684_
                             _tl2847929686_
                             _e2848029689_
                             _hd2848129692_
                             _tl2848229694_
                             _e2848329697_
                             _hd2848429700_
                             _tl2848529702_
                             _e2848629705_
                             _hd2848729708_
                             _tl2848829710_
                             _e2848929713_
                             _hd2849029716_
                             _tl2849129718_
                             _e2849229721_
                             _hd2849329724_
                             _tl2849429726_
                             _e2849529729_
                             _hd2849629732_
                             _tl2849729734_
                             _e2849829737_
                             _hd2849929740_
                             _tl2850029742_
                             _e2850129745_
                             _hd2850229748_
                             _tl2850329750_
                             _e2850429753_
                             _hd2850529756_
                             _tl2850629758_
                             _e2850729761_
                             _hd2850829764_
                             _tl2850929766_
                             _e2851029769_
                             _hd2851129772_
                             _tl2851229774_)
                      (let ((_L29777_ _hd2851129772_)
                            (_L29778_ _hd2850229748_)
                            (_L29779_ _hd2849329724_)
                            (_L29780_ _hd2848429700_)
                            (_L29781_ _hd2846929660_))
                        (if (and (gx#identifier? _L29781_)
                                 (gxc#runtime-identifier=? _L29780_ 'apply)
                                 (gxc#runtime-identifier=?
                                  _L29779_
                                  'make-class-instance)
                                 (gx#free-identifier=? _L29781_ _L29777_))
                            (___kont3158631587_
                             _L29777_
                             _L29778_
                             _L29779_
                             _L29780_
                             _L29781_)
                            (___match3187931880_
                             _e2846529649_
                             _hd2846629652_
                             _tl2846729654_
                             _e2846829657_
                             _hd2846929660_
                             _tl2847029662_)))))
                   (___match3173931740_
                    (lambda (_e2841229834_
                             _hd2841329837_
                             _tl2841429839_
                             _e2841529842_
                             _hd2841629845_
                             _tl2841729847_
                             _e2841829850_
                             _hd2841929853_
                             _tl2842029855_
                             _e2842129858_
                             _hd2842229861_
                             _tl2842329863_
                             _e2842429866_
                             _hd2842529869_
                             _tl2842629871_
                             _e2842729874_
                             _hd2842829877_
                             _tl2842929879_
                             _e2843029882_
                             _hd2843129885_
                             _tl2843229887_
                             _e2843329890_
                             _hd2843429893_
                             _tl2843529895_
                             _e2843629898_
                             _hd2843729901_
                             _tl2843829903_
                             _e2843929906_
                             _hd2844029909_
                             _tl2844129911_
                             _e2844229914_
                             _hd2844329917_
                             _tl2844429919_
                             _e2844529922_
                             _hd2844629925_
                             _tl2844729927_
                             _e2844829930_
                             _hd2844929933_
                             _tl2845029935_
                             _e2845129938_
                             _hd2845229941_
                             _tl2845329943_
                             _e2845429946_
                             _hd2845529949_
                             _tl2845629951_
                             _e2845729954_
                             _hd2845829957_
                             _tl2845929959_)
                      (let ((_L29962_ _hd2845829957_)
                            (_L29963_ _hd2844929933_)
                            (_L29964_ _hd2844029909_)
                            (_L29965_ _hd2843129885_)
                            (_L29966_ _hd2841629845_))
                        (if (and (gx#identifier? _L29966_)
                                 (gxc#runtime-identifier=? _L29965_ 'apply)
                                 (gxc#runtime-identifier=?
                                  _L29964_
                                  'make-struct-instance)
                                 (gx#free-identifier=? _L29966_ _L29962_))
                            (___kont3158431585_
                             _L29962_
                             _L29963_
                             _L29964_
                             _L29965_
                             _L29966_)
                            (___match3186731868_
                             _e2841229834_
                             _hd2841329837_
                             _tl2841429839_
                             _e2841529842_
                             _hd2841629845_
                             _tl2841729847_
                             _e2841829850_
                             _hd2841929853_
                             _tl2842029855_
                             _e2842129858_
                             _hd2842229861_
                             _tl2842329863_
                             _e2842429866_
                             _hd2842529869_
                             _tl2842629871_
                             _e2842729874_
                             _hd2842829877_
                             _tl2842929879_
                             _e2843029882_
                             _hd2843129885_
                             _tl2843229887_
                             _e2843329890_
                             _hd2843429893_
                             _tl2843529895_
                             _e2843629898_
                             _hd2843729901_
                             _tl2843829903_
                             _e2843929906_
                             _hd2844029909_
                             _tl2844129911_
                             _e2844229914_
                             _hd2844329917_
                             _tl2844429919_
                             _e2844529922_
                             _hd2844629925_
                             _tl2844729927_
                             _e2844829930_
                             _hd2844929933_
                             _tl2845029935_
                             _e2845129938_
                             _hd2845229941_
                             _tl2845329943_
                             _e2845429946_
                             _hd2845529949_
                             _tl2845629951_
                             _e2845729954_
                             _hd2845829957_
                             _tl2845929959_)))))
                   (___match3161731618_
                    (lambda (_e2841229834_ _hd2841329837_ _tl2841429839_)
                      (if (gx#stx-pair? _tl2841429839_)
                          (let ((_e2841529842_ (gx#stx-e _tl2841429839_)))
                            (let ((_tl2841729847_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2841529842_)))
                                  (_hd2841629845_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2841529842_))))
                              (if (gx#stx-pair? _tl2841729847_)
                                  (let ((_e2841829850_
                                         (gx#stx-e _tl2841729847_)))
                                    (let ((_tl2842029855_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2841829850_)))
                                          (_hd2841929853_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2841829850_))))
                                      (if (gx#stx-pair? _hd2841929853_)
                                          (let ((_e2842129858_
                                                 (gx#stx-e _hd2841929853_)))
                                            (let ((_tl2842329863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2842129858_)))
                                                  (_hd2842229861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2842129858_))))
                                              (if (gx#identifier?
                                                   _hd2842229861_)
                                                  (if (gx#stx-eq?
                                                       '%#call
                                                       _hd2842229861_)
                                                      (if (gx#stx-pair?
                                                           _tl2842329863_)
                                                          (let ((_e2842429866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2842329863_)))
                    (let ((_tl2842629871_
                           (let () (declare (not safe)) (##cdr _e2842429866_)))
                          (_hd2842529869_
                           (let ()
                             (declare (not safe))
                             (##car _e2842429866_))))
                      (if (gx#stx-pair? _hd2842529869_)
                          (let ((_e2842729874_ (gx#stx-e _hd2842529869_)))
                            (let ((_tl2842929879_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2842729874_)))
                                  (_hd2842829877_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2842729874_))))
                              (if (gx#identifier? _hd2842829877_)
                                  (if (gx#stx-eq? '%#ref _hd2842829877_)
                                      (if (gx#stx-pair? _tl2842929879_)
                                          (let ((_e2843029882_
                                                 (gx#stx-e _tl2842929879_)))
                                            (let ((_tl2843229887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2843029882_)))
                                                  (_hd2843129885_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2843029882_))))
                                              (if (gx#stx-null? _tl2843229887_)
                                                  (if (gx#stx-pair?
                                                       _tl2842629871_)
                                                      (let ((_e2843329890_
                                                             (gx#stx-e
                                                              _tl2842629871_)))
                                                        (let ((_tl2843529895_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2843329890_)))
                      (_hd2843429893_
                       (let () (declare (not safe)) (##car _e2843329890_))))
                  (if (gx#stx-pair? _hd2843429893_)
                      (let ((_e2843629898_ (gx#stx-e _hd2843429893_)))
                        (let ((_tl2843829903_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2843629898_)))
                              (_hd2843729901_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2843629898_))))
                          (if (gx#identifier? _hd2843729901_)
                              (if (gx#stx-eq? '%#ref _hd2843729901_)
                                  (if (gx#stx-pair? _tl2843829903_)
                                      (let ((_e2843929906_
                                             (gx#stx-e _tl2843829903_)))
                                        (let ((_tl2844129911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2843929906_)))
                                              (_hd2844029909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2843929906_))))
                                          (if (gx#stx-null? _tl2844129911_)
                                              (if (gx#stx-pair? _tl2843529895_)
                                                  (let ((_e2844229914_
                                                         (gx#stx-e
                                                          _tl2843529895_)))
                                                    (let ((_tl2844429919_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2844229914_)))
                                                          (_hd2844329917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2844229914_))))
                                                      (if (gx#stx-pair?
                                                           _hd2844329917_)
                                                          (let ((_e2844529922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2844329917_)))
                    (let ((_tl2844729927_
                           (let () (declare (not safe)) (##cdr _e2844529922_)))
                          (_hd2844629925_
                           (let ()
                             (declare (not safe))
                             (##car _e2844529922_))))
                      (if (gx#identifier? _hd2844629925_)
                          (if (gx#stx-eq? '%#ref _hd2844629925_)
                              (if (gx#stx-pair? _tl2844729927_)
                                  (let ((_e2844829930_
                                         (gx#stx-e _tl2844729927_)))
                                    (let ((_tl2845029935_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2844829930_)))
                                          (_hd2844929933_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2844829930_))))
                                      (if (gx#stx-null? _tl2845029935_)
                                          (if (gx#stx-pair? _tl2844429919_)
                                              (let ((_e2845129938_
                                                     (gx#stx-e
                                                      _tl2844429919_)))
                                                (let ((_tl2845329943_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2845129938_)))
                                                      (_hd2845229941_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2845129938_))))
                                                  (if (gx#stx-pair?
                                                       _hd2845229941_)
                                                      (let ((_e2845429946_
                                                             (gx#stx-e
                                                              _hd2845229941_)))
                                                        (let ((_tl2845629951_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2845429946_)))
                      (_hd2845529949_
                       (let () (declare (not safe)) (##car _e2845429946_))))
                  (if (gx#identifier? _hd2845529949_)
                      (if (gx#stx-eq? '%#ref _hd2845529949_)
                          (if (gx#stx-pair? _tl2845629951_)
                              (let ((_e2845729954_ (gx#stx-e _tl2845629951_)))
                                (let ((_tl2845929959_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2845729954_)))
                                      (_hd2845829957_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2845729954_))))
                                  (if (gx#stx-null? _tl2845929959_)
                                      (if (gx#stx-null? _tl2845329943_)
                                          (if (gx#stx-null? _tl2842029855_)
                                              (___match3173931740_
                                               _e2841229834_
                                               _hd2841329837_
                                               _tl2841429839_
                                               _e2841529842_
                                               _hd2841629845_
                                               _tl2841729847_
                                               _e2841829850_
                                               _hd2841929853_
                                               _tl2842029855_
                                               _e2842129858_
                                               _hd2842229861_
                                               _tl2842329863_
                                               _e2842429866_
                                               _hd2842529869_
                                               _tl2842629871_
                                               _e2842729874_
                                               _hd2842829877_
                                               _tl2842929879_
                                               _e2843029882_
                                               _hd2843129885_
                                               _tl2843229887_
                                               _e2843329890_
                                               _hd2843429893_
                                               _tl2843529895_
                                               _e2843629898_
                                               _hd2843729901_
                                               _tl2843829903_
                                               _e2843929906_
                                               _hd2844029909_
                                               _tl2844129911_
                                               _e2844229914_
                                               _hd2844329917_
                                               _tl2844429919_
                                               _e2844529922_
                                               _hd2844629925_
                                               _tl2844729927_
                                               _e2844829930_
                                               _hd2844929933_
                                               _tl2845029935_
                                               _e2845129938_
                                               _hd2845229941_
                                               _tl2845329943_
                                               _e2845429946_
                                               _hd2845529949_
                                               _tl2845629951_
                                               _e2845729954_
                                               _hd2845829957_
                                               _tl2845929959_)
                                              (___match3187931880_
                                               _e2841229834_
                                               _hd2841329837_
                                               _tl2841429839_
                                               _e2841529842_
                                               _hd2841629845_
                                               _tl2841729847_))
                                          (___match3187931880_
                                           _e2841229834_
                                           _hd2841329837_
                                           _tl2841429839_
                                           _e2841529842_
                                           _hd2841629845_
                                           _tl2841729847_))
                                      (___match3187931880_
                                       _e2841229834_
                                       _hd2841329837_
                                       _tl2841429839_
                                       _e2841529842_
                                       _hd2841629845_
                                       _tl2841729847_))))
                              (___match3187931880_
                               _e2841229834_
                               _hd2841329837_
                               _tl2841429839_
                               _e2841529842_
                               _hd2841629845_
                               _tl2841729847_))
                          (___match3187931880_
                           _e2841229834_
                           _hd2841329837_
                           _tl2841429839_
                           _e2841529842_
                           _hd2841629845_
                           _tl2841729847_))
                      (___match3187931880_
                       _e2841229834_
                       _hd2841329837_
                       _tl2841429839_
                       _e2841529842_
                       _hd2841629845_
                       _tl2841729847_))))
              (___match3187931880_
               _e2841229834_
               _hd2841329837_
               _tl2841429839_
               _e2841529842_
               _hd2841629845_
               _tl2841729847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3187931880_
                                               _e2841229834_
                                               _hd2841329837_
                                               _tl2841429839_
                                               _e2841529842_
                                               _hd2841629845_
                                               _tl2841729847_))
                                          (___match3187931880_
                                           _e2841229834_
                                           _hd2841329837_
                                           _tl2841429839_
                                           _e2841529842_
                                           _hd2841629845_
                                           _tl2841729847_))))
                                  (___match3187931880_
                                   _e2841229834_
                                   _hd2841329837_
                                   _tl2841429839_
                                   _e2841529842_
                                   _hd2841629845_
                                   _tl2841729847_))
                              (___match3187931880_
                               _e2841229834_
                               _hd2841329837_
                               _tl2841429839_
                               _e2841529842_
                               _hd2841629845_
                               _tl2841729847_))
                          (___match3187931880_
                           _e2841229834_
                           _hd2841329837_
                           _tl2841429839_
                           _e2841529842_
                           _hd2841629845_
                           _tl2841729847_))))
                  (___match3187931880_
                   _e2841229834_
                   _hd2841329837_
                   _tl2841429839_
                   _e2841529842_
                   _hd2841629845_
                   _tl2841729847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3187931880_
                                                   _e2841229834_
                                                   _hd2841329837_
                                                   _tl2841429839_
                                                   _e2841529842_
                                                   _hd2841629845_
                                                   _tl2841729847_))
                                              (___match3187931880_
                                               _e2841229834_
                                               _hd2841329837_
                                               _tl2841429839_
                                               _e2841529842_
                                               _hd2841629845_
                                               _tl2841729847_))))
                                      (___match3187931880_
                                       _e2841229834_
                                       _hd2841329837_
                                       _tl2841429839_
                                       _e2841529842_
                                       _hd2841629845_
                                       _tl2841729847_))
                                  (___match3187931880_
                                   _e2841229834_
                                   _hd2841329837_
                                   _tl2841429839_
                                   _e2841529842_
                                   _hd2841629845_
                                   _tl2841729847_))
                              (___match3187931880_
                               _e2841229834_
                               _hd2841329837_
                               _tl2841429839_
                               _e2841529842_
                               _hd2841629845_
                               _tl2841729847_))))
                      (___match3187931880_
                       _e2841229834_
                       _hd2841329837_
                       _tl2841429839_
                       _e2841529842_
                       _hd2841629845_
                       _tl2841729847_))))
              (___match3187931880_
               _e2841229834_
               _hd2841329837_
               _tl2841429839_
               _e2841529842_
               _hd2841629845_
               _tl2841729847_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3187931880_
                                                   _e2841229834_
                                                   _hd2841329837_
                                                   _tl2841429839_
                                                   _e2841529842_
                                                   _hd2841629845_
                                                   _tl2841729847_))))
                                          (___match3187931880_
                                           _e2841229834_
                                           _hd2841329837_
                                           _tl2841429839_
                                           _e2841529842_
                                           _hd2841629845_
                                           _tl2841729847_))
                                      (___match3187931880_
                                       _e2841229834_
                                       _hd2841329837_
                                       _tl2841429839_
                                       _e2841529842_
                                       _hd2841629845_
                                       _tl2841729847_))
                                  (___match3187931880_
                                   _e2841229834_
                                   _hd2841329837_
                                   _tl2841429839_
                                   _e2841529842_
                                   _hd2841629845_
                                   _tl2841729847_))))
                          (___match3187931880_
                           _e2841229834_
                           _hd2841329837_
                           _tl2841429839_
                           _e2841529842_
                           _hd2841629845_
                           _tl2841729847_))))
                  (___match3187931880_
                   _e2841229834_
                   _hd2841329837_
                   _tl2841429839_
                   _e2841529842_
                   _hd2841629845_
                   _tl2841729847_))
              (___match3187931880_
               _e2841229834_
               _hd2841329837_
               _tl2841429839_
               _e2841529842_
               _hd2841629845_
               _tl2841729847_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3187931880_
                                                   _e2841229834_
                                                   _hd2841329837_
                                                   _tl2841429839_
                                                   _e2841529842_
                                                   _hd2841629845_
                                                   _tl2841729847_))))
                                          (___match3187931880_
                                           _e2841229834_
                                           _hd2841329837_
                                           _tl2841429839_
                                           _e2841529842_
                                           _hd2841629845_
                                           _tl2841729847_))))
                                  (___match3187931880_
                                   _e2841229834_
                                   _hd2841329837_
                                   _tl2841429839_
                                   _e2841529842_
                                   _hd2841629845_
                                   _tl2841729847_))))
                          (___match3218532186_
                           _e2841229834_
                           _hd2841329837_
                           _tl2841429839_)))))
              (if (gx#stx-pair? ___stx3158031581_)
                  (let ((_e2840430019_ (gx#stx-e ___stx3158031581_)))
                    (let ((_tl2840630024_
                           (let () (declare (not safe)) (##cdr _e2840430019_)))
                          (_hd2840530022_
                           (let ()
                             (declare (not safe))
                             (##car _e2840430019_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L30027_ _tl2840630024_))
                            (___kont3158231583_ _L30027_))
                          (___match3161731618_
                           _e2840430019_
                           _hd2840530022_
                           _tl2840630024_))))
                  (_g2840128761_)))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx28347_)
        (letrec ((_clause-e28349_
                  (lambda (_form28390_)
                    (let ((__obj34498 (make-object gxc#!lambda::t '5)))
                      (gxc#!lambda:::init!__0
                       __obj34498
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form28390_)
                       (if (not (gxc#current-compile-type-closure))
                           (if (gxc#dispatch-lambda-form? _form28390_)
                               (gxc#dispatch-lambda-form-delegate _form28390_)
                               '#f)
                           '#f))
                      __obj34498))))
          (let* ((_g2835128361_
                  (lambda (_g2835228358_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2835228358_)))
                 (_g2835028387_
                  (lambda (_g2835228364_)
                    (if (gx#stx-pair? _g2835228364_)
                        (let ((_e2835428366_ (gx#stx-e _g2835228364_)))
                          (let ((_hd2835528369_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2835428366_)))
                                (_tl2835628371_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2835428366_))))
                            ((lambda (_L28374_)
                               (let ((_clauses28385_
                                      (map _clause-e28349_ _L28374_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses28385_)))
                             _tl2835628371_)))
                        (_g2835128361_ _g2835228364_)))))
            (_g2835028387_ _stx28347_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx28279_)
        (let* ((_g2828128298_
                (lambda (_g2828228295_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2828228295_)))
               (_g2828028344_
                (lambda (_g2828228301_)
                  (if (gx#stx-pair? _g2828228301_)
                      (let ((_e2828528303_ (gx#stx-e _g2828228301_)))
                        (let ((_hd2828628306_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2828528303_)))
                              (_tl2828728308_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2828528303_))))
                          (if (gx#stx-pair? _tl2828728308_)
                              (let ((_e2828828311_ (gx#stx-e _tl2828728308_)))
                                (let ((_hd2828928314_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2828828311_)))
                                      (_tl2829028316_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2828828311_))))
                                  (if (gx#stx-pair? _tl2829028316_)
                                      (let ((_e2829128319_
                                             (gx#stx-e _tl2829028316_)))
                                        (let ((_hd2829228322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2829128319_)))
                                              (_tl2829328324_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2829128319_))))
                                          (if (gx#stx-null? _tl2829328324_)
                                              ((lambda (_L28327_ _L28328_)
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e _L28327_))
                                                  gxc#current-compile-type-closure
                                                  '#t))
                                               _hd2829228322_
                                               _hd2828928314_)
                                              (_g2828128298_ _g2828228301_))))
                                      (_g2828128298_ _g2828228301_))))
                              (_g2828128298_ _g2828228301_))))
                      (_g2828128298_ _g2828228301_)))))
          (_g2828028344_ _stx28279_))))
    (define gxc#basic-expression-type-builtin (make-table 'test: eq?))
    (define gxc#basic-expression-type-call%
      (lambda (_stx28184_)
        (let* ((___stx3219432195_ _stx28184_)
               (_g2818728207_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3219432195_))))
          (let ((___kont3219632197_
                 (lambda (_L28251_ _L28252_)
                   (let ((_type-e2826928271_
                          (table-ref
                           gxc#basic-expression-type-builtin
                           (gxc#identifier-symbol _L28252_)
                           '#f)))
                     (if _type-e2826928271_
                         (let ((_type-e28274_ _type-e2826928271_))
                           (_type-e28274_ _stx28184_ _L28251_))
                         '#f))))
                (___kont3219832199_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3219432195_)
                (let ((_e2819128219_ (gx#stx-e ___stx3219432195_)))
                  (let ((_tl2819328224_
                         (let () (declare (not safe)) (##cdr _e2819128219_)))
                        (_hd2819228222_
                         (let () (declare (not safe)) (##car _e2819128219_))))
                    (if (gx#stx-pair? _tl2819328224_)
                        (let ((_e2819428227_ (gx#stx-e _tl2819328224_)))
                          (let ((_tl2819628232_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2819428227_)))
                                (_hd2819528230_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2819428227_))))
                            (if (gx#stx-pair? _hd2819528230_)
                                (let ((_e2819728235_
                                       (gx#stx-e _hd2819528230_)))
                                  (let ((_tl2819928240_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2819728235_)))
                                        (_hd2819828238_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2819728235_))))
                                    (if (gx#identifier? _hd2819828238_)
                                        (if (gx#stx-eq? '%#ref _hd2819828238_)
                                            (if (gx#stx-pair? _tl2819928240_)
                                                (let ((_e2820028243_
                                                       (gx#stx-e
                                                        _tl2819928240_)))
                                                  (let ((_tl2820228248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2820028243_)))
                                                        (_hd2820128246_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2820028243_))))
                                                    (if (gx#stx-null?
                                                         _tl2820228248_)
                                                        (___kont3219632197_
                                                         _tl2819628232_
                                                         _hd2820128246_)
                                                        (___kont3219832199_))))
                                                (___kont3219832199_))
                                            (___kont3219832199_))
                                        (___kont3219832199_))))
                                (___kont3219832199_))))
                        (___kont3219832199_))))
                (___kont3219832199_))))))
    (define gxc#basic-expression-type-make-struct-type
      (lambda (_stx27664_ _args27665_)
        (let* ((___stx3223232233_ _args27665_)
               (_g2766927783_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3223232233_))))
          (let ((___kont3223432235_
                 (lambda (_L28133_ _L28134_ _L28135_ _L28136_ _L28137_)
                   (let ((__obj34499 (make-object gxc#!struct-type::t '7)))
                     (gxc#!struct-type:::init!
                      __obj34499
                      (gx#stx-e _L28137_)
                      '#f
                      (gx#stx-e _L28136_)
                      '0
                      (gx#stx-e _L28133_)
                      (gx#stx-e _L28134_))
                     __obj34499)))
                (___kont3223632237_
                 (lambda (_L27923_
                          _L27924_
                          _L27925_
                          _L27926_
                          _L27927_
                          _L27928_)
                   (let* ((_super-t27974_
                           (if (gx#stx-e _L27927_)
                               (gxc#identifier-symbol _L27927_)
                               '#f))
                          (_super-type27976_
                           (if _super-t27974_
                               (gxc#optimizer-resolve-type _super-t27974_)
                               '#f)))
                     (if (and _super-type27976_
                              (not (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _super-type27976_
                                      'gxc#!struct-type::t))))
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx27664_
                          _L27927_)
                         '#!void)
                     (let ((_fields27992_ (gx#stx-e _L27926_))
                           (_xfields27993_
                            (if _super-type27976_
                                (let ((_super-fields2797827981_
                                       (##structure-ref
                                        _super-type27976_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2797927983_
                                       (##structure-ref
                                        _super-type27976_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2797827981_
                                      (if _super-xfields2797927983_
                                          (let ((_super-fields27986_
                                                 _super-fields2797827981_)
                                                (_super-xfields27987_
                                                 _super-xfields2797927983_))
                                            (fx+ _super-fields27986_
                                                 _super-xfields27987_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist27994_ (gx#stx-e _L27924_))
                           (_ctor27995_
                            (let ((_$e27989_ (gx#stx-e _L27923_)))
                              (if _$e27989_
                                  (values _$e27989_)
                                  (if _super-type27976_
                                      (##structure-ref
                                       _super-type27976_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t27974_ '#!void '#f))))))
                       (let ((__obj34500 (make-object gxc#!struct-type::t '7)))
                         (gxc#!struct-type:::init!
                          __obj34500
                          (gx#stx-e _L27928_)
                          _super-t27974_
                          _fields27992_
                          _xfields27993_
                          _ctor27995_
                          _plist27994_)
                         __obj34500)))))
                (___kont3223832239_
                 (lambda ()
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx27664_))
                   '#f)))
            (if (gx#stx-pair? ___stx3223232233_)
                (let ((_e2767628002_ (gx#stx-e ___stx3223232233_)))
                  (let ((_tl2767828007_
                         (let () (declare (not safe)) (##cdr _e2767628002_)))
                        (_hd2767728005_
                         (let () (declare (not safe)) (##car _e2767628002_))))
                    (if (gx#stx-pair? _hd2767728005_)
                        (let ((_e2767928010_ (gx#stx-e _hd2767728005_)))
                          (let ((_tl2768128015_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2767928010_)))
                                (_hd2768028013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2767928010_))))
                            (if (gx#identifier? _hd2768028013_)
                                (if (gx#stx-eq? '%#quote _hd2768028013_)
                                    (if (gx#stx-pair? _tl2768128015_)
                                        (let ((_e2768228018_
                                               (gx#stx-e _tl2768128015_)))
                                          (let ((_tl2768428023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2768228018_)))
                                                (_hd2768328021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2768228018_))))
                                            (if (gx#stx-null? _tl2768428023_)
                                                (if (gx#stx-pair?
                                                     _tl2767828007_)
                                                    (let ((_e2768528026_
                                                           (gx#stx-e
                                                            _tl2767828007_)))
                                                      (let ((_tl2768728031_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2768528026_)))
                    (_hd2768628029_
                     (let () (declare (not safe)) (##car _e2768528026_))))
                (if (gx#stx-pair? _hd2768628029_)
                    (let ((_e2768828034_ (gx#stx-e _hd2768628029_)))
                      (let ((_tl2769028039_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2768828034_)))
                            (_hd2768928037_
                             (let ()
                               (declare (not safe))
                               (##car _e2768828034_))))
                        (if (gx#identifier? _hd2768928037_)
                            (if (gx#stx-eq? '%#quote _hd2768928037_)
                                (if (gx#stx-pair? _tl2769028039_)
                                    (let ((_e2769128042_
                                           (gx#stx-e _tl2769028039_)))
                                      (let ((_tl2769328047_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2769128042_)))
                                            (_hd2769228045_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2769128042_))))
                                        (if (gx#stx-datum? _hd2769228045_)
                                            (let ((_e2769428050_
                                                   (gx#stx-e _hd2769228045_)))
                                              (if (equal? _e2769428050_ '#f)
                                                  (if (gx#stx-null?
                                                       _tl2769328047_)
                                                      (if (gx#stx-pair?
                                                           _tl2768728031_)
                                                          (let ((_e2769528053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2768728031_)))
                    (let ((_tl2769728058_
                           (let () (declare (not safe)) (##cdr _e2769528053_)))
                          (_hd2769628056_
                           (let ()
                             (declare (not safe))
                             (##car _e2769528053_))))
                      (if (gx#stx-pair? _hd2769628056_)
                          (let ((_e2769828061_ (gx#stx-e _hd2769628056_)))
                            (let ((_tl2770028066_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2769828061_)))
                                  (_hd2769928064_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2769828061_))))
                              (if (gx#identifier? _hd2769928064_)
                                  (if (gx#stx-eq? '%#quote _hd2769928064_)
                                      (if (gx#stx-pair? _tl2770028066_)
                                          (let ((_e2770128069_
                                                 (gx#stx-e _tl2770028066_)))
                                            (let ((_tl2770328074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2770128069_)))
                                                  (_hd2770228072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2770128069_))))
                                              (if (gx#stx-null? _tl2770328074_)
                                                  (if (gx#stx-pair?
                                                       _tl2769728058_)
                                                      (let ((_e2770428077_
                                                             (gx#stx-e
                                                              _tl2769728058_)))
                                                        (let ((_tl2770628082_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2770428077_)))
                      (_hd2770528080_
                       (let () (declare (not safe)) (##car _e2770428077_))))
                  (if (gx#stx-pair? _tl2770628082_)
                      (let ((_e2770728085_ (gx#stx-e _tl2770628082_)))
                        (let ((_tl2770928090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2770728085_)))
                              (_hd2770828088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2770728085_))))
                          (if (gx#stx-pair? _hd2770828088_)
                              (let ((_e2771028093_ (gx#stx-e _hd2770828088_)))
                                (let ((_tl2771228098_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2771028093_)))
                                      (_hd2771128096_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2771028093_))))
                                  (if (gx#identifier? _hd2771128096_)
                                      (if (gx#stx-eq? '%#quote _hd2771128096_)
                                          (if (gx#stx-pair? _tl2771228098_)
                                              (let ((_e2771328101_
                                                     (gx#stx-e
                                                      _tl2771228098_)))
                                                (let ((_tl2771528106_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2771328101_)))
                                                      (_hd2771428104_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2771328101_))))
                                                  (if (gx#stx-null?
                                                       _tl2771528106_)
                                                      (if (gx#stx-pair?
                                                           _tl2770928090_)
                                                          (let ((_e2771628109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2770928090_)))
                    (let ((_tl2771828114_
                           (let () (declare (not safe)) (##cdr _e2771628109_)))
                          (_hd2771728112_
                           (let ()
                             (declare (not safe))
                             (##car _e2771628109_))))
                      (if (gx#stx-pair? _hd2771728112_)
                          (let ((_e2771928117_ (gx#stx-e _hd2771728112_)))
                            (let ((_tl2772128122_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2771928117_)))
                                  (_hd2772028120_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2771928117_))))
                              (if (gx#identifier? _hd2772028120_)
                                  (if (gx#stx-eq? '%#quote _hd2772028120_)
                                      (if (gx#stx-pair? _tl2772128122_)
                                          (let ((_e2772228125_
                                                 (gx#stx-e _tl2772128122_)))
                                            (let ((_tl2772428130_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2772228125_)))
                                                  (_hd2772328128_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2772228125_))))
                                              (if (gx#stx-null? _tl2772428130_)
                                                  (___kont3223432235_
                                                   _hd2772328128_
                                                   _hd2771428104_
                                                   _hd2770528080_
                                                   _hd2770228072_
                                                   _hd2768328021_)
                                                  (___kont3223832239_))))
                                          (___kont3223832239_))
                                      (___kont3223832239_))
                                  (___kont3223832239_))))
                          (___kont3223832239_))))
                  (___kont3223832239_))
              (___kont3223832239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3223832239_))
                                          (___kont3223832239_))
                                      (___kont3223832239_))))
                              (___kont3223832239_))))
                      (___kont3223832239_))))
              (___kont3223832239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3223832239_))))
                                          (___kont3223832239_))
                                      (___kont3223832239_))
                                  (___kont3223832239_))))
                          (___kont3223832239_))))
                  (___kont3223832239_))
              (___kont3223832239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3223832239_)))
                                            (___kont3223832239_))))
                                    (___kont3223832239_))
                                (if (gx#stx-eq? '%#ref _hd2768928037_)
                                    (if (gx#stx-pair? _tl2769028039_)
                                        (let ((_e2774627835_
                                               (gx#stx-e _tl2769028039_)))
                                          (let ((_tl2774827840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2774627835_)))
                                                (_hd2774727838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2774627835_))))
                                            (if (gx#stx-null? _tl2774827840_)
                                                (if (gx#stx-pair?
                                                     _tl2768728031_)
                                                    (let ((_e2774927843_
                                                           (gx#stx-e
                                                            _tl2768728031_)))
                                                      (let ((_tl2775127848_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2774927843_)))
                    (_hd2775027846_
                     (let () (declare (not safe)) (##car _e2774927843_))))
                (if (gx#stx-pair? _hd2775027846_)
                    (let ((_e2775227851_ (gx#stx-e _hd2775027846_)))
                      (let ((_tl2775427856_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2775227851_)))
                            (_hd2775327854_
                             (let ()
                               (declare (not safe))
                               (##car _e2775227851_))))
                        (if (gx#identifier? _hd2775327854_)
                            (if (gx#stx-eq? '%#quote _hd2775327854_)
                                (if (gx#stx-pair? _tl2775427856_)
                                    (let ((_e2775527859_
                                           (gx#stx-e _tl2775427856_)))
                                      (let ((_tl2775727864_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2775527859_)))
                                            (_hd2775627862_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2775527859_))))
                                        (if (gx#stx-null? _tl2775727864_)
                                            (if (gx#stx-pair? _tl2775127848_)
                                                (let ((_e2775827867_
                                                       (gx#stx-e
                                                        _tl2775127848_)))
                                                  (let ((_tl2776027872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2775827867_)))
                                                        (_hd2775927870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2775827867_))))
                                                    (if (gx#stx-pair?
                                                         _tl2776027872_)
                                                        (let ((_e2776127875_
                                                               (gx#stx-e
                                                                _tl2776027872_)))
                                                          (let ((_tl2776327880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2776127875_)))
                        (_hd2776227878_
                         (let () (declare (not safe)) (##car _e2776127875_))))
                    (if (gx#stx-pair? _hd2776227878_)
                        (let ((_e2776427883_ (gx#stx-e _hd2776227878_)))
                          (let ((_tl2776627888_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2776427883_)))
                                (_hd2776527886_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2776427883_))))
                            (if (gx#identifier? _hd2776527886_)
                                (if (gx#stx-eq? '%#quote _hd2776527886_)
                                    (if (gx#stx-pair? _tl2776627888_)
                                        (let ((_e2776727891_
                                               (gx#stx-e _tl2776627888_)))
                                          (let ((_tl2776927896_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2776727891_)))
                                                (_hd2776827894_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2776727891_))))
                                            (if (gx#stx-null? _tl2776927896_)
                                                (if (gx#stx-pair?
                                                     _tl2776327880_)
                                                    (let ((_e2777027899_
                                                           (gx#stx-e
                                                            _tl2776327880_)))
                                                      (let ((_tl2777227904_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2777027899_)))
                    (_hd2777127902_
                     (let () (declare (not safe)) (##car _e2777027899_))))
                (if (gx#stx-pair? _hd2777127902_)
                    (let ((_e2777327907_ (gx#stx-e _hd2777127902_)))
                      (let ((_tl2777527912_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2777327907_)))
                            (_hd2777427910_
                             (let ()
                               (declare (not safe))
                               (##car _e2777327907_))))
                        (if (gx#identifier? _hd2777427910_)
                            (if (gx#stx-eq? '%#quote _hd2777427910_)
                                (if (gx#stx-pair? _tl2777527912_)
                                    (let ((_e2777627915_
                                           (gx#stx-e _tl2777527912_)))
                                      (let ((_tl2777827920_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2777627915_)))
                                            (_hd2777727918_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2777627915_))))
                                        (if (gx#stx-null? _tl2777827920_)
                                            (___kont3223632237_
                                             _hd2777727918_
                                             _hd2776827894_
                                             _hd2775927870_
                                             _hd2775627862_
                                             _hd2774727838_
                                             _hd2768328021_)
                                            (___kont3223832239_))))
                                    (___kont3223832239_))
                                (___kont3223832239_))
                            (___kont3223832239_))))
                    (___kont3223832239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3223832239_))
                                                (___kont3223832239_))))
                                        (___kont3223832239_))
                                    (___kont3223832239_))
                                (___kont3223832239_))))
                        (___kont3223832239_))))
                (___kont3223832239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3223832239_))
                                            (___kont3223832239_))))
                                    (___kont3223832239_))
                                (___kont3223832239_))
                            (___kont3223832239_))))
                    (___kont3223832239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3223832239_))
                                                (___kont3223832239_))))
                                        (___kont3223832239_))
                                    (___kont3223832239_)))
                            (___kont3223832239_))))
                    (___kont3223832239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3223832239_))
                                                (___kont3223832239_))))
                                        (___kont3223832239_))
                                    (___kont3223832239_))
                                (___kont3223832239_))))
                        (___kont3223832239_))))
                (___kont3223832239_))))))
    (define gxc#basic-expression-type-make-struct-predicate
      (lambda (_stx27590_ _args27591_)
        (let* ((___stx3250032501_ _args27591_)
               (_g2759427610_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3250032501_))))
          (let ((___kont3250232503_
                 (lambda (_L27646_)
                   (let ((__tmp34512 (gxc#identifier-symbol _L27646_)))
                     (declare (not safe))
                     (##structure gxc#!struct-pred::t __tmp34512))))
                (___kont3250432505_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3250032501_)
                (let ((_e2759727622_ (gx#stx-e ___stx3250032501_)))
                  (let ((_tl2759927627_
                         (let () (declare (not safe)) (##cdr _e2759727622_)))
                        (_hd2759827625_
                         (let () (declare (not safe)) (##car _e2759727622_))))
                    (if (gx#stx-pair? _hd2759827625_)
                        (let ((_e2760027630_ (gx#stx-e _hd2759827625_)))
                          (let ((_tl2760227635_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2760027630_)))
                                (_hd2760127633_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2760027630_))))
                            (if (gx#identifier? _hd2760127633_)
                                (if (gx#stx-eq? '%#ref _hd2760127633_)
                                    (if (gx#stx-pair? _tl2760227635_)
                                        (let ((_e2760327638_
                                               (gx#stx-e _tl2760227635_)))
                                          (let ((_tl2760527643_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2760327638_)))
                                                (_hd2760427641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2760327638_))))
                                            (if (gx#stx-null? _tl2760527643_)
                                                (if (gx#stx-null?
                                                     _tl2759927627_)
                                                    (___kont3250232503_
                                                     _hd2760427641_)
                                                    (___kont3250432505_))
                                                (___kont3250432505_))))
                                        (___kont3250432505_))
                                    (___kont3250432505_))
                                (___kont3250432505_))))
                        (___kont3250432505_))))
                (___kont3250432505_))))))
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx27461_ _args27462_ _unchecked?27463_)
        (let* ((___stx3253432535_ _args27462_)
               (_g2746627492_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3253432535_))))
          (let ((___kont3253632537_
                 (lambda (_L27552_ _L27553_)
                   (let ((__tmp34514 (gxc#identifier-symbol _L27553_))
                         (__tmp34513 (gx#stx-e _L27552_)))
                     (declare (not safe))
                     (##structure
                      gxc#!struct-getf::t
                      __tmp34514
                      __tmp34513
                      _unchecked?27463_))))
                (___kont3253832539_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3253432535_)
                (let ((_e2747027504_ (gx#stx-e ___stx3253432535_)))
                  (let ((_tl2747227509_
                         (let () (declare (not safe)) (##cdr _e2747027504_)))
                        (_hd2747127507_
                         (let () (declare (not safe)) (##car _e2747027504_))))
                    (if (gx#stx-pair? _hd2747127507_)
                        (let ((_e2747327512_ (gx#stx-e _hd2747127507_)))
                          (let ((_tl2747527517_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2747327512_)))
                                (_hd2747427515_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2747327512_))))
                            (if (gx#identifier? _hd2747427515_)
                                (if (gx#stx-eq? '%#ref _hd2747427515_)
                                    (if (gx#stx-pair? _tl2747527517_)
                                        (let ((_e2747627520_
                                               (gx#stx-e _tl2747527517_)))
                                          (let ((_tl2747827525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2747627520_)))
                                                (_hd2747727523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2747627520_))))
                                            (if (gx#stx-null? _tl2747827525_)
                                                (if (gx#stx-pair?
                                                     _tl2747227509_)
                                                    (let ((_e2747927528_
                                                           (gx#stx-e
                                                            _tl2747227509_)))
                                                      (let ((_tl2748127533_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2747927528_)))
                    (_hd2748027531_
                     (let () (declare (not safe)) (##car _e2747927528_))))
                (if (gx#stx-pair? _hd2748027531_)
                    (let ((_e2748227536_ (gx#stx-e _hd2748027531_)))
                      (let ((_tl2748427541_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2748227536_)))
                            (_hd2748327539_
                             (let ()
                               (declare (not safe))
                               (##car _e2748227536_))))
                        (if (gx#identifier? _hd2748327539_)
                            (if (gx#stx-eq? '%#quote _hd2748327539_)
                                (if (gx#stx-pair? _tl2748427541_)
                                    (let ((_e2748527544_
                                           (gx#stx-e _tl2748427541_)))
                                      (let ((_tl2748727549_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2748527544_)))
                                            (_hd2748627547_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2748527544_))))
                                        (if (gx#stx-null? _tl2748727549_)
                                            (if (gx#stx-null? _tl2748127533_)
                                                (___kont3253632537_
                                                 _hd2748627547_
                                                 _hd2747727523_)
                                                (___kont3253832539_))
                                            (___kont3253832539_))))
                                    (___kont3253832539_))
                                (___kont3253832539_))
                            (___kont3253832539_))))
                    (___kont3253832539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3253832539_))
                                                (___kont3253832539_))))
                                        (___kont3253832539_))
                                    (___kont3253832539_))
                                (___kont3253832539_))))
                        (___kont3253832539_))))
                (___kont3253832539_))))))
    (define gxc#basic-expression-type-make-struct-field-accessor__0
      (lambda (_stx27581_ _args27582_)
        (let ((_unchecked?27584_ '#f))
          (gxc#basic-expression-type-make-struct-field-accessor__%
           _stx27581_
           _args27582_
           _unchecked?27584_))))
    (define gxc#basic-expression-type-make-struct-field-accessor
      (lambda _g34516_
        (let ((_g34515_ (let () (declare (not safe)) (##length _g34516_))))
          (cond ((let () (declare (not safe)) (##fx= _g34515_ 2))
                 (apply gxc#basic-expression-type-make-struct-field-accessor__0
                        _g34516_))
                ((let () (declare (not safe)) (##fx= _g34515_ 3))
                 (apply gxc#basic-expression-type-make-struct-field-accessor__%
                        _g34516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#basic-expression-type-make-struct-field-accessor
                  _g34516_))))))
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx27331_ _args27332_ _unchecked?27333_)
        (let* ((___stx3259232593_ _args27332_)
               (_g2733627362_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3259232593_))))
          (let ((___kont3259432595_
                 (lambda (_L27422_ _L27423_)
                   (let ((__tmp34518 (gxc#identifier-symbol _L27423_))
                         (__tmp34517 (gx#stx-e _L27422_)))
                     (declare (not safe))
                     (##structure
                      gxc#!struct-setf::t
                      __tmp34518
                      __tmp34517
                      _unchecked?27333_))))
                (___kont3259632597_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3259232593_)
                (let ((_e2734027374_ (gx#stx-e ___stx3259232593_)))
                  (let ((_tl2734227379_
                         (let () (declare (not safe)) (##cdr _e2734027374_)))
                        (_hd2734127377_
                         (let () (declare (not safe)) (##car _e2734027374_))))
                    (if (gx#stx-pair? _hd2734127377_)
                        (let ((_e2734327382_ (gx#stx-e _hd2734127377_)))
                          (let ((_tl2734527387_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2734327382_)))
                                (_hd2734427385_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2734327382_))))
                            (if (gx#identifier? _hd2734427385_)
                                (if (gx#stx-eq? '%#ref _hd2734427385_)
                                    (if (gx#stx-pair? _tl2734527387_)
                                        (let ((_e2734627390_
                                               (gx#stx-e _tl2734527387_)))
                                          (let ((_tl2734827395_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2734627390_)))
                                                (_hd2734727393_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2734627390_))))
                                            (if (gx#stx-null? _tl2734827395_)
                                                (if (gx#stx-pair?
                                                     _tl2734227379_)
                                                    (let ((_e2734927398_
                                                           (gx#stx-e
                                                            _tl2734227379_)))
                                                      (let ((_tl2735127403_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2734927398_)))
                    (_hd2735027401_
                     (let () (declare (not safe)) (##car _e2734927398_))))
                (if (gx#stx-pair? _hd2735027401_)
                    (let ((_e2735227406_ (gx#stx-e _hd2735027401_)))
                      (let ((_tl2735427411_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2735227406_)))
                            (_hd2735327409_
                             (let ()
                               (declare (not safe))
                               (##car _e2735227406_))))
                        (if (gx#identifier? _hd2735327409_)
                            (if (gx#stx-eq? '%#quote _hd2735327409_)
                                (if (gx#stx-pair? _tl2735427411_)
                                    (let ((_e2735527414_
                                           (gx#stx-e _tl2735427411_)))
                                      (let ((_tl2735727419_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2735527414_)))
                                            (_hd2735627417_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2735527414_))))
                                        (if (gx#stx-null? _tl2735727419_)
                                            (if (gx#stx-null? _tl2735127403_)
                                                (___kont3259432595_
                                                 _hd2735627417_
                                                 _hd2734727393_)
                                                (___kont3259632597_))
                                            (___kont3259632597_))))
                                    (___kont3259632597_))
                                (___kont3259632597_))
                            (___kont3259632597_))))
                    (___kont3259632597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3259632597_))
                                                (___kont3259632597_))))
                                        (___kont3259632597_))
                                    (___kont3259632597_))
                                (___kont3259632597_))))
                        (___kont3259632597_))))
                (___kont3259632597_))))))
    (define gxc#basic-expression-type-make-struct-field-mutator__0
      (lambda (_stx27451_ _args27452_)
        (let ((_unchecked?27454_ '#f))
          (gxc#basic-expression-type-make-struct-field-mutator__%
           _stx27451_
           _args27452_
           _unchecked?27454_))))
    (define gxc#basic-expression-type-make-struct-field-mutator
      (lambda _g34520_
        (let ((_g34519_ (let () (declare (not safe)) (##length _g34520_))))
          (cond ((let () (declare (not safe)) (##fx= _g34519_ 2))
                 (apply gxc#basic-expression-type-make-struct-field-mutator__0
                        _g34520_))
                ((let () (declare (not safe)) (##fx= _g34519_ 3))
                 (apply gxc#basic-expression-type-make-struct-field-mutator__%
                        _g34520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#basic-expression-type-make-struct-field-mutator
                  _g34520_))))))
    (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
      (lambda (_stx27327_ _args27328_)
        (gxc#basic-expression-type-make-struct-field-accessor__%
         _stx27327_
         _args27328_
         '#t)))
    (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
      (lambda (_stx27324_ _args27325_)
        (gxc#basic-expression-type-make-struct-field-mutator__%
         _stx27324_
         _args27325_
         '#t)))
    (define gxc#basic-expression-type-make-class-type
      (lambda (_stx26265_ _args26266_)
        (letrec ((_mixin-expr->list26268_
                  (lambda (_stx27005_)
                    (call-with-current-continuation
                     (lambda (_return27007_)
                       (let _recur27009_ ((_rest27011_ _stx27005_))
                         (let* ((___stx3265032651_ _rest27011_)
                                (_g2701627084_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    ___stx3265032651_))))
                           (let ((___kont3265232653_
                                  (lambda (_L27293_ _L27294_ _L27295_)
                                    (cons (gxc#identifier-symbol _L27294_)
                                          (_recur27009_ _L27293_))))
                                 (___kont3265432655_ (lambda () '()))
                                 (___kont3265632657_
                                  (lambda (_L27168_ _L27169_)
                                    (map gxc#identifier-symbol
                                         (foldr1 (lambda (_g2719327196_
                                                          _g2719427198_)
                                                   (cons _g2719327196_
                                                         _g2719427198_))
                                                 '()
                                                 _L27168_))))
                                 (___kont3266032661_
                                  (lambda () (_return27007_ '#f))))
                             (let* ((___match3278932790_
                                     (lambda (_e2705327096_
                                              _hd2705427099_
                                              _tl2705527101_
                                              _e2705627104_
                                              _hd2705727107_
                                              _tl2705827109_
                                              _e2705927112_
                                              _hd2706027115_
                                              _tl2706127117_
                                              _e2706227120_
                                              _hd2706327123_
                                              _tl2706427125_
                                              ___splice3265832659_
                                              _target2706527128_
                                              _tl2706727130_)
                                       (letrec ((_loop2706827133_
                                                 (lambda (_hd2706627136_
                                                          _klass2707227138_)
                                                   (if (gx#stx-pair?
                                                        _hd2706627136_)
                                                       (let ((_e2706927141_
                                                              (gx#stx-e
                                                               _hd2706627136_)))
                                                         (let ((_lp-tl2707127146_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2706927141_)))
                       (_lp-hd2707027144_
                        (let () (declare (not safe)) (##car _e2706927141_))))
                   (if (gx#stx-pair? _lp-hd2707027144_)
                       (let ((_e2707427149_ (gx#stx-e _lp-hd2707027144_)))
                         (let ((_tl2707627154_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2707427149_)))
                               (_hd2707527152_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2707427149_))))
                           (if (gx#identifier? _hd2707527152_)
                               (if (gx#stx-eq? '%#ref _hd2707527152_)
                                   (if (gx#stx-pair? _tl2707627154_)
                                       (let ((_e2707727157_
                                              (gx#stx-e _tl2707627154_)))
                                         (let ((_tl2707927162_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2707727157_)))
                                               (_hd2707827160_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2707727157_))))
                                           (if (gx#stx-null? _tl2707927162_)
                                               (_loop2706827133_
                                                _lp-tl2707127146_
                                                (cons _hd2707827160_
                                                      _klass2707227138_))
                                               (___kont3266032661_))))
                                       (___kont3266032661_))
                                   (___kont3266032661_))
                               (___kont3266032661_))))
                       (___kont3266032661_))))
               (let ((_klass2707327165_ (reverse _klass2707227138_)))
                 (let ((_L27168_ _klass2707327165_) (_L27169_ _hd2706327123_))
                   (if (gxc#runtime-identifier=? _L27169_ 'list)
                       (___kont3265632657_ _L27168_ _L27169_)
                       (___kont3266032661_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop2706827133_
                                          _target2706527128_
                                          '()))))
                                    (___match3272732728_
                                     (lambda (_e2702127229_
                                              _hd2702227232_
                                              _tl2702327234_
                                              _e2702427237_
                                              _hd2702527240_
                                              _tl2702627242_
                                              _e2702727245_
                                              _hd2702827248_
                                              _tl2702927250_
                                              _e2703027253_
                                              _hd2703127256_
                                              _tl2703227258_
                                              _e2703327261_
                                              _hd2703427264_
                                              _tl2703527266_
                                              _e2703627269_
                                              _hd2703727272_
                                              _tl2703827274_
                                              _e2703927277_
                                              _hd2704027280_
                                              _tl2704127282_
                                              _e2704227285_
                                              _hd2704327288_
                                              _tl2704427290_)
                                       (let ((_L27293_ _hd2704327288_)
                                             (_L27294_ _hd2704027280_)
                                             (_L27295_ _hd2703127256_))
                                         (if (gxc#runtime-identifier=?
                                              _L27295_
                                              'cons)
                                             (___kont3265232653_
                                              _L27293_
                                              _L27294_
                                              _L27295_)
                                             (if (gx#stx-pair/null?
                                                  _tl2702627242_)
                                                 (let ((___splice3265832659_
                                                        (gx#syntax-split-splice
                                                         _tl2702627242_
                                                         '0)))
                                                   (let ((_tl2706727130_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice3265832659_
                                                             '1)))
                                                         (_target2706527128_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             ___splice3265832659_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _tl2706727130_)
                                                         (___match3278932790_
                                                          _e2702127229_
                                                          _hd2702227232_
                                                          _tl2702327234_
                                                          _e2702427237_
                                                          _hd2702527240_
                                                          _tl2702627242_
                                                          _e2702727245_
                                                          _hd2702827248_
                                                          _tl2702927250_
                                                          _e2703027253_
                                                          _hd2703127256_
                                                          _tl2703227258_
                                                          ___splice3265832659_
                                                          _target2706527128_
                                                          _tl2706727130_)
                                                         (___kont3266032661_))))
                                                 (___kont3266032661_)))))))
                               (if (gx#stx-pair? ___stx3265032651_)
                                   (let ((_e2702127229_
                                          (gx#stx-e ___stx3265032651_)))
                                     (let ((_tl2702327234_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2702127229_)))
                                           (_hd2702227232_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2702127229_))))
                                       (if (gx#identifier? _hd2702227232_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd2702227232_)
                                               (if (gx#stx-pair?
                                                    _tl2702327234_)
                                                   (let ((_e2702427237_
                                                          (gx#stx-e
                                                           _tl2702327234_)))
                                                     (let ((_tl2702627242_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2702427237_)))
                                                           (_hd2702527240_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2702427237_))))
                                                       (if (gx#stx-pair?
                                                            _hd2702527240_)
                                                           (let ((_e2702727245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2702527240_)))
                     (let ((_tl2702927250_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2702727245_)))
                           (_hd2702827248_
                            (let ()
                              (declare (not safe))
                              (##car _e2702727245_))))
                       (if (gx#identifier? _hd2702827248_)
                           (if (gx#stx-eq? '%#ref _hd2702827248_)
                               (if (gx#stx-pair? _tl2702927250_)
                                   (let ((_e2703027253_
                                          (gx#stx-e _tl2702927250_)))
                                     (let ((_tl2703227258_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2703027253_)))
                                           (_hd2703127256_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2703027253_))))
                                       (if (gx#stx-null? _tl2703227258_)
                                           (if (gx#stx-pair? _tl2702627242_)
                                               (let ((_e2703327261_
                                                      (gx#stx-e
                                                       _tl2702627242_)))
                                                 (let ((_tl2703527266_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2703327261_)))
                                                       (_hd2703427264_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2703327261_))))
                                                   (if (gx#stx-pair?
                                                        _hd2703427264_)
                                                       (let ((_e2703627269_
                                                              (gx#stx-e
                                                               _hd2703427264_)))
                                                         (let ((_tl2703827274_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2703627269_)))
                       (_hd2703727272_
                        (let () (declare (not safe)) (##car _e2703627269_))))
                   (if (gx#identifier? _hd2703727272_)
                       (if (gx#stx-eq? '%#ref _hd2703727272_)
                           (if (gx#stx-pair? _tl2703827274_)
                               (let ((_e2703927277_ (gx#stx-e _tl2703827274_)))
                                 (let ((_tl2704127282_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2703927277_)))
                                       (_hd2704027280_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2703927277_))))
                                   (if (gx#stx-null? _tl2704127282_)
                                       (if (gx#stx-pair? _tl2703527266_)
                                           (let ((_e2704227285_
                                                  (gx#stx-e _tl2703527266_)))
                                             (let ((_tl2704427290_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2704227285_)))
                                                   (_hd2704327288_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2704227285_))))
                                               (if (gx#stx-null?
                                                    _tl2704427290_)
                                                   (___match3272732728_
                                                    _e2702127229_
                                                    _hd2702227232_
                                                    _tl2702327234_
                                                    _e2702427237_
                                                    _hd2702527240_
                                                    _tl2702627242_
                                                    _e2702727245_
                                                    _hd2702827248_
                                                    _tl2702927250_
                                                    _e2703027253_
                                                    _hd2703127256_
                                                    _tl2703227258_
                                                    _e2703327261_
                                                    _hd2703427264_
                                                    _tl2703527266_
                                                    _e2703627269_
                                                    _hd2703727272_
                                                    _tl2703827274_
                                                    _e2703927277_
                                                    _hd2704027280_
                                                    _tl2704127282_
                                                    _e2704227285_
                                                    _hd2704327288_
                                                    _tl2704427290_)
                                                   (if (gx#stx-pair/null?
                                                        _tl2702627242_)
                                                       (let ((___splice3265832659_
                                                              (gx#syntax-split-splice
                                                               _tl2702627242_
                                                               '0)))
                                                         (let ((_tl2706727130_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice3265832659_ '1)))
                       (_target2706527128_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice3265832659_ '0))))
                   (if (gx#stx-null? _tl2706727130_)
                       (___match3278932790_
                        _e2702127229_
                        _hd2702227232_
                        _tl2702327234_
                        _e2702427237_
                        _hd2702527240_
                        _tl2702627242_
                        _e2702727245_
                        _hd2702827248_
                        _tl2702927250_
                        _e2703027253_
                        _hd2703127256_
                        _tl2703227258_
                        ___splice3265832659_
                        _target2706527128_
                        _tl2706727130_)
                       (___kont3266032661_))))
               (___kont3266032661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _tl2702627242_)
                                               (let ((___splice3265832659_
                                                      (gx#syntax-split-splice
                                                       _tl2702627242_
                                                       '0)))
                                                 (let ((_tl2706727130_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3265832659_
                                                           '1)))
                                                       (_target2706527128_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3265832659_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl2706727130_)
                                                       (___match3278932790_
                                                        _e2702127229_
                                                        _hd2702227232_
                                                        _tl2702327234_
                                                        _e2702427237_
                                                        _hd2702527240_
                                                        _tl2702627242_
                                                        _e2702727245_
                                                        _hd2702827248_
                                                        _tl2702927250_
                                                        _e2703027253_
                                                        _hd2703127256_
                                                        _tl2703227258_
                                                        ___splice3265832659_
                                                        _target2706527128_
                                                        _tl2706727130_)
                                                       (___kont3266032661_))))
                                               (___kont3266032661_)))
                                       (if (gx#stx-pair/null? _tl2702627242_)
                                           (let ((___splice3265832659_
                                                  (gx#syntax-split-splice
                                                   _tl2702627242_
                                                   '0)))
                                             (let ((_tl2706727130_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3265832659_
                                                       '1)))
                                                   (_target2706527128_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3265832659_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl2706727130_)
                                                   (___match3278932790_
                                                    _e2702127229_
                                                    _hd2702227232_
                                                    _tl2702327234_
                                                    _e2702427237_
                                                    _hd2702527240_
                                                    _tl2702627242_
                                                    _e2702727245_
                                                    _hd2702827248_
                                                    _tl2702927250_
                                                    _e2703027253_
                                                    _hd2703127256_
                                                    _tl2703227258_
                                                    ___splice3265832659_
                                                    _target2706527128_
                                                    _tl2706727130_)
                                                   (___kont3266032661_))))
                                           (___kont3266032661_)))))
                               (if (gx#stx-pair/null? _tl2702627242_)
                                   (let ((___splice3265832659_
                                          (gx#syntax-split-splice
                                           _tl2702627242_
                                           '0)))
                                     (let ((_tl2706727130_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3265832659_
                                               '1)))
                                           (_target2706527128_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3265832659_
                                               '0))))
                                       (if (gx#stx-null? _tl2706727130_)
                                           (___match3278932790_
                                            _e2702127229_
                                            _hd2702227232_
                                            _tl2702327234_
                                            _e2702427237_
                                            _hd2702527240_
                                            _tl2702627242_
                                            _e2702727245_
                                            _hd2702827248_
                                            _tl2702927250_
                                            _e2703027253_
                                            _hd2703127256_
                                            _tl2703227258_
                                            ___splice3265832659_
                                            _target2706527128_
                                            _tl2706727130_)
                                           (___kont3266032661_))))
                                   (___kont3266032661_)))
                           (if (gx#stx-pair/null? _tl2702627242_)
                               (let ((___splice3265832659_
                                      (gx#syntax-split-splice
                                       _tl2702627242_
                                       '0)))
                                 (let ((_tl2706727130_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice3265832659_
                                           '1)))
                                       (_target2706527128_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice3265832659_
                                           '0))))
                                   (if (gx#stx-null? _tl2706727130_)
                                       (___match3278932790_
                                        _e2702127229_
                                        _hd2702227232_
                                        _tl2702327234_
                                        _e2702427237_
                                        _hd2702527240_
                                        _tl2702627242_
                                        _e2702727245_
                                        _hd2702827248_
                                        _tl2702927250_
                                        _e2703027253_
                                        _hd2703127256_
                                        _tl2703227258_
                                        ___splice3265832659_
                                        _target2706527128_
                                        _tl2706727130_)
                                       (___kont3266032661_))))
                               (___kont3266032661_)))
                       (if (gx#stx-pair/null? _tl2702627242_)
                           (let ((___splice3265832659_
                                  (gx#syntax-split-splice _tl2702627242_ '0)))
                             (let ((_tl2706727130_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice3265832659_ '1)))
                                   (_target2706527128_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice3265832659_ '0))))
                               (if (gx#stx-null? _tl2706727130_)
                                   (___match3278932790_
                                    _e2702127229_
                                    _hd2702227232_
                                    _tl2702327234_
                                    _e2702427237_
                                    _hd2702527240_
                                    _tl2702627242_
                                    _e2702727245_
                                    _hd2702827248_
                                    _tl2702927250_
                                    _e2703027253_
                                    _hd2703127256_
                                    _tl2703227258_
                                    ___splice3265832659_
                                    _target2706527128_
                                    _tl2706727130_)
                                   (___kont3266032661_))))
                           (___kont3266032661_)))))
               (if (gx#stx-pair/null? _tl2702627242_)
                   (let ((___splice3265832659_
                          (gx#syntax-split-splice _tl2702627242_ '0)))
                     (let ((_tl2706727130_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3265832659_ '1)))
                           (_target2706527128_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3265832659_ '0))))
                       (if (gx#stx-null? _tl2706727130_)
                           (___match3278932790_
                            _e2702127229_
                            _hd2702227232_
                            _tl2702327234_
                            _e2702427237_
                            _hd2702527240_
                            _tl2702627242_
                            _e2702727245_
                            _hd2702827248_
                            _tl2702927250_
                            _e2703027253_
                            _hd2703127256_
                            _tl2703227258_
                            ___splice3265832659_
                            _target2706527128_
                            _tl2706727130_)
                           (___kont3266032661_))))
                   (___kont3266032661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _tl2702627242_)
                                                   (let ((___splice3265832659_
                                                          (gx#syntax-split-splice
                                                           _tl2702627242_
                                                           '0)))
                                                     (let ((_tl2706727130_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3265832659_
                                                               '1)))
                                                           (_target2706527128_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3265832659_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl2706727130_)
                                                           (___match3278932790_
                                                            _e2702127229_
                                                            _hd2702227232_
                                                            _tl2702327234_
                                                            _e2702427237_
                                                            _hd2702527240_
                                                            _tl2702627242_
                                                            _e2702727245_
                                                            _hd2702827248_
                                                            _tl2702927250_
                                                            _e2703027253_
                                                            _hd2703127256_
                                                            _tl2703227258_
                                                            ___splice3265832659_
                                                            _target2706527128_
                                                            _tl2706727130_)
                                                           (___kont3266032661_))))
                                                   (___kont3266032661_)))
                                           (___kont3266032661_))))
                                   (___kont3266032661_))
                               (___kont3266032661_))
                           (___kont3266032661_))))
                   (___kont3266032661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3266032661_))
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd2702227232_)
                                                   (if (gx#stx-pair?
                                                        _tl2702327234_)
                                                       (let ((_e2704827214_
                                                              (gx#stx-e
                                                               _tl2702327234_)))
                                                         (let ((_tl2705027219_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2704827214_)))
                       (_hd2704927217_
                        (let () (declare (not safe)) (##car _e2704827214_))))
                   (if (gx#stx-null? _hd2704927217_)
                       (if (gx#stx-null? _tl2705027219_)
                           (___kont3265432655_)
                           (___kont3266032661_))
                       (___kont3266032661_))))
               (___kont3266032661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3266032661_)))
                                           (___kont3266032661_))))
                                   (___kont3266032661_))))))))))
                 (_mixin-resolve-type26269_
                  (lambda (_mixin26994_)
                    (let ((_t2699526997_
                           (gxc#optimizer-resolve-type _mixin26994_)))
                      (if _t2699526997_
                          (let ((_t27000_ _t2699526997_))
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _t27000_
                                       'gxc#!class-type::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _t27000_
                                       'gxc#!struct-type::t)))
                                '#!void
                                (gxc#raise-compile-error
                                 '"Illegal class-type construction; invalid mixin type"
                                 _stx26265_
                                 _mixin26994_))
                            _t27000_)
                          '#f))))
                 (_mixin-super26270_
                  (lambda (_mixins26866_ _ids26867_)
                    (letrec ((_super-e26869_
                              (lambda (_a26988_ _b26989_)
                                (if (eq? _a26988_ '#!void)
                                    '#!void
                                    (if (not _b26989_)
                                        _a26988_
                                        (if (eq? _a26988_ _b26989_)
                                            _a26988_
                                            (let ((_ha26991_
                                                   (_struct-hierarchy26870_
                                                    _a26988_))
                                                  (_hb26992_
                                                   (_struct-hierarchy26870_
                                                    _b26989_)))
                                              (if (equal? _ha26991_ _hb26992_)
                                                  _a26988_
                                                  (if (_struct<26871_
                                                       _ha26991_
                                                       _hb26992_)
                                                      _b26989_
                                                      (if (_struct<26871_
                                                           _hb26992_
                                                           _ha26991_)
                                                          _a26988_
                                                          (if (and (not (car _ha26991_))
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (car _hb26992_)))
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal class-type construction; incompatible base classes"
                       _stx26265_
                       _a26988_
                       _b26989_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (_struct-hierarchy26870_
                              (lambda (_id26976_)
                                (let _lp26978_ ((_id26980_ _id26976_)
                                                (_h26981_ '()))
                                  (if (not _id26980_)
                                      _h26981_
                                      (let ((_$e26983_
                                             (gxc#optimizer-resolve-type
                                              _id26980_)))
                                        (if _$e26983_
                                            ((lambda (_t26986_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _t26986_
                                                      'gxc#!struct-type::t))
                                                   (_lp26978_
                                                    (##structure-ref
                                                     _t26986_
                                                     '2
                                                     gxc#!struct-type::t
                                                     '#f)
                                                    (cons _id26980_ _h26981_))
                                                   (error '"Unexpected struct type"
                                                          _id26980_
                                                          _t26986_)))
                                             _$e26983_)
                                            (cons '#f _h26981_)))))))
                             (_struct<26871_
                              (lambda (_ha26919_ _hb26920_)
                                (if (fx< (length _ha26919_) (length _hb26920_))
                                    (let _lp26922_ ((_rest-a26924_ _ha26919_)
                                                    (_rest-b26925_ _hb26920_))
                                      (let ((_rest-a2692626937_ _rest-a26924_)
                                            (_rest-b2692726939_ _rest-b26925_))
                                        (let* ((_else2692926947_
                                                (lambda () '#t))
                                               (_K2693126955_
                                                (lambda (_rest-a26950_
                                                         _a26951_
                                                         _rest-b26952_
                                                         _b26953_)
                                                  (if (eq? _a26951_ _b26953_)
                                                      (_lp26922_
                                                       _rest-a26950_
                                                       _rest-b26952_)
                                                      '#f))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _rest-a2692626937_))
                                              (let ((_hd2693426958_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _rest-a2692626937_)))
                                                    (_tl2693526960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _rest-a2692626937_))))
                                                (let* ((_a26963_
                                                        _hd2693426958_)
                                                       (_rest-a26965_
                                                        _tl2693526960_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _rest-b2692726939_))
                                                      (let ((_hd2693226967_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _rest-b2692726939_)))
                    (_tl2693326969_
                     (let () (declare (not safe)) (##cdr _rest-b2692726939_))))
                (let* ((_b26972_ _hd2693226967_)
                       (_rest-b26974_ _tl2693326969_))
                  (_K2693126955_
                   _rest-a26965_
                   _a26963_
                   _rest-b26974_
                   _b26972_)))
              (_else2692926947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_else2692926947_)))))
                                    '#f))))
                      (let _lp26873_ ((_rest26875_ _mixins26866_)
                                      (_rest-ids26876_ _ids26867_)
                                      (_super26877_ '#f))
                        (let* ((_rest2687826886_ _rest26875_)
                               (_else2688026894_ (lambda () _super26877_))
                               (_K2688226907_
                                (lambda (_rest26897_ _t26898_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _t26898_
                                         'gxc#!class-type::t))
                                      (let* ((_t-super26900_
                                              (##structure-ref
                                               _t26898_
                                               '2
                                               gxc#!class-type::t
                                               '#f))
                                             (_super26902_
                                              (_super-e26869_
                                               _t-super26900_
                                               _super26877_)))
                                        (if (eq? _super26902_ '#!void)
                                            '#!void
                                            (_lp26873_
                                             _rest26897_
                                             (cdr _rest-ids26876_)
                                             _super26902_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _t26898_
                                             'gxc#!struct-type::t))
                                          (let ((_super26905_
                                                 (_super-e26869_
                                                  (car _rest-ids26876_)
                                                  _super26877_)))
                                            (if (eq? _super26905_ '#!void)
                                                '#!void
                                                (_lp26873_
                                                 _rest26897_
                                                 (cdr _rest-ids26876_)
                                                 _super26905_)))
                                          (error '"Unexpected mixin"
                                                 _t26898_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest2687826886_))
                              (let ((_hd2688326910_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest2687826886_)))
                                    (_tl2688426912_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest2687826886_))))
                                (let* ((_t26915_ _hd2688326910_)
                                       (_rest26917_ _tl2688426912_))
                                  (_K2688226907_ _rest26917_ _t26915_)))
                              (_else2688026894_)))))))
                 (_mixin-slots26271_
                  (lambda (_mixins26821_)
                    (let _lp26823_ ((_rest26825_ _mixins26821_)
                                    (_slots26826_ '()))
                      (let* ((_rest2682726835_ _rest26825_)
                             (_else2682926843_ (lambda () _slots26826_))
                             (_K2683126854_
                              (lambda (_rest26846_ _t26847_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _t26847_
                                       'gxc#!class-type::t))
                                    (let ((_$e26849_
                                           (##structure-ref
                                            _t26847_
                                            '5
                                            gxc#!class-type::t
                                            '#f)))
                                      (if _$e26849_
                                          ((lambda (_xslots26852_)
                                             (_lp26823_
                                              _rest26846_
                                              (foldl1 _cons-slot26273_
                                                      _slots26826_
                                                      _xslots26852_)))
                                           _$e26849_)
                                          (begin
                                            (gxc#verbose
                                             '"make-class-type: incomplete mixin class "
                                             (##structure-ref
                                              _t26847_
                                              '1
                                              gxc#!type::t
                                              '#f))
                                            '#f)))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _t26847_
                                           'gxc#!struct-type::t))
                                        (_lp26823_ _rest26846_ _slots26826_)
                                        (error '"Unexpected mixin"
                                               _t26847_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest2682726835_))
                            (let ((_hd2683226857_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest2682726835_)))
                                  (_tl2683326859_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest2682726835_))))
                              (let* ((_t26862_ _hd2683226857_)
                                     (_rest26864_ _tl2683326859_))
                                (_K2683126854_ _rest26864_ _t26862_)))
                            (_else2682926843_))))))
                 (_mixin-ctor26272_
                  (lambda (_mixins26773_)
                    (letrec ((_ctor-e26775_
                              (lambda (_a26815_ _b26816_)
                                (if (or (eq? _a26815_ '#!void)
                                        (eq? _b26816_ '#!void))
                                    '#!void
                                    (if (not _a26815_)
                                        _b26816_
                                        (if (not _b26816_)
                                            _a26815_
                                            (if (eq? _a26815_ _b26816_)
                                                _a26815_
                                                (gxc#raise-compile-error
                                                 '"Illegal class-type construction; conflicting implicit constructors"
                                                 _stx26265_
                                                 _a26815_
                                                 _b26816_))))))))
                      (let _lp26777_ ((_rest26779_ _mixins26773_)
                                      (_ctor26780_ '#f))
                        (if (eq? _ctor26780_ '#!void)
                            '#!void
                            (let* ((_rest2678126789_ _rest26779_)
                                   (_else2678326797_ (lambda () _ctor26780_))
                                   (_K2678526803_
                                    (lambda (_rest26800_ _t26801_)
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _t26801_
                                             'gxc#!class-type::t))
                                          (_lp26777_
                                           _rest26800_
                                           (_ctor-e26775_
                                            _ctor26780_
                                            (##structure-ref
                                             _t26801_
                                             '6
                                             gxc#!class-type::t
                                             '#f)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-instance-of?
                                                 _t26801_
                                                 'gxc#!struct-type::t))
                                              (_lp26777_
                                               _rest26800_
                                               (_ctor-e26775_
                                                _ctor26780_
                                                (##structure-ref
                                                 _t26801_
                                                 '5
                                                 gxc#!struct-type::t
                                                 '#f)))
                                              (error '"Unexpected mixin"
                                                     _t26801_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _rest2678126789_))
                                  (let ((_hd2678626806_
                                         (let ()
                                           (declare (not safe))
                                           (##car _rest2678126789_)))
                                        (_tl2678726808_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _rest2678126789_))))
                                    (let* ((_t26811_ _hd2678626806_)
                                           (_rest26813_ _tl2678726808_))
                                      (_K2678526803_ _rest26813_ _t26811_)))
                                  (_else2678326797_))))))))
                 (_cons-slot26273_
                  (lambda (_slot26770_ _r26771_)
                    (if (memq _slot26770_ _r26771_)
                        _r26771_
                        (cons _slot26770_ _r26771_)))))
          (let* ((___stx3279232793_ _args26266_)
                 (_g2627726384_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3279232793_))))
            (let ((___kont3279432795_
                   (lambda (_L26718_ _L26719_ _L26720_ _L26721_ _L26722_)
                     (let* ((_slots26765_ (gx#stx-e _L26721_))
                            (__obj34501 (make-object gxc#!class-type::t '8)))
                       (gxc#!class-type:::init!
                        __obj34501
                        (gx#stx-e _L26722_)
                        '#f
                        '()
                        _slots26765_
                        _slots26765_
                        (gx#stx-e _L26718_)
                        (gx#stx-e _L26719_))
                       __obj34501)))
                  (___kont3279632797_
                   (lambda (_L26508_
                            _L26509_
                            _L26510_
                            _L26511_
                            _L26512_
                            _L26513_)
                     (let ((_$e26556_ (_mixin-expr->list26268_ _L26512_)))
                       (if _$e26556_
                           ((lambda (_mixin26559_)
                              (let ((_mixin-t26561_
                                     (map _mixin-resolve-type26269_
                                          _mixin26559_)))
                                (if (ormap1 not _mixin-t26561_)
                                    (begin
                                      (gxc#verbose
                                       '"make-class-type: incomplete class"
                                       (gx#stx-e _L26513_))
                                      (let ((__obj34502
                                             (make-object
                                              gxc#!class-type::t
                                              '8)))
                                        (gxc#!class-type:::init!
                                         __obj34502
                                         (gx#stx-e _L26513_)
                                         '#!void
                                         _mixin26559_
                                         (gx#stx-e _L26511_)
                                         '#f
                                         (let ((_$e26563_ (gx#stx-e _L26508_)))
                                           (if _$e26563_ _$e26563_ '#!void))
                                         (gx#stx-e _L26509_))
                                        __obj34502))
                                    (let* ((_super26566_
                                            (_mixin-super26270_
                                             _mixin-t26561_
                                             _mixin26559_))
                                           (_slots26568_ (gx#stx-e _L26511_))
                                           (_xslots26570_
                                            (_mixin-slots26271_
                                             _mixin-t26561_))
                                           (_xslots26572_
                                            (if _xslots26570_
                                                (reverse (foldl1 _cons-slot26273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xslots26570_
                         _slots26568_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '#f))
                                           (_ctor26574_ (gx#stx-e _L26508_))
                                           (_ctor26579_
                                            (let ((_$e26576_ _ctor26574_))
                                              (if _$e26576_
                                                  _$e26576_
                                                  (_mixin-ctor26272_
                                                   _mixin-t26561_)))))
                                      (let ((__obj34503
                                             (make-object
                                              gxc#!class-type::t
                                              '8)))
                                        (gxc#!class-type:::init!
                                         __obj34503
                                         (gx#stx-e _L26513_)
                                         _super26566_
                                         _mixin26559_
                                         _slots26568_
                                         _xslots26572_
                                         _ctor26579_
                                         (gx#stx-e _L26509_))
                                        __obj34503)))))
                            _$e26556_)
                           (begin
                             (gxc#verbose
                              '"make-class-type: incomplete class "
                              (gx#stx-e _L26513_))
                             (let ((__obj34504
                                    (make-object gxc#!class-type::t '8)))
                               (gxc#!class-type:::init!
                                __obj34504
                                (gx#stx-e _L26513_)
                                '#!void
                                '#f
                                (gx#stx-e _L26511_)
                                '#f
                                (let ((_$e26582_ (gx#stx-e _L26508_)))
                                  (if _$e26582_ _$e26582_ '#!void))
                                (gx#stx-e _L26509_))
                               __obj34504))))))
                  (___kont3279832799_
                   (lambda ()
                     (gxc#verbose
                      '"make-class-type: can't infer type "
                      (gx#syntax->datum _stx26265_))
                     '#f)))
              (if (gx#stx-pair? ___stx3279232793_)
                  (let ((_e2628426590_ (gx#stx-e ___stx3279232793_)))
                    (let ((_tl2628626595_
                           (let () (declare (not safe)) (##cdr _e2628426590_)))
                          (_hd2628526593_
                           (let ()
                             (declare (not safe))
                             (##car _e2628426590_))))
                      (if (gx#stx-pair? _hd2628526593_)
                          (let ((_e2628726598_ (gx#stx-e _hd2628526593_)))
                            (let ((_tl2628926603_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2628726598_)))
                                  (_hd2628826601_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2628726598_))))
                              (if (gx#identifier? _hd2628826601_)
                                  (if (gx#stx-eq? '%#quote _hd2628826601_)
                                      (if (gx#stx-pair? _tl2628926603_)
                                          (let ((_e2629026606_
                                                 (gx#stx-e _tl2628926603_)))
                                            (let ((_tl2629226611_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2629026606_)))
                                                  (_hd2629126609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2629026606_))))
                                              (if (gx#stx-null? _tl2629226611_)
                                                  (if (gx#stx-pair?
                                                       _tl2628626595_)
                                                      (let ((_e2629326614_
                                                             (gx#stx-e
                                                              _tl2628626595_)))
                                                        (let ((_tl2629526619_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2629326614_)))
                      (_hd2629426617_
                       (let () (declare (not safe)) (##car _e2629326614_))))
                  (if (gx#stx-pair? _hd2629426617_)
                      (let ((_e2629626622_ (gx#stx-e _hd2629426617_)))
                        (let ((_tl2629826627_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2629626622_)))
                              (_hd2629726625_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2629626622_))))
                          (if (gx#identifier? _hd2629726625_)
                              (if (gx#stx-eq? '%#quote _hd2629726625_)
                                  (if (gx#stx-pair? _tl2629826627_)
                                      (let ((_e2629926630_
                                             (gx#stx-e _tl2629826627_)))
                                        (let ((_tl2630126635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2629926630_)))
                                              (_hd2630026633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2629926630_))))
                                          (if (gx#stx-null? _hd2630026633_)
                                              (if (gx#stx-null? _tl2630126635_)
                                                  (if (gx#stx-pair?
                                                       _tl2629526619_)
                                                      (let ((_e2630226638_
                                                             (gx#stx-e
                                                              _tl2629526619_)))
                                                        (let ((_tl2630426643_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2630226638_)))
                      (_hd2630326641_
                       (let () (declare (not safe)) (##car _e2630226638_))))
                  (if (gx#stx-pair? _hd2630326641_)
                      (let ((_e2630526646_ (gx#stx-e _hd2630326641_)))
                        (let ((_tl2630726651_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2630526646_)))
                              (_hd2630626649_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2630526646_))))
                          (if (gx#identifier? _hd2630626649_)
                              (if (gx#stx-eq? '%#quote _hd2630626649_)
                                  (if (gx#stx-pair? _tl2630726651_)
                                      (let ((_e2630826654_
                                             (gx#stx-e _tl2630726651_)))
                                        (let ((_tl2631026659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2630826654_)))
                                              (_hd2630926657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2630826654_))))
                                          (if (gx#stx-null? _tl2631026659_)
                                              (if (gx#stx-pair? _tl2630426643_)
                                                  (let ((_e2631126662_
                                                         (gx#stx-e
                                                          _tl2630426643_)))
                                                    (let ((_tl2631326667_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2631126662_)))
                                                          (_hd2631226665_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2631126662_))))
                                                      (if (gx#stx-pair?
                                                           _tl2631326667_)
                                                          (let ((_e2631426670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2631326667_)))
                    (let ((_tl2631626675_
                           (let () (declare (not safe)) (##cdr _e2631426670_)))
                          (_hd2631526673_
                           (let ()
                             (declare (not safe))
                             (##car _e2631426670_))))
                      (if (gx#stx-pair? _hd2631526673_)
                          (let ((_e2631726678_ (gx#stx-e _hd2631526673_)))
                            (let ((_tl2631926683_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2631726678_)))
                                  (_hd2631826681_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2631726678_))))
                              (if (gx#identifier? _hd2631826681_)
                                  (if (gx#stx-eq? '%#quote _hd2631826681_)
                                      (if (gx#stx-pair? _tl2631926683_)
                                          (let ((_e2632026686_
                                                 (gx#stx-e _tl2631926683_)))
                                            (let ((_tl2632226691_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2632026686_)))
                                                  (_hd2632126689_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2632026686_))))
                                              (if (gx#stx-null? _tl2632226691_)
                                                  (if (gx#stx-pair?
                                                       _tl2631626675_)
                                                      (let ((_e2632326694_
                                                             (gx#stx-e
                                                              _tl2631626675_)))
                                                        (let ((_tl2632526699_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2632326694_)))
                      (_hd2632426697_
                       (let () (declare (not safe)) (##car _e2632326694_))))
                  (if (gx#stx-pair? _hd2632426697_)
                      (let ((_e2632626702_ (gx#stx-e _hd2632426697_)))
                        (let ((_tl2632826707_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2632626702_)))
                              (_hd2632726705_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2632626702_))))
                          (if (gx#identifier? _hd2632726705_)
                              (if (gx#stx-eq? '%#quote _hd2632726705_)
                                  (if (gx#stx-pair? _tl2632826707_)
                                      (let ((_e2632926710_
                                             (gx#stx-e _tl2632826707_)))
                                        (let ((_tl2633126715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2632926710_)))
                                              (_hd2633026713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2632926710_))))
                                          (if (gx#stx-null? _tl2633126715_)
                                              (if (gx#stx-null? _tl2632526699_)
                                                  (___kont3279432795_
                                                   _hd2633026713_
                                                   _hd2632126689_
                                                   _hd2631226665_
                                                   _hd2630926657_
                                                   _hd2629126609_)
                                                  (___kont3279832799_))
                                              (___kont3279832799_))))
                                      (___kont3279832799_))
                                  (___kont3279832799_))
                              (___kont3279832799_))))
                      (___kont3279832799_))))
              (___kont3279832799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))))
                                          (___kont3279832799_))
                                      (___kont3279832799_))
                                  (___kont3279832799_))))
                          (___kont3279832799_))))
                  (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))
                                              (___kont3279832799_))))
                                      (___kont3279832799_))
                                  (___kont3279832799_))
                              (___kont3279832799_))))
                      (___kont3279832799_))))
              (___kont3279832799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl2629526619_)
                                                      (let ((_e2635026428_
                                                             (gx#stx-e
                                                              _tl2629526619_)))
                                                        (let ((_tl2635226433_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2635026428_)))
                      (_hd2635126431_
                       (let () (declare (not safe)) (##car _e2635026428_))))
                  (if (gx#stx-pair? _hd2635126431_)
                      (let ((_e2635326436_ (gx#stx-e _hd2635126431_)))
                        (let ((_tl2635526441_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2635326436_)))
                              (_hd2635426439_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2635326436_))))
                          (if (gx#identifier? _hd2635426439_)
                              (if (gx#stx-eq? '%#quote _hd2635426439_)
                                  (if (gx#stx-pair? _tl2635526441_)
                                      (let ((_e2635626444_
                                             (gx#stx-e _tl2635526441_)))
                                        (let ((_tl2635826449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2635626444_)))
                                              (_hd2635726447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2635626444_))))
                                          (if (gx#stx-null? _tl2635826449_)
                                              (if (gx#stx-pair? _tl2635226433_)
                                                  (let ((_e2635926452_
                                                         (gx#stx-e
                                                          _tl2635226433_)))
                                                    (let ((_tl2636126457_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2635926452_)))
                                                          (_hd2636026455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2635926452_))))
                                                      (if (gx#stx-pair?
                                                           _tl2636126457_)
                                                          (let ((_e2636226460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2636126457_)))
                    (let ((_tl2636426465_
                           (let () (declare (not safe)) (##cdr _e2636226460_)))
                          (_hd2636326463_
                           (let ()
                             (declare (not safe))
                             (##car _e2636226460_))))
                      (if (gx#stx-pair? _hd2636326463_)
                          (let ((_e2636526468_ (gx#stx-e _hd2636326463_)))
                            (let ((_tl2636726473_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2636526468_)))
                                  (_hd2636626471_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2636526468_))))
                              (if (gx#identifier? _hd2636626471_)
                                  (if (gx#stx-eq? '%#quote _hd2636626471_)
                                      (if (gx#stx-pair? _tl2636726473_)
                                          (let ((_e2636826476_
                                                 (gx#stx-e _tl2636726473_)))
                                            (let ((_tl2637026481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2636826476_)))
                                                  (_hd2636926479_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2636826476_))))
                                              (if (gx#stx-null? _tl2637026481_)
                                                  (if (gx#stx-pair?
                                                       _tl2636426465_)
                                                      (let ((_e2637126484_
                                                             (gx#stx-e
                                                              _tl2636426465_)))
                                                        (let ((_tl2637326489_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2637126484_)))
                      (_hd2637226487_
                       (let () (declare (not safe)) (##car _e2637126484_))))
                  (if (gx#stx-pair? _hd2637226487_)
                      (let ((_e2637426492_ (gx#stx-e _hd2637226487_)))
                        (let ((_tl2637626497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2637426492_)))
                              (_hd2637526495_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2637426492_))))
                          (if (gx#identifier? _hd2637526495_)
                              (if (gx#stx-eq? '%#quote _hd2637526495_)
                                  (if (gx#stx-pair? _tl2637626497_)
                                      (let ((_e2637726500_
                                             (gx#stx-e _tl2637626497_)))
                                        (let ((_tl2637926505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2637726500_)))
                                              (_hd2637826503_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2637726500_))))
                                          (if (gx#stx-null? _tl2637926505_)
                                              (if (gx#stx-null? _tl2637326489_)
                                                  (___kont3279632797_
                                                   _hd2637826503_
                                                   _hd2636926479_
                                                   _hd2636026455_
                                                   _hd2635726447_
                                                   _hd2629426617_
                                                   _hd2629126609_)
                                                  (___kont3279832799_))
                                              (___kont3279832799_))))
                                      (___kont3279832799_))
                                  (___kont3279832799_))
                              (___kont3279832799_))))
                      (___kont3279832799_))))
              (___kont3279832799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))))
                                          (___kont3279832799_))
                                      (___kont3279832799_))
                                  (___kont3279832799_))))
                          (___kont3279832799_))))
                  (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))
                                              (___kont3279832799_))))
                                      (___kont3279832799_))
                                  (___kont3279832799_))
                              (___kont3279832799_))))
                      (___kont3279832799_))))
              (___kont3279832799_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl2629526619_)
                                                  (let ((_e2635026428_
                                                         (gx#stx-e
                                                          _tl2629526619_)))
                                                    (let ((_tl2635226433_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2635026428_)))
                                                          (_hd2635126431_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2635026428_))))
                                                      (if (gx#stx-pair?
                                                           _hd2635126431_)
                                                          (let ((_e2635326436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2635126431_)))
                    (let ((_tl2635526441_
                           (let () (declare (not safe)) (##cdr _e2635326436_)))
                          (_hd2635426439_
                           (let ()
                             (declare (not safe))
                             (##car _e2635326436_))))
                      (if (gx#identifier? _hd2635426439_)
                          (if (gx#stx-eq? '%#quote _hd2635426439_)
                              (if (gx#stx-pair? _tl2635526441_)
                                  (let ((_e2635626444_
                                         (gx#stx-e _tl2635526441_)))
                                    (let ((_tl2635826449_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2635626444_)))
                                          (_hd2635726447_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2635626444_))))
                                      (if (gx#stx-null? _tl2635826449_)
                                          (if (gx#stx-pair? _tl2635226433_)
                                              (let ((_e2635926452_
                                                     (gx#stx-e
                                                      _tl2635226433_)))
                                                (let ((_tl2636126457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2635926452_)))
                                                      (_hd2636026455_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2635926452_))))
                                                  (if (gx#stx-pair?
                                                       _tl2636126457_)
                                                      (let ((_e2636226460_
                                                             (gx#stx-e
                                                              _tl2636126457_)))
                                                        (let ((_tl2636426465_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2636226460_)))
                      (_hd2636326463_
                       (let () (declare (not safe)) (##car _e2636226460_))))
                  (if (gx#stx-pair? _hd2636326463_)
                      (let ((_e2636526468_ (gx#stx-e _hd2636326463_)))
                        (let ((_tl2636726473_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2636526468_)))
                              (_hd2636626471_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2636526468_))))
                          (if (gx#identifier? _hd2636626471_)
                              (if (gx#stx-eq? '%#quote _hd2636626471_)
                                  (if (gx#stx-pair? _tl2636726473_)
                                      (let ((_e2636826476_
                                             (gx#stx-e _tl2636726473_)))
                                        (let ((_tl2637026481_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2636826476_)))
                                              (_hd2636926479_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2636826476_))))
                                          (if (gx#stx-null? _tl2637026481_)
                                              (if (gx#stx-pair? _tl2636426465_)
                                                  (let ((_e2637126484_
                                                         (gx#stx-e
                                                          _tl2636426465_)))
                                                    (let ((_tl2637326489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2637126484_)))
                                                          (_hd2637226487_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2637126484_))))
                                                      (if (gx#stx-pair?
                                                           _hd2637226487_)
                                                          (let ((_e2637426492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2637226487_)))
                    (let ((_tl2637626497_
                           (let () (declare (not safe)) (##cdr _e2637426492_)))
                          (_hd2637526495_
                           (let ()
                             (declare (not safe))
                             (##car _e2637426492_))))
                      (if (gx#identifier? _hd2637526495_)
                          (if (gx#stx-eq? '%#quote _hd2637526495_)
                              (if (gx#stx-pair? _tl2637626497_)
                                  (let ((_e2637726500_
                                         (gx#stx-e _tl2637626497_)))
                                    (let ((_tl2637926505_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2637726500_)))
                                          (_hd2637826503_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2637726500_))))
                                      (if (gx#stx-null? _tl2637926505_)
                                          (if (gx#stx-null? _tl2637326489_)
                                              (___kont3279632797_
                                               _hd2637826503_
                                               _hd2636926479_
                                               _hd2636026455_
                                               _hd2635726447_
                                               _hd2629426617_
                                               _hd2629126609_)
                                              (___kont3279832799_))
                                          (___kont3279832799_))))
                                  (___kont3279832799_))
                              (___kont3279832799_))
                          (___kont3279832799_))))
                  (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))
                                              (___kont3279832799_))))
                                      (___kont3279832799_))
                                  (___kont3279832799_))
                              (___kont3279832799_))))
                      (___kont3279832799_))))
              (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3279832799_))
                                          (___kont3279832799_))))
                                  (___kont3279832799_))
                              (___kont3279832799_))
                          (___kont3279832799_))))
                  (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_)))))
                                      (if (gx#stx-pair? _tl2629526619_)
                                          (let ((_e2635026428_
                                                 (gx#stx-e _tl2629526619_)))
                                            (let ((_tl2635226433_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2635026428_)))
                                                  (_hd2635126431_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2635026428_))))
                                              (if (gx#stx-pair? _hd2635126431_)
                                                  (let ((_e2635326436_
                                                         (gx#stx-e
                                                          _hd2635126431_)))
                                                    (let ((_tl2635526441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2635326436_)))
                                                          (_hd2635426439_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2635326436_))))
                                                      (if (gx#identifier?
                                                           _hd2635426439_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _hd2635426439_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2635526441_)
                          (let ((_e2635626444_ (gx#stx-e _tl2635526441_)))
                            (let ((_tl2635826449_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2635626444_)))
                                  (_hd2635726447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2635626444_))))
                              (if (gx#stx-null? _tl2635826449_)
                                  (if (gx#stx-pair? _tl2635226433_)
                                      (let ((_e2635926452_
                                             (gx#stx-e _tl2635226433_)))
                                        (let ((_tl2636126457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2635926452_)))
                                              (_hd2636026455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2635926452_))))
                                          (if (gx#stx-pair? _tl2636126457_)
                                              (let ((_e2636226460_
                                                     (gx#stx-e
                                                      _tl2636126457_)))
                                                (let ((_tl2636426465_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2636226460_)))
                                                      (_hd2636326463_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2636226460_))))
                                                  (if (gx#stx-pair?
                                                       _hd2636326463_)
                                                      (let ((_e2636526468_
                                                             (gx#stx-e
                                                              _hd2636326463_)))
                                                        (let ((_tl2636726473_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2636526468_)))
                      (_hd2636626471_
                       (let () (declare (not safe)) (##car _e2636526468_))))
                  (if (gx#identifier? _hd2636626471_)
                      (if (gx#stx-eq? '%#quote _hd2636626471_)
                          (if (gx#stx-pair? _tl2636726473_)
                              (let ((_e2636826476_ (gx#stx-e _tl2636726473_)))
                                (let ((_tl2637026481_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2636826476_)))
                                      (_hd2636926479_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2636826476_))))
                                  (if (gx#stx-null? _tl2637026481_)
                                      (if (gx#stx-pair? _tl2636426465_)
                                          (let ((_e2637126484_
                                                 (gx#stx-e _tl2636426465_)))
                                            (let ((_tl2637326489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2637126484_)))
                                                  (_hd2637226487_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2637126484_))))
                                              (if (gx#stx-pair? _hd2637226487_)
                                                  (let ((_e2637426492_
                                                         (gx#stx-e
                                                          _hd2637226487_)))
                                                    (let ((_tl2637626497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2637426492_)))
                                                          (_hd2637526495_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2637426492_))))
                                                      (if (gx#identifier?
                                                           _hd2637526495_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _hd2637526495_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2637626497_)
                          (let ((_e2637726500_ (gx#stx-e _tl2637626497_)))
                            (let ((_tl2637926505_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2637726500_)))
                                  (_hd2637826503_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2637726500_))))
                              (if (gx#stx-null? _tl2637926505_)
                                  (if (gx#stx-null? _tl2637326489_)
                                      (___kont3279632797_
                                       _hd2637826503_
                                       _hd2636926479_
                                       _hd2636026455_
                                       _hd2635726447_
                                       _hd2629426617_
                                       _hd2629126609_)
                                      (___kont3279832799_))
                                  (___kont3279832799_))))
                          (___kont3279832799_))
                      (___kont3279832799_))
                  (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))))
                                          (___kont3279832799_))
                                      (___kont3279832799_))))
                              (___kont3279832799_))
                          (___kont3279832799_))
                      (___kont3279832799_))))
              (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3279832799_))))
                                      (___kont3279832799_))
                                  (___kont3279832799_))))
                          (___kont3279832799_))
                      (___kont3279832799_))
                  (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))))
                                          (___kont3279832799_)))
                                  (if (gx#stx-pair? _tl2629526619_)
                                      (let ((_e2635026428_
                                             (gx#stx-e _tl2629526619_)))
                                        (let ((_tl2635226433_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2635026428_)))
                                              (_hd2635126431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2635026428_))))
                                          (if (gx#stx-pair? _hd2635126431_)
                                              (let ((_e2635326436_
                                                     (gx#stx-e
                                                      _hd2635126431_)))
                                                (let ((_tl2635526441_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2635326436_)))
                                                      (_hd2635426439_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2635326436_))))
                                                  (if (gx#identifier?
                                                       _hd2635426439_)
                                                      (if (gx#stx-eq?
                                                           '%#quote
                                                           _hd2635426439_)
                                                          (if (gx#stx-pair?
                                                               _tl2635526441_)
                                                              (let ((_e2635626444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2635526441_)))
                        (let ((_tl2635826449_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2635626444_)))
                              (_hd2635726447_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2635626444_))))
                          (if (gx#stx-null? _tl2635826449_)
                              (if (gx#stx-pair? _tl2635226433_)
                                  (let ((_e2635926452_
                                         (gx#stx-e _tl2635226433_)))
                                    (let ((_tl2636126457_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2635926452_)))
                                          (_hd2636026455_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2635926452_))))
                                      (if (gx#stx-pair? _tl2636126457_)
                                          (let ((_e2636226460_
                                                 (gx#stx-e _tl2636126457_)))
                                            (let ((_tl2636426465_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2636226460_)))
                                                  (_hd2636326463_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2636226460_))))
                                              (if (gx#stx-pair? _hd2636326463_)
                                                  (let ((_e2636526468_
                                                         (gx#stx-e
                                                          _hd2636326463_)))
                                                    (let ((_tl2636726473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2636526468_)))
                                                          (_hd2636626471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2636526468_))))
                                                      (if (gx#identifier?
                                                           _hd2636626471_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _hd2636626471_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2636726473_)
                          (let ((_e2636826476_ (gx#stx-e _tl2636726473_)))
                            (let ((_tl2637026481_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2636826476_)))
                                  (_hd2636926479_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2636826476_))))
                              (if (gx#stx-null? _tl2637026481_)
                                  (if (gx#stx-pair? _tl2636426465_)
                                      (let ((_e2637126484_
                                             (gx#stx-e _tl2636426465_)))
                                        (let ((_tl2637326489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2637126484_)))
                                              (_hd2637226487_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2637126484_))))
                                          (if (gx#stx-pair? _hd2637226487_)
                                              (let ((_e2637426492_
                                                     (gx#stx-e
                                                      _hd2637226487_)))
                                                (let ((_tl2637626497_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2637426492_)))
                                                      (_hd2637526495_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2637426492_))))
                                                  (if (gx#identifier?
                                                       _hd2637526495_)
                                                      (if (gx#stx-eq?
                                                           '%#quote
                                                           _hd2637526495_)
                                                          (if (gx#stx-pair?
                                                               _tl2637626497_)
                                                              (let ((_e2637726500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2637626497_)))
                        (let ((_tl2637926505_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2637726500_)))
                              (_hd2637826503_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2637726500_))))
                          (if (gx#stx-null? _tl2637926505_)
                              (if (gx#stx-null? _tl2637326489_)
                                  (___kont3279632797_
                                   _hd2637826503_
                                   _hd2636926479_
                                   _hd2636026455_
                                   _hd2635726447_
                                   _hd2629426617_
                                   _hd2629126609_)
                                  (___kont3279832799_))
                              (___kont3279832799_))))
                      (___kont3279832799_))
                  (___kont3279832799_))
              (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3279832799_))))
                                      (___kont3279832799_))
                                  (___kont3279832799_))))
                          (___kont3279832799_))
                      (___kont3279832799_))
                  (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))))
                                          (___kont3279832799_))))
                                  (___kont3279832799_))
                              (___kont3279832799_))))
                      (___kont3279832799_))
                  (___kont3279832799_))
              (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3279832799_))))
                                      (___kont3279832799_)))
                              (if (gx#stx-pair? _tl2629526619_)
                                  (let ((_e2635026428_
                                         (gx#stx-e _tl2629526619_)))
                                    (let ((_tl2635226433_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2635026428_)))
                                          (_hd2635126431_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2635026428_))))
                                      (if (gx#stx-pair? _hd2635126431_)
                                          (let ((_e2635326436_
                                                 (gx#stx-e _hd2635126431_)))
                                            (let ((_tl2635526441_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2635326436_)))
                                                  (_hd2635426439_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2635326436_))))
                                              (if (gx#identifier?
                                                   _hd2635426439_)
                                                  (if (gx#stx-eq?
                                                       '%#quote
                                                       _hd2635426439_)
                                                      (if (gx#stx-pair?
                                                           _tl2635526441_)
                                                          (let ((_e2635626444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2635526441_)))
                    (let ((_tl2635826449_
                           (let () (declare (not safe)) (##cdr _e2635626444_)))
                          (_hd2635726447_
                           (let ()
                             (declare (not safe))
                             (##car _e2635626444_))))
                      (if (gx#stx-null? _tl2635826449_)
                          (if (gx#stx-pair? _tl2635226433_)
                              (let ((_e2635926452_ (gx#stx-e _tl2635226433_)))
                                (let ((_tl2636126457_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2635926452_)))
                                      (_hd2636026455_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2635926452_))))
                                  (if (gx#stx-pair? _tl2636126457_)
                                      (let ((_e2636226460_
                                             (gx#stx-e _tl2636126457_)))
                                        (let ((_tl2636426465_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2636226460_)))
                                              (_hd2636326463_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2636226460_))))
                                          (if (gx#stx-pair? _hd2636326463_)
                                              (let ((_e2636526468_
                                                     (gx#stx-e
                                                      _hd2636326463_)))
                                                (let ((_tl2636726473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2636526468_)))
                                                      (_hd2636626471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2636526468_))))
                                                  (if (gx#identifier?
                                                       _hd2636626471_)
                                                      (if (gx#stx-eq?
                                                           '%#quote
                                                           _hd2636626471_)
                                                          (if (gx#stx-pair?
                                                               _tl2636726473_)
                                                              (let ((_e2636826476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2636726473_)))
                        (let ((_tl2637026481_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2636826476_)))
                              (_hd2636926479_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2636826476_))))
                          (if (gx#stx-null? _tl2637026481_)
                              (if (gx#stx-pair? _tl2636426465_)
                                  (let ((_e2637126484_
                                         (gx#stx-e _tl2636426465_)))
                                    (let ((_tl2637326489_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2637126484_)))
                                          (_hd2637226487_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2637126484_))))
                                      (if (gx#stx-pair? _hd2637226487_)
                                          (let ((_e2637426492_
                                                 (gx#stx-e _hd2637226487_)))
                                            (let ((_tl2637626497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2637426492_)))
                                                  (_hd2637526495_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2637426492_))))
                                              (if (gx#identifier?
                                                   _hd2637526495_)
                                                  (if (gx#stx-eq?
                                                       '%#quote
                                                       _hd2637526495_)
                                                      (if (gx#stx-pair?
                                                           _tl2637626497_)
                                                          (let ((_e2637726500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2637626497_)))
                    (let ((_tl2637926505_
                           (let () (declare (not safe)) (##cdr _e2637726500_)))
                          (_hd2637826503_
                           (let ()
                             (declare (not safe))
                             (##car _e2637726500_))))
                      (if (gx#stx-null? _tl2637926505_)
                          (if (gx#stx-null? _tl2637326489_)
                              (___kont3279632797_
                               _hd2637826503_
                               _hd2636926479_
                               _hd2636026455_
                               _hd2635726447_
                               _hd2629426617_
                               _hd2629126609_)
                              (___kont3279832799_))
                          (___kont3279832799_))))
                  (___kont3279832799_))
              (___kont3279832799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))))
                                          (___kont3279832799_))))
                                  (___kont3279832799_))
                              (___kont3279832799_))))
                      (___kont3279832799_))
                  (___kont3279832799_))
              (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3279832799_))))
                                      (___kont3279832799_))))
                              (___kont3279832799_))
                          (___kont3279832799_))))
                  (___kont3279832799_))
              (___kont3279832799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))))
                                          (___kont3279832799_))))
                                  (___kont3279832799_)))))
                      (if (gx#stx-pair? _tl2629526619_)
                          (let ((_e2635026428_ (gx#stx-e _tl2629526619_)))
                            (let ((_tl2635226433_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2635026428_)))
                                  (_hd2635126431_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2635026428_))))
                              (if (gx#stx-pair? _hd2635126431_)
                                  (let ((_e2635326436_
                                         (gx#stx-e _hd2635126431_)))
                                    (let ((_tl2635526441_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2635326436_)))
                                          (_hd2635426439_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2635326436_))))
                                      (if (gx#identifier? _hd2635426439_)
                                          (if (gx#stx-eq?
                                               '%#quote
                                               _hd2635426439_)
                                              (if (gx#stx-pair? _tl2635526441_)
                                                  (let ((_e2635626444_
                                                         (gx#stx-e
                                                          _tl2635526441_)))
                                                    (let ((_tl2635826449_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2635626444_)))
                                                          (_hd2635726447_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2635626444_))))
                                                      (if (gx#stx-null?
                                                           _tl2635826449_)
                                                          (if (gx#stx-pair?
                                                               _tl2635226433_)
                                                              (let ((_e2635926452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2635226433_)))
                        (let ((_tl2636126457_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2635926452_)))
                              (_hd2636026455_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2635926452_))))
                          (if (gx#stx-pair? _tl2636126457_)
                              (let ((_e2636226460_ (gx#stx-e _tl2636126457_)))
                                (let ((_tl2636426465_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2636226460_)))
                                      (_hd2636326463_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2636226460_))))
                                  (if (gx#stx-pair? _hd2636326463_)
                                      (let ((_e2636526468_
                                             (gx#stx-e _hd2636326463_)))
                                        (let ((_tl2636726473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2636526468_)))
                                              (_hd2636626471_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2636526468_))))
                                          (if (gx#identifier? _hd2636626471_)
                                              (if (gx#stx-eq?
                                                   '%#quote
                                                   _hd2636626471_)
                                                  (if (gx#stx-pair?
                                                       _tl2636726473_)
                                                      (let ((_e2636826476_
                                                             (gx#stx-e
                                                              _tl2636726473_)))
                                                        (let ((_tl2637026481_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2636826476_)))
                      (_hd2636926479_
                       (let () (declare (not safe)) (##car _e2636826476_))))
                  (if (gx#stx-null? _tl2637026481_)
                      (if (gx#stx-pair? _tl2636426465_)
                          (let ((_e2637126484_ (gx#stx-e _tl2636426465_)))
                            (let ((_tl2637326489_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2637126484_)))
                                  (_hd2637226487_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2637126484_))))
                              (if (gx#stx-pair? _hd2637226487_)
                                  (let ((_e2637426492_
                                         (gx#stx-e _hd2637226487_)))
                                    (let ((_tl2637626497_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2637426492_)))
                                          (_hd2637526495_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2637426492_))))
                                      (if (gx#identifier? _hd2637526495_)
                                          (if (gx#stx-eq?
                                               '%#quote
                                               _hd2637526495_)
                                              (if (gx#stx-pair? _tl2637626497_)
                                                  (let ((_e2637726500_
                                                         (gx#stx-e
                                                          _tl2637626497_)))
                                                    (let ((_tl2637926505_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2637726500_)))
                                                          (_hd2637826503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2637726500_))))
                                                      (if (gx#stx-null?
                                                           _tl2637926505_)
                                                          (if (gx#stx-null?
                                                               _tl2637326489_)
                                                              (___kont3279632797_
                                                               _hd2637826503_
                                                               _hd2636926479_
                                                               _hd2636026455_
                                                               _hd2635726447_
                                                               _hd2629426617_
                                                               _hd2629126609_)
                                                              (___kont3279832799_))
                                                          (___kont3279832799_))))
                                                  (___kont3279832799_))
                                              (___kont3279832799_))
                                          (___kont3279832799_))))
                                  (___kont3279832799_))))
                          (___kont3279832799_))
                      (___kont3279832799_))))
              (___kont3279832799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))
                                              (___kont3279832799_))))
                                      (___kont3279832799_))))
                              (___kont3279832799_))))
                      (___kont3279832799_))
                  (___kont3279832799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))
                                              (___kont3279832799_))
                                          (___kont3279832799_))))
                                  (___kont3279832799_))))
                          (___kont3279832799_)))))
              (___kont3279832799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3279832799_))))
                                          (___kont3279832799_))
                                      (___kont3279832799_))
                                  (___kont3279832799_))))
                          (___kont3279832799_))))
                  (___kont3279832799_)))))))
    (define gxc#basic-expression-type-make-class-predicate
      (lambda (_stx26191_ _args26192_)
        (let* ((___stx3304233043_ _args26192_)
               (_g2619526211_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3304233043_))))
          (let ((___kont3304433045_
                 (lambda (_L26247_)
                   (let ((__tmp34521 (gxc#identifier-symbol _L26247_)))
                     (declare (not safe))
                     (##structure gxc#!class-pred::t __tmp34521))))
                (___kont3304633047_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3304233043_)
                (let ((_e2619826223_ (gx#stx-e ___stx3304233043_)))
                  (let ((_tl2620026228_
                         (let () (declare (not safe)) (##cdr _e2619826223_)))
                        (_hd2619926226_
                         (let () (declare (not safe)) (##car _e2619826223_))))
                    (if (gx#stx-pair? _hd2619926226_)
                        (let ((_e2620126231_ (gx#stx-e _hd2619926226_)))
                          (let ((_tl2620326236_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2620126231_)))
                                (_hd2620226234_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2620126231_))))
                            (if (gx#identifier? _hd2620226234_)
                                (if (gx#stx-eq? '%#ref _hd2620226234_)
                                    (if (gx#stx-pair? _tl2620326236_)
                                        (let ((_e2620426239_
                                               (gx#stx-e _tl2620326236_)))
                                          (let ((_tl2620626244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2620426239_)))
                                                (_hd2620526242_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2620426239_))))
                                            (if (gx#stx-null? _tl2620626244_)
                                                (if (gx#stx-null?
                                                     _tl2620026228_)
                                                    (___kont3304433045_
                                                     _hd2620526242_)
                                                    (___kont3304633047_))
                                                (___kont3304633047_))))
                                        (___kont3304633047_))
                                    (___kont3304633047_))
                                (___kont3304633047_))))
                        (___kont3304633047_))))
                (___kont3304633047_))))))
    (define gxc#basic-expression-type-make-class-slot-accessor__%
      (lambda (_stx26062_ _args26063_ _unchecked?26064_)
        (let* ((___stx3307633077_ _args26063_)
               (_g2606726093_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3307633077_))))
          (let ((___kont3307833079_
                 (lambda (_L26153_ _L26154_)
                   (let ((__tmp34523 (gxc#identifier-symbol _L26154_))
                         (__tmp34522 (gx#stx-e _L26153_)))
                     (declare (not safe))
                     (##structure
                      gxc#!class-getf::t
                      __tmp34523
                      __tmp34522
                      _unchecked?26064_))))
                (___kont3308033081_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3307633077_)
                (let ((_e2607126105_ (gx#stx-e ___stx3307633077_)))
                  (let ((_tl2607326110_
                         (let () (declare (not safe)) (##cdr _e2607126105_)))
                        (_hd2607226108_
                         (let () (declare (not safe)) (##car _e2607126105_))))
                    (if (gx#stx-pair? _hd2607226108_)
                        (let ((_e2607426113_ (gx#stx-e _hd2607226108_)))
                          (let ((_tl2607626118_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2607426113_)))
                                (_hd2607526116_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2607426113_))))
                            (if (gx#identifier? _hd2607526116_)
                                (if (gx#stx-eq? '%#ref _hd2607526116_)
                                    (if (gx#stx-pair? _tl2607626118_)
                                        (let ((_e2607726121_
                                               (gx#stx-e _tl2607626118_)))
                                          (let ((_tl2607926126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2607726121_)))
                                                (_hd2607826124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2607726121_))))
                                            (if (gx#stx-null? _tl2607926126_)
                                                (if (gx#stx-pair?
                                                     _tl2607326110_)
                                                    (let ((_e2608026129_
                                                           (gx#stx-e
                                                            _tl2607326110_)))
                                                      (let ((_tl2608226134_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2608026129_)))
                    (_hd2608126132_
                     (let () (declare (not safe)) (##car _e2608026129_))))
                (if (gx#stx-pair? _hd2608126132_)
                    (let ((_e2608326137_ (gx#stx-e _hd2608126132_)))
                      (let ((_tl2608526142_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2608326137_)))
                            (_hd2608426140_
                             (let ()
                               (declare (not safe))
                               (##car _e2608326137_))))
                        (if (gx#identifier? _hd2608426140_)
                            (if (gx#stx-eq? '%#quote _hd2608426140_)
                                (if (gx#stx-pair? _tl2608526142_)
                                    (let ((_e2608626145_
                                           (gx#stx-e _tl2608526142_)))
                                      (let ((_tl2608826150_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2608626145_)))
                                            (_hd2608726148_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2608626145_))))
                                        (if (gx#stx-null? _tl2608826150_)
                                            (if (gx#stx-null? _tl2608226134_)
                                                (___kont3307833079_
                                                 _hd2608726148_
                                                 _hd2607826124_)
                                                (___kont3308033081_))
                                            (___kont3308033081_))))
                                    (___kont3308033081_))
                                (___kont3308033081_))
                            (___kont3308033081_))))
                    (___kont3308033081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3308033081_))
                                                (___kont3308033081_))))
                                        (___kont3308033081_))
                                    (___kont3308033081_))
                                (___kont3308033081_))))
                        (___kont3308033081_))))
                (___kont3308033081_))))))
    (define gxc#basic-expression-type-make-class-slot-accessor__0
      (lambda (_stx26182_ _args26183_)
        (let ((_unchecked?26185_ '#f))
          (gxc#basic-expression-type-make-class-slot-accessor__%
           _stx26182_
           _args26183_
           _unchecked?26185_))))
    (define gxc#basic-expression-type-make-class-slot-accessor
      (lambda _g34525_
        (let ((_g34524_ (let () (declare (not safe)) (##length _g34525_))))
          (cond ((let () (declare (not safe)) (##fx= _g34524_ 2))
                 (apply gxc#basic-expression-type-make-class-slot-accessor__0
                        _g34525_))
                ((let () (declare (not safe)) (##fx= _g34524_ 3))
                 (apply gxc#basic-expression-type-make-class-slot-accessor__%
                        _g34525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#basic-expression-type-make-class-slot-accessor
                  _g34525_))))))
    (define gxc#basic-expression-type-make-class-slot-mutator__%
      (lambda (_stx25932_ _args25933_ _unchecked?25934_)
        (let* ((___stx3313433135_ _args25933_)
               (_g2593725963_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3313433135_))))
          (let ((___kont3313633137_
                 (lambda (_L26023_ _L26024_)
                   (let ((__tmp34527 (gxc#identifier-symbol _L26024_))
                         (__tmp34526 (gx#stx-e _L26023_)))
                     (declare (not safe))
                     (##structure
                      gxc#!class-setf::t
                      __tmp34527
                      __tmp34526
                      _unchecked?25934_))))
                (___kont3313833139_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3313433135_)
                (let ((_e2594125975_ (gx#stx-e ___stx3313433135_)))
                  (let ((_tl2594325980_
                         (let () (declare (not safe)) (##cdr _e2594125975_)))
                        (_hd2594225978_
                         (let () (declare (not safe)) (##car _e2594125975_))))
                    (if (gx#stx-pair? _hd2594225978_)
                        (let ((_e2594425983_ (gx#stx-e _hd2594225978_)))
                          (let ((_tl2594625988_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2594425983_)))
                                (_hd2594525986_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2594425983_))))
                            (if (gx#identifier? _hd2594525986_)
                                (if (gx#stx-eq? '%#ref _hd2594525986_)
                                    (if (gx#stx-pair? _tl2594625988_)
                                        (let ((_e2594725991_
                                               (gx#stx-e _tl2594625988_)))
                                          (let ((_tl2594925996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2594725991_)))
                                                (_hd2594825994_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2594725991_))))
                                            (if (gx#stx-null? _tl2594925996_)
                                                (if (gx#stx-pair?
                                                     _tl2594325980_)
                                                    (let ((_e2595025999_
                                                           (gx#stx-e
                                                            _tl2594325980_)))
                                                      (let ((_tl2595226004_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2595025999_)))
                    (_hd2595126002_
                     (let () (declare (not safe)) (##car _e2595025999_))))
                (if (gx#stx-pair? _hd2595126002_)
                    (let ((_e2595326007_ (gx#stx-e _hd2595126002_)))
                      (let ((_tl2595526012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2595326007_)))
                            (_hd2595426010_
                             (let ()
                               (declare (not safe))
                               (##car _e2595326007_))))
                        (if (gx#identifier? _hd2595426010_)
                            (if (gx#stx-eq? '%#quote _hd2595426010_)
                                (if (gx#stx-pair? _tl2595526012_)
                                    (let ((_e2595626015_
                                           (gx#stx-e _tl2595526012_)))
                                      (let ((_tl2595826020_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2595626015_)))
                                            (_hd2595726018_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2595626015_))))
                                        (if (gx#stx-null? _tl2595826020_)
                                            (if (gx#stx-null? _tl2595226004_)
                                                (___kont3313633137_
                                                 _hd2595726018_
                                                 _hd2594825994_)
                                                (___kont3313833139_))
                                            (___kont3313833139_))))
                                    (___kont3313833139_))
                                (___kont3313833139_))
                            (___kont3313833139_))))
                    (___kont3313833139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3313833139_))
                                                (___kont3313833139_))))
                                        (___kont3313833139_))
                                    (___kont3313833139_))
                                (___kont3313833139_))))
                        (___kont3313833139_))))
                (___kont3313833139_))))))
    (define gxc#basic-expression-type-make-class-slot-mutator__0
      (lambda (_stx26052_ _args26053_)
        (let ((_unchecked?26055_ '#f))
          (gxc#basic-expression-type-make-class-slot-mutator__%
           _stx26052_
           _args26053_
           _unchecked?26055_))))
    (define gxc#basic-expression-type-make-class-slot-mutator
      (lambda _g34529_
        (let ((_g34528_ (let () (declare (not safe)) (##length _g34529_))))
          (cond ((let () (declare (not safe)) (##fx= _g34528_ 2))
                 (apply gxc#basic-expression-type-make-class-slot-mutator__0
                        _g34529_))
                ((let () (declare (not safe)) (##fx= _g34528_ 3))
                 (apply gxc#basic-expression-type-make-class-slot-mutator__%
                        _g34529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#basic-expression-type-make-class-slot-mutator
                  _g34529_))))))
    (define gxc#basic-expression-type-make-class-slot-unchecked-accessor
      (lambda (_stx25928_ _args25929_)
        (gxc#basic-expression-type-make-class-slot-accessor__%
         _stx25928_
         _args25929_
         '#t)))
    (define gxc#basic-expression-type-make-class-slot-unchecked-mutator
      (lambda (_stx25925_ _args25926_)
        (gxc#basic-expression-type-make-class-slot-mutator__%
         _stx25925_
         _args25926_
         '#t)))
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-type
     gxc#basic-expression-type-make-struct-type)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-predicate
     gxc#basic-expression-type-make-struct-predicate)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-field-accessor
     gxc#basic-expression-type-make-struct-field-accessor)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-field-mutator
     gxc#basic-expression-type-make-struct-field-mutator)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-field-unchecked-accessor
     gxc#basic-expression-type-make-struct-field-unchecked-accessor)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-struct-field-unchecked-mutator
     gxc#basic-expression-type-make-struct-field-unchecked-mutator)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-type
     gxc#basic-expression-type-make-class-type)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-predicate
     gxc#basic-expression-type-make-class-predicate)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-slot-accessor
     gxc#basic-expression-type-make-class-slot-accessor)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-slot-mutator
     gxc#basic-expression-type-make-class-slot-mutator)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-slot-unchecked-accessor
     gxc#basic-expression-type-make-class-slot-unchecked-accessor)
    (table-set!
     gxc#basic-expression-type-builtin
     'make-class-slot-unchecked-mutator
     gxc#basic-expression-type-make-class-slot-unchecked-mutator)
    (define gxc#basic-expression-type-ref%
      (lambda (_stx25874_)
        (let* ((_g2587625889_
                (lambda (_g2587725886_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2587725886_)))
               (_g2587525922_
                (lambda (_g2587725892_)
                  (if (gx#stx-pair? _g2587725892_)
                      (let ((_e2587925894_ (gx#stx-e _g2587725892_)))
                        (let ((_hd2588025897_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2587925894_)))
                              (_tl2588125899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2587925894_))))
                          (if (gx#stx-pair? _tl2588125899_)
                              (let ((_e2588225902_ (gx#stx-e _tl2588125899_)))
                                (let ((_hd2588325905_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2588225902_)))
                                      (_tl2588425907_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2588225902_))))
                                  (if (gx#stx-null? _tl2588425907_)
                                      ((lambda (_L25910_)
                                         (gxc#optimizer-lookup-type
                                          (gxc#identifier-symbol _L25910_)))
                                       _hd2588325905_)
                                      (_g2587625889_ _g2587725892_))))
                              (_g2587625889_ _g2587725892_))))
                      (_g2587625889_ _g2587725892_)))))
          (_g2587525922_ _stx25874_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form25108_)
        (let* ((___stx3319233193_ _form25108_)
               (_g2511325270_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3319233193_))))
          (let ((___kont3319433195_ (lambda (_L25794_ _L25795_ _L25796_) '#t))
                (___kont3320033201_
                 (lambda (_L25582_
                          _L25583_
                          _L25584_
                          _L25585_
                          _L25586_
                          _L25587_)
                   '#t))
                (___kont3320633207_
                 (lambda (_L25378_ _L25379_ _L25380_ _L25381_) '#t))
                (___kont3320833209_ (lambda () '#f)))
            (let* ((___match3333333334_
                    (lambda (_e2523025282_
                             _hd2523125285_
                             _tl2523225287_
                             _e2523325290_
                             _hd2523425293_
                             _tl2523525295_
                             _e2523625298_
                             _hd2523725301_
                             _tl2523825303_
                             _e2523925306_
                             _hd2524025309_
                             _tl2524125311_
                             _e2524225314_
                             _hd2524325317_
                             _tl2524425319_
                             _e2524525322_
                             _hd2524625325_
                             _tl2524725327_
                             _e2524825330_
                             _hd2524925333_
                             _tl2525025335_
                             _e2525125338_
                             _hd2525225341_
                             _tl2525325343_
                             _e2525425346_
                             _hd2525525349_
                             _tl2525625351_
                             _e2525725354_
                             _hd2525825357_
                             _tl2525925359_
                             _e2526025362_
                             _hd2526125365_
                             _tl2526225367_
                             _e2526325370_
                             _hd2526425373_
                             _tl2526525375_)
                      (let ((_L25378_ _hd2526425373_)
                            (_L25379_ _hd2525525349_)
                            (_L25380_ _hd2524625325_)
                            (_L25381_ _hd2523125285_))
                        (if (and (gx#identifier? _L25381_)
                                 (gxc#runtime-identifier=? _L25380_ 'apply)
                                 (gx#free-identifier=? _L25381_ _L25378_)
                                 (not (gx#free-identifier=?
                                       _L25379_
                                       _L25381_)))
                            (___kont3320633207_
                             _L25378_
                             _L25379_
                             _L25380_
                             _L25381_)
                            (___kont3320833209_)))))
                   (___match3330533306_
                    (lambda (_e2523025282_
                             _hd2523125285_
                             _tl2523225287_
                             _e2523325290_
                             _hd2523425293_
                             _tl2523525295_
                             _e2523625298_
                             _hd2523725301_
                             _tl2523825303_
                             _e2523925306_
                             _hd2524025309_
                             _tl2524125311_
                             _e2524225314_
                             _hd2524325317_
                             _tl2524425319_
                             _e2524525322_
                             _hd2524625325_
                             _tl2524725327_
                             _e2524825330_
                             _hd2524925333_
                             _tl2525025335_
                             _e2525125338_
                             _hd2525225341_
                             _tl2525325343_
                             _e2525425346_
                             _hd2525525349_
                             _tl2525625351_)
                      (if (gx#stx-pair? _tl2525025335_)
                          (let ((_e2525725354_ (gx#stx-e _tl2525025335_)))
                            (let ((_tl2525925359_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2525725354_)))
                                  (_hd2525825357_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2525725354_))))
                              (if (gx#stx-pair? _hd2525825357_)
                                  (let ((_e2526025362_
                                         (gx#stx-e _hd2525825357_)))
                                    (let ((_tl2526225367_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2526025362_)))
                                          (_hd2526125365_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2526025362_))))
                                      (if (gx#identifier? _hd2526125365_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2526125365_)
                                              (if (gx#stx-pair? _tl2526225367_)
                                                  (let ((_e2526325370_
                                                         (gx#stx-e
                                                          _tl2526225367_)))
                                                    (let ((_tl2526525375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2526325370_)))
                                                          (_hd2526425373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2526325370_))))
                                                      (if (gx#stx-null?
                                                           _tl2526525375_)
                                                          (if (gx#stx-null?
                                                               _tl2525925359_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2523525295_)
                          (___match3333333334_
                           _e2523025282_
                           _hd2523125285_
                           _tl2523225287_
                           _e2523325290_
                           _hd2523425293_
                           _tl2523525295_
                           _e2523625298_
                           _hd2523725301_
                           _tl2523825303_
                           _e2523925306_
                           _hd2524025309_
                           _tl2524125311_
                           _e2524225314_
                           _hd2524325317_
                           _tl2524425319_
                           _e2524525322_
                           _hd2524625325_
                           _tl2524725327_
                           _e2524825330_
                           _hd2524925333_
                           _tl2525025335_
                           _e2525125338_
                           _hd2525225341_
                           _tl2525325343_
                           _e2525425346_
                           _hd2525525349_
                           _tl2525625351_
                           _e2525725354_
                           _hd2525825357_
                           _tl2525925359_
                           _e2526025362_
                           _hd2526125365_
                           _tl2526225367_
                           _e2526325370_
                           _hd2526425373_
                           _tl2526525375_)
                          (___kont3320833209_))
                      (___kont3320833209_))
                  (___kont3320833209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3320833209_))
                                              (___kont3320833209_))
                                          (___kont3320833209_))))
                                  (___kont3320833209_))))
                          (___kont3320833209_))))
                   (___match3323533236_
                    (lambda (_e2516625422_
                             _hd2516725425_
                             _tl2516825427_
                             ___splice3320233203_
                             _target2516925430_
                             _tl2517125432_)
                      (letrec ((_loop2517225435_
                                (lambda (_hd2517025438_ _arg2517625440_)
                                  (if (gx#stx-pair? _hd2517025438_)
                                      (let ((_e2517325443_
                                             (gx#stx-e _hd2517025438_)))
                                        (let ((_lp-tl2517525448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2517325443_)))
                                              (_lp-hd2517425446_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2517325443_))))
                                          (_loop2517225435_
                                           _lp-tl2517525448_
                                           (cons _lp-hd2517425446_
                                                 _arg2517625440_))))
                                      (let ((_arg2517725451_
                                             (reverse _arg2517625440_)))
                                        (if (gx#stx-pair? _tl2516825427_)
                                            (let ((_e2517825454_
                                                   (gx#stx-e _tl2516825427_)))
                                              (let ((_tl2518025459_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2517825454_)))
                                                    (_hd2517925457_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2517825454_))))
                                                (if (gx#stx-pair?
                                                     _hd2517925457_)
                                                    (let ((_e2518125462_
                                                           (gx#stx-e
                                                            _hd2517925457_)))
                                                      (let ((_tl2518325467_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2518125462_)))
                    (_hd2518225465_
                     (let () (declare (not safe)) (##car _e2518125462_))))
                (if (gx#identifier? _hd2518225465_)
                    (if (gx#stx-eq? '%#call _hd2518225465_)
                        (if (gx#stx-pair? _tl2518325467_)
                            (let ((_e2518425470_ (gx#stx-e _tl2518325467_)))
                              (let ((_tl2518625475_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2518425470_)))
                                    (_hd2518525473_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2518425470_))))
                                (if (gx#stx-pair? _hd2518525473_)
                                    (let ((_e2518725478_
                                           (gx#stx-e _hd2518525473_)))
                                      (let ((_tl2518925483_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2518725478_)))
                                            (_hd2518825481_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2518725478_))))
                                        (if (gx#identifier? _hd2518825481_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2518825481_)
                                                (if (gx#stx-pair?
                                                     _tl2518925483_)
                                                    (let ((_e2519025486_
                                                           (gx#stx-e
                                                            _tl2518925483_)))
                                                      (let ((_tl2519225491_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2519025486_)))
                    (_hd2519125489_
                     (let () (declare (not safe)) (##car _e2519025486_))))
                (if (gx#stx-null? _tl2519225491_)
                    (if (gx#stx-pair? _tl2518625475_)
                        (let ((_e2519325494_ (gx#stx-e _tl2518625475_)))
                          (let ((_tl2519525499_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2519325494_)))
                                (_hd2519425497_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2519325494_))))
                            (if (gx#stx-pair? _hd2519425497_)
                                (let ((_e2519625502_
                                       (gx#stx-e _hd2519425497_)))
                                  (let ((_tl2519825507_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2519625502_)))
                                        (_hd2519725505_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2519625502_))))
                                    (if (gx#identifier? _hd2519725505_)
                                        (if (gx#stx-eq? '%#ref _hd2519725505_)
                                            (if (gx#stx-pair? _tl2519825507_)
                                                (let ((_e2519925510_
                                                       (gx#stx-e
                                                        _tl2519825507_)))
                                                  (let ((_tl2520125515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2519925510_)))
                                                        (_hd2520025513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2519925510_))))
                                                    (if (gx#stx-null?
                                                         _tl2520125515_)
                                                        (if (gx#stx-pair/null?
                                                             _tl2519525499_)
                                                            (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tl2519525499_)
                              '1)
                        (let ((___splice3320433205_
                               (gx#syntax-split-splice _tl2519525499_ '1)))
                          (let ((_tl2520425520_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3320433205_ '1)))
                                (_target2520225518_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3320433205_ '0))))
                            (if (gx#stx-pair? _tl2520425520_)
                                (let ((_e2521125523_
                                       (gx#stx-e _tl2520425520_)))
                                  (let ((_tl2521325528_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2521125523_)))
                                        (_hd2521225526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2521125523_))))
                                    (if (gx#stx-pair? _hd2521225526_)
                                        (let ((_e2521425531_
                                               (gx#stx-e _hd2521225526_)))
                                          (let ((_tl2521625536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2521425531_)))
                                                (_hd2521525534_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2521425531_))))
                                            (if (gx#identifier? _hd2521525534_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2521525534_)
                                                    (if (gx#stx-pair?
                                                         _tl2521625536_)
                                                        (let ((_e2521725539_
                                                               (gx#stx-e
                                                                _tl2521625536_)))
                                                          (let ((_tl2521925544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2521725539_)))
                        (_hd2521825542_
                         (let () (declare (not safe)) (##car _e2521725539_))))
                    (if (gx#stx-null? _tl2521925544_)
                        (if (gx#stx-null? _tl2521325528_)
                            (letrec ((_loop2520525547_
                                      (lambda (_hd2520325550_ _xarg2520925552_)
                                        (if (gx#stx-pair? _hd2520325550_)
                                            (let ((_e2520625555_
                                                   (gx#stx-e _hd2520325550_)))
                                              (let ((_lp-tl2520825560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2520625555_)))
                                                    (_lp-hd2520725558_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2520625555_))))
                                                (if (gx#stx-pair?
                                                     _lp-hd2520725558_)
                                                    (let ((_e2522025563_
                                                           (gx#stx-e
                                                            _lp-hd2520725558_)))
                                                      (let ((_tl2522225568_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2522025563_)))
                    (_hd2522125566_
                     (let () (declare (not safe)) (##car _e2522025563_))))
                (if (gx#identifier? _hd2522125566_)
                    (if (gx#stx-eq? '%#ref _hd2522125566_)
                        (if (gx#stx-pair? _tl2522225568_)
                            (let ((_e2522325571_ (gx#stx-e _tl2522225568_)))
                              (let ((_tl2522525576_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2522325571_)))
                                    (_hd2522425574_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2522325571_))))
                                (if (gx#stx-null? _tl2522525576_)
                                    (_loop2520525547_
                                     _lp-tl2520825560_
                                     (cons _hd2522425574_ _xarg2520925552_))
                                    (___match3330533306_
                                     _e2516625422_
                                     _hd2516725425_
                                     _tl2516825427_
                                     _e2517825454_
                                     _hd2517925457_
                                     _tl2518025459_
                                     _e2518125462_
                                     _hd2518225465_
                                     _tl2518325467_
                                     _e2518425470_
                                     _hd2518525473_
                                     _tl2518625475_
                                     _e2518725478_
                                     _hd2518825481_
                                     _tl2518925483_
                                     _e2519025486_
                                     _hd2519125489_
                                     _tl2519225491_
                                     _e2519325494_
                                     _hd2519425497_
                                     _tl2519525499_
                                     _e2519625502_
                                     _hd2519725505_
                                     _tl2519825507_
                                     _e2519925510_
                                     _hd2520025513_
                                     _tl2520125515_))))
                            (___match3330533306_
                             _e2516625422_
                             _hd2516725425_
                             _tl2516825427_
                             _e2517825454_
                             _hd2517925457_
                             _tl2518025459_
                             _e2518125462_
                             _hd2518225465_
                             _tl2518325467_
                             _e2518425470_
                             _hd2518525473_
                             _tl2518625475_
                             _e2518725478_
                             _hd2518825481_
                             _tl2518925483_
                             _e2519025486_
                             _hd2519125489_
                             _tl2519225491_
                             _e2519325494_
                             _hd2519425497_
                             _tl2519525499_
                             _e2519625502_
                             _hd2519725505_
                             _tl2519825507_
                             _e2519925510_
                             _hd2520025513_
                             _tl2520125515_))
                        (___match3330533306_
                         _e2516625422_
                         _hd2516725425_
                         _tl2516825427_
                         _e2517825454_
                         _hd2517925457_
                         _tl2518025459_
                         _e2518125462_
                         _hd2518225465_
                         _tl2518325467_
                         _e2518425470_
                         _hd2518525473_
                         _tl2518625475_
                         _e2518725478_
                         _hd2518825481_
                         _tl2518925483_
                         _e2519025486_
                         _hd2519125489_
                         _tl2519225491_
                         _e2519325494_
                         _hd2519425497_
                         _tl2519525499_
                         _e2519625502_
                         _hd2519725505_
                         _tl2519825507_
                         _e2519925510_
                         _hd2520025513_
                         _tl2520125515_))
                    (___match3330533306_
                     _e2516625422_
                     _hd2516725425_
                     _tl2516825427_
                     _e2517825454_
                     _hd2517925457_
                     _tl2518025459_
                     _e2518125462_
                     _hd2518225465_
                     _tl2518325467_
                     _e2518425470_
                     _hd2518525473_
                     _tl2518625475_
                     _e2518725478_
                     _hd2518825481_
                     _tl2518925483_
                     _e2519025486_
                     _hd2519125489_
                     _tl2519225491_
                     _e2519325494_
                     _hd2519425497_
                     _tl2519525499_
                     _e2519625502_
                     _hd2519725505_
                     _tl2519825507_
                     _e2519925510_
                     _hd2520025513_
                     _tl2520125515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3330533306_
                                                     _e2516625422_
                                                     _hd2516725425_
                                                     _tl2516825427_
                                                     _e2517825454_
                                                     _hd2517925457_
                                                     _tl2518025459_
                                                     _e2518125462_
                                                     _hd2518225465_
                                                     _tl2518325467_
                                                     _e2518425470_
                                                     _hd2518525473_
                                                     _tl2518625475_
                                                     _e2518725478_
                                                     _hd2518825481_
                                                     _tl2518925483_
                                                     _e2519025486_
                                                     _hd2519125489_
                                                     _tl2519225491_
                                                     _e2519325494_
                                                     _hd2519425497_
                                                     _tl2519525499_
                                                     _e2519625502_
                                                     _hd2519725505_
                                                     _tl2519825507_
                                                     _e2519925510_
                                                     _hd2520025513_
                                                     _tl2520125515_))))
                                            (let ((_xarg2521025579_
                                                   (reverse _xarg2520925552_)))
                                              (if (gx#stx-null? _tl2518025459_)
                                                  (let ((_L25582_
                                                         _hd2521825542_)
                                                        (_L25583_
                                                         _xarg2521025579_)
                                                        (_L25584_
                                                         _hd2520025513_)
                                                        (_L25585_
                                                         _hd2519125489_)
                                                        (_L25586_
                                                         _tl2517125432_)
                                                        (_L25587_
                                                         _arg2517725451_))
                                                    (if (and (gx#identifier-list?
                                                              (foldr1 (lambda (_g2563025633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2563125635_)
                                (cons _g2563025633_ _g2563125635_))
                              '()
                              _L25587_))
                     (gx#identifier? _L25586_)
                     (gxc#runtime-identifier=? _L25585_ 'apply)
                     (fx= (length (foldr1 (lambda (_g2563725640_ _g2563825642_)
                                            (cons _g2563725640_ _g2563825642_))
                                          '()
                                          _L25587_))
                          (length (foldr1 (lambda (_g2564425647_ _g2564525649_)
                                            (cons _g2564425647_ _g2564525649_))
                                          '()
                                          _L25583_)))
                     (andmap2 gx#free-identifier=?
                              (foldr1 (lambda (_g2565125654_ _g2565225656_)
                                        (cons _g2565125654_ _g2565225656_))
                                      '()
                                      _L25587_)
                              (foldr1 (lambda (_g2565825661_ _g2565925663_)
                                        (cons _g2565825661_ _g2565925663_))
                                      '()
                                      _L25583_))
                     (gx#free-identifier=? _L25586_ _L25582_)
                     (not (find (lambda (_g2566525667_)
                                  (gx#free-identifier=?
                                   _g2566525667_
                                   _L25584_))
                                (foldr1 (lambda (_g2566925672_ _g2567025674_)
                                          (cons _g2566925672_ _g2567025674_))
                                        (cons _L25586_ '())
                                        _L25587_))))
                (___kont3320033201_
                 _L25582_
                 _L25583_
                 _L25584_
                 _L25585_
                 _L25586_
                 _L25587_)
                (___match3330533306_
                 _e2516625422_
                 _hd2516725425_
                 _tl2516825427_
                 _e2517825454_
                 _hd2517925457_
                 _tl2518025459_
                 _e2518125462_
                 _hd2518225465_
                 _tl2518325467_
                 _e2518425470_
                 _hd2518525473_
                 _tl2518625475_
                 _e2518725478_
                 _hd2518825481_
                 _tl2518925483_
                 _e2519025486_
                 _hd2519125489_
                 _tl2519225491_
                 _e2519325494_
                 _hd2519425497_
                 _tl2519525499_
                 _e2519625502_
                 _hd2519725505_
                 _tl2519825507_
                 _e2519925510_
                 _hd2520025513_
                 _tl2520125515_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match3330533306_
                                                   _e2516625422_
                                                   _hd2516725425_
                                                   _tl2516825427_
                                                   _e2517825454_
                                                   _hd2517925457_
                                                   _tl2518025459_
                                                   _e2518125462_
                                                   _hd2518225465_
                                                   _tl2518325467_
                                                   _e2518425470_
                                                   _hd2518525473_
                                                   _tl2518625475_
                                                   _e2518725478_
                                                   _hd2518825481_
                                                   _tl2518925483_
                                                   _e2519025486_
                                                   _hd2519125489_
                                                   _tl2519225491_
                                                   _e2519325494_
                                                   _hd2519425497_
                                                   _tl2519525499_
                                                   _e2519625502_
                                                   _hd2519725505_
                                                   _tl2519825507_
                                                   _e2519925510_
                                                   _hd2520025513_
                                                   _tl2520125515_)))))))
                              (_loop2520525547_ _target2520225518_ '()))
                            (___match3330533306_
                             _e2516625422_
                             _hd2516725425_
                             _tl2516825427_
                             _e2517825454_
                             _hd2517925457_
                             _tl2518025459_
                             _e2518125462_
                             _hd2518225465_
                             _tl2518325467_
                             _e2518425470_
                             _hd2518525473_
                             _tl2518625475_
                             _e2518725478_
                             _hd2518825481_
                             _tl2518925483_
                             _e2519025486_
                             _hd2519125489_
                             _tl2519225491_
                             _e2519325494_
                             _hd2519425497_
                             _tl2519525499_
                             _e2519625502_
                             _hd2519725505_
                             _tl2519825507_
                             _e2519925510_
                             _hd2520025513_
                             _tl2520125515_))
                        (___match3330533306_
                         _e2516625422_
                         _hd2516725425_
                         _tl2516825427_
                         _e2517825454_
                         _hd2517925457_
                         _tl2518025459_
                         _e2518125462_
                         _hd2518225465_
                         _tl2518325467_
                         _e2518425470_
                         _hd2518525473_
                         _tl2518625475_
                         _e2518725478_
                         _hd2518825481_
                         _tl2518925483_
                         _e2519025486_
                         _hd2519125489_
                         _tl2519225491_
                         _e2519325494_
                         _hd2519425497_
                         _tl2519525499_
                         _e2519625502_
                         _hd2519725505_
                         _tl2519825507_
                         _e2519925510_
                         _hd2520025513_
                         _tl2520125515_))))
                (___match3330533306_
                 _e2516625422_
                 _hd2516725425_
                 _tl2516825427_
                 _e2517825454_
                 _hd2517925457_
                 _tl2518025459_
                 _e2518125462_
                 _hd2518225465_
                 _tl2518325467_
                 _e2518425470_
                 _hd2518525473_
                 _tl2518625475_
                 _e2518725478_
                 _hd2518825481_
                 _tl2518925483_
                 _e2519025486_
                 _hd2519125489_
                 _tl2519225491_
                 _e2519325494_
                 _hd2519425497_
                 _tl2519525499_
                 _e2519625502_
                 _hd2519725505_
                 _tl2519825507_
                 _e2519925510_
                 _hd2520025513_
                 _tl2520125515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3330533306_
                                                     _e2516625422_
                                                     _hd2516725425_
                                                     _tl2516825427_
                                                     _e2517825454_
                                                     _hd2517925457_
                                                     _tl2518025459_
                                                     _e2518125462_
                                                     _hd2518225465_
                                                     _tl2518325467_
                                                     _e2518425470_
                                                     _hd2518525473_
                                                     _tl2518625475_
                                                     _e2518725478_
                                                     _hd2518825481_
                                                     _tl2518925483_
                                                     _e2519025486_
                                                     _hd2519125489_
                                                     _tl2519225491_
                                                     _e2519325494_
                                                     _hd2519425497_
                                                     _tl2519525499_
                                                     _e2519625502_
                                                     _hd2519725505_
                                                     _tl2519825507_
                                                     _e2519925510_
                                                     _hd2520025513_
                                                     _tl2520125515_))
                                                (___match3330533306_
                                                 _e2516625422_
                                                 _hd2516725425_
                                                 _tl2516825427_
                                                 _e2517825454_
                                                 _hd2517925457_
                                                 _tl2518025459_
                                                 _e2518125462_
                                                 _hd2518225465_
                                                 _tl2518325467_
                                                 _e2518425470_
                                                 _hd2518525473_
                                                 _tl2518625475_
                                                 _e2518725478_
                                                 _hd2518825481_
                                                 _tl2518925483_
                                                 _e2519025486_
                                                 _hd2519125489_
                                                 _tl2519225491_
                                                 _e2519325494_
                                                 _hd2519425497_
                                                 _tl2519525499_
                                                 _e2519625502_
                                                 _hd2519725505_
                                                 _tl2519825507_
                                                 _e2519925510_
                                                 _hd2520025513_
                                                 _tl2520125515_))))
                                        (___match3330533306_
                                         _e2516625422_
                                         _hd2516725425_
                                         _tl2516825427_
                                         _e2517825454_
                                         _hd2517925457_
                                         _tl2518025459_
                                         _e2518125462_
                                         _hd2518225465_
                                         _tl2518325467_
                                         _e2518425470_
                                         _hd2518525473_
                                         _tl2518625475_
                                         _e2518725478_
                                         _hd2518825481_
                                         _tl2518925483_
                                         _e2519025486_
                                         _hd2519125489_
                                         _tl2519225491_
                                         _e2519325494_
                                         _hd2519425497_
                                         _tl2519525499_
                                         _e2519625502_
                                         _hd2519725505_
                                         _tl2519825507_
                                         _e2519925510_
                                         _hd2520025513_
                                         _tl2520125515_))))
                                (___match3330533306_
                                 _e2516625422_
                                 _hd2516725425_
                                 _tl2516825427_
                                 _e2517825454_
                                 _hd2517925457_
                                 _tl2518025459_
                                 _e2518125462_
                                 _hd2518225465_
                                 _tl2518325467_
                                 _e2518425470_
                                 _hd2518525473_
                                 _tl2518625475_
                                 _e2518725478_
                                 _hd2518825481_
                                 _tl2518925483_
                                 _e2519025486_
                                 _hd2519125489_
                                 _tl2519225491_
                                 _e2519325494_
                                 _hd2519425497_
                                 _tl2519525499_
                                 _e2519625502_
                                 _hd2519725505_
                                 _tl2519825507_
                                 _e2519925510_
                                 _hd2520025513_
                                 _tl2520125515_))))
                        (___match3330533306_
                         _e2516625422_
                         _hd2516725425_
                         _tl2516825427_
                         _e2517825454_
                         _hd2517925457_
                         _tl2518025459_
                         _e2518125462_
                         _hd2518225465_
                         _tl2518325467_
                         _e2518425470_
                         _hd2518525473_
                         _tl2518625475_
                         _e2518725478_
                         _hd2518825481_
                         _tl2518925483_
                         _e2519025486_
                         _hd2519125489_
                         _tl2519225491_
                         _e2519325494_
                         _hd2519425497_
                         _tl2519525499_
                         _e2519625502_
                         _hd2519725505_
                         _tl2519825507_
                         _e2519925510_
                         _hd2520025513_
                         _tl2520125515_))
                    (___match3330533306_
                     _e2516625422_
                     _hd2516725425_
                     _tl2516825427_
                     _e2517825454_
                     _hd2517925457_
                     _tl2518025459_
                     _e2518125462_
                     _hd2518225465_
                     _tl2518325467_
                     _e2518425470_
                     _hd2518525473_
                     _tl2518625475_
                     _e2518725478_
                     _hd2518825481_
                     _tl2518925483_
                     _e2519025486_
                     _hd2519125489_
                     _tl2519225491_
                     _e2519325494_
                     _hd2519425497_
                     _tl2519525499_
                     _e2519625502_
                     _hd2519725505_
                     _tl2519825507_
                     _e2519925510_
                     _hd2520025513_
                     _tl2520125515_))
                (___kont3320833209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3320833209_))
                                            (___kont3320833209_))
                                        (___kont3320833209_))))
                                (___kont3320833209_))))
                        (___kont3320833209_))
                    (___kont3320833209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3320833209_))
                                                (___kont3320833209_))
                                            (___kont3320833209_))))
                                    (___kont3320833209_))))
                            (___kont3320833209_))
                        (___kont3320833209_))
                    (___kont3320833209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3320833209_))))
                                            (___kont3320833209_)))))))
                        (_loop2517225435_ _target2516925430_ '()))))
                   (___match3322333224_
                    (lambda (_e2511825682_
                             _hd2511925685_
                             _tl2512025687_
                             ___splice3319633197_
                             _target2512125690_
                             _tl2512325692_)
                      (letrec ((_loop2512425695_
                                (lambda (_hd2512225698_ _arg2512825700_)
                                  (if (gx#stx-pair? _hd2512225698_)
                                      (let ((_e2512525703_
                                             (gx#stx-e _hd2512225698_)))
                                        (let ((_lp-tl2512725708_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2512525703_)))
                                              (_lp-hd2512625706_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2512525703_))))
                                          (_loop2512425695_
                                           _lp-tl2512725708_
                                           (cons _lp-hd2512625706_
                                                 _arg2512825700_))))
                                      (let ((_arg2512925711_
                                             (reverse _arg2512825700_)))
                                        (if (gx#stx-pair? _tl2512025687_)
                                            (let ((_e2513025714_
                                                   (gx#stx-e _tl2512025687_)))
                                              (let ((_tl2513225719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2513025714_)))
                                                    (_hd2513125717_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2513025714_))))
                                                (if (gx#stx-pair?
                                                     _hd2513125717_)
                                                    (let ((_e2513325722_
                                                           (gx#stx-e
                                                            _hd2513125717_)))
                                                      (let ((_tl2513525727_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2513325722_)))
                    (_hd2513425725_
                     (let () (declare (not safe)) (##car _e2513325722_))))
                (if (gx#identifier? _hd2513425725_)
                    (if (gx#stx-eq? '%#call _hd2513425725_)
                        (if (gx#stx-pair? _tl2513525727_)
                            (let ((_e2513625730_ (gx#stx-e _tl2513525727_)))
                              (let ((_tl2513825735_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2513625730_)))
                                    (_hd2513725733_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2513625730_))))
                                (if (gx#stx-pair? _hd2513725733_)
                                    (let ((_e2513925738_
                                           (gx#stx-e _hd2513725733_)))
                                      (let ((_tl2514125743_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2513925738_)))
                                            (_hd2514025741_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2513925738_))))
                                        (if (gx#identifier? _hd2514025741_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2514025741_)
                                                (if (gx#stx-pair?
                                                     _tl2514125743_)
                                                    (let ((_e2514225746_
                                                           (gx#stx-e
                                                            _tl2514125743_)))
                                                      (let ((_tl2514425751_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2514225746_)))
                    (_hd2514325749_
                     (let () (declare (not safe)) (##car _e2514225746_))))
                (if (gx#stx-null? _tl2514425751_)
                    (if (gx#stx-pair/null? _tl2513825735_)
                        (let ((___splice3319833199_
                               (gx#syntax-split-splice _tl2513825735_ '0)))
                          (let ((_tl2514725756_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3319833199_ '1)))
                                (_target2514525754_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3319833199_ '0))))
                            (if (gx#stx-null? _tl2514725756_)
                                (letrec ((_loop2514825759_
                                          (lambda (_hd2514625762_
                                                   _xarg2515225764_)
                                            (if (gx#stx-pair? _hd2514625762_)
                                                (let ((_e2514925767_
                                                       (gx#stx-e
                                                        _hd2514625762_)))
                                                  (let ((_lp-tl2515125772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2514925767_)))
                                                        (_lp-hd2515025770_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2514925767_))))
                                                    (if (gx#stx-pair?
                                                         _lp-hd2515025770_)
                                                        (let ((_e2515425775_
                                                               (gx#stx-e
                                                                _lp-hd2515025770_)))
                                                          (let ((_tl2515625780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2515425775_)))
                        (_hd2515525778_
                         (let () (declare (not safe)) (##car _e2515425775_))))
                    (if (gx#identifier? _hd2515525778_)
                        (if (gx#stx-eq? '%#ref _hd2515525778_)
                            (if (gx#stx-pair? _tl2515625780_)
                                (let ((_e2515725783_
                                       (gx#stx-e _tl2515625780_)))
                                  (let ((_tl2515925788_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2515725783_)))
                                        (_hd2515825786_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2515725783_))))
                                    (if (gx#stx-null? _tl2515925788_)
                                        (_loop2514825759_
                                         _lp-tl2515125772_
                                         (cons _hd2515825786_
                                               _xarg2515225764_))
                                        (___match3323533236_
                                         _e2511825682_
                                         _hd2511925685_
                                         _tl2512025687_
                                         ___splice3319633197_
                                         _target2512125690_
                                         _tl2512325692_))))
                                (___match3323533236_
                                 _e2511825682_
                                 _hd2511925685_
                                 _tl2512025687_
                                 ___splice3319633197_
                                 _target2512125690_
                                 _tl2512325692_))
                            (___match3323533236_
                             _e2511825682_
                             _hd2511925685_
                             _tl2512025687_
                             ___splice3319633197_
                             _target2512125690_
                             _tl2512325692_))
                        (___match3323533236_
                         _e2511825682_
                         _hd2511925685_
                         _tl2512025687_
                         ___splice3319633197_
                         _target2512125690_
                         _tl2512325692_))))
                (___match3323533236_
                 _e2511825682_
                 _hd2511925685_
                 _tl2512025687_
                 ___splice3319633197_
                 _target2512125690_
                 _tl2512325692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg2515325791_
                                                       (reverse _xarg2515225764_)))
                                                  (if (gx#stx-null?
                                                       _tl2513225719_)
                                                      (let ((_L25794_
                                                             _xarg2515325791_)
                                                            (_L25795_
                                                             _hd2514325749_)
                                                            (_L25796_
                                                             _arg2512925711_))
                                                        (if (and (gx#identifier-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr1 (lambda (_g2582425827_ _g2582525829_)
                                    (cons _g2582425827_ _g2582525829_))
                                  '()
                                  _L25796_))
                         (fx= (length (foldr1 (lambda (_g2583125834_
                                                       _g2583225836_)
                                                (cons _g2583125834_
                                                      _g2583225836_))
                                              '()
                                              _L25796_))
                              (length (foldr1 (lambda (_g2583825841_
                                                       _g2583925843_)
                                                (cons _g2583825841_
                                                      _g2583925843_))
                                              '()
                                              _L25794_)))
                         (andmap2 gx#free-identifier=?
                                  (foldr1 (lambda (_g2584525848_ _g2584625850_)
                                            (cons _g2584525848_ _g2584625850_))
                                          '()
                                          _L25796_)
                                  (foldr1 (lambda (_g2585225855_ _g2585325857_)
                                            (cons _g2585225855_ _g2585325857_))
                                          '()
                                          _L25794_))
                         (not (find (lambda (_g2585925861_)
                                      (gx#free-identifier=?
                                       _g2585925861_
                                       _L25795_))
                                    (foldr1 (lambda (_g2586325866_
                                                     _g2586425868_)
                                              (cons _g2586325866_
                                                    _g2586425868_))
                                            '()
                                            _L25796_))))
                    (___kont3319433195_ _L25794_ _L25795_ _L25796_)
                    (___match3323533236_
                     _e2511825682_
                     _hd2511925685_
                     _tl2512025687_
                     ___splice3319633197_
                     _target2512125690_
                     _tl2512325692_)))
              (___match3323533236_
               _e2511825682_
               _hd2511925685_
               _tl2512025687_
               ___splice3319633197_
               _target2512125690_
               _tl2512325692_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop2514825759_ _target2514525754_ '()))
                                (___match3323533236_
                                 _e2511825682_
                                 _hd2511925685_
                                 _tl2512025687_
                                 ___splice3319633197_
                                 _target2512125690_
                                 _tl2512325692_))))
                        (___match3323533236_
                         _e2511825682_
                         _hd2511925685_
                         _tl2512025687_
                         ___splice3319633197_
                         _target2512125690_
                         _tl2512325692_))
                    (___match3323533236_
                     _e2511825682_
                     _hd2511925685_
                     _tl2512025687_
                     ___splice3319633197_
                     _target2512125690_
                     _tl2512325692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3323533236_
                                                     _e2511825682_
                                                     _hd2511925685_
                                                     _tl2512025687_
                                                     ___splice3319633197_
                                                     _target2512125690_
                                                     _tl2512325692_))
                                                (___match3323533236_
                                                 _e2511825682_
                                                 _hd2511925685_
                                                 _tl2512025687_
                                                 ___splice3319633197_
                                                 _target2512125690_
                                                 _tl2512325692_))
                                            (___match3323533236_
                                             _e2511825682_
                                             _hd2511925685_
                                             _tl2512025687_
                                             ___splice3319633197_
                                             _target2512125690_
                                             _tl2512325692_))))
                                    (___match3323533236_
                                     _e2511825682_
                                     _hd2511925685_
                                     _tl2512025687_
                                     ___splice3319633197_
                                     _target2512125690_
                                     _tl2512325692_))))
                            (___match3323533236_
                             _e2511825682_
                             _hd2511925685_
                             _tl2512025687_
                             ___splice3319633197_
                             _target2512125690_
                             _tl2512325692_))
                        (___match3323533236_
                         _e2511825682_
                         _hd2511925685_
                         _tl2512025687_
                         ___splice3319633197_
                         _target2512125690_
                         _tl2512325692_))
                    (___match3323533236_
                     _e2511825682_
                     _hd2511925685_
                     _tl2512025687_
                     ___splice3319633197_
                     _target2512125690_
                     _tl2512325692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3323533236_
                                                     _e2511825682_
                                                     _hd2511925685_
                                                     _tl2512025687_
                                                     ___splice3319633197_
                                                     _target2512125690_
                                                     _tl2512325692_))))
                                            (___match3323533236_
                                             _e2511825682_
                                             _hd2511925685_
                                             _tl2512025687_
                                             ___splice3319633197_
                                             _target2512125690_
                                             _tl2512325692_)))))))
                        (_loop2512425695_ _target2512125690_ '())))))
              (if (gx#stx-pair? ___stx3319233193_)
                  (let ((_e2511825682_ (gx#stx-e ___stx3319233193_)))
                    (let ((_tl2512025687_
                           (let () (declare (not safe)) (##cdr _e2511825682_)))
                          (_hd2511925685_
                           (let ()
                             (declare (not safe))
                             (##car _e2511825682_))))
                      (if (gx#stx-pair/null? _hd2511925685_)
                          (let ((___splice3319633197_
                                 (gx#syntax-split-splice _hd2511925685_ '0)))
                            (let ((_tl2512325692_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3319633197_ '1)))
                                  (_target2512125690_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3319633197_ '0))))
                              (if (gx#stx-null? _tl2512325692_)
                                  (___match3322333224_
                                   _e2511825682_
                                   _hd2511925685_
                                   _tl2512025687_
                                   ___splice3319633197_
                                   _target2512125690_
                                   _tl2512325692_)
                                  (___match3323533236_
                                   _e2511825682_
                                   _hd2511925685_
                                   _tl2512025687_
                                   ___splice3319633197_
                                   _target2512125690_
                                   _tl2512325692_))))
                          (if (gx#stx-pair? _tl2512025687_)
                              (let ((_e2523325290_ (gx#stx-e _tl2512025687_)))
                                (let ((_tl2523525295_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2523325290_)))
                                      (_hd2523425293_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2523325290_))))
                                  (if (gx#stx-pair? _hd2523425293_)
                                      (let ((_e2523625298_
                                             (gx#stx-e _hd2523425293_)))
                                        (let ((_tl2523825303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2523625298_)))
                                              (_hd2523725301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2523625298_))))
                                          (if (gx#identifier? _hd2523725301_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _hd2523725301_)
                                                  (if (gx#stx-pair?
                                                       _tl2523825303_)
                                                      (let ((_e2523925306_
                                                             (gx#stx-e
                                                              _tl2523825303_)))
                                                        (let ((_tl2524125311_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2523925306_)))
                      (_hd2524025309_
                       (let () (declare (not safe)) (##car _e2523925306_))))
                  (if (gx#stx-pair? _hd2524025309_)
                      (let ((_e2524225314_ (gx#stx-e _hd2524025309_)))
                        (let ((_tl2524425319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2524225314_)))
                              (_hd2524325317_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2524225314_))))
                          (if (gx#identifier? _hd2524325317_)
                              (if (gx#stx-eq? '%#ref _hd2524325317_)
                                  (if (gx#stx-pair? _tl2524425319_)
                                      (let ((_e2524525322_
                                             (gx#stx-e _tl2524425319_)))
                                        (let ((_tl2524725327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2524525322_)))
                                              (_hd2524625325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2524525322_))))
                                          (if (gx#stx-null? _tl2524725327_)
                                              (if (gx#stx-pair? _tl2524125311_)
                                                  (let ((_e2524825330_
                                                         (gx#stx-e
                                                          _tl2524125311_)))
                                                    (let ((_tl2525025335_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2524825330_)))
                                                          (_hd2524925333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2524825330_))))
                                                      (if (gx#stx-pair?
                                                           _hd2524925333_)
                                                          (let ((_e2525125338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2524925333_)))
                    (let ((_tl2525325343_
                           (let () (declare (not safe)) (##cdr _e2525125338_)))
                          (_hd2525225341_
                           (let ()
                             (declare (not safe))
                             (##car _e2525125338_))))
                      (if (gx#identifier? _hd2525225341_)
                          (if (gx#stx-eq? '%#ref _hd2525225341_)
                              (if (gx#stx-pair? _tl2525325343_)
                                  (let ((_e2525425346_
                                         (gx#stx-e _tl2525325343_)))
                                    (let ((_tl2525625351_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2525425346_)))
                                          (_hd2525525349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2525425346_))))
                                      (if (gx#stx-null? _tl2525625351_)
                                          (if (gx#stx-pair? _tl2525025335_)
                                              (let ((_e2525725354_
                                                     (gx#stx-e
                                                      _tl2525025335_)))
                                                (let ((_tl2525925359_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2525725354_)))
                                                      (_hd2525825357_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2525725354_))))
                                                  (if (gx#stx-pair?
                                                       _hd2525825357_)
                                                      (let ((_e2526025362_
                                                             (gx#stx-e
                                                              _hd2525825357_)))
                                                        (let ((_tl2526225367_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2526025362_)))
                      (_hd2526125365_
                       (let () (declare (not safe)) (##car _e2526025362_))))
                  (if (gx#identifier? _hd2526125365_)
                      (if (gx#stx-eq? '%#ref _hd2526125365_)
                          (if (gx#stx-pair? _tl2526225367_)
                              (let ((_e2526325370_ (gx#stx-e _tl2526225367_)))
                                (let ((_tl2526525375_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2526325370_)))
                                      (_hd2526425373_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2526325370_))))
                                  (if (gx#stx-null? _tl2526525375_)
                                      (if (gx#stx-null? _tl2525925359_)
                                          (if (gx#stx-null? _tl2523525295_)
                                              (___match3333333334_
                                               _e2511825682_
                                               _hd2511925685_
                                               _tl2512025687_
                                               _e2523325290_
                                               _hd2523425293_
                                               _tl2523525295_
                                               _e2523625298_
                                               _hd2523725301_
                                               _tl2523825303_
                                               _e2523925306_
                                               _hd2524025309_
                                               _tl2524125311_
                                               _e2524225314_
                                               _hd2524325317_
                                               _tl2524425319_
                                               _e2524525322_
                                               _hd2524625325_
                                               _tl2524725327_
                                               _e2524825330_
                                               _hd2524925333_
                                               _tl2525025335_
                                               _e2525125338_
                                               _hd2525225341_
                                               _tl2525325343_
                                               _e2525425346_
                                               _hd2525525349_
                                               _tl2525625351_
                                               _e2525725354_
                                               _hd2525825357_
                                               _tl2525925359_
                                               _e2526025362_
                                               _hd2526125365_
                                               _tl2526225367_
                                               _e2526325370_
                                               _hd2526425373_
                                               _tl2526525375_)
                                              (___kont3320833209_))
                                          (___kont3320833209_))
                                      (___kont3320833209_))))
                              (___kont3320833209_))
                          (___kont3320833209_))
                      (___kont3320833209_))))
              (___kont3320833209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3320833209_))
                                          (___kont3320833209_))))
                                  (___kont3320833209_))
                              (___kont3320833209_))
                          (___kont3320833209_))))
                  (___kont3320833209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3320833209_))
                                              (___kont3320833209_))))
                                      (___kont3320833209_))
                                  (___kont3320833209_))
                              (___kont3320833209_))))
                      (___kont3320833209_))))
              (___kont3320833209_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3320833209_))
                                              (___kont3320833209_))))
                                      (___kont3320833209_))))
                              (___kont3320833209_)))))
                  (___kont3320833209_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form24576_)
        (let* ((___stx3333633337_ _form24576_)
               (_g2458024704_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3333633337_))))
          (let ((___kont3333833339_
                 (lambda (_L25074_ _L25075_ _L25076_)
                   (gxc#identifier-symbol _L25075_)))
                (___kont3334433345_
                 (lambda (_L24922_ _L24923_ _L24924_ _L24925_)
                   (gxc#identifier-symbol _L24922_)))
                (___kont3334833349_
                 (lambda (_L24789_ _L24790_ _L24791_)
                   (gxc#identifier-symbol _L24789_))))
            (let* ((___match3344533446_
                    (lambda (_e2467024709_
                             _hd2467124712_
                             _tl2467224714_
                             _e2467324717_
                             _hd2467424720_
                             _tl2467524722_
                             _e2467624725_
                             _hd2467724728_
                             _tl2467824730_
                             _e2467924733_
                             _hd2468024736_
                             _tl2468124738_
                             _e2468224741_
                             _hd2468324744_
                             _tl2468424746_
                             _e2468524749_
                             _hd2468624752_
                             _tl2468724754_
                             _e2468824757_
                             _hd2468924760_
                             _tl2469024762_
                             _e2469124765_
                             _hd2469224768_
                             _tl2469324770_
                             _e2469424773_
                             _hd2469524776_
                             _tl2469624778_)
                      (if (gx#stx-pair? _tl2469024762_)
                          (let ((_e2469724781_ (gx#stx-e _tl2469024762_)))
                            (let ((_tl2469924786_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2469724781_)))
                                  (_hd2469824784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2469724781_))))
                              (if (gx#stx-null? _tl2469924786_)
                                  (if (gx#stx-null? _tl2467524722_)
                                      (___kont3334833349_
                                       _hd2469524776_
                                       _hd2468624752_
                                       _hd2467124712_)
                                      (_g2458024704_))
                                  (_g2458024704_))))
                          (_g2458024704_))))
                   (___match3337533376_
                    (lambda (_e2463124826_
                             _hd2463224829_
                             _tl2463324831_
                             ___splice3334633347_
                             _target2463424834_
                             _tl2463624836_)
                      (letrec ((_loop2463724839_
                                (lambda (_hd2463524842_ _arg2464124844_)
                                  (if (gx#stx-pair? _hd2463524842_)
                                      (let ((_e2463824847_
                                             (gx#stx-e _hd2463524842_)))
                                        (let ((_lp-tl2464024852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2463824847_)))
                                              (_lp-hd2463924850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2463824847_))))
                                          (_loop2463724839_
                                           _lp-tl2464024852_
                                           (cons _lp-hd2463924850_
                                                 _arg2464124844_))))
                                      (let ((_arg2464224855_
                                             (reverse _arg2464124844_)))
                                        (if (gx#stx-pair? _tl2463324831_)
                                            (let ((_e2464324858_
                                                   (gx#stx-e _tl2463324831_)))
                                              (let ((_tl2464524863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2464324858_)))
                                                    (_hd2464424861_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2464324858_))))
                                                (if (gx#stx-pair?
                                                     _hd2464424861_)
                                                    (let ((_e2464624866_
                                                           (gx#stx-e
                                                            _hd2464424861_)))
                                                      (let ((_tl2464824871_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2464624866_)))
                    (_hd2464724869_
                     (let () (declare (not safe)) (##car _e2464624866_))))
                (if (gx#identifier? _hd2464724869_)
                    (if (gx#stx-eq? '%#call _hd2464724869_)
                        (if (gx#stx-pair? _tl2464824871_)
                            (let ((_e2464924874_ (gx#stx-e _tl2464824871_)))
                              (let ((_tl2465124879_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2464924874_)))
                                    (_hd2465024877_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2464924874_))))
                                (if (gx#stx-pair? _hd2465024877_)
                                    (let ((_e2465224882_
                                           (gx#stx-e _hd2465024877_)))
                                      (let ((_tl2465424887_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2465224882_)))
                                            (_hd2465324885_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2465224882_))))
                                        (if (gx#identifier? _hd2465324885_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2465324885_)
                                                (if (gx#stx-pair?
                                                     _tl2465424887_)
                                                    (let ((_e2465524890_
                                                           (gx#stx-e
                                                            _tl2465424887_)))
                                                      (let ((_tl2465724895_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2465524890_)))
                    (_hd2465624893_
                     (let () (declare (not safe)) (##car _e2465524890_))))
                (if (gx#stx-null? _tl2465724895_)
                    (if (gx#stx-pair? _tl2465124879_)
                        (let ((_e2465824898_ (gx#stx-e _tl2465124879_)))
                          (let ((_tl2466024903_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2465824898_)))
                                (_hd2465924901_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2465824898_))))
                            (if (gx#stx-pair? _hd2465924901_)
                                (let ((_e2466124906_
                                       (gx#stx-e _hd2465924901_)))
                                  (let ((_tl2466324911_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2466124906_)))
                                        (_hd2466224909_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2466124906_))))
                                    (if (gx#identifier? _hd2466224909_)
                                        (if (gx#stx-eq? '%#ref _hd2466224909_)
                                            (if (gx#stx-pair? _tl2466324911_)
                                                (let ((_e2466424914_
                                                       (gx#stx-e
                                                        _tl2466324911_)))
                                                  (let ((_tl2466624919_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2466424914_)))
                                                        (_hd2466524917_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2466424914_))))
                                                    (if (gx#stx-null?
                                                         _tl2466624919_)
                                                        (if (gx#stx-null?
                                                             _tl2464524863_)
                                                            (___kont3334433345_
                                                             _hd2466524917_
                                                             _hd2465624893_
                                                             _tl2463624836_
                                                             _arg2464224855_)
                                                            (___match3344533446_
                                                             _e2463124826_
                                                             _hd2463224829_
                                                             _tl2463324831_
                                                             _e2464324858_
                                                             _hd2464424861_
                                                             _tl2464524863_
                                                             _e2464624866_
                                                             _hd2464724869_
                                                             _tl2464824871_
                                                             _e2464924874_
                                                             _hd2465024877_
                                                             _tl2465124879_
                                                             _e2465224882_
                                                             _hd2465324885_
                                                             _tl2465424887_
                                                             _e2465524890_
                                                             _hd2465624893_
                                                             _tl2465724895_
                                                             _e2465824898_
                                                             _hd2465924901_
                                                             _tl2466024903_
                                                             _e2466124906_
                                                             _hd2466224909_
                                                             _tl2466324911_
                                                             _e2466424914_
                                                             _hd2466524917_
                                                             _tl2466624919_))
                                                        (_g2458024704_))))
                                                (_g2458024704_))
                                            (_g2458024704_))
                                        (_g2458024704_))))
                                (_g2458024704_))))
                        (_g2458024704_))
                    (_g2458024704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2458024704_))
                                                (_g2458024704_))
                                            (_g2458024704_))))
                                    (_g2458024704_))))
                            (_g2458024704_))
                        (_g2458024704_))
                    (_g2458024704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2458024704_))))
                                            (_g2458024704_)))))))
                        (_loop2463724839_ _target2463424834_ '()))))
                   (___match3336333364_
                    (lambda (_e2458524962_
                             _hd2458624965_
                             _tl2458724967_
                             ___splice3334033341_
                             _target2458824970_
                             _tl2459024972_)
                      (letrec ((_loop2459124975_
                                (lambda (_hd2458924978_ _arg2459524980_)
                                  (if (gx#stx-pair? _hd2458924978_)
                                      (let ((_e2459224983_
                                             (gx#stx-e _hd2458924978_)))
                                        (let ((_lp-tl2459424988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2459224983_)))
                                              (_lp-hd2459324986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2459224983_))))
                                          (_loop2459124975_
                                           _lp-tl2459424988_
                                           (cons _lp-hd2459324986_
                                                 _arg2459524980_))))
                                      (let ((_arg2459624991_
                                             (reverse _arg2459524980_)))
                                        (if (gx#stx-pair? _tl2458724967_)
                                            (let ((_e2459724994_
                                                   (gx#stx-e _tl2458724967_)))
                                              (let ((_tl2459924999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2459724994_)))
                                                    (_hd2459824997_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2459724994_))))
                                                (if (gx#stx-pair?
                                                     _hd2459824997_)
                                                    (let ((_e2460025002_
                                                           (gx#stx-e
                                                            _hd2459824997_)))
                                                      (let ((_tl2460225007_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2460025002_)))
                    (_hd2460125005_
                     (let () (declare (not safe)) (##car _e2460025002_))))
                (if (gx#identifier? _hd2460125005_)
                    (if (gx#stx-eq? '%#call _hd2460125005_)
                        (if (gx#stx-pair? _tl2460225007_)
                            (let ((_e2460325010_ (gx#stx-e _tl2460225007_)))
                              (let ((_tl2460525015_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2460325010_)))
                                    (_hd2460425013_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2460325010_))))
                                (if (gx#stx-pair? _hd2460425013_)
                                    (let ((_e2460625018_
                                           (gx#stx-e _hd2460425013_)))
                                      (let ((_tl2460825023_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2460625018_)))
                                            (_hd2460725021_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2460625018_))))
                                        (if (gx#identifier? _hd2460725021_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2460725021_)
                                                (if (gx#stx-pair?
                                                     _tl2460825023_)
                                                    (let ((_e2460925026_
                                                           (gx#stx-e
                                                            _tl2460825023_)))
                                                      (let ((_tl2461125031_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2460925026_)))
                    (_hd2461025029_
                     (let () (declare (not safe)) (##car _e2460925026_))))
                (if (gx#stx-null? _tl2461125031_)
                    (if (gx#stx-pair/null? _tl2460525015_)
                        (let ((___splice3334233343_
                               (gx#syntax-split-splice _tl2460525015_ '0)))
                          (let ((_tl2461425036_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3334233343_ '1)))
                                (_target2461225034_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3334233343_ '0))))
                            (if (gx#stx-null? _tl2461425036_)
                                (letrec ((_loop2461525039_
                                          (lambda (_hd2461325042_
                                                   _xarg2461925044_)
                                            (if (gx#stx-pair? _hd2461325042_)
                                                (let ((_e2461625047_
                                                       (gx#stx-e
                                                        _hd2461325042_)))
                                                  (let ((_lp-tl2461825052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2461625047_)))
                                                        (_lp-hd2461725050_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2461625047_))))
                                                    (if (gx#stx-pair?
                                                         _lp-hd2461725050_)
                                                        (let ((_e2462125055_
                                                               (gx#stx-e
                                                                _lp-hd2461725050_)))
                                                          (let ((_tl2462325060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2462125055_)))
                        (_hd2462225058_
                         (let () (declare (not safe)) (##car _e2462125055_))))
                    (if (gx#identifier? _hd2462225058_)
                        (if (gx#stx-eq? '%#ref _hd2462225058_)
                            (if (gx#stx-pair? _tl2462325060_)
                                (let ((_e2462425063_
                                       (gx#stx-e _tl2462325060_)))
                                  (let ((_tl2462625068_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2462425063_)))
                                        (_hd2462525066_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2462425063_))))
                                    (if (gx#stx-null? _tl2462625068_)
                                        (_loop2461525039_
                                         _lp-tl2461825052_
                                         (cons _hd2462525066_
                                               _xarg2461925044_))
                                        (___match3337533376_
                                         _e2458524962_
                                         _hd2458624965_
                                         _tl2458724967_
                                         ___splice3334033341_
                                         _target2458824970_
                                         _tl2459024972_))))
                                (___match3337533376_
                                 _e2458524962_
                                 _hd2458624965_
                                 _tl2458724967_
                                 ___splice3334033341_
                                 _target2458824970_
                                 _tl2459024972_))
                            (___match3337533376_
                             _e2458524962_
                             _hd2458624965_
                             _tl2458724967_
                             ___splice3334033341_
                             _target2458824970_
                             _tl2459024972_))
                        (___match3337533376_
                         _e2458524962_
                         _hd2458624965_
                         _tl2458724967_
                         ___splice3334033341_
                         _target2458824970_
                         _tl2459024972_))))
                (___match3337533376_
                 _e2458524962_
                 _hd2458624965_
                 _tl2458724967_
                 ___splice3334033341_
                 _target2458824970_
                 _tl2459024972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg2462025071_
                                                       (reverse _xarg2461925044_)))
                                                  (if (gx#stx-null?
                                                       _tl2459924999_)
                                                      (___kont3333833339_
                                                       _xarg2462025071_
                                                       _hd2461025029_
                                                       _arg2459624991_)
                                                      (___match3337533376_
                                                       _e2458524962_
                                                       _hd2458624965_
                                                       _tl2458724967_
                                                       ___splice3334033341_
                                                       _target2458824970_
                                                       _tl2459024972_)))))))
                                  (_loop2461525039_ _target2461225034_ '()))
                                (___match3337533376_
                                 _e2458524962_
                                 _hd2458624965_
                                 _tl2458724967_
                                 ___splice3334033341_
                                 _target2458824970_
                                 _tl2459024972_))))
                        (___match3337533376_
                         _e2458524962_
                         _hd2458624965_
                         _tl2458724967_
                         ___splice3334033341_
                         _target2458824970_
                         _tl2459024972_))
                    (___match3337533376_
                     _e2458524962_
                     _hd2458624965_
                     _tl2458724967_
                     ___splice3334033341_
                     _target2458824970_
                     _tl2459024972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3337533376_
                                                     _e2458524962_
                                                     _hd2458624965_
                                                     _tl2458724967_
                                                     ___splice3334033341_
                                                     _target2458824970_
                                                     _tl2459024972_))
                                                (___match3337533376_
                                                 _e2458524962_
                                                 _hd2458624965_
                                                 _tl2458724967_
                                                 ___splice3334033341_
                                                 _target2458824970_
                                                 _tl2459024972_))
                                            (___match3337533376_
                                             _e2458524962_
                                             _hd2458624965_
                                             _tl2458724967_
                                             ___splice3334033341_
                                             _target2458824970_
                                             _tl2459024972_))))
                                    (___match3337533376_
                                     _e2458524962_
                                     _hd2458624965_
                                     _tl2458724967_
                                     ___splice3334033341_
                                     _target2458824970_
                                     _tl2459024972_))))
                            (___match3337533376_
                             _e2458524962_
                             _hd2458624965_
                             _tl2458724967_
                             ___splice3334033341_
                             _target2458824970_
                             _tl2459024972_))
                        (___match3337533376_
                         _e2458524962_
                         _hd2458624965_
                         _tl2458724967_
                         ___splice3334033341_
                         _target2458824970_
                         _tl2459024972_))
                    (___match3337533376_
                     _e2458524962_
                     _hd2458624965_
                     _tl2458724967_
                     ___splice3334033341_
                     _target2458824970_
                     _tl2459024972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3337533376_
                                                     _e2458524962_
                                                     _hd2458624965_
                                                     _tl2458724967_
                                                     ___splice3334033341_
                                                     _target2458824970_
                                                     _tl2459024972_))))
                                            (___match3337533376_
                                             _e2458524962_
                                             _hd2458624965_
                                             _tl2458724967_
                                             ___splice3334033341_
                                             _target2458824970_
                                             _tl2459024972_)))))))
                        (_loop2459124975_ _target2458824970_ '())))))
              (if (gx#stx-pair? ___stx3333633337_)
                  (let ((_e2458524962_ (gx#stx-e ___stx3333633337_)))
                    (let ((_tl2458724967_
                           (let () (declare (not safe)) (##cdr _e2458524962_)))
                          (_hd2458624965_
                           (let ()
                             (declare (not safe))
                             (##car _e2458524962_))))
                      (if (gx#stx-pair/null? _hd2458624965_)
                          (let ((___splice3334033341_
                                 (gx#syntax-split-splice _hd2458624965_ '0)))
                            (let ((_tl2459024972_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3334033341_ '1)))
                                  (_target2458824970_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3334033341_ '0))))
                              (if (gx#stx-null? _tl2459024972_)
                                  (___match3336333364_
                                   _e2458524962_
                                   _hd2458624965_
                                   _tl2458724967_
                                   ___splice3334033341_
                                   _target2458824970_
                                   _tl2459024972_)
                                  (___match3337533376_
                                   _e2458524962_
                                   _hd2458624965_
                                   _tl2458724967_
                                   ___splice3334033341_
                                   _target2458824970_
                                   _tl2459024972_))))
                          (if (gx#stx-pair? _tl2458724967_)
                              (let ((_e2467324717_ (gx#stx-e _tl2458724967_)))
                                (let ((_tl2467524722_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2467324717_)))
                                      (_hd2467424720_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2467324717_))))
                                  (if (gx#stx-pair? _hd2467424720_)
                                      (let ((_e2467624725_
                                             (gx#stx-e _hd2467424720_)))
                                        (let ((_tl2467824730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2467624725_)))
                                              (_hd2467724728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2467624725_))))
                                          (if (gx#identifier? _hd2467724728_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _hd2467724728_)
                                                  (if (gx#stx-pair?
                                                       _tl2467824730_)
                                                      (let ((_e2467924733_
                                                             (gx#stx-e
                                                              _tl2467824730_)))
                                                        (let ((_tl2468124738_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2467924733_)))
                      (_hd2468024736_
                       (let () (declare (not safe)) (##car _e2467924733_))))
                  (if (gx#stx-pair? _hd2468024736_)
                      (let ((_e2468224741_ (gx#stx-e _hd2468024736_)))
                        (let ((_tl2468424746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2468224741_)))
                              (_hd2468324744_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2468224741_))))
                          (if (gx#identifier? _hd2468324744_)
                              (if (gx#stx-eq? '%#ref _hd2468324744_)
                                  (if (gx#stx-pair? _tl2468424746_)
                                      (let ((_e2468524749_
                                             (gx#stx-e _tl2468424746_)))
                                        (let ((_tl2468724754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2468524749_)))
                                              (_hd2468624752_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2468524749_))))
                                          (if (gx#stx-null? _tl2468724754_)
                                              (if (gx#stx-pair? _tl2468124738_)
                                                  (let ((_e2468824757_
                                                         (gx#stx-e
                                                          _tl2468124738_)))
                                                    (let ((_tl2469024762_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2468824757_)))
                                                          (_hd2468924760_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2468824757_))))
                                                      (if (gx#stx-pair?
                                                           _hd2468924760_)
                                                          (let ((_e2469124765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2468924760_)))
                    (let ((_tl2469324770_
                           (let () (declare (not safe)) (##cdr _e2469124765_)))
                          (_hd2469224768_
                           (let ()
                             (declare (not safe))
                             (##car _e2469124765_))))
                      (if (gx#identifier? _hd2469224768_)
                          (if (gx#stx-eq? '%#ref _hd2469224768_)
                              (if (gx#stx-pair? _tl2469324770_)
                                  (let ((_e2469424773_
                                         (gx#stx-e _tl2469324770_)))
                                    (let ((_tl2469624778_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2469424773_)))
                                          (_hd2469524776_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2469424773_))))
                                      (if (gx#stx-null? _tl2469624778_)
                                          (if (gx#stx-pair? _tl2469024762_)
                                              (let ((_e2469724781_
                                                     (gx#stx-e
                                                      _tl2469024762_)))
                                                (let ((_tl2469924786_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2469724781_)))
                                                      (_hd2469824784_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2469724781_))))
                                                  (if (gx#stx-null?
                                                       _tl2469924786_)
                                                      (if (gx#stx-null?
                                                           _tl2467524722_)
                                                          (___kont3334833349_
                                                           _hd2469524776_
                                                           _hd2468624752_
                                                           _hd2458624965_)
                                                          (_g2458024704_))
                                                      (_g2458024704_))))
                                              (_g2458024704_))
                                          (_g2458024704_))))
                                  (_g2458024704_))
                              (_g2458024704_))
                          (_g2458024704_))))
                  (_g2458024704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2458024704_))
                                              (_g2458024704_))))
                                      (_g2458024704_))
                                  (_g2458024704_))
                              (_g2458024704_))))
                      (_g2458024704_))))
              (_g2458024704_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2458024704_))
                                              (_g2458024704_))))
                                      (_g2458024704_))))
                              (_g2458024704_)))))
                  (_g2458024704_)))))))
    (define gxc#lambda-form-arity
      (lambda (_form24380_)
        (let* ((_g2438224396_
                (lambda (_g2438324393_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2438324393_)))
               (_g2438124573_
                (lambda (_g2438324399_)
                  (if (gx#stx-pair? _g2438324399_)
                      (let ((_e2438624401_ (gx#stx-e _g2438324399_)))
                        (let ((_hd2438724404_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2438624401_)))
                              (_tl2438824406_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2438624401_))))
                          (if (gx#stx-pair? _tl2438824406_)
                              (let ((_e2438924409_ (gx#stx-e _tl2438824406_)))
                                (let ((_hd2439024412_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2438924409_)))
                                      (_tl2439124414_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2438924409_))))
                                  (if (gx#stx-null? _tl2439124414_)
                                      ((lambda (_L24417_ _L24418_)
                                         (let* ((___stx3345833459_ _L24418_)
                                                (_g2443324461_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    ___stx3345833459_))))
                                           (let ((___kont3346033461_
                                                  (lambda (_L24552_)
                                                    (length (foldr1 (lambda (_g2456224565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2456324567_)
                              (cons _g2456224565_ _g2456324567_))
                            '()
                            _L24552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont3346433465_
                                                  (lambda (_L24503_ _L24504_)
                                                    (cons (length (foldr1 (lambda (_g2451524518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _g2451624520_)
                                    (cons _g2451524518_ _g2451624520_))
                                  '()
                                  _L24504_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont3346833469_
                                                  (lambda (_L24466_)
                                                    (cons '0 '()))))
                                             (let* ((___match3348333484_
                                                     (lambda (___splice3346633467_
                                                              _target2444724479_
                                                              _tl2444924481_)
                                                       (letrec ((_loop2445024484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd2444824487_ _arg2445424489_)
                           (if (gx#stx-pair? _hd2444824487_)
                               (let ((_e2445124492_ (gx#stx-e _hd2444824487_)))
                                 (let ((_lp-tl2445324497_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2445124492_)))
                                       (_lp-hd2445224495_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2445124492_))))
                                   (_loop2445024484_
                                    _lp-tl2445324497_
                                    (cons _lp-hd2445224495_ _arg2445424489_))))
                               (let ((_arg2445524500_
                                      (reverse _arg2445424489_)))
                                 (___kont3346433465_
                                  _tl2444924481_
                                  _arg2445524500_))))))
                 (_loop2445024484_ _target2444724479_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3347733478_
                                                     (lambda (___splice3346233463_
                                                              _target2443624528_
                                                              _tl2443824530_)
                                                       (letrec ((_loop2443924533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd2443724536_ _arg2444324538_)
                           (if (gx#stx-pair? _hd2443724536_)
                               (let ((_e2444024541_ (gx#stx-e _hd2443724536_)))
                                 (let ((_lp-tl2444224546_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2444024541_)))
                                       (_lp-hd2444124544_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2444024541_))))
                                   (_loop2443924533_
                                    _lp-tl2444224546_
                                    (cons _lp-hd2444124544_ _arg2444324538_))))
                               (let ((_arg2444424549_
                                      (reverse _arg2444324538_)))
                                 (___kont3346033461_ _arg2444424549_))))))
                 (_loop2443924533_ _target2443624528_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    ___stx3345833459_)
                                                   (let ((___splice3346233463_
                                                          (gx#syntax-split-splice
                                                           ___stx3345833459_
                                                           '0)))
                                                     (let ((_tl2443824530_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3346233463_
                                                               '1)))
                                                           (_target2443624528_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3346233463_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl2443824530_)
                                                           (___match3347733478_
                                                            ___splice3346233463_
                                                            _target2443624528_
                                                            _tl2443824530_)
                                                           (___match3348333484_
                                                            ___splice3346233463_
                                                            _target2443624528_
                                                            _tl2443824530_))))
                                                   (___kont3346833469_
                                                    ___stx3345833459_))))))
                                       _hd2439024412_
                                       _hd2438724404_)
                                      (_g2438224396_ _g2438324399_))))
                              (_g2438224396_ _g2438324399_))))
                      (_g2438224396_ _g2438324399_)))))
          (_g2438124573_ _form24380_))))
    (define gxc#lambda-expr?
      (lambda (_expr24333_)
        (let* ((___stx3348633487_ _expr24333_)
               (_g2433624346_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3348633487_))))
          (let ((___kont3348833489_ (lambda (_L24366_) '#t))
                (___kont3349033491_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3348633487_)
                (let ((_e2433924358_ (gx#stx-e ___stx3348633487_)))
                  (let ((_tl2434124363_
                         (let () (declare (not safe)) (##cdr _e2433924358_)))
                        (_hd2434024361_
                         (let () (declare (not safe)) (##car _e2433924358_))))
                    (if (gx#identifier? _hd2434024361_)
                        (if (gx#stx-eq? '%#lambda _hd2434024361_)
                            (___kont3348833489_ _tl2434124363_)
                            (___kont3349033491_))
                        (___kont3349033491_))))
                (___kont3349033491_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr24286_)
        (let* ((___stx3350433505_ _expr24286_)
               (_g2428924299_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3350433505_))))
          (let ((___kont3350633507_ (lambda (_L24319_) '#t))
                (___kont3350833509_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3350433505_)
                (let ((_e2429224311_ (gx#stx-e ___stx3350433505_)))
                  (let ((_tl2429424316_
                         (let () (declare (not safe)) (##cdr _e2429224311_)))
                        (_hd2429324314_
                         (let () (declare (not safe)) (##car _e2429224311_))))
                    (if (gx#identifier? _hd2429324314_)
                        (if (gx#stx-eq? '%#case-lambda _hd2429324314_)
                            (___kont3350633507_ _tl2429424316_)
                            (___kont3350833509_))
                        (___kont3350833509_))))
                (___kont3350833509_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr24155_)
        (let* ((___stx3352233523_ _expr24155_)
               (_g2415824188_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3352233523_))))
          (let ((___kont3352433525_
                 (lambda (_L24256_ _L24257_ _L24258_)
                   (if (gx#identifier? _L24258_)
                       (if (gxc#lambda-expr? _L24257_)
                           (gxc#case-lambda-expr? _L24256_)
                           '#f)
                       '#f)))
                (___kont3352633527_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3352233523_)
                (let ((_e2416324200_ (gx#stx-e ___stx3352233523_)))
                  (let ((_tl2416524205_
                         (let () (declare (not safe)) (##cdr _e2416324200_)))
                        (_hd2416424203_
                         (let () (declare (not safe)) (##car _e2416324200_))))
                    (if (gx#identifier? _hd2416424203_)
                        (if (gx#stx-eq? '%#let-values _hd2416424203_)
                            (if (gx#stx-pair? _tl2416524205_)
                                (let ((_e2416624208_
                                       (gx#stx-e _tl2416524205_)))
                                  (let ((_tl2416824213_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2416624208_)))
                                        (_hd2416724211_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2416624208_))))
                                    (if (gx#stx-pair? _hd2416724211_)
                                        (let ((_e2416924216_
                                               (gx#stx-e _hd2416724211_)))
                                          (let ((_tl2417124221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2416924216_)))
                                                (_hd2417024219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2416924216_))))
                                            (if (gx#stx-pair? _hd2417024219_)
                                                (let ((_e2417224224_
                                                       (gx#stx-e
                                                        _hd2417024219_)))
                                                  (let ((_tl2417424229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2417224224_)))
                                                        (_hd2417324227_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2417224224_))))
                                                    (if (gx#stx-pair?
                                                         _hd2417324227_)
                                                        (let ((_e2417524232_
                                                               (gx#stx-e
                                                                _hd2417324227_)))
                                                          (let ((_tl2417724237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2417524232_)))
                        (_hd2417624235_
                         (let () (declare (not safe)) (##car _e2417524232_))))
                    (if (gx#stx-null? _tl2417724237_)
                        (if (gx#stx-pair? _tl2417424229_)
                            (let ((_e2417824240_ (gx#stx-e _tl2417424229_)))
                              (let ((_tl2418024245_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2417824240_)))
                                    (_hd2417924243_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2417824240_))))
                                (if (gx#stx-null? _tl2418024245_)
                                    (if (gx#stx-null? _tl2417124221_)
                                        (if (gx#stx-pair? _tl2416824213_)
                                            (let ((_e2418124248_
                                                   (gx#stx-e _tl2416824213_)))
                                              (let ((_tl2418324253_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2418124248_)))
                                                    (_hd2418224251_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2418124248_))))
                                                (if (gx#stx-null?
                                                     _tl2418324253_)
                                                    (___kont3352433525_
                                                     _hd2418224251_
                                                     _hd2417924243_
                                                     _hd2417624235_)
                                                    (___kont3352633527_))))
                                            (___kont3352633527_))
                                        (___kont3352633527_))
                                    (___kont3352633527_))))
                            (___kont3352633527_))
                        (___kont3352633527_))))
                (___kont3352633527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3352633527_))))
                                        (___kont3352633527_))))
                                (___kont3352633527_))
                            (___kont3352633527_))
                        (___kont3352633527_))))
                (___kont3352633527_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr23480_)
        (let* ((___stx3358433585_ _expr23480_)
               (_g2348323641_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3358433585_))))
          (let ((___kont3358633587_
                 (lambda (_L24029_
                          _L24030_
                          _L24031_
                          _L24032_
                          _L24033_
                          _L24034_
                          _L24035_
                          _L24036_
                          _L24037_
                          _L24038_
                          _L24039_)
                   (if (gxc#runtime-identifier=? _L24036_ 'apply)
                       (if (gxc#runtime-identifier=? _L24032_ 'apply)
                           (if (gxc#runtime-identifier=?
                                _L24031_
                                'keyword-dispatch)
                               (if (gx#free-identifier=? _L24039_ _L24030_)
                                   (if (gx#free-identifier=? _L24038_ _L24035_)
                                       (if (gx#free-identifier=?
                                            _L24033_
                                            _L24029_)
                                           (gx#free-identifier=?
                                            _L24037_
                                            _L24034_)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont3358833589_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3358433585_)
                (let ((_e2349623653_ (gx#stx-e ___stx3358433585_)))
                  (let ((_tl2349823658_
                         (let () (declare (not safe)) (##cdr _e2349623653_)))
                        (_hd2349723656_
                         (let () (declare (not safe)) (##car _e2349623653_))))
                    (if (gx#identifier? _hd2349723656_)
                        (if (gx#stx-eq? '%#let-values _hd2349723656_)
                            (if (gx#stx-pair? _tl2349823658_)
                                (let ((_e2349923661_
                                       (gx#stx-e _tl2349823658_)))
                                  (let ((_tl2350123666_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2349923661_)))
                                        (_hd2350023664_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2349923661_))))
                                    (if (gx#stx-pair? _hd2350023664_)
                                        (let ((_e2350223669_
                                               (gx#stx-e _hd2350023664_)))
                                          (let ((_tl2350423674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2350223669_)))
                                                (_hd2350323672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2350223669_))))
                                            (if (gx#stx-pair? _hd2350323672_)
                                                (let ((_e2350523677_
                                                       (gx#stx-e
                                                        _hd2350323672_)))
                                                  (let ((_tl2350723682_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2350523677_)))
                                                        (_hd2350623680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2350523677_))))
                                                    (if (gx#stx-pair?
                                                         _hd2350623680_)
                                                        (let ((_e2350823685_
                                                               (gx#stx-e
                                                                _hd2350623680_)))
                                                          (let ((_tl2351023690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2350823685_)))
                        (_hd2350923688_
                         (let () (declare (not safe)) (##car _e2350823685_))))
                    (if (gx#stx-null? _tl2351023690_)
                        (if (gx#stx-pair? _tl2350723682_)
                            (let ((_e2351123693_ (gx#stx-e _tl2350723682_)))
                              (let ((_tl2351323698_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2351123693_)))
                                    (_hd2351223696_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2351123693_))))
                                (if (gx#stx-pair? _hd2351223696_)
                                    (let ((_e2351423701_
                                           (gx#stx-e _hd2351223696_)))
                                      (let ((_tl2351623706_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2351423701_)))
                                            (_hd2351523704_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2351423701_))))
                                        (if (gx#identifier? _hd2351523704_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd2351523704_)
                                                (if (gx#stx-pair?
                                                     _tl2351623706_)
                                                    (let ((_e2351723709_
                                                           (gx#stx-e
                                                            _tl2351623706_)))
                                                      (let ((_tl2351923714_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2351723709_)))
                    (_hd2351823712_
                     (let () (declare (not safe)) (##car _e2351723709_))))
                (if (gx#stx-pair? _hd2351823712_)
                    (let ((_e2352023717_ (gx#stx-e _hd2351823712_)))
                      (let ((_tl2352223722_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2352023717_)))
                            (_hd2352123720_
                             (let ()
                               (declare (not safe))
                               (##car _e2352023717_))))
                        (if (gx#stx-pair? _hd2352123720_)
                            (let ((_e2352323725_ (gx#stx-e _hd2352123720_)))
                              (let ((_tl2352523730_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2352323725_)))
                                    (_hd2352423728_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2352323725_))))
                                (if (gx#stx-pair? _hd2352423728_)
                                    (let ((_e2352623733_
                                           (gx#stx-e _hd2352423728_)))
                                      (let ((_tl2352823738_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2352623733_)))
                                            (_hd2352723736_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2352623733_))))
                                        (if (gx#stx-null? _tl2352823738_)
                                            (if (gx#stx-pair? _tl2352523730_)
                                                (let ((_e2352923741_
                                                       (gx#stx-e
                                                        _tl2352523730_)))
                                                  (let ((_tl2353123746_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2352923741_)))
                                                        (_hd2353023744_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2352923741_))))
                                                    (if (gx#stx-null?
                                                         _tl2353123746_)
                                                        (if (gx#stx-null?
                                                             _tl2352223722_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2351923714_)
                        (let ((_e2353223749_ (gx#stx-e _tl2351923714_)))
                          (let ((_tl2353423754_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2353223749_)))
                                (_hd2353323752_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2353223749_))))
                            (if (gx#stx-pair? _hd2353323752_)
                                (let ((_e2353523757_
                                       (gx#stx-e _hd2353323752_)))
                                  (let ((_tl2353723762_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2353523757_)))
                                        (_hd2353623760_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2353523757_))))
                                    (if (gx#identifier? _hd2353623760_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2353623760_)
                                            (if (gx#stx-pair? _tl2353723762_)
                                                (let ((_e2353823765_
                                                       (gx#stx-e
                                                        _tl2353723762_)))
                                                  (let ((_tl2354023770_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2353823765_)))
                                                        (_hd2353923768_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2353823765_))))
                                                    (if (gx#stx-pair?
                                                         _hd2353923768_)
                                                        (let ((_e2354123773_
                                                               (gx#stx-e
                                                                _hd2353923768_)))
                                                          (let ((_tl2354323778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2354123773_)))
                        (_hd2354223776_
                         (let () (declare (not safe)) (##car _e2354123773_))))
                    (if (gx#stx-pair? _tl2354023770_)
                        (let ((_e2354423781_ (gx#stx-e _tl2354023770_)))
                          (let ((_tl2354623786_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2354423781_)))
                                (_hd2354523784_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2354423781_))))
                            (if (gx#stx-pair? _hd2354523784_)
                                (let ((_e2354723789_
                                       (gx#stx-e _hd2354523784_)))
                                  (let ((_tl2354923794_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2354723789_)))
                                        (_hd2354823792_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2354723789_))))
                                    (if (gx#identifier? _hd2354823792_)
                                        (if (gx#stx-eq? '%#call _hd2354823792_)
                                            (if (gx#stx-pair? _tl2354923794_)
                                                (let ((_e2355023797_
                                                       (gx#stx-e
                                                        _tl2354923794_)))
                                                  (let ((_tl2355223802_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2355023797_)))
                                                        (_hd2355123800_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2355023797_))))
                                                    (if (gx#stx-pair?
                                                         _hd2355123800_)
                                                        (let ((_e2355323805_
                                                               (gx#stx-e
                                                                _hd2355123800_)))
                                                          (let ((_tl2355523810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2355323805_)))
                        (_hd2355423808_
                         (let () (declare (not safe)) (##car _e2355323805_))))
                    (if (gx#identifier? _hd2355423808_)
                        (if (gx#stx-eq? '%#ref _hd2355423808_)
                            (if (gx#stx-pair? _tl2355523810_)
                                (let ((_e2355623813_
                                       (gx#stx-e _tl2355523810_)))
                                  (let ((_tl2355823818_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2355623813_)))
                                        (_hd2355723816_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2355623813_))))
                                    (if (gx#stx-null? _tl2355823818_)
                                        (if (gx#stx-pair? _tl2355223802_)
                                            (let ((_e2355923821_
                                                   (gx#stx-e _tl2355223802_)))
                                              (let ((_tl2356123826_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2355923821_)))
                                                    (_hd2356023824_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2355923821_))))
                                                (if (gx#stx-pair?
                                                     _hd2356023824_)
                                                    (let ((_e2356223829_
                                                           (gx#stx-e
                                                            _hd2356023824_)))
                                                      (let ((_tl2356423834_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2356223829_)))
                    (_hd2356323832_
                     (let () (declare (not safe)) (##car _e2356223829_))))
                (if (gx#identifier? _hd2356323832_)
                    (if (gx#stx-eq? '%#ref _hd2356323832_)
                        (if (gx#stx-pair? _tl2356423834_)
                            (let ((_e2356523837_ (gx#stx-e _tl2356423834_)))
                              (let ((_tl2356723842_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2356523837_)))
                                    (_hd2356623840_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2356523837_))))
                                (if (gx#stx-null? _tl2356723842_)
                                    (if (gx#stx-pair? _tl2356123826_)
                                        (let ((_e2356823845_
                                               (gx#stx-e _tl2356123826_)))
                                          (let ((_tl2357023850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2356823845_)))
                                                (_hd2356923848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2356823845_))))
                                            (if (gx#stx-pair? _hd2356923848_)
                                                (let ((_e2357123853_
                                                       (gx#stx-e
                                                        _hd2356923848_)))
                                                  (let ((_tl2357323858_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2357123853_)))
                                                        (_hd2357223856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2357123853_))))
                                                    (if (gx#identifier?
                                                         _hd2357223856_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2357223856_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2357323858_)
                        (let ((_e2357423861_ (gx#stx-e _tl2357323858_)))
                          (let ((_tl2357623866_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2357423861_)))
                                (_hd2357523864_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2357423861_))))
                            (if (gx#stx-null? _tl2357623866_)
                                (if (gx#stx-null? _tl2354623786_)
                                    (if (gx#stx-null? _tl2353423754_)
                                        (if (gx#stx-null? _tl2351323698_)
                                            (if (gx#stx-null? _tl2350423674_)
                                                (if (gx#stx-pair?
                                                     _tl2350123666_)
                                                    (let ((_e2357723869_
                                                           (gx#stx-e
                                                            _tl2350123666_)))
                                                      (let ((_tl2357923874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2357723869_)))
                    (_hd2357823872_
                     (let () (declare (not safe)) (##car _e2357723869_))))
                (if (gx#stx-pair? _hd2357823872_)
                    (let ((_e2358023877_ (gx#stx-e _hd2357823872_)))
                      (let ((_tl2358223882_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2358023877_)))
                            (_hd2358123880_
                             (let ()
                               (declare (not safe))
                               (##car _e2358023877_))))
                        (if (gx#identifier? _hd2358123880_)
                            (if (gx#stx-eq? '%#lambda _hd2358123880_)
                                (if (gx#stx-pair? _tl2358223882_)
                                    (let ((_e2358323885_
                                           (gx#stx-e _tl2358223882_)))
                                      (let ((_tl2358523890_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2358323885_)))
                                            (_hd2358423888_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2358323885_))))
                                        (if (gx#stx-pair? _tl2358523890_)
                                            (let ((_e2358623893_
                                                   (gx#stx-e _tl2358523890_)))
                                              (let ((_tl2358823898_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2358623893_)))
                                                    (_hd2358723896_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2358623893_))))
                                                (if (gx#stx-pair?
                                                     _hd2358723896_)
                                                    (let ((_e2358923901_
                                                           (gx#stx-e
                                                            _hd2358723896_)))
                                                      (let ((_tl2359123906_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2358923901_)))
                    (_hd2359023904_
                     (let () (declare (not safe)) (##car _e2358923901_))))
                (if (gx#identifier? _hd2359023904_)
                    (if (gx#stx-eq? '%#call _hd2359023904_)
                        (if (gx#stx-pair? _tl2359123906_)
                            (let ((_e2359223909_ (gx#stx-e _tl2359123906_)))
                              (let ((_tl2359423914_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2359223909_)))
                                    (_hd2359323912_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2359223909_))))
                                (if (gx#stx-pair? _hd2359323912_)
                                    (let ((_e2359523917_
                                           (gx#stx-e _hd2359323912_)))
                                      (let ((_tl2359723922_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2359523917_)))
                                            (_hd2359623920_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2359523917_))))
                                        (if (gx#identifier? _hd2359623920_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2359623920_)
                                                (if (gx#stx-pair?
                                                     _tl2359723922_)
                                                    (let ((_e2359823925_
                                                           (gx#stx-e
                                                            _tl2359723922_)))
                                                      (let ((_tl2360023930_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2359823925_)))
                    (_hd2359923928_
                     (let () (declare (not safe)) (##car _e2359823925_))))
                (if (gx#stx-null? _tl2360023930_)
                    (if (gx#stx-pair? _tl2359423914_)
                        (let ((_e2360123933_ (gx#stx-e _tl2359423914_)))
                          (let ((_tl2360323938_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2360123933_)))
                                (_hd2360223936_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2360123933_))))
                            (if (gx#stx-pair? _hd2360223936_)
                                (let ((_e2360423941_
                                       (gx#stx-e _hd2360223936_)))
                                  (let ((_tl2360623946_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2360423941_)))
                                        (_hd2360523944_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2360423941_))))
                                    (if (gx#identifier? _hd2360523944_)
                                        (if (gx#stx-eq? '%#ref _hd2360523944_)
                                            (if (gx#stx-pair? _tl2360623946_)
                                                (let ((_e2360723949_
                                                       (gx#stx-e
                                                        _tl2360623946_)))
                                                  (let ((_tl2360923954_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2360723949_)))
                                                        (_hd2360823952_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2360723949_))))
                                                    (if (gx#stx-null?
                                                         _tl2360923954_)
                                                        (if (gx#stx-pair?
                                                             _tl2360323938_)
                                                            (let ((_e2361023957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2360323938_)))
                      (let ((_tl2361223962_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2361023957_)))
                            (_hd2361123960_
                             (let ()
                               (declare (not safe))
                               (##car _e2361023957_))))
                        (if (gx#stx-pair? _hd2361123960_)
                            (let ((_e2361323965_ (gx#stx-e _hd2361123960_)))
                              (let ((_tl2361523970_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2361323965_)))
                                    (_hd2361423968_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2361323965_))))
                                (if (gx#identifier? _hd2361423968_)
                                    (if (gx#stx-eq? '%#quote _hd2361423968_)
                                        (if (gx#stx-pair? _tl2361523970_)
                                            (let ((_e2361623973_
                                                   (gx#stx-e _tl2361523970_)))
                                              (let ((_tl2361823978_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2361623973_)))
                                                    (_hd2361723976_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2361623973_))))
                                                (if (gx#stx-null?
                                                     _tl2361823978_)
                                                    (if (gx#stx-pair?
                                                         _tl2361223962_)
                                                        (let ((_e2361923981_
                                                               (gx#stx-e
                                                                _tl2361223962_)))
                                                          (let ((_tl2362123986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2361923981_)))
                        (_hd2362023984_
                         (let () (declare (not safe)) (##car _e2361923981_))))
                    (if (gx#stx-pair? _hd2362023984_)
                        (let ((_e2362223989_ (gx#stx-e _hd2362023984_)))
                          (let ((_tl2362423994_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2362223989_)))
                                (_hd2362323992_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2362223989_))))
                            (if (gx#identifier? _hd2362323992_)
                                (if (gx#stx-eq? '%#ref _hd2362323992_)
                                    (if (gx#stx-pair? _tl2362423994_)
                                        (let ((_e2362523997_
                                               (gx#stx-e _tl2362423994_)))
                                          (let ((_tl2362724002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2362523997_)))
                                                (_hd2362624000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2362523997_))))
                                            (if (gx#stx-null? _tl2362724002_)
                                                (if (gx#stx-pair?
                                                     _tl2362123986_)
                                                    (let ((_e2362824005_
                                                           (gx#stx-e
                                                            _tl2362123986_)))
                                                      (let ((_tl2363024010_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2362824005_)))
                    (_hd2362924008_
                     (let () (declare (not safe)) (##car _e2362824005_))))
                (if (gx#stx-pair? _hd2362924008_)
                    (let ((_e2363124013_ (gx#stx-e _hd2362924008_)))
                      (let ((_tl2363324018_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2363124013_)))
                            (_hd2363224016_
                             (let ()
                               (declare (not safe))
                               (##car _e2363124013_))))
                        (if (gx#identifier? _hd2363224016_)
                            (if (gx#stx-eq? '%#ref _hd2363224016_)
                                (if (gx#stx-pair? _tl2363324018_)
                                    (let ((_e2363424021_
                                           (gx#stx-e _tl2363324018_)))
                                      (let ((_tl2363624026_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2363424021_)))
                                            (_hd2363524024_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2363424021_))))
                                        (if (gx#stx-null? _tl2363624026_)
                                            (if (gx#stx-null? _tl2363024010_)
                                                (if (gx#stx-null?
                                                     _tl2358823898_)
                                                    (if (gx#stx-null?
                                                         _tl2357923874_)
                                                        (___kont3358633587_
                                                         _hd2363524024_
                                                         _hd2362624000_
                                                         _hd2360823952_
                                                         _hd2359923928_
                                                         _hd2358423888_
                                                         _hd2357523864_
                                                         _hd2356623840_
                                                         _hd2355723816_
                                                         _hd2354223776_
                                                         _hd2352723736_
                                                         _hd2350923688_)
                                                        (___kont3358833589_))
                                                    (___kont3358833589_))
                                                (___kont3358833589_))
                                            (___kont3358833589_))))
                                    (___kont3358833589_))
                                (___kont3358833589_))
                            (___kont3358833589_))))
                    (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3358833589_))
                                                (___kont3358833589_))))
                                        (___kont3358833589_))
                                    (___kont3358833589_))
                                (___kont3358833589_))))
                        (___kont3358833589_))))
                (___kont3358833589_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3358833589_))))
                                            (___kont3358833589_))
                                        (___kont3358833589_))
                                    (___kont3358833589_))))
                            (___kont3358833589_))))
                    (___kont3358833589_))
                (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3358833589_))
                                            (___kont3358833589_))
                                        (___kont3358833589_))))
                                (___kont3358833589_))))
                        (___kont3358833589_))
                    (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3358833589_))
                                                (___kont3358833589_))
                                            (___kont3358833589_))))
                                    (___kont3358833589_))))
                            (___kont3358833589_))
                        (___kont3358833589_))
                    (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3358833589_))))
                                            (___kont3358833589_))))
                                    (___kont3358833589_))
                                (___kont3358833589_))
                            (___kont3358833589_))))
                    (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3358833589_))
                                                (___kont3358833589_))
                                            (___kont3358833589_))
                                        (___kont3358833589_))
                                    (___kont3358833589_))
                                (___kont3358833589_))))
                        (___kont3358833589_))
                    (___kont3358833589_))
                (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3358833589_))))
                                        (___kont3358833589_))
                                    (___kont3358833589_))))
                            (___kont3358833589_))
                        (___kont3358833589_))
                    (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3358833589_))))
                                            (___kont3358833589_))
                                        (___kont3358833589_))))
                                (___kont3358833589_))
                            (___kont3358833589_))
                        (___kont3358833589_))))
                (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3358833589_))
                                            (___kont3358833589_))
                                        (___kont3358833589_))))
                                (___kont3358833589_))))
                        (___kont3358833589_))))
                (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3358833589_))
                                            (___kont3358833589_))
                                        (___kont3358833589_))))
                                (___kont3358833589_))))
                        (___kont3358833589_))
                    (___kont3358833589_))
                (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3358833589_))
                                            (___kont3358833589_))))
                                    (___kont3358833589_))))
                            (___kont3358833589_))))
                    (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3358833589_))
                                                (___kont3358833589_))
                                            (___kont3358833589_))))
                                    (___kont3358833589_))))
                            (___kont3358833589_))
                        (___kont3358833589_))))
                (___kont3358833589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3358833589_))))
                                        (___kont3358833589_))))
                                (___kont3358833589_))
                            (___kont3358833589_))
                        (___kont3358833589_))))
                (___kont3358833589_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx23222_ _id23223_ _clauses23224_ _gensym?23225_)
        (let _lp23227_ ((_rest23229_ _clauses23224_)
                        (_ids23230_ '())
                        (_impls23231_ '())
                        (_clauses23232_ '()))
          (let* ((_rest2323323241_ _rest23229_)
                 (_else2323523249_
                  (lambda ()
                    (values (reverse _ids23230_)
                            (reverse _impls23231_)
                            (reverse _clauses23232_))))
                 (_K2323723454_
                  (lambda (_rest23252_ _clause23253_)
                    (if (gxc#dispatch-lambda-form? _clause23253_)
                        (_lp23227_
                         _rest23252_
                         _ids23230_
                         _impls23231_
                         (cons _clause23253_ _clauses23232_))
                        (let* ((_g2325523266_
                                (lambda (_g2325623263_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2325623263_)))
                               (_g2325423451_
                                (lambda (_g2325623269_)
                                  (if (gx#stx-pair? _g2325623269_)
                                      (let ((_e2325923271_
                                             (gx#stx-e _g2325623269_)))
                                        (let ((_hd2326023274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2325923271_)))
                                              (_tl2326123276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2325923271_))))
                                          ((lambda (_L23279_ _L23280_)
                                             (let* ((_id23297_
                                                     (make-symbol
                                                      (gx#stx-e _id23223_)
                                                      '"__"
                                                      (length _clauses23232_)
                                                      (if _gensym?23225_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id23299_
                                                     (gx#core-quote-syntax__1
                                                      _id23297_
                                                      (gx#stx-source
                                                       _stx23222_)))
                                                    (_impl23301_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L23280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23279_))
              _stx23222_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause23448_
                                                     (let* ((___stx3396833969_
                                                             _L23280_)
                                                            (_g2330523333_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx3396833969_))))
                                                       (let ((___kont3397033971_
                                                              (lambda (_L23427_)
                                                                (cons _L23280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id23299_ '()))
                                                 (foldr1 (lambda (_g2343723440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2343823442_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2343723440_ '()))
                         _g2343823442_))
                 '()
                 _L23427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx23222_)
                                    '()))))
                     (___kont3397433975_
                      (lambda (_L23378_ _L23379_)
                        (cons _L23280_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id23299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L23378_ '()))
                             '())
                       (foldr1 (lambda (_g2339023393_ _g2339123395_)
                                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                             (cons _g2339023393_ '()))
                                       _g2339123395_))
                               '()
                               _L23379_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx23222_)
                                    '()))))
                     (___kont3397833979_
                      (lambda (_L23338_)
                        (cons _L23280_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id23299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L23338_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx23222_)
                                    '())))))
                 (let* ((___match3399333994_
                         (lambda (___splice3397633977_
                                  _target2331923354_
                                  _tl2332123356_)
                           (letrec ((_loop2332223359_
                                     (lambda (_hd2332023362_ _arg2332623364_)
                                       (if (gx#stx-pair? _hd2332023362_)
                                           (let ((_e2332323367_
                                                  (gx#stx-e _hd2332023362_)))
                                             (let ((_lp-tl2332523372_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2332323367_)))
                                                   (_lp-hd2332423370_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2332323367_))))
                                               (_loop2332223359_
                                                _lp-tl2332523372_
                                                (cons _lp-hd2332423370_
                                                      _arg2332623364_))))
                                           (let ((_arg2332723375_
                                                  (reverse _arg2332623364_)))
                                             (___kont3397433975_
                                              _tl2332123356_
                                              _arg2332723375_))))))
                             (_loop2332223359_ _target2331923354_ '()))))
                        (___match3398733988_
                         (lambda (___splice3397233973_
                                  _target2330823403_
                                  _tl2331023405_)
                           (letrec ((_loop2331123408_
                                     (lambda (_hd2330923411_ _arg2331523413_)
                                       (if (gx#stx-pair? _hd2330923411_)
                                           (let ((_e2331223416_
                                                  (gx#stx-e _hd2330923411_)))
                                             (let ((_lp-tl2331423421_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2331223416_)))
                                                   (_lp-hd2331323419_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2331223416_))))
                                               (_loop2331123408_
                                                _lp-tl2331423421_
                                                (cons _lp-hd2331323419_
                                                      _arg2331523413_))))
                                           (let ((_arg2331623424_
                                                  (reverse _arg2331523413_)))
                                             (___kont3397033971_
                                              _arg2331623424_))))))
                             (_loop2331123408_ _target2330823403_ '())))))
                   (if (gx#stx-pair/null? ___stx3396833969_)
                       (let ((___splice3397233973_
                              (gx#syntax-split-splice ___stx3396833969_ '0)))
                         (let ((_tl2331023405_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice3397233973_ '1)))
                               (_target2330823403_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice3397233973_ '0))))
                           (if (gx#stx-null? _tl2331023405_)
                               (___match3398733988_
                                ___splice3397233973_
                                _target2330823403_
                                _tl2331023405_)
                               (___match3399333994_
                                ___splice3397233973_
                                _target2330823403_
                                _tl2331023405_))))
                       (___kont3397833979_ ___stx3396833969_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp23227_
                                                _rest23252_
                                                (cons _id23299_ _ids23230_)
                                                (cons _impl23301_ _impls23231_)
                                                (cons _clause23448_
                                                      _clauses23232_))))
                                           _tl2326123276_
                                           _hd2326023274_)))
                                      (_g2325523266_ _g2325623269_)))))
                          (_g2325423451_ _clause23253_))))))
            (if (let () (declare (not safe)) (##pair? _rest2323323241_))
                (let ((_hd2323823457_
                       (let () (declare (not safe)) (##car _rest2323323241_)))
                      (_tl2323923459_
                       (let () (declare (not safe)) (##cdr _rest2323323241_))))
                  (let* ((_clause23462_ _hd2323823457_)
                         (_rest23464_ _tl2323923459_))
                    (_K2323723454_ _rest23464_ _clause23462_)))
                (_else2323523249_))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx23469_ _id23470_ _clauses23471_)
        (let ((_gensym?23473_ '#f))
          (gxc#lift-case-lambda-clauses__%
           _stx23469_
           _id23470_
           _clauses23471_
           _gensym?23473_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g34531_
        (let ((_g34530_ (let () (declare (not safe)) (##length _g34531_))))
          (cond ((let () (declare (not safe)) (##fx= _g34530_ 3))
                 (apply gxc#lift-case-lambda-clauses__0 _g34531_))
                ((let () (declare (not safe)) (##fx= _g34530_ 4))
                 (apply gxc#lift-case-lambda-clauses__% _g34531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g34531_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx22499_)
        (letrec ((_case-lambda-clause-def22501_
                  (lambda (_id23218_ _impl23219_)
                    (gxc#xform-wrap-source
                     (cons '%#define-values
                           (cons (cons _id23218_ '())
                                 (cons (gxc#compile-e _impl23219_) '())))
                     _stx22499_)))
                 (_opt-lambda-dispatch-name22502_
                  (lambda (_id23214_)
                    (if (uninterned-symbol? _id23214_)
                        (let ((_str23216_ (symbol->string _id23214_)))
                          (if (string-prefix? '"opt-lambda" _str23216_)
                              '"%"
                              _id23214_))
                        _id23214_)))
                 (_kw-lambda-dispatch-name22503_
                  (lambda (_id23209_ _name23210_)
                    (if (uninterned-symbol? _id23209_)
                        (let ((_str23212_ (symbol->string _id23209_)))
                          (if (string-prefix? '"kw-lambda" _str23212_)
                              _name23210_
                              _id23209_))
                        _id23209_))))
          (let* ((___stx3401634017_ _stx22499_)
                 (_g2250822567_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3401634017_))))
            (let ((___kont3401834019_
                   (lambda (_L23118_ _L23119_)
                     (let* ((___stx3399633997_ _L23118_)
                            (_g2313623150_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx3399633997_))))
                       (let ((___kont3399833999_
                              (lambda (_L23194_) _stx22499_))
                             (___kont3400034001_
                              (lambda (_L23163_)
                                (let ((_g34532_
                                       (gxc#lift-case-lambda-clauses__0
                                        _stx22499_
                                        _L23119_
                                        _L23163_)))
                                  (begin
                                    (let ((_g34533_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g34532_)
                                                 (##vector-length _g34532_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g34533_ 3)))
                                          (error "Context expects 3 values"
                                                 _g34533_)))
                                    (let ((_ids23173_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g34532_ 0)))
                                          (_impls23174_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g34532_ 1)))
                                          (_clauses23175_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g34532_ 2))))
                                      (let* ((_g34534_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids23173_))
                                             (_defs23178_
                                              (map _case-lambda-clause-def22501_
                                                   _ids23173_
                                                   _impls23174_)))
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L23119_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids23173_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L23119_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses23175_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx22499_)
                     '())
               _defs23178_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx22499_))))))))
                         (let ((___match3400734008_
                                (lambda (_e2313923186_
                                         _hd2314023189_
                                         _tl2314123191_)
                                  (let ((_L23194_ _tl2314123191_))
                                    (if (andmap1 gxc#dispatch-lambda-form?
                                                 _L23194_)
                                        (___kont3399833999_ _L23194_)
                                        (___kont3400034001_
                                         _tl2314123191_))))))
                           (if (gx#stx-pair? ___stx3399633997_)
                               (let ((_e2313923186_
                                      (gx#stx-e ___stx3399633997_)))
                                 (let ((_tl2314123191_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2313923186_)))
                                       (_hd2314023189_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2313923186_))))
                                   (___match3400734008_
                                    _e2313923186_
                                    _hd2314023189_
                                    _tl2314123191_)))
                               (_g2313623150_)))))))
                  (___kont3402034021_
                   (lambda (_L22936_ _L22937_)
                     (let* ((_g2295322983_
                             (lambda (_g2295422980_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2295422980_)))
                            (_g2295223078_
                             (lambda (_g2295422986_)
                               (if (gx#stx-pair? _g2295422986_)
                                   (let ((_e2295822988_
                                          (gx#stx-e _g2295422986_)))
                                     (let ((_hd2295922991_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2295822988_)))
                                           (_tl2296022993_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2295822988_))))
                                       (if (gx#stx-pair? _tl2296022993_)
                                           (let ((_e2296122996_
                                                  (gx#stx-e _tl2296022993_)))
                                             (let ((_hd2296222999_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2296122996_)))
                                                   (_tl2296323001_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2296122996_))))
                                               (if (gx#stx-pair?
                                                    _hd2296222999_)
                                                   (let ((_e2296423004_
                                                          (gx#stx-e
                                                           _hd2296222999_)))
                                                     (let ((_hd2296523007_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2296423004_)))
                                                           (_tl2296623009_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2296423004_))))
                                                       (if (gx#stx-pair?
                                                            _hd2296523007_)
                                                           (let ((_e2296723012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2296523007_)))
                     (let ((_hd2296823015_
                            (let ()
                              (declare (not safe))
                              (##car _e2296723012_)))
                           (_tl2296923017_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2296723012_))))
                       (if (gx#stx-pair? _hd2296823015_)
                           (let ((_e2297023020_ (gx#stx-e _hd2296823015_)))
                             (let ((_hd2297123023_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2297023020_)))
                                   (_tl2297223025_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2297023020_))))
                               (if (gx#stx-null? _tl2297223025_)
                                   (if (gx#stx-pair? _tl2296923017_)
                                       (let ((_e2297323028_
                                              (gx#stx-e _tl2296923017_)))
                                         (let ((_hd2297423031_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2297323028_)))
                                               (_tl2297523033_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2297323028_))))
                                           (if (gx#stx-null? _tl2297523033_)
                                               (if (gx#stx-null?
                                                    _tl2296623009_)
                                                   (if (gx#stx-pair?
                                                        _tl2296323001_)
                                                       (let ((_e2297623036_
                                                              (gx#stx-e
                                                               _tl2296323001_)))
                                                         (let ((_hd2297723039_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2297623036_)))
                       (_tl2297823041_
                        (let () (declare (not safe)) (##cdr _e2297623036_))))
                   (if (gx#stx-null? _tl2297823041_)
                       ((lambda (_L23044_ _L23045_ _L23046_)
                          (let* ((_lambda-id23070_
                                  (make-symbol
                                   (gx#stx-e _L22937_)
                                   '"__"
                                   (_opt-lambda-dispatch-name22502_
                                    (gx#stx-e _L23046_))))
                                 (_lambda-id23072_
                                  (gx#core-quote-syntax__1
                                   _lambda-id23070_
                                   (gx#stx-source _stx22499_)))
                                 (_g34535_
                                  (gx#core-bind-runtime!__0 _lambda-id23072_))
                                 (_new-case-lambda-expr23075_
                                  (gxc#apply-expression-subst
                                   _L23044_
                                   _L23046_
                                   _lambda-id23072_)))
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L22937_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id23072_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id23072_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L23045_)
                                                            '())))
                                          _stx22499_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L22937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr23075_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx22499_))
                                               '())))
                             _stx22499_)))
                        _hd2297723039_
                        _hd2297423031_
                        _hd2297123023_)
                       (_g2295322983_ _g2295422986_))))
               (_g2295322983_ _g2295422986_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2295322983_
                                                    _g2295422986_))
                                               (_g2295322983_ _g2295422986_))))
                                       (_g2295322983_ _g2295422986_))
                                   (_g2295322983_ _g2295422986_))))
                           (_g2295322983_ _g2295422986_))))
                   (_g2295322983_ _g2295422986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2295322983_
                                                    _g2295422986_))))
                                           (_g2295322983_ _g2295422986_))))
                                   (_g2295322983_ _g2295422986_)))))
                       (_g2295223078_ _L22936_))))
                  (___kont3402234023_
                   (lambda (_L22650_ _L22651_)
                     (let* ((_g2266722720_
                             (lambda (_g2266822717_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2266822717_)))
                            (_g2266622896_
                             (lambda (_g2266822723_)
                               (if (gx#stx-pair? _g2266822723_)
                                   (let ((_e2267422725_
                                          (gx#stx-e _g2266822723_)))
                                     (let ((_hd2267522728_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2267422725_)))
                                           (_tl2267622730_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2267422725_))))
                                       (if (gx#stx-pair? _tl2267622730_)
                                           (let ((_e2267722733_
                                                  (gx#stx-e _tl2267622730_)))
                                             (let ((_hd2267822736_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2267722733_)))
                                                   (_tl2267922738_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2267722733_))))
                                               (if (gx#stx-pair?
                                                    _hd2267822736_)
                                                   (let ((_e2268022741_
                                                          (gx#stx-e
                                                           _hd2267822736_)))
                                                     (let ((_hd2268122744_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2268022741_)))
                                                           (_tl2268222746_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2268022741_))))
                                                       (if (gx#stx-pair?
                                                            _hd2268122744_)
                                                           (let ((_e2268322749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2268122744_)))
                     (let ((_hd2268422752_
                            (let ()
                              (declare (not safe))
                              (##car _e2268322749_)))
                           (_tl2268522754_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2268322749_))))
                       (if (gx#stx-pair? _hd2268422752_)
                           (let ((_e2268622757_ (gx#stx-e _hd2268422752_)))
                             (let ((_hd2268722760_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2268622757_)))
                                   (_tl2268822762_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2268622757_))))
                               (if (gx#stx-null? _tl2268822762_)
                                   (if (gx#stx-pair? _tl2268522754_)
                                       (let ((_e2268922765_
                                              (gx#stx-e _tl2268522754_)))
                                         (let ((_hd2269022768_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2268922765_)))
                                               (_tl2269122770_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2268922765_))))
                                           (if (gx#stx-pair? _hd2269022768_)
                                               (let ((_e2269222773_
                                                      (gx#stx-e
                                                       _hd2269022768_)))
                                                 (let ((_hd2269322776_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2269222773_)))
                                                       (_tl2269422778_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2269222773_))))
                                                   (if (gx#stx-pair?
                                                        _tl2269422778_)
                                                       (let ((_e2269522781_
                                                              (gx#stx-e
                                                               _tl2269422778_)))
                                                         (let ((_hd2269622784_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2269522781_)))
                       (_tl2269722786_
                        (let () (declare (not safe)) (##cdr _e2269522781_))))
                   (if (gx#stx-pair? _hd2269622784_)
                       (let ((_e2269822789_ (gx#stx-e _hd2269622784_)))
                         (let ((_hd2269922792_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2269822789_)))
                               (_tl2270022794_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2269822789_))))
                           (if (gx#stx-pair? _hd2269922792_)
                               (let ((_e2270122797_ (gx#stx-e _hd2269922792_)))
                                 (let ((_hd2270222800_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2270122797_)))
                                       (_tl2270322802_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2270122797_))))
                                   (if (gx#stx-pair? _hd2270222800_)
                                       (let ((_e2270422805_
                                              (gx#stx-e _hd2270222800_)))
                                         (let ((_hd2270522808_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2270422805_)))
                                               (_tl2270622810_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2270422805_))))
                                           (if (gx#stx-null? _tl2270622810_)
                                               (if (gx#stx-pair?
                                                    _tl2270322802_)
                                                   (let ((_e2270722813_
                                                          (gx#stx-e
                                                           _tl2270322802_)))
                                                     (let ((_hd2270822816_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2270722813_)))
                                                           (_tl2270922818_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2270722813_))))
                                                       (if (gx#stx-null?
                                                            _tl2270922818_)
                                                           (if (gx#stx-null?
                                                                _tl2270022794_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2269722786_)
                           (let ((_e2271022821_ (gx#stx-e _tl2269722786_)))
                             (let ((_hd2271122824_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2271022821_)))
                                   (_tl2271222826_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2271022821_))))
                               (if (gx#stx-null? _tl2271222826_)
                                   (if (gx#stx-null? _tl2269122770_)
                                       (if (gx#stx-null? _tl2268222746_)
                                           (if (gx#stx-pair? _tl2267922738_)
                                               (let ((_e2271322829_
                                                      (gx#stx-e
                                                       _tl2267922738_)))
                                                 (let ((_hd2271422832_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2271322829_)))
                                                       (_tl2271522834_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2271322829_))))
                                                   (if (gx#stx-null?
                                                        _tl2271522834_)
                                                       ((lambda (_L22837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22838_
                         _L22839_
                         _L22840_
                         _L22841_)
                  (let* ((_get-kws-id22881_
                          (make-symbol
                           (gx#stx-e _L22651_)
                           '"__"
                           (_kw-lambda-dispatch-name22503_
                            (gx#stx-e _L22841_)
                            '"@")))
                         (_get-kws-id22883_
                          (gx#core-quote-syntax__1
                           _get-kws-id22881_
                           (gx#stx-source _stx22499_)))
                         (_main-id22885_
                          (make-symbol
                           (gx#stx-e _L22651_)
                           '"__"
                           (_kw-lambda-dispatch-name22503_
                            (gx#stx-e _L22840_)
                            '"%")))
                         (_main-id22887_
                          (gx#core-quote-syntax__1
                           _main-id22885_
                           (gx#stx-source _stx22499_)))
                         (_g34536_
                          (gx#core-bind-runtime!__0 _get-kws-id22883_))
                         (_g34537_ (gx#core-bind-runtime!__0 _main-id22887_))
                         (_new-kw-dispatch22891_
                          (gxc#apply-expression-subst
                           _L22837_
                           _L22841_
                           _get-kws-id22883_))
                         (_new-get-kws22893_
                          (gxc#apply-expression-subst
                           _L22838_
                           _L22840_
                           _main-id22887_)))
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L22651_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id22883_)
                     '" => "
                     (gxc#identifier-symbol _main-id22887_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id22887_ '())
                                               (cons _L22839_ '())))
                                   _stx22499_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id22883_
                                                          '())
                                                    (cons _new-get-kws22893_
                                                          '())))
                                        _stx22499_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L22651_ '())
                                                          (cons _new-kw-dispatch22891_
                                                                '())))
                                              _stx22499_)
                                             '()))))
                     _stx22499_)))
                _hd2271422832_
                _hd2271122824_
                _hd2270822816_
                _hd2270522808_
                _hd2268722760_)
               (_g2266722720_ _g2266822723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2266722720_ _g2266822723_))
                                           (_g2266722720_ _g2266822723_))
                                       (_g2266722720_ _g2266822723_))
                                   (_g2266722720_ _g2266822723_))))
                           (_g2266722720_ _g2266822723_))
                       (_g2266722720_ _g2266822723_))
                   (_g2266722720_ _g2266822723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2266722720_
                                                    _g2266822723_))
                                               (_g2266722720_ _g2266822723_))))
                                       (_g2266722720_ _g2266822723_))))
                               (_g2266722720_ _g2266822723_))))
                       (_g2266722720_ _g2266822723_))))
               (_g2266722720_ _g2266822723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2266722720_ _g2266822723_))))
                                       (_g2266722720_ _g2266822723_))
                                   (_g2266722720_ _g2266822723_))))
                           (_g2266722720_ _g2266822723_))))
                   (_g2266722720_ _g2266822723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2266722720_
                                                    _g2266822723_))))
                                           (_g2266722720_ _g2266822723_))))
                                   (_g2266722720_ _g2266822723_)))))
                       (_g2266622896_ _L22650_))))
                  (___kont3402434025_
                   (lambda (_L22596_ _L22597_)
                     (gxc#xform-wrap-source
                      (cons '%#define-values
                            (cons _L22597_
                                  (cons (gxc#compile-e _L22596_) '())))
                      _stx22499_))))
              (let* ((___match3410934110_
                      (lambda (_e2254022618_
                               _hd2254122621_
                               _tl2254222623_
                               _e2254322626_
                               _hd2254422629_
                               _tl2254522631_
                               _e2254622634_
                               _hd2254722637_
                               _tl2254822639_
                               _e2254922642_
                               _hd2255022645_
                               _tl2255122647_)
                        (let ((_L22650_ _hd2255022645_)
                              (_L22651_ _hd2254722637_))
                          (if (and (gx#identifier? _L22651_)
                                   (gxc#kw-lambda-expr? _L22650_))
                              (___kont3402234023_ _L22650_ _L22651_)
                              (___kont3402434025_
                               _hd2255022645_
                               _hd2254422629_)))))
                     (___match3408134082_
                      (lambda (_e2252622904_
                               _hd2252722907_
                               _tl2252822909_
                               _e2252922912_
                               _hd2253022915_
                               _tl2253122917_
                               _e2253222920_
                               _hd2253322923_
                               _tl2253422925_
                               _e2253522928_
                               _hd2253622931_
                               _tl2253722933_)
                        (let ((_L22936_ _hd2253622931_)
                              (_L22937_ _hd2253322923_))
                          (if (and (gx#identifier? _L22937_)
                                   (gxc#opt-lambda-expr? _L22936_))
                              (___kont3402034021_ _L22936_ _L22937_)
                              (___match3410934110_
                               _e2252622904_
                               _hd2252722907_
                               _tl2252822909_
                               _e2252922912_
                               _hd2253022915_
                               _tl2253122917_
                               _e2253222920_
                               _hd2253322923_
                               _tl2253422925_
                               _e2253522928_
                               _hd2253622931_
                               _tl2253722933_)))))
                     (___match3405334054_
                      (lambda (_e2251223086_
                               _hd2251323089_
                               _tl2251423091_
                               _e2251523094_
                               _hd2251623097_
                               _tl2251723099_
                               _e2251823102_
                               _hd2251923105_
                               _tl2252023107_
                               _e2252123110_
                               _hd2252223113_
                               _tl2252323115_)
                        (let ((_L23118_ _hd2252223113_)
                              (_L23119_ _hd2251923105_))
                          (if (and (gx#identifier? _L23119_)
                                   (gxc#case-lambda-expr? _L23118_))
                              (___kont3401834019_ _L23118_ _L23119_)
                              (___match3408134082_
                               _e2251223086_
                               _hd2251323089_
                               _tl2251423091_
                               _e2251523094_
                               _hd2251623097_
                               _tl2251723099_
                               _e2251823102_
                               _hd2251923105_
                               _tl2252023107_
                               _e2252123110_
                               _hd2252223113_
                               _tl2252323115_))))))
                (if (gx#stx-pair? ___stx3401634017_)
                    (let ((_e2251223086_ (gx#stx-e ___stx3401634017_)))
                      (let ((_tl2251423091_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2251223086_)))
                            (_hd2251323089_
                             (let ()
                               (declare (not safe))
                               (##car _e2251223086_))))
                        (if (gx#stx-pair? _tl2251423091_)
                            (let ((_e2251523094_ (gx#stx-e _tl2251423091_)))
                              (let ((_tl2251723099_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2251523094_)))
                                    (_hd2251623097_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2251523094_))))
                                (if (gx#stx-pair? _hd2251623097_)
                                    (let ((_e2251823102_
                                           (gx#stx-e _hd2251623097_)))
                                      (let ((_tl2252023107_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2251823102_)))
                                            (_hd2251923105_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2251823102_))))
                                        (if (gx#stx-null? _tl2252023107_)
                                            (if (gx#stx-pair? _tl2251723099_)
                                                (let ((_e2252123110_
                                                       (gx#stx-e
                                                        _tl2251723099_)))
                                                  (let ((_tl2252323115_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2252123110_)))
                                                        (_hd2252223113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2252123110_))))
                                                    (if (gx#stx-null?
                                                         _tl2252323115_)
                                                        (___match3405334054_
                                                         _e2251223086_
                                                         _hd2251323089_
                                                         _tl2251423091_
                                                         _e2251523094_
                                                         _hd2251623097_
                                                         _tl2251723099_
                                                         _e2251823102_
                                                         _hd2251923105_
                                                         _tl2252023107_
                                                         _e2252123110_
                                                         _hd2252223113_
                                                         _tl2252323115_)
                                                        (_g2250822567_))))
                                                (_g2250822567_))
                                            (if (gx#stx-pair? _tl2251723099_)
                                                (let ((_e2256022588_
                                                       (gx#stx-e
                                                        _tl2251723099_)))
                                                  (let ((_tl2256222593_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2256022588_)))
                                                        (_hd2256122591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2256022588_))))
                                                    (if (gx#stx-null?
                                                         _tl2256222593_)
                                                        (___kont3402434025_
                                                         _hd2256122591_
                                                         _hd2251623097_)
                                                        (_g2250822567_))))
                                                (_g2250822567_)))))
                                    (if (gx#stx-pair? _tl2251723099_)
                                        (let ((_e2256022588_
                                               (gx#stx-e _tl2251723099_)))
                                          (let ((_tl2256222593_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2256022588_)))
                                                (_hd2256122591_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2256022588_))))
                                            (if (gx#stx-null? _tl2256222593_)
                                                (___kont3402434025_
                                                 _hd2256122591_
                                                 _hd2251623097_)
                                                (_g2250822567_))))
                                        (_g2250822567_)))))
                            (_g2250822567_))))
                    (_g2250822567_))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx21431_)
        (letrec* ((_bind-e__3118031181_
                   (lambda (_id22483_ _expr22484_ _compile?22485_)
                     (cons (cons _id22483_ '())
                           (cons (if _compile?22485_
                                     (gxc#compile-e _expr22484_)
                                     _expr22484_)
                                 '()))))
                  (_bind-e__0__3118231183_
                   (lambda (_id22490_ _expr22491_)
                     (let ((_compile?22493_ '#t))
                       (_bind-e__3118031181_
                        _id22490_
                        _expr22491_
                        _compile?22493_))))
                  (_bind-e21433_
                   (lambda _g34539_
                     (let ((_g34538_
                            (let () (declare (not safe)) (##length _g34539_))))
                       (cond ((let () (declare (not safe)) (##fx= _g34538_ 2))
                              (apply _bind-e__0__3118231183_ _g34539_))
                             ((let () (declare (not safe)) (##fx= _g34538_ 3))
                              (apply _bind-e__3118031181_ _g34539_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g34539_))))))
                  (_compile-bindings21434_
                   (lambda (_bindings22067_)
                     (let _lp22069_ ((_rest22071_ _bindings22067_)
                                     (_lift122072_ '())
                                     (_lift222073_ '())
                                     (_bind22074_ '()))
                       (let* ((_rest2207522083_ _rest22071_)
                              (_else2207722091_
                               (lambda ()
                                 (values (reverse _lift122072_)
                                         (reverse _lift222073_)
                                         (reverse _bind22074_))))
                              (_K2207922470_
                               (lambda (_rest22094_ _hd22095_)
                                 (let* ((___stx3415234153_ _hd22095_)
                                        (_g2209922135_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3415234153_))))
                                   (let ((___kont3415434155_
                                          (lambda (_L22377_ _L22378_)
                                            (let* ((___stx3413234133_ _L22377_)
                                                   (_g2239322407_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx3413234133_))))
                                              (let ((___kont3413434135_
                                                     (lambda (_L22455_)
                                                       (_lp22069_
                                                        _rest22094_
                                                        _lift122072_
                                                        _lift222073_
                                                        (cons (_bind-e__3118031181_
                                                               _L22378_
                                                               _L22377_
                                                               '#f)
                                                              _bind22074_))))
                                                    (___kont3413634137_
                                                     (lambda (_L22420_)
                                                       (let ((_g34540_
                                                              (gxc#lift-case-lambda-clauses__%
                                                               _stx21431_
                                                               _L22378_
                                                               _L22420_
                                                               '#t)))
                                                         (begin
                                                           (let ((_g34541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g34540_)
                                (##vector-length _g34540_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g34541_ 3)))
                         (error "Context expects 3 values" _g34541_)))
                   (let ((_ids22430_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34540_ 0)))
                         (_impls22431_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34540_ 1)))
                         (_clauses22432_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34540_ 2))))
                     (let* ((_g34542_
                             (for-each gx#core-bind-runtime! _ids22430_))
                            (_xbind22435_
                             (map _bind-e21433_ _ids22430_ _impls22431_))
                            (_expr*22437_
                             (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses22432_)
                              (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                            (_bind*22439_
                             (_bind-e__3118031181_ _L22378_ _expr*22437_ '#f)))
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L22378_)
                        '" => "
                        (map gxc#identifier-symbol _ids22430_))
                       (_lp22069_
                        _rest22094_
                        _lift122072_
                        (foldl1 cons _lift222073_ _xbind22435_)
                        (cons _bind*22439_ _bind22074_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match3414334144_
                                                       (lambda (_e2239622447_
                                                                _hd2239722450_
                                                                _tl2239822452_)
                                                         (let ((_L22455_
                                                                _tl2239822452_))
                                                           (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L22455_)
                       (___kont3413434135_ _L22455_)
                       (___kont3413634137_ _tl2239822452_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx3413234133_)
                                                      (let ((_e2239622447_
                                                             (gx#stx-e
                                                              ___stx3413234133_)))
                                                        (let ((_tl2239822452_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2239622447_)))
                      (_hd2239722450_
                       (let () (declare (not safe)) (##car _e2239622447_))))
                  (___match3414334144_
                   _e2239622447_
                   _hd2239722450_
                   _tl2239822452_)))
              (_g2239322407_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont3415634157_
                                          (lambda (_L22205_ _L22206_)
                                            (let* ((_g2222022250_
                                                    (lambda (_g2222122247_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2222122247_)))
                                                   (_g2221922345_
                                                    (lambda (_g2222122253_)
                                                      (if (gx#stx-pair?
                                                           _g2222122253_)
                                                          (let ((_e2222522255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g2222122253_)))
                    (let ((_hd2222622258_
                           (let () (declare (not safe)) (##car _e2222522255_)))
                          (_tl2222722260_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2222522255_))))
                      (if (gx#stx-pair? _tl2222722260_)
                          (let ((_e2222822263_ (gx#stx-e _tl2222722260_)))
                            (let ((_hd2222922266_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2222822263_)))
                                  (_tl2223022268_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2222822263_))))
                              (if (gx#stx-pair? _hd2222922266_)
                                  (let ((_e2223122271_
                                         (gx#stx-e _hd2222922266_)))
                                    (let ((_hd2223222274_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2223122271_)))
                                          (_tl2223322276_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2223122271_))))
                                      (if (gx#stx-pair? _hd2223222274_)
                                          (let ((_e2223422279_
                                                 (gx#stx-e _hd2223222274_)))
                                            (let ((_hd2223522282_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2223422279_)))
                                                  (_tl2223622284_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2223422279_))))
                                              (if (gx#stx-pair? _hd2223522282_)
                                                  (let ((_e2223722287_
                                                         (gx#stx-e
                                                          _hd2223522282_)))
                                                    (let ((_hd2223822290_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2223722287_)))
                                                          (_tl2223922292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2223722287_))))
                                                      (if (gx#stx-null?
                                                           _tl2223922292_)
                                                          (if (gx#stx-pair?
                                                               _tl2223622284_)
                                                              (let ((_e2224022295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2223622284_)))
                        (let ((_hd2224122298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2224022295_)))
                              (_tl2224222300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2224022295_))))
                          (if (gx#stx-null? _tl2224222300_)
                              (if (gx#stx-null? _tl2223322276_)
                                  (if (gx#stx-pair? _tl2223022268_)
                                      (let ((_e2224322303_
                                             (gx#stx-e _tl2223022268_)))
                                        (let ((_hd2224422306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2224322303_)))
                                              (_tl2224522308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2224322303_))))
                                          (if (gx#stx-null? _tl2224522308_)
                                              ((lambda (_L22311_
                                                        _L22312_
                                                        _L22313_)
                                                 (let* ((_lambda-id22337_
                                                         (make-symbol
                                                          (gx#stx-e _L22206_)
                                                          (gensym '__)))
                                                        (_lambda-id22339_
                                                         (gx#core-quote-syntax__1
                                                          _lambda-id22337_
                                                          (gx#stx-source
                                                           _stx21431_)))
                                                        (_g34543_
                                                         (gx#core-bind-runtime!__0
                                                          _lambda-id22339_))
                                                        (_new-case-lambda-expr22342_
                                                         (gxc#apply-expression-subst
                                                          _L22311_
                                                          _L22313_
                                                          _lambda-id22339_)))
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L22206_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id22339_))
                                                   (_lp22069_
                                                    (cons (_bind-e__3118031181_
                                                           _L22206_
                                                           _new-case-lambda-expr22342_
                                                           '#f)
                                                          _rest22094_)
                                                    (cons (_bind-e__0__3118231183_
                                                           _lambda-id22339_
                                                           _L22312_)
                                                          _lift122072_)
                                                    _lift222073_
                                                    _bind22074_)))
                                               _hd2224422306_
                                               _hd2224122298_
                                               _hd2223822290_)
                                              (_g2222022250_ _g2222122253_))))
                                      (_g2222022250_ _g2222122253_))
                                  (_g2222022250_ _g2222122253_))
                              (_g2222022250_ _g2222122253_))))
                      (_g2222022250_ _g2222122253_))
                  (_g2222022250_ _g2222122253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2222022250_
                                                   _g2222122253_))))
                                          (_g2222022250_ _g2222122253_))))
                                  (_g2222022250_ _g2222122253_))))
                          (_g2222022250_ _g2222122253_))))
                  (_g2222022250_ _g2222122253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2221922345_ _L22205_))))
                                         (___kont3415834159_
                                          (lambda (_L22156_ _L22157_)
                                            (_lp22069_
                                             _rest22094_
                                             _lift122072_
                                             _lift222073_
                                             (cons (cons _L22157_
                                                         (cons (gxc#compile-e
                                                                _L22156_)
                                                               '()))
                                                   _bind22074_)))))
                                     (let* ((___match3420334204_
                                             (lambda (_e2211422181_
                                                      _hd2211522184_
                                                      _tl2211622186_
                                                      _e2211722189_
                                                      _hd2211822192_
                                                      _tl2211922194_
                                                      _e2212022197_
                                                      _hd2212122200_
                                                      _tl2212222202_)
                                               (let ((_L22205_ _hd2212122200_)
                                                     (_L22206_ _hd2211822192_))
                                                 (if (and (gx#identifier?
                                                           _L22206_)
                                                          (gxc#opt-lambda-expr?
                                                           _L22205_))
                                                     (___kont3415634157_
                                                      _L22205_
                                                      _L22206_)
                                                     (___kont3415834159_
                                                      _hd2212122200_
                                                      _hd2211522184_)))))
                                            (___match3418134182_
                                             (lambda (_e2210322353_
                                                      _hd2210422356_
                                                      _tl2210522358_
                                                      _e2210622361_
                                                      _hd2210722364_
                                                      _tl2210822366_
                                                      _e2210922369_
                                                      _hd2211022372_
                                                      _tl2211122374_)
                                               (let ((_L22377_ _hd2211022372_)
                                                     (_L22378_ _hd2210722364_))
                                                 (if (and (gx#identifier?
                                                           _L22378_)
                                                          (gxc#case-lambda-expr?
                                                           _L22377_))
                                                     (___kont3415434155_
                                                      _L22377_
                                                      _L22378_)
                                                     (___match3420334204_
                                                      _e2210322353_
                                                      _hd2210422356_
                                                      _tl2210522358_
                                                      _e2210622361_
                                                      _hd2210722364_
                                                      _tl2210822366_
                                                      _e2210922369_
                                                      _hd2211022372_
                                                      _tl2211122374_))))))
                                       (if (gx#stx-pair? ___stx3415234153_)
                                           (let ((_e2210322353_
                                                  (gx#stx-e
                                                   ___stx3415234153_)))
                                             (let ((_tl2210522358_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2210322353_)))
                                                   (_hd2210422356_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2210322353_))))
                                               (if (gx#stx-pair?
                                                    _hd2210422356_)
                                                   (let ((_e2210622361_
                                                          (gx#stx-e
                                                           _hd2210422356_)))
                                                     (let ((_tl2210822366_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2210622361_)))
                                                           (_hd2210722364_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2210622361_))))
                                                       (if (gx#stx-null?
                                                            _tl2210822366_)
                                                           (if (gx#stx-pair?
                                                                _tl2210522358_)
                                                               (let ((_e2210922369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl2210522358_)))
                         (let ((_tl2211122374_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2210922369_)))
                               (_hd2211022372_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2210922369_))))
                           (if (gx#stx-null? _tl2211122374_)
                               (___match3418134182_
                                _e2210322353_
                                _hd2210422356_
                                _tl2210522358_
                                _e2210622361_
                                _hd2210722364_
                                _tl2210822366_
                                _e2210922369_
                                _hd2211022372_
                                _tl2211122374_)
                               (_g2209922135_))))
                       (_g2209922135_))
                   (if (gx#stx-pair? _tl2210522358_)
                       (let ((_e2212822148_ (gx#stx-e _tl2210522358_)))
                         (let ((_tl2213022153_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2212822148_)))
                               (_hd2212922151_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2212822148_))))
                           (if (gx#stx-null? _tl2213022153_)
                               (___kont3415834159_
                                _hd2212922151_
                                _hd2210422356_)
                               (_g2209922135_))))
                       (_g2209922135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _tl2210522358_)
                                                       (let ((_e2212822148_
                                                              (gx#stx-e
                                                               _tl2210522358_)))
                                                         (let ((_tl2213022153_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2212822148_)))
                       (_hd2212922151_
                        (let () (declare (not safe)) (##car _e2212822148_))))
                   (if (gx#stx-null? _tl2213022153_)
                       (___kont3415834159_ _hd2212922151_ _hd2210422356_)
                       (_g2209922135_))))
               (_g2209922135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2209922135_))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest2207522083_))
                             (let ((_hd2208022473_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest2207522083_)))
                                   (_tl2208122475_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest2207522083_))))
                               (let* ((_hd22478_ _hd2208022473_)
                                      (_rest22480_ _tl2208122475_))
                                 (_K2207922470_ _rest22480_ _hd22478_)))
                             (_else2207722091_))))))
                  (_lift-kw-lambda?21435_
                   (lambda (_bind21991_)
                     (let* ((___stx3422034221_ _bind21991_)
                            (_g2199422011_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx3422034221_))))
                       (let ((___kont3422234223_
                              (lambda (_L22047_ _L22048_)
                                (if (gx#identifier? _L22048_)
                                    (gxc#kw-lambda-expr? _L22047_)
                                    '#f)))
                             (___kont3422434225_ (lambda () '#f)))
                         (if (gx#stx-pair? ___stx3422034221_)
                             (let ((_e2199822023_
                                    (gx#stx-e ___stx3422034221_)))
                               (let ((_tl2200022028_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2199822023_)))
                                     (_hd2199922026_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2199822023_))))
                                 (if (gx#stx-pair? _hd2199922026_)
                                     (let ((_e2200122031_
                                            (gx#stx-e _hd2199922026_)))
                                       (let ((_tl2200322036_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2200122031_)))
                                             (_hd2200222034_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2200122031_))))
                                         (if (gx#stx-null? _tl2200322036_)
                                             (if (gx#stx-pair? _tl2200022028_)
                                                 (let ((_e2200422039_
                                                        (gx#stx-e
                                                         _tl2200022028_)))
                                                   (let ((_tl2200622044_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2200422039_)))
                                                         (_hd2200522042_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2200422039_))))
                                                     (if (gx#stx-null?
                                                          _tl2200622044_)
                                                         (___kont3422234223_
                                                          _hd2200522042_
                                                          _hd2200222034_)
                                                         (___kont3422434225_))))
                                                 (___kont3422434225_))
                                             (___kont3422434225_))))
                                     (___kont3422434225_))))
                             (___kont3422434225_))))))
                  (_lift-kw-lambda-bindings21436_
                   (lambda (_bindings21603_)
                     (let _lp21605_ ((_rest21607_ _bindings21603_)
                                     (_lift121608_ '())
                                     (_lift221609_ '())
                                     (_bind21610_ '()))
                       (let* ((_rest2161121619_ _rest21607_)
                              (_else2161321627_
                               (lambda ()
                                 (values (reverse _lift121608_)
                                         (reverse _lift221609_)
                                         (reverse _bind21610_))))
                              (_K2161521979_
                               (lambda (_rest21630_ _hd21631_)
                                 (let* ((___stx3425034251_ _hd21631_)
                                        (_g2163421659_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3425034251_))))
                                   (let ((___kont3425234253_
                                          (lambda (_L21729_ _L21730_)
                                            (let* ((_g2174421797_
                                                    (lambda (_g2174521794_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2174521794_)))
                                                   (_g2174321973_
                                                    (lambda (_g2174521800_)
                                                      (if (gx#stx-pair?
                                                           _g2174521800_)
                                                          (let ((_e2175121802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g2174521800_)))
                    (let ((_hd2175221805_
                           (let () (declare (not safe)) (##car _e2175121802_)))
                          (_tl2175321807_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2175121802_))))
                      (if (gx#stx-pair? _tl2175321807_)
                          (let ((_e2175421810_ (gx#stx-e _tl2175321807_)))
                            (let ((_hd2175521813_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2175421810_)))
                                  (_tl2175621815_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2175421810_))))
                              (if (gx#stx-pair? _hd2175521813_)
                                  (let ((_e2175721818_
                                         (gx#stx-e _hd2175521813_)))
                                    (let ((_hd2175821821_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2175721818_)))
                                          (_tl2175921823_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2175721818_))))
                                      (if (gx#stx-pair? _hd2175821821_)
                                          (let ((_e2176021826_
                                                 (gx#stx-e _hd2175821821_)))
                                            (let ((_hd2176121829_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2176021826_)))
                                                  (_tl2176221831_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2176021826_))))
                                              (if (gx#stx-pair? _hd2176121829_)
                                                  (let ((_e2176321834_
                                                         (gx#stx-e
                                                          _hd2176121829_)))
                                                    (let ((_hd2176421837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2176321834_)))
                                                          (_tl2176521839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2176321834_))))
                                                      (if (gx#stx-null?
                                                           _tl2176521839_)
                                                          (if (gx#stx-pair?
                                                               _tl2176221831_)
                                                              (let ((_e2176621842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2176221831_)))
                        (let ((_hd2176721845_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2176621842_)))
                              (_tl2176821847_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2176621842_))))
                          (if (gx#stx-pair? _hd2176721845_)
                              (let ((_e2176921850_ (gx#stx-e _hd2176721845_)))
                                (let ((_hd2177021853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2176921850_)))
                                      (_tl2177121855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2176921850_))))
                                  (if (gx#stx-pair? _tl2177121855_)
                                      (let ((_e2177221858_
                                             (gx#stx-e _tl2177121855_)))
                                        (let ((_hd2177321861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2177221858_)))
                                              (_tl2177421863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2177221858_))))
                                          (if (gx#stx-pair? _hd2177321861_)
                                              (let ((_e2177521866_
                                                     (gx#stx-e
                                                      _hd2177321861_)))
                                                (let ((_hd2177621869_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2177521866_)))
                                                      (_tl2177721871_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2177521866_))))
                                                  (if (gx#stx-pair?
                                                       _hd2177621869_)
                                                      (let ((_e2177821874_
                                                             (gx#stx-e
                                                              _hd2177621869_)))
                                                        (let ((_hd2177921877_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2177821874_)))
                      (_tl2178021879_
                       (let () (declare (not safe)) (##cdr _e2177821874_))))
                  (if (gx#stx-pair? _hd2177921877_)
                      (let ((_e2178121882_ (gx#stx-e _hd2177921877_)))
                        (let ((_hd2178221885_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2178121882_)))
                              (_tl2178321887_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2178121882_))))
                          (if (gx#stx-null? _tl2178321887_)
                              (if (gx#stx-pair? _tl2178021879_)
                                  (let ((_e2178421890_
                                         (gx#stx-e _tl2178021879_)))
                                    (let ((_hd2178521893_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2178421890_)))
                                          (_tl2178621895_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2178421890_))))
                                      (if (gx#stx-null? _tl2178621895_)
                                          (if (gx#stx-null? _tl2177721871_)
                                              (if (gx#stx-pair? _tl2177421863_)
                                                  (let ((_e2178721898_
                                                         (gx#stx-e
                                                          _tl2177421863_)))
                                                    (let ((_hd2178821901_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2178721898_)))
                                                          (_tl2178921903_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2178721898_))))
                                                      (if (gx#stx-null?
                                                           _tl2178921903_)
                                                          (if (gx#stx-null?
                                                               _tl2176821847_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2175921823_)
                          (if (gx#stx-pair? _tl2175621815_)
                              (let ((_e2179021906_ (gx#stx-e _tl2175621815_)))
                                (let ((_hd2179121909_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2179021906_)))
                                      (_tl2179221911_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2179021906_))))
                                  (if (gx#stx-null? _tl2179221911_)
                                      ((lambda (_L21914_
                                                _L21915_
                                                _L21916_
                                                _L21917_
                                                _L21918_)
                                         (let* ((_get-kws-id21958_
                                                 (make-symbol
                                                  (gx#stx-e _L21730_)
                                                  (gensym '__)))
                                                (_get-kws-id21960_
                                                 (gx#core-quote-syntax__1
                                                  _get-kws-id21958_
                                                  (gx#stx-source _stx21431_)))
                                                (_main-id21962_
                                                 (make-symbol
                                                  (gx#stx-e _L21730_)
                                                  (gensym '__)))
                                                (_main-id21964_
                                                 (gx#core-quote-syntax__1
                                                  _main-id21962_
                                                  (gx#stx-source _stx21431_)))
                                                (_g34544_
                                                 (gx#core-bind-runtime!__0
                                                  _get-kws-id21960_))
                                                (_g34545_
                                                 (gx#core-bind-runtime!__0
                                                  _main-id21964_))
                                                (_new-kw-dispatch21968_
                                                 (gxc#apply-expression-subst
                                                  _L21914_
                                                  _L21918_
                                                  _get-kws-id21960_))
                                                (_new-get-kws21970_
                                                 (gxc#apply-expression-subst
                                                  _L21915_
                                                  _L21917_
                                                  _main-id21964_)))
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L21730_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id21960_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id21964_))
                                           (_lp21605_
                                            _rest21630_
                                            (cons (_bind-e__3118031181_
                                                   _main-id21964_
                                                   _L21916_
                                                   '#f)
                                                  _lift121608_)
                                            (cons (_bind-e__3118031181_
                                                   _get-kws-id21960_
                                                   _new-get-kws21970_
                                                   '#f)
                                                  _lift221609_)
                                            (cons (_bind-e__3118031181_
                                                   _L21730_
                                                   _new-kw-dispatch21968_
                                                   '#f)
                                                  _bind21610_))))
                                       _hd2179121909_
                                       _hd2178821901_
                                       _hd2178521893_
                                       _hd2178221885_
                                       _hd2176421837_)
                                      (_g2174421797_ _g2174521800_))))
                              (_g2174421797_ _g2174521800_))
                          (_g2174421797_ _g2174521800_))
                      (_g2174421797_ _g2174521800_))
                  (_g2174421797_ _g2174521800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2174421797_
                                                   _g2174521800_))
                                              (_g2174421797_ _g2174521800_))
                                          (_g2174421797_ _g2174521800_))))
                                  (_g2174421797_ _g2174521800_))
                              (_g2174421797_ _g2174521800_))))
                      (_g2174421797_ _g2174521800_))))
              (_g2174421797_ _g2174521800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2174421797_ _g2174521800_))))
                                      (_g2174421797_ _g2174521800_))))
                              (_g2174421797_ _g2174521800_))))
                      (_g2174421797_ _g2174521800_))
                  (_g2174421797_ _g2174521800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2174421797_
                                                   _g2174521800_))))
                                          (_g2174421797_ _g2174521800_))))
                                  (_g2174421797_ _g2174521800_))))
                          (_g2174421797_ _g2174521800_))))
                  (_g2174421797_ _g2174521800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2174321973_ _L21729_))))
                                         (___kont3425434255_
                                          (lambda (_L21680_ _L21681_)
                                            (_lp21605_
                                             _rest21630_
                                             _lift121608_
                                             _lift221609_
                                             (cons (cons _L21681_
                                                         (cons _L21680_ '()))
                                                   _bind21610_)))))
                                     (let ((___match3427734278_
                                            (lambda (_e2163821705_
                                                     _hd2163921708_
                                                     _tl2164021710_
                                                     _e2164121713_
                                                     _hd2164221716_
                                                     _tl2164321718_
                                                     _e2164421721_
                                                     _hd2164521724_
                                                     _tl2164621726_)
                                              (let ((_L21729_ _hd2164521724_)
                                                    (_L21730_ _hd2164221716_))
                                                (if (and (gx#identifier?
                                                          _L21730_)
                                                         (gxc#kw-lambda-expr?
                                                          _L21729_))
                                                    (___kont3425234253_
                                                     _L21729_
                                                     _L21730_)
                                                    (___kont3425434255_
                                                     _hd2164521724_
                                                     _hd2163921708_))))))
                                       (if (gx#stx-pair? ___stx3425034251_)
                                           (let ((_e2163821705_
                                                  (gx#stx-e
                                                   ___stx3425034251_)))
                                             (let ((_tl2164021710_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2163821705_)))
                                                   (_hd2163921708_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2163821705_))))
                                               (if (gx#stx-pair?
                                                    _hd2163921708_)
                                                   (let ((_e2164121713_
                                                          (gx#stx-e
                                                           _hd2163921708_)))
                                                     (let ((_tl2164321718_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2164121713_)))
                                                           (_hd2164221716_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2164121713_))))
                                                       (if (gx#stx-null?
                                                            _tl2164321718_)
                                                           (if (gx#stx-pair?
                                                                _tl2164021710_)
                                                               (let ((_e2164421721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl2164021710_)))
                         (let ((_tl2164621726_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2164421721_)))
                               (_hd2164521724_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2164421721_))))
                           (if (gx#stx-null? _tl2164621726_)
                               (___match3427734278_
                                _e2163821705_
                                _hd2163921708_
                                _tl2164021710_
                                _e2164121713_
                                _hd2164221716_
                                _tl2164321718_
                                _e2164421721_
                                _hd2164521724_
                                _tl2164621726_)
                               (_g2163421659_))))
                       (_g2163421659_))
                   (if (gx#stx-pair? _tl2164021710_)
                       (let ((_e2165221672_ (gx#stx-e _tl2164021710_)))
                         (let ((_tl2165421677_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2165221672_)))
                               (_hd2165321675_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2165221672_))))
                           (if (gx#stx-null? _tl2165421677_)
                               (___kont3425434255_
                                _hd2165321675_
                                _hd2163921708_)
                               (_g2163421659_))))
                       (_g2163421659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _tl2164021710_)
                                                       (let ((_e2165221672_
                                                              (gx#stx-e
                                                               _tl2164021710_)))
                                                         (let ((_tl2165421677_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2165221672_)))
                       (_hd2165321675_
                        (let () (declare (not safe)) (##car _e2165221672_))))
                   (if (gx#stx-null? _tl2165421677_)
                       (___kont3425434255_ _hd2165321675_ _hd2163921708_)
                       (_g2163421659_))))
               (_g2163421659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2163421659_))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest2161121619_))
                             (let ((_hd2161621982_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest2161121619_)))
                                   (_tl2161721984_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest2161121619_))))
                               (let* ((_hd21987_ _hd2161621982_)
                                      (_rest21989_ _tl2161721984_))
                                 (_K2161521979_ _rest21989_ _hd21987_)))
                             (_else2161321627_)))))))
          (let* ((___stx3429434295_ _stx21431_)
                 (_g2143921465_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3429434295_))))
            (let ((___kont3429634297_
                   (lambda (_L21525_ _L21526_)
                     (call-with-parameters
                      (lambda ()
                        (if (ormap1 _lift-kw-lambda?21435_
                                    (foldr1 (lambda (_g2155421557_
                                                     _g2155521559_)
                                              (cons _g2155421557_
                                                    _g2155521559_))
                                            '()
                                            _L21526_))
                            (let ((_g34546_
                                   (_lift-kw-lambda-bindings21436_
                                    (foldr1 (lambda (_g2156121564_
                                                     _g2156221566_)
                                              (cons _g2156121564_
                                                    _g2156221566_))
                                            '()
                                            _L21526_))))
                              (begin
                                (let ((_g34547_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g34546_)
                                             (##vector-length _g34546_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g34547_ 3)))
                                      (error "Context expects 3 values"
                                             _g34547_)))
                                (let ((_lift121569_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34546_ 0)))
                                      (_lift221570_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34546_ 1)))
                                      (_hd21571_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34546_ 2))))
                                  (let* ((_expr21573_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _hd21571_
                                                       (cons _L21525_ '())))
                                           _stx21431_))
                                         (_expr21575_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift221570_
                                                       (cons _expr21573_ '())))
                                           _stx21431_))
                                         (_expr21577_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift121569_
                                                       (cons _expr21575_ '())))
                                           _stx21431_)))
                                    (gxc#lift-top-lambda-let-values%
                                     _expr21577_)))))
                            (let ((_g34548_
                                   (_compile-bindings21434_
                                    (foldr1 (lambda (_g2157921582_
                                                     _g2158021584_)
                                              (cons _g2157921582_
                                                    _g2158021584_))
                                            '()
                                            _L21526_))))
                              (begin
                                (let ((_g34549_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g34548_)
                                             (##vector-length _g34548_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g34549_ 3)))
                                      (error "Context expects 3 values"
                                             _g34549_)))
                                (let ((_lift121587_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34548_ 0)))
                                      (_lift221588_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34548_ 1)))
                                      (_hd21589_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g34548_ 2))))
                                  (let* ((_body21591_ (gxc#compile-e _L21525_))
                                         (_expr21593_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _hd21589_
                                                       (cons _body21591_ '())))
                                           _stx21431_))
                                         (_expr21595_
                                          (if (null? _lift221588_)
                                              _expr21593_
                                              (gxc#xform-wrap-source
                                               (cons '%#let-values
                                                     (cons _lift221588_
                                                           (cons _expr21593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx21431_)))
                                         (_expr21597_
                                          (if (null? _lift121587_)
                                              _expr21595_
                                              (gxc#xform-wrap-source
                                               (cons '%#let-values
                                                     (cons _lift121587_
                                                           (cons _expr21595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx21431_))))
                                    _expr21597_))))))
                      gx#current-expander-context
                      (let ((__obj34505 (make-object gx#local-context::t '5)))
                        (gx#local-context:::init!__0 __obj34505)
                        __obj34505))))
                  (___kont3430034301_
                   (lambda () (gxc#xform-let-values% _stx21431_))))
              (let ((___match3432134322_
                     (lambda (_e2144321477_
                              _hd2144421480_
                              _tl2144521482_
                              _e2144621485_
                              _hd2144721488_
                              _tl2144821490_
                              ___splice3429834299_
                              _target2144921493_
                              _tl2145121495_)
                       (letrec ((_loop2145221498_
                                 (lambda (_hd2145021501_ _bind2145621503_)
                                   (if (gx#stx-pair? _hd2145021501_)
                                       (let ((_e2145321506_
                                              (gx#stx-e _hd2145021501_)))
                                         (let ((_lp-tl2145521511_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2145321506_)))
                                               (_lp-hd2145421509_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2145321506_))))
                                           (_loop2145221498_
                                            _lp-tl2145521511_
                                            (cons _lp-hd2145421509_
                                                  _bind2145621503_))))
                                       (let ((_bind2145721514_
                                              (reverse _bind2145621503_)))
                                         (if (gx#stx-pair? _tl2144821490_)
                                             (let ((_e2145821517_
                                                    (gx#stx-e _tl2144821490_)))
                                               (let ((_tl2146021522_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2145821517_)))
                                                     (_hd2145921520_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2145821517_))))
                                                 (if (gx#stx-null?
                                                      _tl2146021522_)
                                                     (let ((_L21525_
                                                            _hd2145921520_)
                                                           (_L21526_
                                                            _bind2145721514_))
                                                       (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr1 (lambda (_g2154621549_ _g2154721551_)
                                     (cons _g2154621549_ _g2154721551_))
                                   '()
                                   _L21526_))
                   (___kont3429634297_ _L21525_ _L21526_)
                   (___kont3430034301_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont3430034301_))))
                                             (___kont3430034301_)))))))
                         (_loop2145221498_ _target2144921493_ '())))))
                (if (gx#stx-pair? ___stx3429434295_)
                    (let ((_e2144321477_ (gx#stx-e ___stx3429434295_)))
                      (let ((_tl2144521482_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2144321477_)))
                            (_hd2144421480_
                             (let ()
                               (declare (not safe))
                               (##car _e2144321477_))))
                        (if (gx#stx-pair? _tl2144521482_)
                            (let ((_e2144621485_ (gx#stx-e _tl2144521482_)))
                              (let ((_tl2144821490_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2144621485_)))
                                    (_hd2144721488_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2144621485_))))
                                (if (gx#stx-pair/null? _hd2144721488_)
                                    (let ((___splice3429834299_
                                           (gx#syntax-split-splice
                                            _hd2144721488_
                                            '0)))
                                      (let ((_tl2145121495_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3429834299_
                                                '1)))
                                            (_target2144921493_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3429834299_
                                                '0))))
                                        (if (gx#stx-null? _tl2145121495_)
                                            (___match3432134322_
                                             _e2144321477_
                                             _hd2144421480_
                                             _tl2144521482_
                                             _e2144621485_
                                             _hd2144721488_
                                             _tl2144821490_
                                             ___splice3429834299_
                                             _target2144921493_
                                             _tl2145121495_)
                                            (___kont3430034301_))))
                                    (___kont3430034301_))))
                            (___kont3430034301_))))
                    (___kont3430034301_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx20575_)
        (letrec* ((_bind-e__3118531186_
                   (lambda (_id21415_ _expr21416_ _compile?21417_)
                     (cons (cons _id21415_ '())
                           (cons (if _compile?21417_
                                     (gxc#compile-e _expr21416_)
                                     _expr21416_)
                                 '()))))
                  (_bind-e__0__3118731188_
                   (lambda (_id21422_ _expr21423_)
                     (let ((_compile?21425_ '#t))
                       (_bind-e__3118531186_
                        _id21422_
                        _expr21423_
                        _compile?21425_))))
                  (_bind-e20577_
                   (lambda _g34551_
                     (let ((_g34550_
                            (let () (declare (not safe)) (##length _g34551_))))
                       (cond ((let () (declare (not safe)) (##fx= _g34550_ 2))
                              (apply _bind-e__0__3118731188_ _g34551_))
                             ((let () (declare (not safe)) (##fx= _g34550_ 3))
                              (apply _bind-e__3118531186_ _g34551_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g34551_))))))
                  (_compile-bindings20578_
                   (lambda (_rest20713_)
                     (let _lp20715_ ((_rest20717_ _rest20713_)
                                     (_bind20718_ '()))
                       (let* ((_rest2071920727_ _rest20717_)
                              (_else2072120735_
                               (lambda () (reverse _bind20718_)))
                              (_K2072321402_
                               (lambda (_rest20738_ _hd20739_)
                                 (let* ((___stx3434434345_ _hd20739_)
                                        (_g2074420791_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3434434345_))))
                                   (let ((___kont3434634347_
                                          (lambda (_L21309_ _L21310_)
                                            (let* ((___stx3432434325_ _L21309_)
                                                   (_g2132521339_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx3432434325_))))
                                              (let ((___kont3432634327_
                                                     (lambda (_L21387_)
                                                       (_lp20715_
                                                        _rest20738_
                                                        (cons (_bind-e__3118531186_
                                                               _L21310_
                                                               _L21309_
                                                               '#f)
                                                              _bind20718_))))
                                                    (___kont3432834329_
                                                     (lambda (_L21352_)
                                                       (let ((_g34552_
                                                              (gxc#lift-case-lambda-clauses__%
                                                               _stx20575_
                                                               _L21310_
                                                               _L21352_
                                                               '#t)))
                                                         (begin
                                                           (let ((_g34553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g34552_)
                                (##vector-length _g34552_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g34553_ 3)))
                         (error "Context expects 3 values" _g34553_)))
                   (let ((_ids21362_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34552_ 0)))
                         (_impls21363_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34552_ 1)))
                         (_clauses21364_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g34552_ 2))))
                     (let* ((_g34554_
                             (for-each gx#core-bind-runtime! _ids21362_))
                            (_xbind21367_
                             (map _bind-e20577_ _ids21362_ _impls21363_))
                            (_expr*21369_
                             (gxc#xform-wrap-source
                              (cons '%#case-lambda _clauses21364_)
                              (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                            (_bind*21371_
                             (_bind-e__3118531186_ _L21310_ _expr*21369_ '#f)))
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L21310_)
                        '" => "
                        (map gxc#identifier-symbol _ids21362_))
                       (_lp20715_
                        _rest20738_
                        (cons _bind*21371_
                              (foldl1 cons _bind20718_ _xbind21367_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match3433534336_
                                                       (lambda (_e2132821379_
                                                                _hd2132921382_
                                                                _tl2133021384_)
                                                         (let ((_L21387_
                                                                _tl2133021384_))
                                                           (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L21387_)
                       (___kont3432634327_ _L21387_)
                       (___kont3432834329_ _tl2133021384_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx3432434325_)
                                                      (let ((_e2132821379_
                                                             (gx#stx-e
                                                              ___stx3432434325_)))
                                                        (let ((_tl2133021384_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2132821379_)))
                      (_hd2132921382_
                       (let () (declare (not safe)) (##car _e2132821379_))))
                  (___match3433534336_
                   _e2132821379_
                   _hd2132921382_
                   _tl2133021384_)))
              (_g2132521339_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont3434834349_
                                          (lambda (_L21137_ _L21138_)
                                            (let* ((_g2115221182_
                                                    (lambda (_g2115321179_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2115321179_)))
                                                   (_g2115121277_
                                                    (lambda (_g2115321185_)
                                                      (if (gx#stx-pair?
                                                           _g2115321185_)
                                                          (let ((_e2115721187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g2115321185_)))
                    (let ((_hd2115821190_
                           (let () (declare (not safe)) (##car _e2115721187_)))
                          (_tl2115921192_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2115721187_))))
                      (if (gx#stx-pair? _tl2115921192_)
                          (let ((_e2116021195_ (gx#stx-e _tl2115921192_)))
                            (let ((_hd2116121198_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2116021195_)))
                                  (_tl2116221200_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2116021195_))))
                              (if (gx#stx-pair? _hd2116121198_)
                                  (let ((_e2116321203_
                                         (gx#stx-e _hd2116121198_)))
                                    (let ((_hd2116421206_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2116321203_)))
                                          (_tl2116521208_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2116321203_))))
                                      (if (gx#stx-pair? _hd2116421206_)
                                          (let ((_e2116621211_
                                                 (gx#stx-e _hd2116421206_)))
                                            (let ((_hd2116721214_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2116621211_)))
                                                  (_tl2116821216_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2116621211_))))
                                              (if (gx#stx-pair? _hd2116721214_)
                                                  (let ((_e2116921219_
                                                         (gx#stx-e
                                                          _hd2116721214_)))
                                                    (let ((_hd2117021222_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2116921219_)))
                                                          (_tl2117121224_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2116921219_))))
                                                      (if (gx#stx-null?
                                                           _tl2117121224_)
                                                          (if (gx#stx-pair?
                                                               _tl2116821216_)
                                                              (let ((_e2117221227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2116821216_)))
                        (let ((_hd2117321230_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2117221227_)))
                              (_tl2117421232_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2117221227_))))
                          (if (gx#stx-null? _tl2117421232_)
                              (if (gx#stx-null? _tl2116521208_)
                                  (if (gx#stx-pair? _tl2116221200_)
                                      (let ((_e2117521235_
                                             (gx#stx-e _tl2116221200_)))
                                        (let ((_hd2117621238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2117521235_)))
                                              (_tl2117721240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2117521235_))))
                                          (if (gx#stx-null? _tl2117721240_)
                                              ((lambda (_L21243_
                                                        _L21244_
                                                        _L21245_)
                                                 (let* ((_lambda-id21269_
                                                         (make-symbol
                                                          (gx#stx-e _L21138_)
                                                          (gensym '__)))
                                                        (_lambda-id21271_
                                                         (gx#core-quote-syntax__1
                                                          _lambda-id21269_
                                                          (gx#stx-source
                                                           _stx20575_)))
                                                        (_g34555_
                                                         (gx#core-bind-runtime!__0
                                                          _lambda-id21271_))
                                                        (_new-case-lambda-expr21274_
                                                         (gxc#apply-expression-subst
                                                          _L21243_
                                                          _L21245_
                                                          _lambda-id21271_)))
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L21138_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id21271_))
                                                   (_lp20715_
                                                    (cons (_bind-e__3118531186_
                                                           _L21138_
                                                           _new-case-lambda-expr21274_
                                                           '#f)
                                                          _rest20738_)
                                                    (cons (_bind-e__0__3118731188_
                                                           _lambda-id21271_
                                                           _L21244_)
                                                          _bind20718_))))
                                               _hd2117621238_
                                               _hd2117321230_
                                               _hd2117021222_)
                                              (_g2115221182_ _g2115321185_))))
                                      (_g2115221182_ _g2115321185_))
                                  (_g2115221182_ _g2115321185_))
                              (_g2115221182_ _g2115321185_))))
                      (_g2115221182_ _g2115321185_))
                  (_g2115221182_ _g2115321185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2115221182_
                                                   _g2115321185_))))
                                          (_g2115221182_ _g2115321185_))))
                                  (_g2115221182_ _g2115321185_))))
                          (_g2115221182_ _g2115321185_))))
                  (_g2115221182_ _g2115321185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2115121277_ _L21137_))))
                                         (___kont3435034351_
                                          (lambda (_L20861_ _L20862_)
                                            (let* ((_g2087620929_
                                                    (lambda (_g2087720926_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2087720926_)))
                                                   (_g2087521105_
                                                    (lambda (_g2087720932_)
                                                      (if (gx#stx-pair?
                                                           _g2087720932_)
                                                          (let ((_e2088320934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g2087720932_)))
                    (let ((_hd2088420937_
                           (let () (declare (not safe)) (##car _e2088320934_)))
                          (_tl2088520939_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2088320934_))))
                      (if (gx#stx-pair? _tl2088520939_)
                          (let ((_e2088620942_ (gx#stx-e _tl2088520939_)))
                            (let ((_hd2088720945_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2088620942_)))
                                  (_tl2088820947_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2088620942_))))
                              (if (gx#stx-pair? _hd2088720945_)
                                  (let ((_e2088920950_
                                         (gx#stx-e _hd2088720945_)))
                                    (let ((_hd2089020953_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2088920950_)))
                                          (_tl2089120955_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2088920950_))))
                                      (if (gx#stx-pair? _hd2089020953_)
                                          (let ((_e2089220958_
                                                 (gx#stx-e _hd2089020953_)))
                                            (let ((_hd2089320961_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2089220958_)))
                                                  (_tl2089420963_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2089220958_))))
                                              (if (gx#stx-pair? _hd2089320961_)
                                                  (let ((_e2089520966_
                                                         (gx#stx-e
                                                          _hd2089320961_)))
                                                    (let ((_hd2089620969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2089520966_)))
                                                          (_tl2089720971_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2089520966_))))
                                                      (if (gx#stx-null?
                                                           _tl2089720971_)
                                                          (if (gx#stx-pair?
                                                               _tl2089420963_)
                                                              (let ((_e2089820974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2089420963_)))
                        (let ((_hd2089920977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2089820974_)))
                              (_tl2090020979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2089820974_))))
                          (if (gx#stx-pair? _hd2089920977_)
                              (let ((_e2090120982_ (gx#stx-e _hd2089920977_)))
                                (let ((_hd2090220985_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2090120982_)))
                                      (_tl2090320987_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2090120982_))))
                                  (if (gx#stx-pair? _tl2090320987_)
                                      (let ((_e2090420990_
                                             (gx#stx-e _tl2090320987_)))
                                        (let ((_hd2090520993_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2090420990_)))
                                              (_tl2090620995_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2090420990_))))
                                          (if (gx#stx-pair? _hd2090520993_)
                                              (let ((_e2090720998_
                                                     (gx#stx-e
                                                      _hd2090520993_)))
                                                (let ((_hd2090821001_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2090720998_)))
                                                      (_tl2090921003_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2090720998_))))
                                                  (if (gx#stx-pair?
                                                       _hd2090821001_)
                                                      (let ((_e2091021006_
                                                             (gx#stx-e
                                                              _hd2090821001_)))
                                                        (let ((_hd2091121009_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e2091021006_)))
                      (_tl2091221011_
                       (let () (declare (not safe)) (##cdr _e2091021006_))))
                  (if (gx#stx-pair? _hd2091121009_)
                      (let ((_e2091321014_ (gx#stx-e _hd2091121009_)))
                        (let ((_hd2091421017_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2091321014_)))
                              (_tl2091521019_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2091321014_))))
                          (if (gx#stx-null? _tl2091521019_)
                              (if (gx#stx-pair? _tl2091221011_)
                                  (let ((_e2091621022_
                                         (gx#stx-e _tl2091221011_)))
                                    (let ((_hd2091721025_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2091621022_)))
                                          (_tl2091821027_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2091621022_))))
                                      (if (gx#stx-null? _tl2091821027_)
                                          (if (gx#stx-null? _tl2090921003_)
                                              (if (gx#stx-pair? _tl2090620995_)
                                                  (let ((_e2091921030_
                                                         (gx#stx-e
                                                          _tl2090620995_)))
                                                    (let ((_hd2092021033_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2091921030_)))
                                                          (_tl2092121035_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2091921030_))))
                                                      (if (gx#stx-null?
                                                           _tl2092121035_)
                                                          (if (gx#stx-null?
                                                               _tl2090020979_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2089120955_)
                          (if (gx#stx-pair? _tl2088820947_)
                              (let ((_e2092221038_ (gx#stx-e _tl2088820947_)))
                                (let ((_hd2092321041_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2092221038_)))
                                      (_tl2092421043_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2092221038_))))
                                  (if (gx#stx-null? _tl2092421043_)
                                      ((lambda (_L21046_
                                                _L21047_
                                                _L21048_
                                                _L21049_
                                                _L21050_)
                                         (let* ((_get-kws-id21090_
                                                 (make-symbol
                                                  (gx#stx-e _L20862_)
                                                  (gensym '__)))
                                                (_get-kws-id21092_
                                                 (gx#core-quote-syntax__1
                                                  _get-kws-id21090_
                                                  (gx#stx-source _stx20575_)))
                                                (_main-id21094_
                                                 (make-symbol
                                                  (gx#stx-e _L20862_)
                                                  (gensym '__)))
                                                (_main-id21096_
                                                 (gx#core-quote-syntax__1
                                                  _main-id21094_
                                                  (gx#stx-source _stx20575_)))
                                                (_g34556_
                                                 (gx#core-bind-runtime!__0
                                                  _get-kws-id21092_))
                                                (_g34557_
                                                 (gx#core-bind-runtime!__0
                                                  _main-id21096_))
                                                (_new-kw-dispatch21100_
                                                 (gxc#apply-expression-subst
                                                  _L21046_
                                                  _L21050_
                                                  _get-kws-id21092_))
                                                (_new-get-kws21102_
                                                 (gxc#apply-expression-subst
                                                  _L21047_
                                                  _L21049_
                                                  _main-id21096_)))
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L20862_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id21092_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id21096_))
                                           (_lp20715_
                                            (cons (_bind-e__3118531186_
                                                   _main-id21096_
                                                   _L21048_
                                                   '#f)
                                                  (cons (_bind-e__3118531186_
                                                         _get-kws-id21092_
                                                         _new-get-kws21102_
                                                         '#f)
                                                        (cons (_bind-e__3118531186_
                                                               _L20862_
                                                               _new-kw-dispatch21100_
                                                               '#f)
                                                              _rest20738_)))
                                            _bind20718_)))
                                       _hd2092321041_
                                       _hd2092021033_
                                       _hd2091721025_
                                       _hd2091421017_
                                       _hd2089620969_)
                                      (_g2087620929_ _g2087720932_))))
                              (_g2087620929_ _g2087720932_))
                          (_g2087620929_ _g2087720932_))
                      (_g2087620929_ _g2087720932_))
                  (_g2087620929_ _g2087720932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2087620929_
                                                   _g2087720932_))
                                              (_g2087620929_ _g2087720932_))
                                          (_g2087620929_ _g2087720932_))))
                                  (_g2087620929_ _g2087720932_))
                              (_g2087620929_ _g2087720932_))))
                      (_g2087620929_ _g2087720932_))))
              (_g2087620929_ _g2087720932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2087620929_ _g2087720932_))))
                                      (_g2087620929_ _g2087720932_))))
                              (_g2087620929_ _g2087720932_))))
                      (_g2087620929_ _g2087720932_))
                  (_g2087620929_ _g2087720932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2087620929_
                                                   _g2087720932_))))
                                          (_g2087620929_ _g2087720932_))))
                                  (_g2087620929_ _g2087720932_))))
                          (_g2087620929_ _g2087720932_))))
                  (_g2087620929_ _g2087720932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2087521105_ _L20861_))))
                                         (___kont3435234353_
                                          (lambda (_L20812_ _L20813_)
                                            (_lp20715_
                                             _rest20738_
                                             (cons (cons _L20813_
                                                         (cons (gxc#compile-e
                                                                _L20812_)
                                                               '()))
                                                   _bind20718_)))))
                                     (let* ((___match3441934420_
                                             (lambda (_e2077020837_
                                                      _hd2077120840_
                                                      _tl2077220842_
                                                      _e2077320845_
                                                      _hd2077420848_
                                                      _tl2077520850_
                                                      _e2077620853_
                                                      _hd2077720856_
                                                      _tl2077820858_)
                                               (let ((_L20861_ _hd2077720856_)
                                                     (_L20862_ _hd2077420848_))
                                                 (if (and (gx#identifier?
                                                           _L20862_)
                                                          (gxc#kw-lambda-expr?
                                                           _L20861_))
                                                     (___kont3435034351_
                                                      _L20861_
                                                      _L20862_)
                                                     (___kont3435234353_
                                                      _hd2077720856_
                                                      _hd2077120840_)))))
                                            (___match3439734398_
                                             (lambda (_e2075921113_
                                                      _hd2076021116_
                                                      _tl2076121118_
                                                      _e2076221121_
                                                      _hd2076321124_
                                                      _tl2076421126_
                                                      _e2076521129_
                                                      _hd2076621132_
                                                      _tl2076721134_)
                                               (let ((_L21137_ _hd2076621132_)
                                                     (_L21138_ _hd2076321124_))
                                                 (if (and (gx#identifier?
                                                           _L21138_)
                                                          (gxc#opt-lambda-expr?
                                                           _L21137_))
                                                     (___kont3434834349_
                                                      _L21137_
                                                      _L21138_)
                                                     (___match3441934420_
                                                      _e2075921113_
                                                      _hd2076021116_
                                                      _tl2076121118_
                                                      _e2076221121_
                                                      _hd2076321124_
                                                      _tl2076421126_
                                                      _e2076521129_
                                                      _hd2076621132_
                                                      _tl2076721134_)))))
                                            (___match3437534376_
                                             (lambda (_e2074821285_
                                                      _hd2074921288_
                                                      _tl2075021290_
                                                      _e2075121293_
                                                      _hd2075221296_
                                                      _tl2075321298_
                                                      _e2075421301_
                                                      _hd2075521304_
                                                      _tl2075621306_)
                                               (let ((_L21309_ _hd2075521304_)
                                                     (_L21310_ _hd2075221296_))
                                                 (if (and (gx#identifier?
                                                           _L21310_)
                                                          (gxc#case-lambda-expr?
                                                           _L21309_))
                                                     (___kont3434634347_
                                                      _L21309_
                                                      _L21310_)
                                                     (___match3439734398_
                                                      _e2074821285_
                                                      _hd2074921288_
                                                      _tl2075021290_
                                                      _e2075121293_
                                                      _hd2075221296_
                                                      _tl2075321298_
                                                      _e2075421301_
                                                      _hd2075521304_
                                                      _tl2075621306_))))))
                                       (if (gx#stx-pair? ___stx3434434345_)
                                           (let ((_e2074821285_
                                                  (gx#stx-e
                                                   ___stx3434434345_)))
                                             (let ((_tl2075021290_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2074821285_)))
                                                   (_hd2074921288_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2074821285_))))
                                               (if (gx#stx-pair?
                                                    _hd2074921288_)
                                                   (let ((_e2075121293_
                                                          (gx#stx-e
                                                           _hd2074921288_)))
                                                     (let ((_tl2075321298_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2075121293_)))
                                                           (_hd2075221296_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2075121293_))))
                                                       (if (gx#stx-null?
                                                            _tl2075321298_)
                                                           (if (gx#stx-pair?
                                                                _tl2075021290_)
                                                               (let ((_e2075421301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl2075021290_)))
                         (let ((_tl2075621306_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2075421301_)))
                               (_hd2075521304_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2075421301_))))
                           (if (gx#stx-null? _tl2075621306_)
                               (___match3437534376_
                                _e2074821285_
                                _hd2074921288_
                                _tl2075021290_
                                _e2075121293_
                                _hd2075221296_
                                _tl2075321298_
                                _e2075421301_
                                _hd2075521304_
                                _tl2075621306_)
                               (_g2074420791_))))
                       (_g2074420791_))
                   (if (gx#stx-pair? _tl2075021290_)
                       (let ((_e2078420804_ (gx#stx-e _tl2075021290_)))
                         (let ((_tl2078620809_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2078420804_)))
                               (_hd2078520807_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2078420804_))))
                           (if (gx#stx-null? _tl2078620809_)
                               (___kont3435234353_
                                _hd2078520807_
                                _hd2074921288_)
                               (_g2074420791_))))
                       (_g2074420791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _tl2075021290_)
                                                       (let ((_e2078420804_
                                                              (gx#stx-e
                                                               _tl2075021290_)))
                                                         (let ((_tl2078620809_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e2078420804_)))
                       (_hd2078520807_
                        (let () (declare (not safe)) (##car _e2078420804_))))
                   (if (gx#stx-null? _tl2078620809_)
                       (___kont3435234353_ _hd2078520807_ _hd2074921288_)
                       (_g2074420791_))))
               (_g2074420791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2074420791_))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest2071920727_))
                             (let ((_hd2072421405_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest2071920727_)))
                                   (_tl2072521407_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest2071920727_))))
                               (let* ((_hd21410_ _hd2072421405_)
                                      (_rest21412_ _tl2072521407_))
                                 (_K2072321402_ _rest21412_ _hd21410_)))
                             (_else2072120735_)))))))
          (let* ((___stx3443634437_ _stx20575_)
                 (_g2058120608_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3443634437_))))
            (let ((___kont3443834439_
                   (lambda (_L20668_ _L20669_ _L20670_)
                     (call-with-parameters
                      (lambda ()
                        (let ((_hd20707_
                               (_compile-bindings20578_
                                (foldr1 (lambda (_g2069920702_ _g2070020704_)
                                          (cons _g2069920702_ _g2070020704_))
                                        '()
                                        _L20669_)))
                              (_body20708_ (gxc#compile-e _L20668_)))
                          (gxc#xform-wrap-source
                           (cons _L20670_
                                 (cons _hd20707_ (cons _body20708_ '())))
                           _stx20575_)))
                      gx#current-expander-context
                      (let ((__obj34506 (make-object gx#local-context::t '5)))
                        (gx#local-context:::init!__0 __obj34506)
                        __obj34506))))
                  (___kont3444234443_
                   (lambda () (gxc#xform-let-values% _stx20575_))))
              (let ((___match3446334464_
                     (lambda (_e2058620620_
                              _hd2058720623_
                              _tl2058820625_
                              _e2058920628_
                              _hd2059020631_
                              _tl2059120633_
                              ___splice3444034441_
                              _target2059220636_
                              _tl2059420638_)
                       (letrec ((_loop2059520641_
                                 (lambda (_hd2059320644_ _bind2059920646_)
                                   (if (gx#stx-pair? _hd2059320644_)
                                       (let ((_e2059620649_
                                              (gx#stx-e _hd2059320644_)))
                                         (let ((_lp-tl2059820654_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2059620649_)))
                                               (_lp-hd2059720652_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2059620649_))))
                                           (_loop2059520641_
                                            _lp-tl2059820654_
                                            (cons _lp-hd2059720652_
                                                  _bind2059920646_))))
                                       (let ((_bind2060020657_
                                              (reverse _bind2059920646_)))
                                         (if (gx#stx-pair? _tl2059120633_)
                                             (let ((_e2060120660_
                                                    (gx#stx-e _tl2059120633_)))
                                               (let ((_tl2060320665_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2060120660_)))
                                                     (_hd2060220663_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2060120660_))))
                                                 (if (gx#stx-null?
                                                      _tl2060320665_)
                                                     (let ((_L20668_
                                                            _hd2060220663_)
                                                           (_L20669_
                                                            _bind2060020657_)
                                                           (_L20670_
                                                            _hd2058720623_))
                                                       (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr1 (lambda (_g2069120694_ _g2069220696_)
                                     (cons _g2069120694_ _g2069220696_))
                                   '()
                                   _L20669_))
                   (___kont3443834439_ _L20668_ _L20669_ _L20670_)
                   (___kont3444234443_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont3444234443_))))
                                             (___kont3444234443_)))))))
                         (_loop2059520641_ _target2059220636_ '())))))
                (if (gx#stx-pair? ___stx3443634437_)
                    (let ((_e2058620620_ (gx#stx-e ___stx3443634437_)))
                      (let ((_tl2058820625_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2058620620_)))
                            (_hd2058720623_
                             (let ()
                               (declare (not safe))
                               (##car _e2058620620_))))
                        (if (gx#stx-pair? _tl2058820625_)
                            (let ((_e2058920628_ (gx#stx-e _tl2058820625_)))
                              (let ((_tl2059120633_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2058920628_)))
                                    (_hd2059020631_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2058920628_))))
                                (if (gx#stx-pair/null? _hd2059020631_)
                                    (let ((___splice3444034441_
                                           (gx#syntax-split-splice
                                            _hd2059020631_
                                            '0)))
                                      (let ((_tl2059420638_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3444034441_
                                                '1)))
                                            (_target2059220636_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3444034441_
                                                '0))))
                                        (if (gx#stx-null? _tl2059420638_)
                                            (___match3446334464_
                                             _e2058620620_
                                             _hd2058720623_
                                             _tl2058820625_
                                             _e2058920628_
                                             _hd2059020631_
                                             _tl2059120633_
                                             ___splice3444034441_
                                             _target2059220636_
                                             _tl2059420638_)
                                            (___kont3444234443_))))
                                    (___kont3444234443_))))
                            (___kont3444234443_))))
                    (___kont3444234443_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind20493_)
        (let* ((___stx3446634467_ _bind20493_)
               (_g2049620513_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3446634467_))))
          (let ((___kont3446834469_
                 (lambda (_L20549_ _L20550_)
                   (if (gx#identifier? _L20550_)
                       (let ((_$e20566_ (gxc#case-lambda-expr? _L20549_)))
                         (if _$e20566_
                             _$e20566_
                             (let ((_$e20569_ (gxc#opt-lambda-expr? _L20549_)))
                               (if _$e20569_
                                   _$e20569_
                                   (gxc#kw-lambda-expr? _L20549_)))))
                       '#f)))
                (___kont3447034471_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx3446634467_)
                (let ((_e2050020525_ (gx#stx-e ___stx3446634467_)))
                  (let ((_tl2050220530_
                         (let () (declare (not safe)) (##cdr _e2050020525_)))
                        (_hd2050120528_
                         (let () (declare (not safe)) (##car _e2050020525_))))
                    (if (gx#stx-pair? _hd2050120528_)
                        (let ((_e2050320533_ (gx#stx-e _hd2050120528_)))
                          (let ((_tl2050520538_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2050320533_)))
                                (_hd2050420536_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2050320533_))))
                            (if (gx#stx-null? _tl2050520538_)
                                (if (gx#stx-pair? _tl2050220530_)
                                    (let ((_e2050620541_
                                           (gx#stx-e _tl2050220530_)))
                                      (let ((_tl2050820546_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2050620541_)))
                                            (_hd2050720544_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2050620541_))))
                                        (if (gx#stx-null? _tl2050820546_)
                                            (___kont3446834469_
                                             _hd2050720544_
                                             _hd2050420536_)
                                            (___kont3447034471_))))
                                    (___kont3447034471_))
                                (___kont3447034471_))))
                        (___kont3447034471_))))
                (___kont3447034471_))))))))
