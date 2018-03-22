(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl26300_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26300_ (force gxc#&void))
           (table-set! _tbl26300_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26300_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl26300_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26300_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl26300_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26300_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26300_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26300_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl26300_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl26300_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl26300_ '%#call gxc#collect-type-call%)
           (table-set! _tbl26300_ '%#if gxc#collect-operands)
           (table-set! _tbl26300_ '%#set! gxc#collect-body-setq%)
           _tbl26300_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx26293_ . _args26295_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26293_ _args26295_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl26290_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26290_ (force gxc#&false))
           (table-set! _tbl26290_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl26290_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl26290_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl26290_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl26290_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl26290_ '%#ref gxc#basic-expression-type-ref%)
           _tbl26290_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx26283_ . _args26285_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26283_ _args26285_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl26280_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26280_ (force gxc#&basic-xform))
           (table-set!
            _tbl26280_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl26280_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl26280_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl26280_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl26280_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx26273_ . _args26275_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26273_ _args26275_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx26129_)
      (let* ((___stx2631326314_ _stx26129_)
             (_g2613226163_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2631326314_))))
        (let ((___kont2631526316_
               (lambda (_L26245_ _L26246_)
                 (let ((_sym26262_ (gxc#identifier-symbol _L26246_)))
                   (begin
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym26262_
                          '#f)
                         (gxc#verbose
                          '"skipping type declaration for mutable binding "
                          _sym26262_)
                         (let ((_type2626326265_
                                (gxc#apply-basic-expression-type _L26245_)))
                           (if _type2626326265_
                               (let ((_type26268_ _type2626326265_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym26262_
                                  _type26268_))
                               '#f)))
                     (gxc#compile-e _L26245_)))))
              (___kont2631726318_
               (lambda (_L26192_ _L26193_) (gxc#compile-e _L26192_))))
          (let ((___match2634626347_
                 (lambda (_e2613626213_
                          _hd2613726216_
                          _tl2613826218_
                          _e2613926221_
                          _hd2614026224_
                          _tl2614126226_
                          _e2614226229_
                          _hd2614326232_
                          _tl2614426234_
                          _e2614526237_
                          _hd2614626240_
                          _tl2614726242_)
                   (let ((_L26245_ _hd2614626240_) (_L26246_ _hd2614326232_))
                     (if (gx#identifier? _L26246_)
                         (___kont2631526316_ _L26245_ _L26246_)
                         (___kont2631726318_
                          _hd2614626240_
                          _hd2614026224_))))))
            (if (gx#stx-pair? ___stx2631326314_)
                (let ((_e2613626213_ (gx#stx-e ___stx2631326314_)))
                  (let ((_tl2613826218_ (##cdr _e2613626213_))
                        (_hd2613726216_ (##car _e2613626213_)))
                    (if (gx#stx-pair? _tl2613826218_)
                        (let ((_e2613926221_ (gx#stx-e _tl2613826218_)))
                          (let ((_tl2614126226_ (##cdr _e2613926221_))
                                (_hd2614026224_ (##car _e2613926221_)))
                            (if (gx#stx-pair? _hd2614026224_)
                                (let ((_e2614226229_
                                       (gx#stx-e _hd2614026224_)))
                                  (let ((_tl2614426234_ (##cdr _e2614226229_))
                                        (_hd2614326232_ (##car _e2614226229_)))
                                    (if (gx#stx-null? _tl2614426234_)
                                        (if (gx#stx-pair? _tl2614126226_)
                                            (let ((_e2614526237_
                                                   (gx#stx-e _tl2614126226_)))
                                              (let ((_tl2614726242_
                                                     (##cdr _e2614526237_))
                                                    (_hd2614626240_
                                                     (##car _e2614526237_)))
                                                (if (gx#stx-null?
                                                     _tl2614726242_)
                                                    (___match2634626347_
                                                     _e2613626213_
                                                     _hd2613726216_
                                                     _tl2613826218_
                                                     _e2613926221_
                                                     _hd2614026224_
                                                     _tl2614126226_
                                                     _e2614226229_
                                                     _hd2614326232_
                                                     _tl2614426234_
                                                     _e2614526237_
                                                     _hd2614626240_
                                                     _tl2614726242_)
                                                    (_g2613226163_))))
                                            (_g2613226163_))
                                        (if (gx#stx-pair? _tl2614126226_)
                                            (let ((_e2615626184_
                                                   (gx#stx-e _tl2614126226_)))
                                              (let ((_tl2615826189_
                                                     (##cdr _e2615626184_))
                                                    (_hd2615726187_
                                                     (##car _e2615626184_)))
                                                (if (gx#stx-null?
                                                     _tl2615826189_)
                                                    (___kont2631726318_
                                                     _hd2615726187_
                                                     _hd2614026224_)
                                                    (_g2613226163_))))
                                            (_g2613226163_)))))
                                (if (gx#stx-pair? _tl2614126226_)
                                    (let ((_e2615626184_
                                           (gx#stx-e _tl2614126226_)))
                                      (let ((_tl2615826189_
                                             (##cdr _e2615626184_))
                                            (_hd2615726187_
                                             (##car _e2615626184_)))
                                        (if (gx#stx-null? _tl2615826189_)
                                            (___kont2631726318_
                                             _hd2615726187_
                                             _hd2614026224_)
                                            (_g2613226163_))))
                                    (_g2613226163_)))))
                        (_g2613226163_))))
                (_g2613226163_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx25914_)
      (letrec ((_collect-e25916_
                (lambda (_hd26073_ _expr26074_)
                  (let* ((___stx2636926370_ _hd26073_)
                         (_g2607726087_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2636926370_))))
                    (let ((___kont2637126372_
                           (lambda (_L26107_)
                             (let ((_sym26118_
                                    (gxc#identifier-symbol _L26107_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym26118_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym26118_)
                                   (let ((_type2611926121_
                                          (gxc#apply-basic-expression-type
                                           _expr26074_)))
                                     (if _type2611926121_
                                         (let ((_type26124_ _type2611926121_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym26118_
                                            _type26124_
                                            '#t))
                                         '#f))))))
                          (___kont2637326374_ (lambda () '#!void)))
                      (let ((___match2638226383_
                             (lambda (_e2608026099_
                                      _hd2608126102_
                                      _tl2608226104_)
                               (let ((_L26107_ _hd2608126102_))
                                 (if (gx#identifier? _L26107_)
                                     (___kont2637126372_ _L26107_)
                                     (___kont2637326374_))))))
                        (if (gx#stx-pair? ___stx2636926370_)
                            (let ((_e2608026099_ (gx#stx-e ___stx2636926370_)))
                              (let ((_tl2608226104_ (##cdr _e2608026099_))
                                    (_hd2608126102_ (##car _e2608026099_)))
                                (if (gx#stx-null? _tl2608226104_)
                                    (___match2638226383_
                                     _e2608026099_
                                     _hd2608126102_
                                     _tl2608226104_)
                                    (___kont2637326374_))))
                            (___kont2637326374_))))))))
        (let* ((_g2591825953_
                (lambda (_g2591925950_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2591925950_)))
               (_g2591726070_
                (lambda (_g2591925956_)
                  (if (gx#stx-pair? _g2591925956_)
                      (let ((_e2592325958_ (gx#stx-e _g2591925956_)))
                        (let ((_hd2592425961_ (##car _e2592325958_))
                              (_tl2592525963_ (##cdr _e2592325958_)))
                          (if (gx#stx-pair? _tl2592525963_)
                              (let ((_e2592625966_ (gx#stx-e _tl2592525963_)))
                                (let ((_hd2592725969_ (##car _e2592625966_))
                                      (_tl2592825971_ (##cdr _e2592625966_)))
                                  (if (gx#stx-pair/null? _hd2592725969_)
                                      (let ((_g28898_
                                             (gx#syntax-split-splice
                                              _hd2592725969_
                                              '0)))
                                        (begin
                                          (let ((_g28899_
                                                 (if (##values? _g28898_)
                                                     (##vector-length _g28898_)
                                                     1)))
                                            (if (not (##fx= _g28899_ 2))
                                                (error "Context expects 2 values"
                                                       _g28899_)))
                                          (let ((_target2592925974_
                                                 (##vector-ref _g28898_ 0))
                                                (_tl2593125976_
                                                 (##vector-ref _g28898_ 1)))
                                            (if (gx#stx-null? _tl2593125976_)
                                                (letrec ((_loop2593225979_
                                                          (lambda (_hd2593025982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2593625984_
                           _hd2593725986_)
                    (if (gx#stx-pair? _hd2593025982_)
                        (let ((_e2593325989_ (gx#stx-e _hd2593025982_)))
                          (let ((_lp-hd2593425992_ (##car _e2593325989_))
                                (_lp-tl2593525994_ (##cdr _e2593325989_)))
                            (if (gx#stx-pair? _lp-hd2593425992_)
                                (let ((_e2594025997_
                                       (gx#stx-e _lp-hd2593425992_)))
                                  (let ((_hd2594126000_ (##car _e2594025997_))
                                        (_tl2594226002_ (##cdr _e2594025997_)))
                                    (if (gx#stx-pair? _tl2594226002_)
                                        (let ((_e2594326005_
                                               (gx#stx-e _tl2594226002_)))
                                          (let ((_hd2594426008_
                                                 (##car _e2594326005_))
                                                (_tl2594526010_
                                                 (##cdr _e2594326005_)))
                                            (if (gx#stx-null? _tl2594526010_)
                                                (_loop2593225979_
                                                 _lp-tl2593525994_
                                                 (cons _hd2594426008_
                                                       _expr2593625984_)
                                                 (cons _hd2594126000_
                                                       _hd2593725986_))
                                                (_g2591825953_
                                                 _g2591925956_))))
                                        (_g2591825953_ _g2591925956_))))
                                (_g2591825953_ _g2591925956_))))
                        (let ((_expr2593826013_ (reverse _expr2593625984_))
                              (_hd2593926015_ (reverse _hd2593725986_)))
                          (if (gx#stx-pair? _tl2592825971_)
                              (let ((_e2594626018_ (gx#stx-e _tl2592825971_)))
                                (let ((_hd2594726021_ (##car _e2594626018_))
                                      (_tl2594826023_ (##cdr _e2594626018_)))
                                  (if (gx#stx-null? _tl2594826023_)
                                      ((lambda (_L26026_ _L26027_ _L26028_)
                                         (begin
                                           (for-each
                                            _collect-e25916_
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2604826051_
                                                               _g2604926053_)
                                                        (cons _g2604826051_
                                                              _g2604926053_))
                                                      '()
                                                      _L26028_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2605526058_
                                                               _g2605626060_)
                                                        (cons _g2605526058_
                                                              _g2605626060_))
                                                      '()
                                                      _L26027_)))
                                           (for-each
                                            gxc#compile-e
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2606226065_
                                                               _g2606326067_)
                                                        (cons _g2606226065_
                                                              _g2606326067_))
                                                      '()
                                                      _L26027_)))
                                           (gxc#compile-e _L26026_)))
                                       _hd2594726021_
                                       _expr2593826013_
                                       _hd2593926015_)
                                      (_g2591825953_ _g2591925956_))))
                              (_g2591825953_ _g2591925956_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2593225979_
                                                   _target2592925974_
                                                   '()
                                                   '()))
                                                (_g2591825953_
                                                 _g2591925956_)))))
                                      (_g2591825953_ _g2591925956_))))
                              (_g2591825953_ _g2591925956_))))
                      (_g2591825953_ _g2591925956_)))))
          (_g2591726070_ _stx25914_)))))
  (define gxc#collect-type-call%
    (lambda (_stx25468_)
      (let* ((___stx2638526386_ _stx25468_)
             (_g2547225574_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2638526386_))))
        (let ((___kont2638726388_
               (lambda (_L25864_ _L25865_ _L25866_ _L25867_ _L25868_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25867_)
                  (gx#stx-e _L25866_)
                  (gxc#identifier-symbol _L25865_)
                  (gx#stx-e _L25864_))))
              (___kont2638926390_
               (lambda (_L25690_ _L25691_ _L25692_ _L25693_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25692_)
                  (gx#stx-e _L25691_)
                  (gxc#identifier-symbol _L25690_)
                  '#f)))
              (___kont2639126392_ (lambda () '#!void)))
          (let ((___match2652026521_
                 (lambda (_e2547925736_
                          _hd2548025739_
                          _tl2548125741_
                          _e2548225744_
                          _hd2548325747_
                          _tl2548425749_
                          _e2548525752_
                          _hd2548625755_
                          _tl2548725757_
                          _e2548825760_
                          _hd2548925763_
                          _tl2549025765_
                          _e2549125768_
                          _hd2549225771_
                          _tl2549325773_
                          _e2549425776_
                          _hd2549525779_
                          _tl2549625781_
                          _e2549725784_
                          _hd2549825787_
                          _tl2549925789_
                          _e2550025792_
                          _hd2550125795_
                          _tl2550225797_
                          _e2550325800_
                          _hd2550425803_
                          _tl2550525805_
                          _e2550625808_
                          _hd2550725811_
                          _tl2550825813_
                          _e2550925816_
                          _hd2551025819_
                          _tl2551125821_
                          _e2551225824_
                          _hd2551325827_
                          _tl2551425829_
                          _e2551525832_
                          _hd2551625835_
                          _tl2551725837_
                          _e2551825840_
                          _hd2551925843_
                          _tl2552025845_
                          _e2552125848_
                          _hd2552225851_
                          _tl2552325853_
                          _e2552425856_
                          _hd2552525859_
                          _tl2552625861_)
                   (let ((_L25864_ _hd2552525859_)
                         (_L25865_ _hd2551625835_)
                         (_L25866_ _hd2550725811_)
                         (_L25867_ _hd2549825787_)
                         (_L25868_ _hd2548925763_))
                     (if (gxc#runtime-identifier=? _L25868_ 'bind-method!)
                         (___kont2638726388_
                          _L25864_
                          _L25865_
                          _L25866_
                          _L25867_
                          _L25868_)
                         (___kont2639126392_))))))
            (if (gx#stx-pair? ___stx2638526386_)
                (let ((_e2547925736_ (gx#stx-e ___stx2638526386_)))
                  (let ((_tl2548125741_ (##cdr _e2547925736_))
                        (_hd2548025739_ (##car _e2547925736_)))
                    (if (gx#stx-pair? _tl2548125741_)
                        (let ((_e2548225744_ (gx#stx-e _tl2548125741_)))
                          (let ((_tl2548425749_ (##cdr _e2548225744_))
                                (_hd2548325747_ (##car _e2548225744_)))
                            (if (gx#stx-pair? _hd2548325747_)
                                (let ((_e2548525752_
                                       (gx#stx-e _hd2548325747_)))
                                  (let ((_tl2548725757_ (##cdr _e2548525752_))
                                        (_hd2548625755_ (##car _e2548525752_)))
                                    (if (gx#identifier? _hd2548625755_)
                                        (if (gx#stx-eq? '%#ref _hd2548625755_)
                                            (if (gx#stx-pair? _tl2548725757_)
                                                (let ((_e2548825760_
                                                       (gx#stx-e
                                                        _tl2548725757_)))
                                                  (let ((_tl2549025765_
                                                         (##cdr _e2548825760_))
                                                        (_hd2548925763_
                                                         (##car _e2548825760_)))
                                                    (if (gx#stx-null?
                                                         _tl2549025765_)
                                                        (if (gx#stx-pair?
                                                             _tl2548425749_)
                                                            (let ((_e2549125768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2548425749_)))
                      (let ((_tl2549325773_ (##cdr _e2549125768_))
                            (_hd2549225771_ (##car _e2549125768_)))
                        (if (gx#stx-pair? _hd2549225771_)
                            (let ((_e2549425776_ (gx#stx-e _hd2549225771_)))
                              (let ((_tl2549625781_ (##cdr _e2549425776_))
                                    (_hd2549525779_ (##car _e2549425776_)))
                                (if (gx#identifier? _hd2549525779_)
                                    (if (gx#stx-eq? '%#ref _hd2549525779_)
                                        (if (gx#stx-pair? _tl2549625781_)
                                            (let ((_e2549725784_
                                                   (gx#stx-e _tl2549625781_)))
                                              (let ((_tl2549925789_
                                                     (##cdr _e2549725784_))
                                                    (_hd2549825787_
                                                     (##car _e2549725784_)))
                                                (if (gx#stx-null?
                                                     _tl2549925789_)
                                                    (if (gx#stx-pair?
                                                         _tl2549325773_)
                                                        (let ((_e2550025792_
                                                               (gx#stx-e
                                                                _tl2549325773_)))
                                                          (let ((_tl2550225797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2550025792_))
                        (_hd2550125795_ (##car _e2550025792_)))
                    (if (gx#stx-pair? _hd2550125795_)
                        (let ((_e2550325800_ (gx#stx-e _hd2550125795_)))
                          (let ((_tl2550525805_ (##cdr _e2550325800_))
                                (_hd2550425803_ (##car _e2550325800_)))
                            (if (gx#identifier? _hd2550425803_)
                                (if (gx#stx-eq? '%#quote _hd2550425803_)
                                    (if (gx#stx-pair? _tl2550525805_)
                                        (let ((_e2550625808_
                                               (gx#stx-e _tl2550525805_)))
                                          (let ((_tl2550825813_
                                                 (##cdr _e2550625808_))
                                                (_hd2550725811_
                                                 (##car _e2550625808_)))
                                            (if (gx#stx-null? _tl2550825813_)
                                                (if (gx#stx-pair?
                                                     _tl2550225797_)
                                                    (let ((_e2550925816_
                                                           (gx#stx-e
                                                            _tl2550225797_)))
                                                      (let ((_tl2551125821_
                                                             (##cdr _e2550925816_))
                                                            (_hd2551025819_
                                                             (##car _e2550925816_)))
                                                        (if (gx#stx-pair?
                                                             _hd2551025819_)
                                                            (let ((_e2551225824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2551025819_)))
                      (let ((_tl2551425829_ (##cdr _e2551225824_))
                            (_hd2551325827_ (##car _e2551225824_)))
                        (if (gx#identifier? _hd2551325827_)
                            (if (gx#stx-eq? '%#ref _hd2551325827_)
                                (if (gx#stx-pair? _tl2551425829_)
                                    (let ((_e2551525832_
                                           (gx#stx-e _tl2551425829_)))
                                      (let ((_tl2551725837_
                                             (##cdr _e2551525832_))
                                            (_hd2551625835_
                                             (##car _e2551525832_)))
                                        (if (gx#stx-null? _tl2551725837_)
                                            (if (gx#stx-pair? _tl2551125821_)
                                                (let ((_e2551825840_
                                                       (gx#stx-e
                                                        _tl2551125821_)))
                                                  (let ((_tl2552025845_
                                                         (##cdr _e2551825840_))
                                                        (_hd2551925843_
                                                         (##car _e2551825840_)))
                                                    (if (gx#stx-pair?
                                                         _hd2551925843_)
                                                        (let ((_e2552125848_
                                                               (gx#stx-e
                                                                _hd2551925843_)))
                                                          (let ((_tl2552325853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2552125848_))
                        (_hd2552225851_ (##car _e2552125848_)))
                    (if (gx#identifier? _hd2552225851_)
                        (if (gx#stx-eq? '%#quote _hd2552225851_)
                            (if (gx#stx-pair? _tl2552325853_)
                                (let ((_e2552425856_
                                       (gx#stx-e _tl2552325853_)))
                                  (let ((_tl2552625861_ (##cdr _e2552425856_))
                                        (_hd2552525859_ (##car _e2552425856_)))
                                    (if (gx#stx-null? _tl2552625861_)
                                        (if (gx#stx-null? _tl2552025845_)
                                            (___match2652026521_
                                             _e2547925736_
                                             _hd2548025739_
                                             _tl2548125741_
                                             _e2548225744_
                                             _hd2548325747_
                                             _tl2548425749_
                                             _e2548525752_
                                             _hd2548625755_
                                             _tl2548725757_
                                             _e2548825760_
                                             _hd2548925763_
                                             _tl2549025765_
                                             _e2549125768_
                                             _hd2549225771_
                                             _tl2549325773_
                                             _e2549425776_
                                             _hd2549525779_
                                             _tl2549625781_
                                             _e2549725784_
                                             _hd2549825787_
                                             _tl2549925789_
                                             _e2550025792_
                                             _hd2550125795_
                                             _tl2550225797_
                                             _e2550325800_
                                             _hd2550425803_
                                             _tl2550525805_
                                             _e2550625808_
                                             _hd2550725811_
                                             _tl2550825813_
                                             _e2550925816_
                                             _hd2551025819_
                                             _tl2551125821_
                                             _e2551225824_
                                             _hd2551325827_
                                             _tl2551425829_
                                             _e2551525832_
                                             _hd2551625835_
                                             _tl2551725837_
                                             _e2551825840_
                                             _hd2551925843_
                                             _tl2552025845_
                                             _e2552125848_
                                             _hd2552225851_
                                             _tl2552325853_
                                             _e2552425856_
                                             _hd2552525859_
                                             _tl2552625861_)
                                            (___kont2639126392_))
                                        (___kont2639126392_))))
                                (___kont2639126392_))
                            (___kont2639126392_))
                        (___kont2639126392_))))
                (___kont2639126392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2551125821_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L25690_
                                                               _hd2551625835_)
                                                              (_L25691_
                                                               _hd2550725811_)
                                                              (_L25692_
                                                               _hd2549825787_)
                                                              (_L25693_
                                                               _hd2548925763_))
                                                          (___kont2638926390_
                                                           _L25690_
                                                           _L25691_
                                                           _L25692_
                                                           _L25693_))
                                                        (___kont2639126392_))
                                                    (___kont2639126392_)))
                                            (___kont2639126392_))))
                                    (___kont2639126392_))
                                (___kont2639126392_))
                            (___kont2639126392_))))
                    (___kont2639126392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2639126392_))
                                                (___kont2639126392_))))
                                        (___kont2639126392_))
                                    (___kont2639126392_))
                                (___kont2639126392_))))
                        (___kont2639126392_))))
                (___kont2639126392_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2639126392_))))
                                            (___kont2639126392_))
                                        (___kont2639126392_))
                                    (___kont2639126392_))))
                            (___kont2639126392_))))
                    (___kont2639126392_))
                (___kont2639126392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2639126392_))
                                            (___kont2639126392_))
                                        (___kont2639126392_))))
                                (___kont2639126392_))))
                        (___kont2639126392_))))
                (___kont2639126392_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx25408_)
      (let* ((___stx2662926630_ _stx25408_)
             (_g2541125424_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2662926630_))))
        (let ((___kont2663126632_ (lambda (_L25452_) (gxc#compile-e _L25452_)))
              (___kont2663326634_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2662926630_)
              (let ((_e2541425436_ (gx#stx-e ___stx2662926630_)))
                (let ((_tl2541625441_ (##cdr _e2541425436_))
                      (_hd2541525439_ (##car _e2541425436_)))
                  (if (gx#stx-pair? _tl2541625441_)
                      (let ((_e2541725444_ (gx#stx-e _tl2541625441_)))
                        (let ((_tl2541925449_ (##cdr _e2541725444_))
                              (_hd2541825447_ (##car _e2541725444_)))
                          (if (gx#stx-null? _tl2541925449_)
                              (___kont2663126632_ _hd2541825447_)
                              (___kont2663326634_))))
                      (___kont2663326634_))))
              (___kont2663326634_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx25341_)
      (let* ((_g2534325360_
              (lambda (_g2534425357_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2534425357_)))
             (_g2534225405_
              (lambda (_g2534425363_)
                (if (gx#stx-pair? _g2534425363_)
                    (let ((_e2534725365_ (gx#stx-e _g2534425363_)))
                      (let ((_hd2534825368_ (##car _e2534725365_))
                            (_tl2534925370_ (##cdr _e2534725365_)))
                        (if (gx#stx-pair? _tl2534925370_)
                            (let ((_e2535025373_ (gx#stx-e _tl2534925370_)))
                              (let ((_hd2535125376_ (##car _e2535025373_))
                                    (_tl2535225378_ (##cdr _e2535025373_)))
                                (if (gx#stx-pair? _tl2535225378_)
                                    (let ((_e2535325381_
                                           (gx#stx-e _tl2535225378_)))
                                      (let ((_hd2535425384_
                                             (##car _e2535325381_))
                                            (_tl2535525386_
                                             (##cdr _e2535325381_)))
                                        (if (gx#stx-null? _tl2535525386_)
                                            ((lambda (_L25389_ _L25390_)
                                               (gxc#compile-e _L25389_))
                                             _hd2535425384_
                                             _hd2535125376_)
                                            (_g2534325360_ _g2534425363_))))
                                    (_g2534325360_ _g2534425363_))))
                            (_g2534325360_ _g2534425363_))))
                    (_g2534325360_ _g2534425363_)))))
        (_g2534225405_ _stx25341_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx23978_)
      (let* ((___stx2665126652_ _stx23978_)
             (_g2398524284_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2665126652_))))
        (let ((___kont2665326654_
               (lambda (_L25286_ _L25287_ _L25288_ _L25289_ _L25290_)
                 (let* ((_type-t25333_ (gxc#identifier-symbol _L25287_))
                        (_type25335_
                         (gxc#optimizer-resolve-type _type-t25333_)))
                   (if (##structure-instance-of?
                        _type25335_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t25333_)
                       '#f))))
              (___kont2665526656_
               (lambda (_L25072_ _L25073_ _L25074_ _L25075_)
                 (let* ((_type-t25148_ (gxc#identifier-symbol _L25073_))
                        (_type25150_
                         (gxc#optimizer-resolve-type _type-t25148_)))
                   (if (##structure-instance-of?
                        _type25150_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t25148_)
                       '#f))))
              (___kont2666126662_
               (lambda (_L24914_)
                 (let ((__obj28892 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj28892
                      'lambda
                      (gxc#lambda-form-arity _L24914_)
                      (gxc#dispatch-lambda-form-delegate _L24914_))
                     __obj28892))))
              (___kont2666326664_
               (lambda (_L24841_ _L24842_ _L24843_ _L24844_ _L24845_ _L24846_)
                 (let* ((_tab24896_ (gx#stx-e _L24843_))
                        (_keys24898_
                         (if _tab24896_
                             (filter values (vector->list _tab24896_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys24898_
                    (gxc#identifier-symbol _L24842_)))))
              (___kont2666526666_
               (lambda (_L24572_
                        _L24573_
                        _L24574_
                        _L24575_
                        _L24576_
                        _L24577_
                        _L24578_
                        _L24579_
                        _L24580_
                        _L24581_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2467624679_ _g2467724681_)
                                   (cons _g2467624679_ _g2467724681_))
                                 '()
                                 _L24574_)))
                  (gxc#identifier-symbol _L24578_))))
              (___kont2666926670_ (lambda () '#f)))
          (let* ((___match2711627117_
                  (lambda (_e2417524296_
                           _hd2417624299_
                           _tl2417724301_
                           _e2417824304_
                           _hd2417924307_
                           _tl2418024309_
                           _e2418124312_
                           _hd2418224315_
                           _tl2418324317_
                           _e2418424320_
                           _hd2418524323_
                           _tl2418624325_
                           _e2418724328_
                           _hd2418824331_
                           _tl2418924333_
                           _e2419024336_
                           _hd2419124339_
                           _tl2419224341_
                           _e2419324344_
                           _hd2419424347_
                           _tl2419524349_
                           _e2419624352_
                           _hd2419724355_
                           _tl2419824357_
                           _e2419924360_
                           _hd2420024363_
                           _tl2420124365_
                           _e2420224368_
                           _hd2420324371_
                           _tl2420424373_
                           _e2420524376_
                           _hd2420624379_
                           _tl2420724381_
                           _e2420824384_
                           _hd2420924387_
                           _tl2421024389_
                           _e2421124392_
                           _hd2421224395_
                           _tl2421324397_
                           _e2421424400_
                           _hd2421524403_
                           _tl2421624405_
                           ___splice2666726668_
                           _target2421724408_
                           _tl2421924410_
                           _e2423224413_
                           _hd2423324416_
                           _tl2423424418_
                           _e2423524421_
                           _hd2423624424_
                           _tl2423724426_
                           _e2423824429_
                           _hd2423924432_
                           _tl2424024434_)
                    (letrec ((_loop2422024437_
                              (lambda (_hd2421824440_
                                       _-absent-value2422424442_
                                       _key2422524444_
                                       _-xkwvar2422624446_
                                       _-hash-ref2422724448_)
                                (if (gx#stx-pair? _hd2421824440_)
                                    (let ((_e2422124451_
                                           (gx#stx-e _hd2421824440_)))
                                      (let ((_lp-tl2422324456_
                                             (##cdr _e2422124451_))
                                            (_lp-hd2422224454_
                                             (##car _e2422124451_)))
                                        (if (gx#stx-pair? _lp-hd2422224454_)
                                            (let ((_e2424124459_
                                                   (gx#stx-e
                                                    _lp-hd2422224454_)))
                                              (let ((_tl2424324464_
                                                     (##cdr _e2424124459_))
                                                    (_hd2424224462_
                                                     (##car _e2424124459_)))
                                                (if (gx#identifier?
                                                     _hd2424224462_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2424224462_)
                                                        (if (gx#stx-pair?
                                                             _tl2424324464_)
                                                            (let ((_e2424424467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2424324464_)))
                      (let ((_tl2424624472_ (##cdr _e2424424467_))
                            (_hd2424524470_ (##car _e2424424467_)))
                        (if (gx#stx-pair? _hd2424524470_)
                            (let ((_e2424724475_ (gx#stx-e _hd2424524470_)))
                              (let ((_tl2424924480_ (##cdr _e2424724475_))
                                    (_hd2424824478_ (##car _e2424724475_)))
                                (if (gx#identifier? _hd2424824478_)
                                    (if (gx#stx-eq? '%#ref _hd2424824478_)
                                        (if (gx#stx-pair? _tl2424924480_)
                                            (let ((_e2425024483_
                                                   (gx#stx-e _tl2424924480_)))
                                              (let ((_tl2425224488_
                                                     (##cdr _e2425024483_))
                                                    (_hd2425124486_
                                                     (##car _e2425024483_)))
                                                (if (gx#stx-null?
                                                     _tl2425224488_)
                                                    (if (gx#stx-pair?
                                                         _tl2424624472_)
                                                        (let ((_e2425324491_
                                                               (gx#stx-e
                                                                _tl2424624472_)))
                                                          (let ((_tl2425524496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2425324491_))
                        (_hd2425424494_ (##car _e2425324491_)))
                    (if (gx#stx-pair? _hd2425424494_)
                        (let ((_e2425624499_ (gx#stx-e _hd2425424494_)))
                          (let ((_tl2425824504_ (##cdr _e2425624499_))
                                (_hd2425724502_ (##car _e2425624499_)))
                            (if (gx#identifier? _hd2425724502_)
                                (if (gx#stx-eq? '%#ref _hd2425724502_)
                                    (if (gx#stx-pair? _tl2425824504_)
                                        (let ((_e2425924507_
                                               (gx#stx-e _tl2425824504_)))
                                          (let ((_tl2426124512_
                                                 (##cdr _e2425924507_))
                                                (_hd2426024510_
                                                 (##car _e2425924507_)))
                                            (if (gx#stx-null? _tl2426124512_)
                                                (if (gx#stx-pair?
                                                     _tl2425524496_)
                                                    (let ((_e2426224515_
                                                           (gx#stx-e
                                                            _tl2425524496_)))
                                                      (let ((_tl2426424520_
                                                             (##cdr _e2426224515_))
                                                            (_hd2426324518_
                                                             (##car _e2426224515_)))
                                                        (if (gx#stx-pair?
                                                             _hd2426324518_)
                                                            (let ((_e2426524523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2426324518_)))
                      (let ((_tl2426724528_ (##cdr _e2426524523_))
                            (_hd2426624526_ (##car _e2426524523_)))
                        (if (gx#identifier? _hd2426624526_)
                            (if (gx#stx-eq? '%#quote _hd2426624526_)
                                (if (gx#stx-pair? _tl2426724528_)
                                    (let ((_e2426824531_
                                           (gx#stx-e _tl2426724528_)))
                                      (let ((_tl2427024536_
                                             (##cdr _e2426824531_))
                                            (_hd2426924534_
                                             (##car _e2426824531_)))
                                        (if (gx#stx-null? _tl2427024536_)
                                            (if (gx#stx-pair? _tl2426424520_)
                                                (let ((_e2427124539_
                                                       (gx#stx-e
                                                        _tl2426424520_)))
                                                  (let ((_tl2427324544_
                                                         (##cdr _e2427124539_))
                                                        (_hd2427224542_
                                                         (##car _e2427124539_)))
                                                    (if (gx#stx-pair?
                                                         _hd2427224542_)
                                                        (let ((_e2427424547_
                                                               (gx#stx-e
                                                                _hd2427224542_)))
                                                          (let ((_tl2427624552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2427424547_))
                        (_hd2427524550_ (##car _e2427424547_)))
                    (if (gx#identifier? _hd2427524550_)
                        (if (gx#stx-eq? '%#ref _hd2427524550_)
                            (if (gx#stx-pair? _tl2427624552_)
                                (let ((_e2427724555_
                                       (gx#stx-e _tl2427624552_)))
                                  (let ((_tl2427924560_ (##cdr _e2427724555_))
                                        (_hd2427824558_ (##car _e2427724555_)))
                                    (if (gx#stx-null? _tl2427924560_)
                                        (if (gx#stx-null? _tl2427324544_)
                                            (_loop2422024437_
                                             _lp-tl2422324456_
                                             (cons _hd2427824558_
                                                   _-absent-value2422424442_)
                                             (cons _hd2426924534_
                                                   _key2422524444_)
                                             (cons _hd2426024510_
                                                   _-xkwvar2422624446_)
                                             (cons _hd2425124486_
                                                   _-hash-ref2422724448_))
                                            (___kont2666926670_))
                                        (___kont2666926670_))))
                                (___kont2666926670_))
                            (___kont2666926670_))
                        (___kont2666926670_))))
                (___kont2666926670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2666926670_))
                                            (___kont2666926670_))))
                                    (___kont2666926670_))
                                (___kont2666926670_))
                            (___kont2666926670_))))
                    (___kont2666926670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2666926670_))
                                                (___kont2666926670_))))
                                        (___kont2666926670_))
                                    (___kont2666926670_))
                                (___kont2666926670_))))
                        (___kont2666926670_))))
                (___kont2666926670_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2666926670_))))
                                            (___kont2666926670_))
                                        (___kont2666926670_))
                                    (___kont2666926670_))))
                            (___kont2666926670_))))
                    (___kont2666926670_))
                (___kont2666926670_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2666926670_))))
                                            (___kont2666926670_))))
                                    (let ((_-hash-ref2423124569_
                                           (reverse _-hash-ref2422724448_))
                                          (_-xkwvar2423024567_
                                           (reverse _-xkwvar2422624446_))
                                          (_key2422924565_
                                           (reverse _key2422524444_))
                                          (_-absent-value2422824563_
                                           (reverse _-absent-value2422424442_)))
                                      (if (gx#stx-null? _tl2418624325_)
                                          (let ((_L24572_ _hd2423924432_)
                                                (_L24573_
                                                 _-absent-value2422824563_)
                                                (_L24574_ _key2422924565_)
                                                (_L24575_ _-xkwvar2423024567_)
                                                (_L24576_
                                                 _-hash-ref2423124569_)
                                                (_L24577_ _hd2421524403_)
                                                (_L24578_ _hd2420624379_)
                                                (_L24579_ _hd2419724355_)
                                                (_L24580_ _tl2418324317_)
                                                (_L24581_ _hd2418224315_))
                                            (if (if (gx#identifier? _L24581_)
                                                    (if (gx#identifier?
                                                         _L24580_)
                                                        (if (gxc#runtime-identifier=?
                                                             _L24579_
                                                             'apply)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24581_
                         _L24577_)
                        (if (andmap1 gx#stx-keyword?
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g2463624639_
                                                        _g2463724641_)
                                                 (cons _g2463624639_
                                                       _g2463724641_))
                                               '()
                                               _L24574_)))
                            (if (andmap1 (lambda (_g2464324645_)
                                           (gxc#runtime-identifier=?
                                            _g2464324645_
                                            'hash-ref))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2464724650_
                                                            _g2464824652_)
                                                     (cons _g2464724650_
                                                           _g2464824652_))
                                                   '()
                                                   _L24576_)))
                                (if (andmap1 (lambda (_g2465424656_)
                                               (gxc#runtime-identifier=?
                                                _g2465424656_
                                                'absent-value))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2465824661_
                                                                _g2465924663_)
                                                         (cons _g2465824661_
                                                               _g2465924663_))
                                                       '()
                                                       _L24573_)))
                                    (andmap1 (lambda (_g2466524667_)
                                               (gx#free-identifier=?
                                                _g2466524667_
                                                _L24581_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2466924672_
                                                                _g2467024674_)
                                                         (cons _g2466924672_
                                                               _g2467024674_))
                                                       '()
                                                       _L24575_)))
                                    '#f)
                                '#f)
                            '#f)
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (___kont2666526666_
                                                 _L24572_
                                                 _L24573_
                                                 _L24574_
                                                 _L24575_
                                                 _L24576_
                                                 _L24577_
                                                 _L24578_
                                                 _L24579_
                                                 _L24580_
                                                 _L24581_)
                                                (___kont2666926670_)))
                                          (___kont2666926670_)))))))
                      (_loop2422024437_ _target2421724408_ '() '() '() '()))))
                 (___match2697626977_
                  (lambda (_e2410824689_
                           _hd2410924692_
                           _tl2411024694_
                           _e2411124697_
                           _hd2411224700_
                           _tl2411324702_
                           _e2411424705_
                           _hd2411524708_
                           _tl2411624710_
                           _e2411724713_
                           _hd2411824716_
                           _tl2411924718_
                           _e2412024721_
                           _hd2412124724_
                           _tl2412224726_
                           _e2412324729_
                           _hd2412424732_
                           _tl2412524734_
                           _e2412624737_
                           _hd2412724740_
                           _tl2412824742_
                           _e2412924745_
                           _hd2413024748_
                           _tl2413124750_
                           _e2413224753_
                           _hd2413324756_
                           _tl2413424758_
                           _e2413524761_
                           _hd2413624764_
                           _tl2413724766_
                           _e2413824769_
                           _hd2413924772_
                           _tl2414024774_
                           _e2414124777_
                           _hd2414224780_
                           _tl2414324782_
                           _e2414424785_
                           _hd2414524788_
                           _tl2414624790_
                           _e2414724793_
                           _hd2414824796_
                           _tl2414924798_
                           _e2415024801_
                           _hd2415124804_
                           _tl2415224806_
                           _e2415324809_
                           _hd2415424812_
                           _tl2415524814_
                           _e2415624817_
                           _hd2415724820_
                           _tl2415824822_
                           _e2415924825_
                           _hd2416024828_
                           _tl2416124830_
                           _e2416224833_
                           _hd2416324836_
                           _tl2416424838_)
                    (let ((_L24841_ _hd2416324836_)
                          (_L24842_ _hd2415424812_)
                          (_L24843_ _hd2414524788_)
                          (_L24844_ _hd2413624764_)
                          (_L24845_ _hd2412724740_)
                          (_L24846_ _hd2411224700_))
                      (if (if (gx#identifier? _L24846_)
                              (if (gxc#runtime-identifier=? _L24845_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24844_
                                       'keyword-dispatch)
                                      (gx#free-identifier=? _L24846_ _L24841_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2666326664_
                           _L24841_
                           _L24842_
                           _L24843_
                           _L24844_
                           _L24845_
                           _L24846_)
                          (if (gx#stx-pair? _hd2411224700_)
                              (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                                (let ((_tl2418324317_ (##cdr _e2418124312_))
                                      (_hd2418224315_ (##car _e2418124312_)))
                                  (___kont2666926670_)))
                              (___kont2666926670_))))))
                 (___match2682426825_
                  (lambda (_e2409924906_ _hd2410024909_ _tl2410124911_)
                    (let ((_L24914_ _tl2410124911_))
                      (if (gxc#dispatch-lambda-form? _L24914_)
                          (___kont2666126662_ _L24914_)
                          (if (gx#stx-pair? _tl2410124911_)
                              (let ((_e2411124697_ (gx#stx-e _tl2410124911_)))
                                (let ((_tl2411324702_ (##cdr _e2411124697_))
                                      (_hd2411224700_ (##car _e2411124697_)))
                                  (if (gx#stx-pair? _tl2411324702_)
                                      (let ((_e2411424705_
                                             (gx#stx-e _tl2411324702_)))
                                        (let ((_tl2411624710_
                                               (##cdr _e2411424705_))
                                              (_hd2411524708_
                                               (##car _e2411424705_)))
                                          (if (gx#stx-pair? _hd2411524708_)
                                              (let ((_e2411724713_
                                                     (gx#stx-e
                                                      _hd2411524708_)))
                                                (let ((_tl2411924718_
                                                       (##cdr _e2411724713_))
                                                      (_hd2411824716_
                                                       (##car _e2411724713_)))
                                                  (if (gx#identifier?
                                                       _hd2411824716_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd2411824716_)
                                                          (if (gx#stx-pair?
                                                               _tl2411924718_)
                                                              (let ((_e2412024721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2411924718_)))
                        (let ((_tl2412224726_ (##cdr _e2412024721_))
                              (_hd2412124724_ (##car _e2412024721_)))
                          (if (gx#stx-pair? _hd2412124724_)
                              (let ((_e2412324729_ (gx#stx-e _hd2412124724_)))
                                (let ((_tl2412524734_ (##cdr _e2412324729_))
                                      (_hd2412424732_ (##car _e2412324729_)))
                                  (if (gx#identifier? _hd2412424732_)
                                      (if (gx#stx-eq? '%#ref _hd2412424732_)
                                          (if (gx#stx-pair? _tl2412524734_)
                                              (let ((_e2412624737_
                                                     (gx#stx-e
                                                      _tl2412524734_)))
                                                (let ((_tl2412824742_
                                                       (##cdr _e2412624737_))
                                                      (_hd2412724740_
                                                       (##car _e2412624737_)))
                                                  (if (gx#stx-null?
                                                       _tl2412824742_)
                                                      (if (gx#stx-pair?
                                                           _tl2412224726_)
                                                          (let ((_e2412924745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2412224726_)))
                    (let ((_tl2413124750_ (##cdr _e2412924745_))
                          (_hd2413024748_ (##car _e2412924745_)))
                      (if (gx#stx-pair? _hd2413024748_)
                          (let ((_e2413224753_ (gx#stx-e _hd2413024748_)))
                            (let ((_tl2413424758_ (##cdr _e2413224753_))
                                  (_hd2413324756_ (##car _e2413224753_)))
                              (if (gx#identifier? _hd2413324756_)
                                  (if (gx#stx-eq? '%#ref _hd2413324756_)
                                      (if (gx#stx-pair? _tl2413424758_)
                                          (let ((_e2413524761_
                                                 (gx#stx-e _tl2413424758_)))
                                            (let ((_tl2413724766_
                                                   (##cdr _e2413524761_))
                                                  (_hd2413624764_
                                                   (##car _e2413524761_)))
                                              (if (gx#stx-null? _tl2413724766_)
                                                  (if (gx#stx-pair?
                                                       _tl2413124750_)
                                                      (let ((_e2413824769_
                                                             (gx#stx-e
                                                              _tl2413124750_)))
                                                        (let ((_tl2414024774_
                                                               (##cdr _e2413824769_))
                                                              (_hd2413924772_
                                                               (##car _e2413824769_)))
                                                          (if (gx#stx-pair?
                                                               _hd2413924772_)
                                                              (let ((_e2414124777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2413924772_)))
                        (let ((_tl2414324782_ (##cdr _e2414124777_))
                              (_hd2414224780_ (##car _e2414124777_)))
                          (if (gx#identifier? _hd2414224780_)
                              (if (gx#stx-eq? '%#quote _hd2414224780_)
                                  (if (gx#stx-pair? _tl2414324782_)
                                      (let ((_e2414424785_
                                             (gx#stx-e _tl2414324782_)))
                                        (let ((_tl2414624790_
                                               (##cdr _e2414424785_))
                                              (_hd2414524788_
                                               (##car _e2414424785_)))
                                          (if (gx#stx-null? _tl2414624790_)
                                              (if (gx#stx-pair? _tl2414024774_)
                                                  (let ((_e2414724793_
                                                         (gx#stx-e
                                                          _tl2414024774_)))
                                                    (let ((_tl2414924798_
                                                           (##cdr _e2414724793_))
                                                          (_hd2414824796_
                                                           (##car _e2414724793_)))
                                                      (if (gx#stx-pair?
                                                           _hd2414824796_)
                                                          (let ((_e2415024801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2414824796_)))
                    (let ((_tl2415224806_ (##cdr _e2415024801_))
                          (_hd2415124804_ (##car _e2415024801_)))
                      (if (gx#identifier? _hd2415124804_)
                          (if (gx#stx-eq? '%#ref _hd2415124804_)
                              (if (gx#stx-pair? _tl2415224806_)
                                  (let ((_e2415324809_
                                         (gx#stx-e _tl2415224806_)))
                                    (let ((_tl2415524814_
                                           (##cdr _e2415324809_))
                                          (_hd2415424812_
                                           (##car _e2415324809_)))
                                      (if (gx#stx-null? _tl2415524814_)
                                          (if (gx#stx-pair? _tl2414924798_)
                                              (let ((_e2415624817_
                                                     (gx#stx-e
                                                      _tl2414924798_)))
                                                (let ((_tl2415824822_
                                                       (##cdr _e2415624817_))
                                                      (_hd2415724820_
                                                       (##car _e2415624817_)))
                                                  (if (gx#stx-pair?
                                                       _hd2415724820_)
                                                      (let ((_e2415924825_
                                                             (gx#stx-e
                                                              _hd2415724820_)))
                                                        (let ((_tl2416124830_
                                                               (##cdr _e2415924825_))
                                                              (_hd2416024828_
                                                               (##car _e2415924825_)))
                                                          (if (gx#identifier?
                                                               _hd2416024828_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2416024828_)
                          (if (gx#stx-pair? _tl2416124830_)
                              (let ((_e2416224833_ (gx#stx-e _tl2416124830_)))
                                (let ((_tl2416424838_ (##cdr _e2416224833_))
                                      (_hd2416324836_ (##car _e2416224833_)))
                                  (if (gx#stx-null? _tl2416424838_)
                                      (if (gx#stx-null? _tl2415824822_)
                                          (if (gx#stx-null? _tl2411624710_)
                                              (___match2697626977_
                                               _e2409924906_
                                               _hd2410024909_
                                               _tl2410124911_
                                               _e2411124697_
                                               _hd2411224700_
                                               _tl2411324702_
                                               _e2411424705_
                                               _hd2411524708_
                                               _tl2411624710_
                                               _e2411724713_
                                               _hd2411824716_
                                               _tl2411924718_
                                               _e2412024721_
                                               _hd2412124724_
                                               _tl2412224726_
                                               _e2412324729_
                                               _hd2412424732_
                                               _tl2412524734_
                                               _e2412624737_
                                               _hd2412724740_
                                               _tl2412824742_
                                               _e2412924745_
                                               _hd2413024748_
                                               _tl2413124750_
                                               _e2413224753_
                                               _hd2413324756_
                                               _tl2413424758_
                                               _e2413524761_
                                               _hd2413624764_
                                               _tl2413724766_
                                               _e2413824769_
                                               _hd2413924772_
                                               _tl2414024774_
                                               _e2414124777_
                                               _hd2414224780_
                                               _tl2414324782_
                                               _e2414424785_
                                               _hd2414524788_
                                               _tl2414624790_
                                               _e2414724793_
                                               _hd2414824796_
                                               _tl2414924798_
                                               _e2415024801_
                                               _hd2415124804_
                                               _tl2415224806_
                                               _e2415324809_
                                               _hd2415424812_
                                               _tl2415524814_
                                               _e2415624817_
                                               _hd2415724820_
                                               _tl2415824822_
                                               _e2415924825_
                                               _hd2416024828_
                                               _tl2416124830_
                                               _e2416224833_
                                               _hd2416324836_
                                               _tl2416424838_)
                                              (if (gx#stx-pair? _hd2411224700_)
                                                  (let ((_e2418124312_
                                                         (gx#stx-e
                                                          _hd2411224700_)))
                                                    (let ((_tl2418324317_
                                                           (##cdr _e2418124312_))
                                                          (_hd2418224315_
                                                           (##car _e2418124312_)))
                                                      (___kont2666926670_)))
                                                  (___kont2666926670_)))
                                          (if (gx#stx-pair? _hd2411224700_)
                                              (let ((_e2418124312_
                                                     (gx#stx-e
                                                      _hd2411224700_)))
                                                (let ((_tl2418324317_
                                                       (##cdr _e2418124312_))
                                                      (_hd2418224315_
                                                       (##car _e2418124312_)))
                                                  (___kont2666926670_)))
                                              (___kont2666926670_)))
                                      (if (gx#stx-pair? _hd2411224700_)
                                          (let ((_e2418124312_
                                                 (gx#stx-e _hd2411224700_)))
                                            (let ((_tl2418324317_
                                                   (##cdr _e2418124312_))
                                                  (_hd2418224315_
                                                   (##car _e2418124312_)))
                                              (___kont2666926670_)))
                                          (___kont2666926670_)))))
                              (if (gx#stx-pair? _hd2411224700_)
                                  (let ((_e2418124312_
                                         (gx#stx-e _hd2411224700_)))
                                    (let ((_tl2418324317_
                                           (##cdr _e2418124312_))
                                          (_hd2418224315_
                                           (##car _e2418124312_)))
                                      (___kont2666926670_)))
                                  (___kont2666926670_)))
                          (if (gx#stx-pair? _hd2411224700_)
                              (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                                (let ((_tl2418324317_ (##cdr _e2418124312_))
                                      (_hd2418224315_ (##car _e2418124312_)))
                                  (___kont2666926670_)))
                              (___kont2666926670_)))
                      (if (gx#stx-pair? _hd2411224700_)
                          (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                            (let ((_tl2418324317_ (##cdr _e2418124312_))
                                  (_hd2418224315_ (##car _e2418124312_)))
                              (___kont2666926670_)))
                          (___kont2666926670_)))))
              (if (gx#stx-pair? _hd2411224700_)
                  (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                    (let ((_tl2418324317_ (##cdr _e2418124312_))
                          (_hd2418224315_ (##car _e2418124312_)))
                      (___kont2666926670_)))
                  (___kont2666926670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2411224700_)
                                                  (let ((_e2418124312_
                                                         (gx#stx-e
                                                          _hd2411224700_)))
                                                    (let ((_tl2418324317_
                                                           (##cdr _e2418124312_))
                                                          (_hd2418224315_
                                                           (##car _e2418124312_)))
                                                      (___kont2666926670_)))
                                                  (___kont2666926670_)))
                                          (if (gx#stx-pair? _hd2411224700_)
                                              (let ((_e2418124312_
                                                     (gx#stx-e
                                                      _hd2411224700_)))
                                                (let ((_tl2418324317_
                                                       (##cdr _e2418124312_))
                                                      (_hd2418224315_
                                                       (##car _e2418124312_)))
                                                  (___kont2666926670_)))
                                              (___kont2666926670_)))))
                                  (if (gx#stx-pair? _hd2411224700_)
                                      (let ((_e2418124312_
                                             (gx#stx-e _hd2411224700_)))
                                        (let ((_tl2418324317_
                                               (##cdr _e2418124312_))
                                              (_hd2418224315_
                                               (##car _e2418124312_)))
                                          (___kont2666926670_)))
                                      (___kont2666926670_)))
                              (if (gx#stx-pair? _hd2411224700_)
                                  (let ((_e2418124312_
                                         (gx#stx-e _hd2411224700_)))
                                    (let ((_tl2418324317_
                                           (##cdr _e2418124312_))
                                          (_hd2418224315_
                                           (##car _e2418124312_)))
                                      (___kont2666926670_)))
                                  (___kont2666926670_)))
                          (if (gx#stx-pair? _hd2411224700_)
                              (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                                (let ((_tl2418324317_ (##cdr _e2418124312_))
                                      (_hd2418224315_ (##car _e2418124312_)))
                                  (___kont2666926670_)))
                              (___kont2666926670_)))))
                  (if (gx#stx-pair? _hd2411224700_)
                      (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                        (let ((_tl2418324317_ (##cdr _e2418124312_))
                              (_hd2418224315_ (##car _e2418124312_)))
                          (___kont2666926670_)))
                      (___kont2666926670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _hd2411224700_)
                                                      (let ((_e2418124312_
                                                             (gx#stx-e
                                                              _hd2411224700_)))
                                                        (let ((_tl2418324317_
                                                               (##cdr _e2418124312_))
                                                              (_hd2418224315_
                                                               (##car _e2418124312_)))
                                                          (___kont2666926670_)))
                                                      (___kont2666926670_)))
                                              (if (gx#stx-pair? _hd2411224700_)
                                                  (let ((_e2418124312_
                                                         (gx#stx-e
                                                          _hd2411224700_)))
                                                    (let ((_tl2418324317_
                                                           (##cdr _e2418124312_))
                                                          (_hd2418224315_
                                                           (##car _e2418124312_)))
                                                      (___kont2666926670_)))
                                                  (___kont2666926670_)))))
                                      (if (gx#stx-pair? _hd2411224700_)
                                          (let ((_e2418124312_
                                                 (gx#stx-e _hd2411224700_)))
                                            (let ((_tl2418324317_
                                                   (##cdr _e2418124312_))
                                                  (_hd2418224315_
                                                   (##car _e2418124312_)))
                                              (___kont2666926670_)))
                                          (___kont2666926670_)))
                                  (if (gx#stx-pair? _hd2411224700_)
                                      (let ((_e2418124312_
                                             (gx#stx-e _hd2411224700_)))
                                        (let ((_tl2418324317_
                                               (##cdr _e2418124312_))
                                              (_hd2418224315_
                                               (##car _e2418124312_)))
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2414224780_)
                                              (if (gx#stx-pair? _tl2414324782_)
                                                  (let ((_e2421424400_
                                                         (gx#stx-e
                                                          _tl2414324782_)))
                                                    (let ((_tl2421624405_
                                                           (##cdr _e2421424400_))
                                                          (_hd2421524403_
                                                           (##car _e2421424400_)))
                                                      (if (gx#stx-null?
                                                           _tl2421624405_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2414024774_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl2414024774_)
                                '1)
                          (let ((___splice2666726668_
                                 (gx#syntax-split-splice _tl2414024774_ '1)))
                            (let ((_tl2421924410_
                                   (##vector-ref ___splice2666726668_ '1))
                                  (_target2421724408_
                                   (##vector-ref ___splice2666726668_ '0)))
                              (if (gx#stx-pair? _tl2421924410_)
                                  (let ((_e2423224413_
                                         (gx#stx-e _tl2421924410_)))
                                    (let ((_tl2423424418_
                                           (##cdr _e2423224413_))
                                          (_hd2423324416_
                                           (##car _e2423224413_)))
                                      (if (gx#stx-pair? _hd2423324416_)
                                          (let ((_e2423524421_
                                                 (gx#stx-e _hd2423324416_)))
                                            (let ((_tl2423724426_
                                                   (##cdr _e2423524421_))
                                                  (_hd2423624424_
                                                   (##car _e2423524421_)))
                                              (if (gx#identifier?
                                                   _hd2423624424_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2423624424_)
                                                      (if (gx#stx-pair?
                                                           _tl2423724426_)
                                                          (let ((_e2423824429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2423724426_)))
                    (let ((_tl2424024434_ (##cdr _e2423824429_))
                          (_hd2423924432_ (##car _e2423824429_)))
                      (if (gx#stx-null? _tl2424024434_)
                          (if (gx#stx-null? _tl2423424418_)
                              (___match2711627117_
                               _e2409924906_
                               _hd2410024909_
                               _tl2410124911_
                               _e2411124697_
                               _hd2411224700_
                               _tl2411324702_
                               _e2418124312_
                               _hd2418224315_
                               _tl2418324317_
                               _e2411424705_
                               _hd2411524708_
                               _tl2411624710_
                               _e2411724713_
                               _hd2411824716_
                               _tl2411924718_
                               _e2412024721_
                               _hd2412124724_
                               _tl2412224726_
                               _e2412324729_
                               _hd2412424732_
                               _tl2412524734_
                               _e2412624737_
                               _hd2412724740_
                               _tl2412824742_
                               _e2412924745_
                               _hd2413024748_
                               _tl2413124750_
                               _e2413224753_
                               _hd2413324756_
                               _tl2413424758_
                               _e2413524761_
                               _hd2413624764_
                               _tl2413724766_
                               _e2413824769_
                               _hd2413924772_
                               _tl2414024774_
                               _e2414124777_
                               _hd2414224780_
                               _tl2414324782_
                               _e2421424400_
                               _hd2421524403_
                               _tl2421624405_
                               ___splice2666726668_
                               _target2421724408_
                               _tl2421924410_
                               _e2423224413_
                               _hd2423324416_
                               _tl2423424418_
                               _e2423524421_
                               _hd2423624424_
                               _tl2423724426_
                               _e2423824429_
                               _hd2423924432_
                               _tl2424024434_)
                              (___kont2666926670_))
                          (___kont2666926670_))))
                  (___kont2666926670_))
              (___kont2666926670_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2666926670_))))
                                          (___kont2666926670_))))
                                  (___kont2666926670_))))
                          (___kont2666926670_))
                      (___kont2666926670_))
                  (___kont2666926670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2666926670_))
                                              (___kont2666926670_))))
                                      (___kont2666926670_)))
                              (if (gx#stx-pair? _hd2411224700_)
                                  (let ((_e2418124312_
                                         (gx#stx-e _hd2411224700_)))
                                    (let ((_tl2418324317_
                                           (##cdr _e2418124312_))
                                          (_hd2418224315_
                                           (##car _e2418124312_)))
                                      (___kont2666926670_)))
                                  (___kont2666926670_)))))
                      (if (gx#stx-pair? _hd2411224700_)
                          (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                            (let ((_tl2418324317_ (##cdr _e2418124312_))
                                  (_hd2418224315_ (##car _e2418124312_)))
                              (___kont2666926670_)))
                          (___kont2666926670_)))))
              (if (gx#stx-pair? _hd2411224700_)
                  (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                    (let ((_tl2418324317_ (##cdr _e2418124312_))
                          (_hd2418224315_ (##car _e2418124312_)))
                      (___kont2666926670_)))
                  (___kont2666926670_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _hd2411224700_)
                                                      (let ((_e2418124312_
                                                             (gx#stx-e
                                                              _hd2411224700_)))
                                                        (let ((_tl2418324317_
                                                               (##cdr _e2418124312_))
                                                              (_hd2418224315_
                                                               (##car _e2418124312_)))
                                                          (___kont2666926670_)))
                                                      (___kont2666926670_)))))
                                          (if (gx#stx-pair? _hd2411224700_)
                                              (let ((_e2418124312_
                                                     (gx#stx-e
                                                      _hd2411224700_)))
                                                (let ((_tl2418324317_
                                                       (##cdr _e2418124312_))
                                                      (_hd2418224315_
                                                       (##car _e2418124312_)))
                                                  (___kont2666926670_)))
                                              (___kont2666926670_)))
                                      (if (gx#stx-pair? _hd2411224700_)
                                          (let ((_e2418124312_
                                                 (gx#stx-e _hd2411224700_)))
                                            (let ((_tl2418324317_
                                                   (##cdr _e2418124312_))
                                                  (_hd2418224315_
                                                   (##car _e2418124312_)))
                                              (___kont2666926670_)))
                                          (___kont2666926670_)))
                                  (if (gx#stx-pair? _hd2411224700_)
                                      (let ((_e2418124312_
                                             (gx#stx-e _hd2411224700_)))
                                        (let ((_tl2418324317_
                                               (##cdr _e2418124312_))
                                              (_hd2418224315_
                                               (##car _e2418124312_)))
                                          (___kont2666926670_)))
                                      (___kont2666926670_)))))
                          (if (gx#stx-pair? _hd2411224700_)
                              (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                                (let ((_tl2418324317_ (##cdr _e2418124312_))
                                      (_hd2418224315_ (##car _e2418124312_)))
                                  (___kont2666926670_)))
                              (___kont2666926670_)))))
                  (if (gx#stx-pair? _hd2411224700_)
                      (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                        (let ((_tl2418324317_ (##cdr _e2418124312_))
                              (_hd2418224315_ (##car _e2418124312_)))
                          (___kont2666926670_)))
                      (___kont2666926670_)))
              (if (gx#stx-pair? _hd2411224700_)
                  (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                    (let ((_tl2418324317_ (##cdr _e2418124312_))
                          (_hd2418224315_ (##car _e2418124312_)))
                      (___kont2666926670_)))
                  (___kont2666926670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2411224700_)
                                                  (let ((_e2418124312_
                                                         (gx#stx-e
                                                          _hd2411224700_)))
                                                    (let ((_tl2418324317_
                                                           (##cdr _e2418124312_))
                                                          (_hd2418224315_
                                                           (##car _e2418124312_)))
                                                      (___kont2666926670_)))
                                                  (___kont2666926670_)))
                                          (if (gx#stx-pair? _hd2411224700_)
                                              (let ((_e2418124312_
                                                     (gx#stx-e
                                                      _hd2411224700_)))
                                                (let ((_tl2418324317_
                                                       (##cdr _e2418124312_))
                                                      (_hd2418224315_
                                                       (##car _e2418124312_)))
                                                  (___kont2666926670_)))
                                              (___kont2666926670_)))
                                      (if (gx#stx-pair? _hd2411224700_)
                                          (let ((_e2418124312_
                                                 (gx#stx-e _hd2411224700_)))
                                            (let ((_tl2418324317_
                                                   (##cdr _e2418124312_))
                                                  (_hd2418224315_
                                                   (##car _e2418124312_)))
                                              (___kont2666926670_)))
                                          (___kont2666926670_)))))
                              (if (gx#stx-pair? _hd2411224700_)
                                  (let ((_e2418124312_
                                         (gx#stx-e _hd2411224700_)))
                                    (let ((_tl2418324317_
                                           (##cdr _e2418124312_))
                                          (_hd2418224315_
                                           (##car _e2418124312_)))
                                      (___kont2666926670_)))
                                  (___kont2666926670_)))))
                      (if (gx#stx-pair? _hd2411224700_)
                          (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                            (let ((_tl2418324317_ (##cdr _e2418124312_))
                                  (_hd2418224315_ (##car _e2418124312_)))
                              (___kont2666926670_)))
                          (___kont2666926670_)))
                  (if (gx#stx-pair? _hd2411224700_)
                      (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                        (let ((_tl2418324317_ (##cdr _e2418124312_))
                              (_hd2418224315_ (##car _e2418124312_)))
                          (___kont2666926670_)))
                      (___kont2666926670_)))
              (if (gx#stx-pair? _hd2411224700_)
                  (let ((_e2418124312_ (gx#stx-e _hd2411224700_)))
                    (let ((_tl2418324317_ (##cdr _e2418124312_))
                          (_hd2418224315_ (##car _e2418124312_)))
                      (___kont2666926670_)))
                  (___kont2666926670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2411224700_)
                                                  (let ((_e2418124312_
                                                         (gx#stx-e
                                                          _hd2411224700_)))
                                                    (let ((_tl2418324317_
                                                           (##cdr _e2418124312_))
                                                          (_hd2418224315_
                                                           (##car _e2418124312_)))
                                                      (___kont2666926670_)))
                                                  (___kont2666926670_)))))
                                      (if (gx#stx-pair? _hd2411224700_)
                                          (let ((_e2418124312_
                                                 (gx#stx-e _hd2411224700_)))
                                            (let ((_tl2418324317_
                                                   (##cdr _e2418124312_))
                                                  (_hd2418224315_
                                                   (##car _e2418124312_)))
                                              (___kont2666926670_)))
                                          (___kont2666926670_)))))
                              (___kont2666926670_))))))
                 (___match2681826819_
                  (lambda (_e2404424928_
                           _hd2404524931_
                           _tl2404624933_
                           _e2404724936_
                           _hd2404824939_
                           _tl2404924941_
                           ___splice2665726658_
                           _target2405024944_
                           _tl2405224946_)
                    (letrec ((_loop2405324949_
                              (lambda (_hd2405124952_ _arg2405724954_)
                                (if (gx#stx-pair? _hd2405124952_)
                                    (let ((_e2405424957_
                                           (gx#stx-e _hd2405124952_)))
                                      (let ((_lp-tl2405624962_
                                             (##cdr _e2405424957_))
                                            (_lp-hd2405524960_
                                             (##car _e2405424957_)))
                                        (_loop2405324949_
                                         _lp-tl2405624962_
                                         (cons _lp-hd2405524960_
                                               _arg2405724954_))))
                                    (let ((_arg2405824965_
                                           (reverse _arg2405724954_)))
                                      (if (gx#stx-pair? _tl2404924941_)
                                          (let ((_e2405924968_
                                                 (gx#stx-e _tl2404924941_)))
                                            (let ((_tl2406124973_
                                                   (##cdr _e2405924968_))
                                                  (_hd2406024971_
                                                   (##car _e2405924968_)))
                                              (if (gx#stx-pair? _hd2406024971_)
                                                  (let ((_e2406224976_
                                                         (gx#stx-e
                                                          _hd2406024971_)))
                                                    (let ((_tl2406424981_
                                                           (##cdr _e2406224976_))
                                                          (_hd2406324979_
                                                           (##car _e2406224976_)))
                                                      (if (gx#identifier?
                                                           _hd2406324979_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2406324979_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2406424981_)
                          (let ((_e2406524984_ (gx#stx-e _tl2406424981_)))
                            (let ((_tl2406724989_ (##cdr _e2406524984_))
                                  (_hd2406624987_ (##car _e2406524984_)))
                              (if (gx#stx-pair? _hd2406624987_)
                                  (let ((_e2406824992_
                                         (gx#stx-e _hd2406624987_)))
                                    (let ((_tl2407024997_
                                           (##cdr _e2406824992_))
                                          (_hd2406924995_
                                           (##car _e2406824992_)))
                                      (if (gx#identifier? _hd2406924995_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2406924995_)
                                              (if (gx#stx-pair? _tl2407024997_)
                                                  (let ((_e2407125000_
                                                         (gx#stx-e
                                                          _tl2407024997_)))
                                                    (let ((_tl2407325005_
                                                           (##cdr _e2407125000_))
                                                          (_hd2407225003_
                                                           (##car _e2407125000_)))
                                                      (if (gx#stx-null?
                                                           _tl2407325005_)
                                                          (if (gx#stx-pair?
                                                               _tl2406724989_)
                                                              (let ((_e2407425008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2406724989_)))
                        (let ((_tl2407625013_ (##cdr _e2407425008_))
                              (_hd2407525011_ (##car _e2407425008_)))
                          (if (gx#stx-pair? _hd2407525011_)
                              (let ((_e2407725016_ (gx#stx-e _hd2407525011_)))
                                (let ((_tl2407925021_ (##cdr _e2407725016_))
                                      (_hd2407825019_ (##car _e2407725016_)))
                                  (if (gx#identifier? _hd2407825019_)
                                      (if (gx#stx-eq? '%#ref _hd2407825019_)
                                          (if (gx#stx-pair? _tl2407925021_)
                                              (let ((_e2408025024_
                                                     (gx#stx-e
                                                      _tl2407925021_)))
                                                (let ((_tl2408225029_
                                                       (##cdr _e2408025024_))
                                                      (_hd2408125027_
                                                       (##car _e2408025024_)))
                                                  (if (gx#stx-null?
                                                       _tl2408225029_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2407625013_)
                                                          (let ((___splice2665926660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2407625013_ '0)))
                    (let ((_tl2408525034_
                           (##vector-ref ___splice2665926660_ '1))
                          (_target2408325032_
                           (##vector-ref ___splice2665926660_ '0)))
                      (if (gx#stx-null? _tl2408525034_)
                          (letrec ((_loop2408625037_
                                    (lambda (_hd2408425040_ _xarg2409025042_)
                                      (if (gx#stx-pair? _hd2408425040_)
                                          (let ((_e2408725045_
                                                 (gx#stx-e _hd2408425040_)))
                                            (let ((_lp-tl2408925050_
                                                   (##cdr _e2408725045_))
                                                  (_lp-hd2408825048_
                                                   (##car _e2408725045_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2408825048_)
                                                  (let ((_e2409225053_
                                                         (gx#stx-e
                                                          _lp-hd2408825048_)))
                                                    (let ((_tl2409425058_
                                                           (##cdr _e2409225053_))
                                                          (_hd2409325056_
                                                           (##car _e2409225053_)))
                                                      (if (gx#identifier?
                                                           _hd2409325056_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2409325056_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2409425058_)
                          (let ((_e2409525061_ (gx#stx-e _tl2409425058_)))
                            (let ((_tl2409725066_ (##cdr _e2409525061_))
                                  (_hd2409625064_ (##car _e2409525061_)))
                              (if (gx#stx-null? _tl2409725066_)
                                  (_loop2408625037_
                                   _lp-tl2408925050_
                                   (cons _hd2409625064_ _xarg2409025042_))
                                  (___match2682426825_
                                   _e2404424928_
                                   _hd2404524931_
                                   _tl2404624933_))))
                          (___match2682426825_
                           _e2404424928_
                           _hd2404524931_
                           _tl2404624933_))
                      (___match2682426825_
                       _e2404424928_
                       _hd2404524931_
                       _tl2404624933_))
                  (___match2682426825_
                   _e2404424928_
                   _hd2404524931_
                   _tl2404624933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2682426825_
                                                   _e2404424928_
                                                   _hd2404524931_
                                                   _tl2404624933_))))
                                          (let ((_xarg2409125069_
                                                 (reverse _xarg2409025042_)))
                                            (if (gx#stx-null? _tl2406124973_)
                                                (let ((_L25072_
                                                       _xarg2409125069_)
                                                      (_L25073_ _hd2408125027_)
                                                      (_L25074_ _hd2407225003_)
                                                      (_L25075_
                                                       _arg2405824965_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2511225115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2511325117_)
                               (cons _g2511225115_ _g2511325117_))
                             '()
                             _L25075_)))
                  (if (gxc#runtime-identifier=? _L25074_ 'make-struct-instance)
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2511925122_
                                                          _g2512025124_)
                                                   (cons _g2511925122_
                                                         _g2512025124_))
                                                 '()
                                                 _L25075_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2512625129_
                                                          _g2512725131_)
                                                   (cons _g2512625129_
                                                         _g2512725131_))
                                                 '()
                                                 _L25072_))))
                          (andmap2 gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2513325136_
                                                      _g2513425138_)
                                               (cons _g2513325136_
                                                     _g2513425138_))
                                             '()
                                             _L25075_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2514025143_
                                                      _g2514125145_)
                                               (cons _g2514025143_
                                                     _g2514125145_))
                                             '()
                                             _L25072_)))
                          '#f)
                      '#f)
                  '#f)
              (___kont2665526656_ _L25072_ _L25073_ _L25074_ _L25075_)
              (___match2682426825_
               _e2404424928_
               _hd2404524931_
               _tl2404624933_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2682426825_
                                                 _e2404424928_
                                                 _hd2404524931_
                                                 _tl2404624933_)))))))
                            (_loop2408625037_ _target2408325032_ '()))
                          (___match2682426825_
                           _e2404424928_
                           _hd2404524931_
                           _tl2404624933_))))
                  (___match2682426825_
                   _e2404424928_
                   _hd2404524931_
                   _tl2404624933_))
              (___match2682426825_
               _e2404424928_
               _hd2404524931_
               _tl2404624933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2682426825_
                                               _e2404424928_
                                               _hd2404524931_
                                               _tl2404624933_))
                                          (___match2682426825_
                                           _e2404424928_
                                           _hd2404524931_
                                           _tl2404624933_))
                                      (___match2682426825_
                                       _e2404424928_
                                       _hd2404524931_
                                       _tl2404624933_))))
                              (___match2682426825_
                               _e2404424928_
                               _hd2404524931_
                               _tl2404624933_))))
                      (___match2682426825_
                       _e2404424928_
                       _hd2404524931_
                       _tl2404624933_))
                  (___match2682426825_
                   _e2404424928_
                   _hd2404524931_
                   _tl2404624933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2682426825_
                                                   _e2404424928_
                                                   _hd2404524931_
                                                   _tl2404624933_))
                                              (___match2682426825_
                                               _e2404424928_
                                               _hd2404524931_
                                               _tl2404624933_))
                                          (___match2682426825_
                                           _e2404424928_
                                           _hd2404524931_
                                           _tl2404624933_))))
                                  (___match2682426825_
                                   _e2404424928_
                                   _hd2404524931_
                                   _tl2404624933_))))
                          (___match2682426825_
                           _e2404424928_
                           _hd2404524931_
                           _tl2404624933_))
                      (___match2682426825_
                       _e2404424928_
                       _hd2404524931_
                       _tl2404624933_))
                  (___match2682426825_
                   _e2404424928_
                   _hd2404524931_
                   _tl2404624933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2682426825_
                                                   _e2404424928_
                                                   _hd2404524931_
                                                   _tl2404624933_))))
                                          (___match2682426825_
                                           _e2404424928_
                                           _hd2404524931_
                                           _tl2404624933_)))))))
                      (_loop2405324949_ _target2405024944_ '()))))
                 (___match2679826799_
                  (lambda (_e2399225158_
                           _hd2399325161_
                           _tl2399425163_
                           _e2399525166_
                           _hd2399625169_
                           _tl2399725171_
                           _e2399825174_
                           _hd2399925177_
                           _tl2400025179_
                           _e2400125182_
                           _hd2400225185_
                           _tl2400325187_
                           _e2400425190_
                           _hd2400525193_
                           _tl2400625195_
                           _e2400725198_
                           _hd2400825201_
                           _tl2400925203_
                           _e2401025206_
                           _hd2401125209_
                           _tl2401225211_
                           _e2401325214_
                           _hd2401425217_
                           _tl2401525219_
                           _e2401625222_
                           _hd2401725225_
                           _tl2401825227_
                           _e2401925230_
                           _hd2402025233_
                           _tl2402125235_
                           _e2402225238_
                           _hd2402325241_
                           _tl2402425243_
                           _e2402525246_
                           _hd2402625249_
                           _tl2402725251_
                           _e2402825254_
                           _hd2402925257_
                           _tl2403025259_
                           _e2403125262_
                           _hd2403225265_
                           _tl2403325267_
                           _e2403425270_
                           _hd2403525273_
                           _tl2403625275_
                           _e2403725278_
                           _hd2403825281_
                           _tl2403925283_)
                    (let ((_L25286_ _hd2403825281_)
                          (_L25287_ _hd2402925257_)
                          (_L25288_ _hd2402025233_)
                          (_L25289_ _hd2401125209_)
                          (_L25290_ _hd2399625169_))
                      (if (if (gx#identifier? _L25290_)
                              (if (gxc#runtime-identifier=? _L25289_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L25288_
                                       'make-struct-instance)
                                      (gx#free-identifier=? _L25290_ _L25286_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2665326654_
                           _L25286_
                           _L25287_
                           _L25288_
                           _L25289_
                           _L25290_)
                          (if (gx#stx-pair/null? _hd2399625169_)
                              (let ((___splice2665726658_
                                     (gx#syntax-split-splice
                                      _hd2399625169_
                                      '0)))
                                (let ((_tl2405224946_
                                       (##vector-ref ___splice2665726658_ '1))
                                      (_target2405024944_
                                       (##vector-ref ___splice2665726658_ '0)))
                                  (if (gx#stx-null? _tl2405224946_)
                                      (___match2681826819_
                                       _e2399225158_
                                       _hd2399325161_
                                       _tl2399425163_
                                       _e2399525166_
                                       _hd2399625169_
                                       _tl2399725171_
                                       ___splice2665726658_
                                       _target2405024944_
                                       _tl2405224946_)
                                      (___match2682426825_
                                       _e2399225158_
                                       _hd2399325161_
                                       _tl2399425163_))))
                              (___match2682426825_
                               _e2399225158_
                               _hd2399325161_
                               _tl2399425163_)))))))
            (if (gx#stx-pair? ___stx2665126652_)
                (let ((_e2399225158_ (gx#stx-e ___stx2665126652_)))
                  (let ((_tl2399425163_ (##cdr _e2399225158_))
                        (_hd2399325161_ (##car _e2399225158_)))
                    (if (gx#stx-pair? _tl2399425163_)
                        (let ((_e2399525166_ (gx#stx-e _tl2399425163_)))
                          (let ((_tl2399725171_ (##cdr _e2399525166_))
                                (_hd2399625169_ (##car _e2399525166_)))
                            (if (gx#stx-pair? _tl2399725171_)
                                (let ((_e2399825174_
                                       (gx#stx-e _tl2399725171_)))
                                  (let ((_tl2400025179_ (##cdr _e2399825174_))
                                        (_hd2399925177_ (##car _e2399825174_)))
                                    (if (gx#stx-pair? _hd2399925177_)
                                        (let ((_e2400125182_
                                               (gx#stx-e _hd2399925177_)))
                                          (let ((_tl2400325187_
                                                 (##cdr _e2400125182_))
                                                (_hd2400225185_
                                                 (##car _e2400125182_)))
                                            (if (gx#identifier? _hd2400225185_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2400225185_)
                                                    (if (gx#stx-pair?
                                                         _tl2400325187_)
                                                        (let ((_e2400425190_
                                                               (gx#stx-e
                                                                _tl2400325187_)))
                                                          (let ((_tl2400625195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2400425190_))
                        (_hd2400525193_ (##car _e2400425190_)))
                    (if (gx#stx-pair? _hd2400525193_)
                        (let ((_e2400725198_ (gx#stx-e _hd2400525193_)))
                          (let ((_tl2400925203_ (##cdr _e2400725198_))
                                (_hd2400825201_ (##car _e2400725198_)))
                            (if (gx#identifier? _hd2400825201_)
                                (if (gx#stx-eq? '%#ref _hd2400825201_)
                                    (if (gx#stx-pair? _tl2400925203_)
                                        (let ((_e2401025206_
                                               (gx#stx-e _tl2400925203_)))
                                          (let ((_tl2401225211_
                                                 (##cdr _e2401025206_))
                                                (_hd2401125209_
                                                 (##car _e2401025206_)))
                                            (if (gx#stx-null? _tl2401225211_)
                                                (if (gx#stx-pair?
                                                     _tl2400625195_)
                                                    (let ((_e2401325214_
                                                           (gx#stx-e
                                                            _tl2400625195_)))
                                                      (let ((_tl2401525219_
                                                             (##cdr _e2401325214_))
                                                            (_hd2401425217_
                                                             (##car _e2401325214_)))
                                                        (if (gx#stx-pair?
                                                             _hd2401425217_)
                                                            (let ((_e2401625222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2401425217_)))
                      (let ((_tl2401825227_ (##cdr _e2401625222_))
                            (_hd2401725225_ (##car _e2401625222_)))
                        (if (gx#identifier? _hd2401725225_)
                            (if (gx#stx-eq? '%#ref _hd2401725225_)
                                (if (gx#stx-pair? _tl2401825227_)
                                    (let ((_e2401925230_
                                           (gx#stx-e _tl2401825227_)))
                                      (let ((_tl2402125235_
                                             (##cdr _e2401925230_))
                                            (_hd2402025233_
                                             (##car _e2401925230_)))
                                        (if (gx#stx-null? _tl2402125235_)
                                            (if (gx#stx-pair? _tl2401525219_)
                                                (let ((_e2402225238_
                                                       (gx#stx-e
                                                        _tl2401525219_)))
                                                  (let ((_tl2402425243_
                                                         (##cdr _e2402225238_))
                                                        (_hd2402325241_
                                                         (##car _e2402225238_)))
                                                    (if (gx#stx-pair?
                                                         _hd2402325241_)
                                                        (let ((_e2402525246_
                                                               (gx#stx-e
                                                                _hd2402325241_)))
                                                          (let ((_tl2402725251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2402525246_))
                        (_hd2402625249_ (##car _e2402525246_)))
                    (if (gx#identifier? _hd2402625249_)
                        (if (gx#stx-eq? '%#ref _hd2402625249_)
                            (if (gx#stx-pair? _tl2402725251_)
                                (let ((_e2402825254_
                                       (gx#stx-e _tl2402725251_)))
                                  (let ((_tl2403025259_ (##cdr _e2402825254_))
                                        (_hd2402925257_ (##car _e2402825254_)))
                                    (if (gx#stx-null? _tl2403025259_)
                                        (if (gx#stx-pair? _tl2402425243_)
                                            (let ((_e2403125262_
                                                   (gx#stx-e _tl2402425243_)))
                                              (let ((_tl2403325267_
                                                     (##cdr _e2403125262_))
                                                    (_hd2403225265_
                                                     (##car _e2403125262_)))
                                                (if (gx#stx-pair?
                                                     _hd2403225265_)
                                                    (let ((_e2403425270_
                                                           (gx#stx-e
                                                            _hd2403225265_)))
                                                      (let ((_tl2403625275_
                                                             (##cdr _e2403425270_))
                                                            (_hd2403525273_
                                                             (##car _e2403425270_)))
                                                        (if (gx#identifier?
                                                             _hd2403525273_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2403525273_)
                        (if (gx#stx-pair? _tl2403625275_)
                            (let ((_e2403725278_ (gx#stx-e _tl2403625275_)))
                              (let ((_tl2403925283_ (##cdr _e2403725278_))
                                    (_hd2403825281_ (##car _e2403725278_)))
                                (if (gx#stx-null? _tl2403925283_)
                                    (if (gx#stx-null? _tl2403325267_)
                                        (if (gx#stx-null? _tl2400025179_)
                                            (___match2679826799_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_
                                             _e2399525166_
                                             _hd2399625169_
                                             _tl2399725171_
                                             _e2399825174_
                                             _hd2399925177_
                                             _tl2400025179_
                                             _e2400125182_
                                             _hd2400225185_
                                             _tl2400325187_
                                             _e2400425190_
                                             _hd2400525193_
                                             _tl2400625195_
                                             _e2400725198_
                                             _hd2400825201_
                                             _tl2400925203_
                                             _e2401025206_
                                             _hd2401125209_
                                             _tl2401225211_
                                             _e2401325214_
                                             _hd2401425217_
                                             _tl2401525219_
                                             _e2401625222_
                                             _hd2401725225_
                                             _tl2401825227_
                                             _e2401925230_
                                             _hd2402025233_
                                             _tl2402125235_
                                             _e2402225238_
                                             _hd2402325241_
                                             _tl2402425243_
                                             _e2402525246_
                                             _hd2402625249_
                                             _tl2402725251_
                                             _e2402825254_
                                             _hd2402925257_
                                             _tl2403025259_
                                             _e2403125262_
                                             _hd2403225265_
                                             _tl2403325267_
                                             _e2403425270_
                                             _hd2403525273_
                                             _tl2403625275_
                                             _e2403725278_
                                             _hd2403825281_
                                             _tl2403925283_)
                                            (if (gx#stx-pair/null?
                                                 _hd2399625169_)
                                                (let ((___splice2665726658_
                                                       (gx#syntax-split-splice
                                                        _hd2399625169_
                                                        '0)))
                                                  (let ((_tl2405224946_
                                                         (##vector-ref
                                                          ___splice2665726658_
                                                          '1))
                                                        (_target2405024944_
                                                         (##vector-ref
                                                          ___splice2665726658_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2405224946_)
                                                        (___match2681826819_
                                                         _e2399225158_
                                                         _hd2399325161_
                                                         _tl2399425163_
                                                         _e2399525166_
                                                         _hd2399625169_
                                                         _tl2399725171_
                                                         ___splice2665726658_
                                                         _target2405024944_
                                                         _tl2405224946_)
                                                        (___match2682426825_
                                                         _e2399225158_
                                                         _hd2399325161_
                                                         _tl2399425163_))))
                                                (___match2682426825_
                                                 _e2399225158_
                                                 _hd2399325161_
                                                 _tl2399425163_)))
                                        (if (gx#stx-pair/null? _hd2399625169_)
                                            (let ((___splice2665726658_
                                                   (gx#syntax-split-splice
                                                    _hd2399625169_
                                                    '0)))
                                              (let ((_tl2405224946_
                                                     (##vector-ref
                                                      ___splice2665726658_
                                                      '1))
                                                    (_target2405024944_
                                                     (##vector-ref
                                                      ___splice2665726658_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2405224946_)
                                                    (___match2681826819_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_
                                                     _e2399525166_
                                                     _hd2399625169_
                                                     _tl2399725171_
                                                     ___splice2665726658_
                                                     _target2405024944_
                                                     _tl2405224946_)
                                                    (___match2682426825_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_))))
                                            (___match2682426825_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_)))
                                    (if (gx#stx-pair/null? _hd2399625169_)
                                        (let ((___splice2665726658_
                                               (gx#syntax-split-splice
                                                _hd2399625169_
                                                '0)))
                                          (let ((_tl2405224946_
                                                 (##vector-ref
                                                  ___splice2665726658_
                                                  '1))
                                                (_target2405024944_
                                                 (##vector-ref
                                                  ___splice2665726658_
                                                  '0)))
                                            (if (gx#stx-null? _tl2405224946_)
                                                (___match2681826819_
                                                 _e2399225158_
                                                 _hd2399325161_
                                                 _tl2399425163_
                                                 _e2399525166_
                                                 _hd2399625169_
                                                 _tl2399725171_
                                                 ___splice2665726658_
                                                 _target2405024944_
                                                 _tl2405224946_)
                                                (___match2682426825_
                                                 _e2399225158_
                                                 _hd2399325161_
                                                 _tl2399425163_))))
                                        (___match2682426825_
                                         _e2399225158_
                                         _hd2399325161_
                                         _tl2399425163_)))))
                            (if (gx#stx-pair/null? _hd2399625169_)
                                (let ((___splice2665726658_
                                       (gx#syntax-split-splice
                                        _hd2399625169_
                                        '0)))
                                  (let ((_tl2405224946_
                                         (##vector-ref
                                          ___splice2665726658_
                                          '1))
                                        (_target2405024944_
                                         (##vector-ref
                                          ___splice2665726658_
                                          '0)))
                                    (if (gx#stx-null? _tl2405224946_)
                                        (___match2681826819_
                                         _e2399225158_
                                         _hd2399325161_
                                         _tl2399425163_
                                         _e2399525166_
                                         _hd2399625169_
                                         _tl2399725171_
                                         ___splice2665726658_
                                         _target2405024944_
                                         _tl2405224946_)
                                        (___match2682426825_
                                         _e2399225158_
                                         _hd2399325161_
                                         _tl2399425163_))))
                                (___match2682426825_
                                 _e2399225158_
                                 _hd2399325161_
                                 _tl2399425163_)))
                        (if (gx#stx-pair/null? _hd2399625169_)
                            (let ((___splice2665726658_
                                   (gx#syntax-split-splice _hd2399625169_ '0)))
                              (let ((_tl2405224946_
                                     (##vector-ref ___splice2665726658_ '1))
                                    (_target2405024944_
                                     (##vector-ref ___splice2665726658_ '0)))
                                (if (gx#stx-null? _tl2405224946_)
                                    (___match2681826819_
                                     _e2399225158_
                                     _hd2399325161_
                                     _tl2399425163_
                                     _e2399525166_
                                     _hd2399625169_
                                     _tl2399725171_
                                     ___splice2665726658_
                                     _target2405024944_
                                     _tl2405224946_)
                                    (___match2682426825_
                                     _e2399225158_
                                     _hd2399325161_
                                     _tl2399425163_))))
                            (___match2682426825_
                             _e2399225158_
                             _hd2399325161_
                             _tl2399425163_)))
                    (if (gx#stx-pair/null? _hd2399625169_)
                        (let ((___splice2665726658_
                               (gx#syntax-split-splice _hd2399625169_ '0)))
                          (let ((_tl2405224946_
                                 (##vector-ref ___splice2665726658_ '1))
                                (_target2405024944_
                                 (##vector-ref ___splice2665726658_ '0)))
                            (if (gx#stx-null? _tl2405224946_)
                                (___match2681826819_
                                 _e2399225158_
                                 _hd2399325161_
                                 _tl2399425163_
                                 _e2399525166_
                                 _hd2399625169_
                                 _tl2399725171_
                                 ___splice2665726658_
                                 _target2405024944_
                                 _tl2405224946_)
                                (___match2682426825_
                                 _e2399225158_
                                 _hd2399325161_
                                 _tl2399425163_))))
                        (___match2682426825_
                         _e2399225158_
                         _hd2399325161_
                         _tl2399425163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2399625169_)
                                                        (let ((___splice2665726658_
                                                               (gx#syntax-split-splice
                                                                _hd2399625169_
                                                                '0)))
                                                          (let ((_tl2405224946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2665726658_ '1))
                        (_target2405024944_
                         (##vector-ref ___splice2665726658_ '0)))
                    (if (gx#stx-null? _tl2405224946_)
                        (___match2681826819_
                         _e2399225158_
                         _hd2399325161_
                         _tl2399425163_
                         _e2399525166_
                         _hd2399625169_
                         _tl2399725171_
                         ___splice2665726658_
                         _target2405024944_
                         _tl2405224946_)
                        (___match2682426825_
                         _e2399225158_
                         _hd2399325161_
                         _tl2399425163_))))
                (___match2682426825_
                 _e2399225158_
                 _hd2399325161_
                 _tl2399425163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd2399625169_)
                                                (let ((___splice2665726658_
                                                       (gx#syntax-split-splice
                                                        _hd2399625169_
                                                        '0)))
                                                  (let ((_tl2405224946_
                                                         (##vector-ref
                                                          ___splice2665726658_
                                                          '1))
                                                        (_target2405024944_
                                                         (##vector-ref
                                                          ___splice2665726658_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2405224946_)
                                                        (___match2681826819_
                                                         _e2399225158_
                                                         _hd2399325161_
                                                         _tl2399425163_
                                                         _e2399525166_
                                                         _hd2399625169_
                                                         _tl2399725171_
                                                         ___splice2665726658_
                                                         _target2405024944_
                                                         _tl2405224946_)
                                                        (___match2682426825_
                                                         _e2399225158_
                                                         _hd2399325161_
                                                         _tl2399425163_))))
                                                (___match2682426825_
                                                 _e2399225158_
                                                 _hd2399325161_
                                                 _tl2399425163_)))
                                        (if (gx#stx-pair/null? _hd2399625169_)
                                            (let ((___splice2665726658_
                                                   (gx#syntax-split-splice
                                                    _hd2399625169_
                                                    '0)))
                                              (let ((_tl2405224946_
                                                     (##vector-ref
                                                      ___splice2665726658_
                                                      '1))
                                                    (_target2405024944_
                                                     (##vector-ref
                                                      ___splice2665726658_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2405224946_)
                                                    (___match2681826819_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_
                                                     _e2399525166_
                                                     _hd2399625169_
                                                     _tl2399725171_
                                                     ___splice2665726658_
                                                     _target2405024944_
                                                     _tl2405224946_)
                                                    (___match2682426825_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_))))
                                            (___match2682426825_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_)))))
                                (if (gx#stx-pair/null? _hd2399625169_)
                                    (let ((___splice2665726658_
                                           (gx#syntax-split-splice
                                            _hd2399625169_
                                            '0)))
                                      (let ((_tl2405224946_
                                             (##vector-ref
                                              ___splice2665726658_
                                              '1))
                                            (_target2405024944_
                                             (##vector-ref
                                              ___splice2665726658_
                                              '0)))
                                        (if (gx#stx-null? _tl2405224946_)
                                            (___match2681826819_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_
                                             _e2399525166_
                                             _hd2399625169_
                                             _tl2399725171_
                                             ___splice2665726658_
                                             _target2405024944_
                                             _tl2405224946_)
                                            (___match2682426825_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_))))
                                    (___match2682426825_
                                     _e2399225158_
                                     _hd2399325161_
                                     _tl2399425163_)))
                            (if (gx#stx-pair/null? _hd2399625169_)
                                (let ((___splice2665726658_
                                       (gx#syntax-split-splice
                                        _hd2399625169_
                                        '0)))
                                  (let ((_tl2405224946_
                                         (##vector-ref
                                          ___splice2665726658_
                                          '1))
                                        (_target2405024944_
                                         (##vector-ref
                                          ___splice2665726658_
                                          '0)))
                                    (if (gx#stx-null? _tl2405224946_)
                                        (___match2681826819_
                                         _e2399225158_
                                         _hd2399325161_
                                         _tl2399425163_
                                         _e2399525166_
                                         _hd2399625169_
                                         _tl2399725171_
                                         ___splice2665726658_
                                         _target2405024944_
                                         _tl2405224946_)
                                        (___match2682426825_
                                         _e2399225158_
                                         _hd2399325161_
                                         _tl2399425163_))))
                                (___match2682426825_
                                 _e2399225158_
                                 _hd2399325161_
                                 _tl2399425163_)))
                        (if (gx#stx-pair/null? _hd2399625169_)
                            (let ((___splice2665726658_
                                   (gx#syntax-split-splice _hd2399625169_ '0)))
                              (let ((_tl2405224946_
                                     (##vector-ref ___splice2665726658_ '1))
                                    (_target2405024944_
                                     (##vector-ref ___splice2665726658_ '0)))
                                (if (gx#stx-null? _tl2405224946_)
                                    (___match2681826819_
                                     _e2399225158_
                                     _hd2399325161_
                                     _tl2399425163_
                                     _e2399525166_
                                     _hd2399625169_
                                     _tl2399725171_
                                     ___splice2665726658_
                                     _target2405024944_
                                     _tl2405224946_)
                                    (___match2682426825_
                                     _e2399225158_
                                     _hd2399325161_
                                     _tl2399425163_))))
                            (___match2682426825_
                             _e2399225158_
                             _hd2399325161_
                             _tl2399425163_)))))
                (if (gx#stx-pair/null? _hd2399625169_)
                    (let ((___splice2665726658_
                           (gx#syntax-split-splice _hd2399625169_ '0)))
                      (let ((_tl2405224946_
                             (##vector-ref ___splice2665726658_ '1))
                            (_target2405024944_
                             (##vector-ref ___splice2665726658_ '0)))
                        (if (gx#stx-null? _tl2405224946_)
                            (___match2681826819_
                             _e2399225158_
                             _hd2399325161_
                             _tl2399425163_
                             _e2399525166_
                             _hd2399625169_
                             _tl2399725171_
                             ___splice2665726658_
                             _target2405024944_
                             _tl2405224946_)
                            (___match2682426825_
                             _e2399225158_
                             _hd2399325161_
                             _tl2399425163_))))
                    (___match2682426825_
                     _e2399225158_
                     _hd2399325161_
                     _tl2399425163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2399625169_)
                                                    (let ((___splice2665726658_
                                                           (gx#syntax-split-splice
                                                            _hd2399625169_
                                                            '0)))
                                                      (let ((_tl2405224946_
                                                             (##vector-ref
                                                              ___splice2665726658_
                                                              '1))
                                                            (_target2405024944_
                                                             (##vector-ref
                                                              ___splice2665726658_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2405224946_)
                                                            (___match2681826819_
                                                             _e2399225158_
                                                             _hd2399325161_
                                                             _tl2399425163_
                                                             _e2399525166_
                                                             _hd2399625169_
                                                             _tl2399725171_
                                                             ___splice2665726658_
                                                             _target2405024944_
                                                             _tl2405224946_)
                                                            (___match2682426825_
                                                             _e2399225158_
                                                             _hd2399325161_
                                                             _tl2399425163_))))
                                                    (___match2682426825_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_)))
                                            (if (gx#stx-pair/null?
                                                 _hd2399625169_)
                                                (let ((___splice2665726658_
                                                       (gx#syntax-split-splice
                                                        _hd2399625169_
                                                        '0)))
                                                  (let ((_tl2405224946_
                                                         (##vector-ref
                                                          ___splice2665726658_
                                                          '1))
                                                        (_target2405024944_
                                                         (##vector-ref
                                                          ___splice2665726658_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2405224946_)
                                                        (___match2681826819_
                                                         _e2399225158_
                                                         _hd2399325161_
                                                         _tl2399425163_
                                                         _e2399525166_
                                                         _hd2399625169_
                                                         _tl2399725171_
                                                         ___splice2665726658_
                                                         _target2405024944_
                                                         _tl2405224946_)
                                                        (___match2682426825_
                                                         _e2399225158_
                                                         _hd2399325161_
                                                         _tl2399425163_))))
                                                (___match2682426825_
                                                 _e2399225158_
                                                 _hd2399325161_
                                                 _tl2399425163_)))))
                                    (if (gx#stx-pair/null? _hd2399625169_)
                                        (let ((___splice2665726658_
                                               (gx#syntax-split-splice
                                                _hd2399625169_
                                                '0)))
                                          (let ((_tl2405224946_
                                                 (##vector-ref
                                                  ___splice2665726658_
                                                  '1))
                                                (_target2405024944_
                                                 (##vector-ref
                                                  ___splice2665726658_
                                                  '0)))
                                            (if (gx#stx-null? _tl2405224946_)
                                                (___match2681826819_
                                                 _e2399225158_
                                                 _hd2399325161_
                                                 _tl2399425163_
                                                 _e2399525166_
                                                 _hd2399625169_
                                                 _tl2399725171_
                                                 ___splice2665726658_
                                                 _target2405024944_
                                                 _tl2405224946_)
                                                (___match2682426825_
                                                 _e2399225158_
                                                 _hd2399325161_
                                                 _tl2399425163_))))
                                        (___match2682426825_
                                         _e2399225158_
                                         _hd2399325161_
                                         _tl2399425163_)))
                                (if (gx#stx-pair/null? _hd2399625169_)
                                    (let ((___splice2665726658_
                                           (gx#syntax-split-splice
                                            _hd2399625169_
                                            '0)))
                                      (let ((_tl2405224946_
                                             (##vector-ref
                                              ___splice2665726658_
                                              '1))
                                            (_target2405024944_
                                             (##vector-ref
                                              ___splice2665726658_
                                              '0)))
                                        (if (gx#stx-null? _tl2405224946_)
                                            (___match2681826819_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_
                                             _e2399525166_
                                             _hd2399625169_
                                             _tl2399725171_
                                             ___splice2665726658_
                                             _target2405024944_
                                             _tl2405224946_)
                                            (___match2682426825_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_))))
                                    (___match2682426825_
                                     _e2399225158_
                                     _hd2399325161_
                                     _tl2399425163_)))
                            (if (gx#stx-pair/null? _hd2399625169_)
                                (let ((___splice2665726658_
                                       (gx#syntax-split-splice
                                        _hd2399625169_
                                        '0)))
                                  (let ((_tl2405224946_
                                         (##vector-ref
                                          ___splice2665726658_
                                          '1))
                                        (_target2405024944_
                                         (##vector-ref
                                          ___splice2665726658_
                                          '0)))
                                    (if (gx#stx-null? _tl2405224946_)
                                        (___match2681826819_
                                         _e2399225158_
                                         _hd2399325161_
                                         _tl2399425163_
                                         _e2399525166_
                                         _hd2399625169_
                                         _tl2399725171_
                                         ___splice2665726658_
                                         _target2405024944_
                                         _tl2405224946_)
                                        (___match2682426825_
                                         _e2399225158_
                                         _hd2399325161_
                                         _tl2399425163_))))
                                (___match2682426825_
                                 _e2399225158_
                                 _hd2399325161_
                                 _tl2399425163_)))))
                    (if (gx#stx-pair/null? _hd2399625169_)
                        (let ((___splice2665726658_
                               (gx#syntax-split-splice _hd2399625169_ '0)))
                          (let ((_tl2405224946_
                                 (##vector-ref ___splice2665726658_ '1))
                                (_target2405024944_
                                 (##vector-ref ___splice2665726658_ '0)))
                            (if (gx#stx-null? _tl2405224946_)
                                (___match2681826819_
                                 _e2399225158_
                                 _hd2399325161_
                                 _tl2399425163_
                                 _e2399525166_
                                 _hd2399625169_
                                 _tl2399725171_
                                 ___splice2665726658_
                                 _target2405024944_
                                 _tl2405224946_)
                                (___match2682426825_
                                 _e2399225158_
                                 _hd2399325161_
                                 _tl2399425163_))))
                        (___match2682426825_
                         _e2399225158_
                         _hd2399325161_
                         _tl2399425163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2399625169_)
                                                        (let ((___splice2665726658_
                                                               (gx#syntax-split-splice
                                                                _hd2399625169_
                                                                '0)))
                                                          (let ((_tl2405224946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2665726658_ '1))
                        (_target2405024944_
                         (##vector-ref ___splice2665726658_ '0)))
                    (if (gx#stx-null? _tl2405224946_)
                        (___match2681826819_
                         _e2399225158_
                         _hd2399325161_
                         _tl2399425163_
                         _e2399525166_
                         _hd2399625169_
                         _tl2399725171_
                         ___splice2665726658_
                         _target2405024944_
                         _tl2405224946_)
                        (___match2682426825_
                         _e2399225158_
                         _hd2399325161_
                         _tl2399425163_))))
                (___match2682426825_
                 _e2399225158_
                 _hd2399325161_
                 _tl2399425163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2399625169_)
                                                    (let ((___splice2665726658_
                                                           (gx#syntax-split-splice
                                                            _hd2399625169_
                                                            '0)))
                                                      (let ((_tl2405224946_
                                                             (##vector-ref
                                                              ___splice2665726658_
                                                              '1))
                                                            (_target2405024944_
                                                             (##vector-ref
                                                              ___splice2665726658_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2405224946_)
                                                            (___match2681826819_
                                                             _e2399225158_
                                                             _hd2399325161_
                                                             _tl2399425163_
                                                             _e2399525166_
                                                             _hd2399625169_
                                                             _tl2399725171_
                                                             ___splice2665726658_
                                                             _target2405024944_
                                                             _tl2405224946_)
                                                            (___match2682426825_
                                                             _e2399225158_
                                                             _hd2399325161_
                                                             _tl2399425163_))))
                                                    (___match2682426825_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_)))))
                                        (if (gx#stx-pair/null? _hd2399625169_)
                                            (let ((___splice2665726658_
                                                   (gx#syntax-split-splice
                                                    _hd2399625169_
                                                    '0)))
                                              (let ((_tl2405224946_
                                                     (##vector-ref
                                                      ___splice2665726658_
                                                      '1))
                                                    (_target2405024944_
                                                     (##vector-ref
                                                      ___splice2665726658_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2405224946_)
                                                    (___match2681826819_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_
                                                     _e2399525166_
                                                     _hd2399625169_
                                                     _tl2399725171_
                                                     ___splice2665726658_
                                                     _target2405024944_
                                                     _tl2405224946_)
                                                    (___match2682426825_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_))))
                                            (___match2682426825_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_)))
                                    (if (gx#stx-pair/null? _hd2399625169_)
                                        (let ((___splice2665726658_
                                               (gx#syntax-split-splice
                                                _hd2399625169_
                                                '0)))
                                          (let ((_tl2405224946_
                                                 (##vector-ref
                                                  ___splice2665726658_
                                                  '1))
                                                (_target2405024944_
                                                 (##vector-ref
                                                  ___splice2665726658_
                                                  '0)))
                                            (if (gx#stx-null? _tl2405224946_)
                                                (___match2681826819_
                                                 _e2399225158_
                                                 _hd2399325161_
                                                 _tl2399425163_
                                                 _e2399525166_
                                                 _hd2399625169_
                                                 _tl2399725171_
                                                 ___splice2665726658_
                                                 _target2405024944_
                                                 _tl2405224946_)
                                                (___match2682426825_
                                                 _e2399225158_
                                                 _hd2399325161_
                                                 _tl2399425163_))))
                                        (___match2682426825_
                                         _e2399225158_
                                         _hd2399325161_
                                         _tl2399425163_)))
                                (if (gx#stx-pair/null? _hd2399625169_)
                                    (let ((___splice2665726658_
                                           (gx#syntax-split-splice
                                            _hd2399625169_
                                            '0)))
                                      (let ((_tl2405224946_
                                             (##vector-ref
                                              ___splice2665726658_
                                              '1))
                                            (_target2405024944_
                                             (##vector-ref
                                              ___splice2665726658_
                                              '0)))
                                        (if (gx#stx-null? _tl2405224946_)
                                            (___match2681826819_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_
                                             _e2399525166_
                                             _hd2399625169_
                                             _tl2399725171_
                                             ___splice2665726658_
                                             _target2405024944_
                                             _tl2405224946_)
                                            (___match2682426825_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_))))
                                    (___match2682426825_
                                     _e2399225158_
                                     _hd2399325161_
                                     _tl2399425163_)))))
                        (if (gx#stx-pair/null? _hd2399625169_)
                            (let ((___splice2665726658_
                                   (gx#syntax-split-splice _hd2399625169_ '0)))
                              (let ((_tl2405224946_
                                     (##vector-ref ___splice2665726658_ '1))
                                    (_target2405024944_
                                     (##vector-ref ___splice2665726658_ '0)))
                                (if (gx#stx-null? _tl2405224946_)
                                    (___match2681826819_
                                     _e2399225158_
                                     _hd2399325161_
                                     _tl2399425163_
                                     _e2399525166_
                                     _hd2399625169_
                                     _tl2399725171_
                                     ___splice2665726658_
                                     _target2405024944_
                                     _tl2405224946_)
                                    (___match2682426825_
                                     _e2399225158_
                                     _hd2399325161_
                                     _tl2399425163_))))
                            (___match2682426825_
                             _e2399225158_
                             _hd2399325161_
                             _tl2399425163_)))))
                (if (gx#stx-pair/null? _hd2399625169_)
                    (let ((___splice2665726658_
                           (gx#syntax-split-splice _hd2399625169_ '0)))
                      (let ((_tl2405224946_
                             (##vector-ref ___splice2665726658_ '1))
                            (_target2405024944_
                             (##vector-ref ___splice2665726658_ '0)))
                        (if (gx#stx-null? _tl2405224946_)
                            (___match2681826819_
                             _e2399225158_
                             _hd2399325161_
                             _tl2399425163_
                             _e2399525166_
                             _hd2399625169_
                             _tl2399725171_
                             ___splice2665726658_
                             _target2405024944_
                             _tl2405224946_)
                            (___match2682426825_
                             _e2399225158_
                             _hd2399325161_
                             _tl2399425163_))))
                    (___match2682426825_
                     _e2399225158_
                     _hd2399325161_
                     _tl2399425163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2399625169_)
                                                        (let ((___splice2665726658_
                                                               (gx#syntax-split-splice
                                                                _hd2399625169_
                                                                '0)))
                                                          (let ((_tl2405224946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2665726658_ '1))
                        (_target2405024944_
                         (##vector-ref ___splice2665726658_ '0)))
                    (if (gx#stx-null? _tl2405224946_)
                        (___match2681826819_
                         _e2399225158_
                         _hd2399325161_
                         _tl2399425163_
                         _e2399525166_
                         _hd2399625169_
                         _tl2399725171_
                         ___splice2665726658_
                         _target2405024944_
                         _tl2405224946_)
                        (___match2682426825_
                         _e2399225158_
                         _hd2399325161_
                         _tl2399425163_))))
                (___match2682426825_
                 _e2399225158_
                 _hd2399325161_
                 _tl2399425163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2399625169_)
                                                    (let ((___splice2665726658_
                                                           (gx#syntax-split-splice
                                                            _hd2399625169_
                                                            '0)))
                                                      (let ((_tl2405224946_
                                                             (##vector-ref
                                                              ___splice2665726658_
                                                              '1))
                                                            (_target2405024944_
                                                             (##vector-ref
                                                              ___splice2665726658_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2405224946_)
                                                            (___match2681826819_
                                                             _e2399225158_
                                                             _hd2399325161_
                                                             _tl2399425163_
                                                             _e2399525166_
                                                             _hd2399625169_
                                                             _tl2399725171_
                                                             ___splice2665726658_
                                                             _target2405024944_
                                                             _tl2405224946_)
                                                            (___match2682426825_
                                                             _e2399225158_
                                                             _hd2399325161_
                                                             _tl2399425163_))))
                                                    (___match2682426825_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_)))))
                                        (if (gx#stx-pair/null? _hd2399625169_)
                                            (let ((___splice2665726658_
                                                   (gx#syntax-split-splice
                                                    _hd2399625169_
                                                    '0)))
                                              (let ((_tl2405224946_
                                                     (##vector-ref
                                                      ___splice2665726658_
                                                      '1))
                                                    (_target2405024944_
                                                     (##vector-ref
                                                      ___splice2665726658_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2405224946_)
                                                    (___match2681826819_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_
                                                     _e2399525166_
                                                     _hd2399625169_
                                                     _tl2399725171_
                                                     ___splice2665726658_
                                                     _target2405024944_
                                                     _tl2405224946_)
                                                    (___match2682426825_
                                                     _e2399225158_
                                                     _hd2399325161_
                                                     _tl2399425163_))))
                                            (___match2682426825_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_)))))
                                (if (gx#stx-pair/null? _hd2399625169_)
                                    (let ((___splice2665726658_
                                           (gx#syntax-split-splice
                                            _hd2399625169_
                                            '0)))
                                      (let ((_tl2405224946_
                                             (##vector-ref
                                              ___splice2665726658_
                                              '1))
                                            (_target2405024944_
                                             (##vector-ref
                                              ___splice2665726658_
                                              '0)))
                                        (if (gx#stx-null? _tl2405224946_)
                                            (___match2681826819_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_
                                             _e2399525166_
                                             _hd2399625169_
                                             _tl2399725171_
                                             ___splice2665726658_
                                             _target2405024944_
                                             _tl2405224946_)
                                            (___match2682426825_
                                             _e2399225158_
                                             _hd2399325161_
                                             _tl2399425163_))))
                                    (___match2682426825_
                                     _e2399225158_
                                     _hd2399325161_
                                     _tl2399425163_)))))
                        (___match2682426825_
                         _e2399225158_
                         _hd2399325161_
                         _tl2399425163_))))
                (___kont2666926670_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx23924_)
      (letrec ((_clause-e23926_
                (lambda (_form23976_)
                  (let ((__obj28893 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj28893
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form23976_)
                       (gxc#dispatch-lambda-form-delegate _form23976_))
                      __obj28893)))))
        (let* ((___stx2711927120_ _stx23924_)
               (_g2392923939_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2711927120_))))
          (let ((___kont2712127122_
                 (lambda (_L23959_)
                   (let ((_clauses23971_ (map _clause-e23926_ _L23959_)))
                     (##structure
                      gxc#!case-lambda::t
                      'case-lambda
                      _clauses23971_))))
                (___kont2712327124_ (lambda () '#f)))
            (let ((___match2713027131_
                   (lambda (_e2393223951_ _hd2393323954_ _tl2393423956_)
                     (let ((_L23959_ _tl2393423956_))
                       (if (andmap1 gxc#dispatch-lambda-form? _L23959_)
                           (___kont2712127122_ _L23959_)
                           (___kont2712327124_))))))
              (if (gx#stx-pair? ___stx2711927120_)
                  (let ((_e2393223951_ (gx#stx-e ___stx2711927120_)))
                    (let ((_tl2393423956_ (##cdr _e2393223951_))
                          (_hd2393323954_ (##car _e2393223951_)))
                      (___match2713027131_
                       _e2393223951_
                       _hd2393323954_
                       _tl2393423956_)))
                  (___kont2712327124_))))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx23829_)
      (let* ((___stx2713327134_ _stx23829_)
             (_g2383223852_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2713327134_))))
        (let ((___kont2713527136_
               (lambda (_L23896_ _L23897_)
                 (let ((_type-e2391423916_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L23897_)
                         '#f)))
                   (if _type-e2391423916_
                       (let ((_type-e23919_ _type-e2391423916_))
                         (_type-e23919_ _stx23829_ _L23896_))
                       '#f))))
              (___kont2713727138_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2713327134_)
              (let ((_e2383623864_ (gx#stx-e ___stx2713327134_)))
                (let ((_tl2383823869_ (##cdr _e2383623864_))
                      (_hd2383723867_ (##car _e2383623864_)))
                  (if (gx#stx-pair? _tl2383823869_)
                      (let ((_e2383923872_ (gx#stx-e _tl2383823869_)))
                        (let ((_tl2384123877_ (##cdr _e2383923872_))
                              (_hd2384023875_ (##car _e2383923872_)))
                          (if (gx#stx-pair? _hd2384023875_)
                              (let ((_e2384223880_ (gx#stx-e _hd2384023875_)))
                                (let ((_tl2384423885_ (##cdr _e2384223880_))
                                      (_hd2384323883_ (##car _e2384223880_)))
                                  (if (gx#identifier? _hd2384323883_)
                                      (if (gx#stx-eq? '%#ref _hd2384323883_)
                                          (if (gx#stx-pair? _tl2384423885_)
                                              (let ((_e2384523888_
                                                     (gx#stx-e
                                                      _tl2384423885_)))
                                                (let ((_tl2384723893_
                                                       (##cdr _e2384523888_))
                                                      (_hd2384623891_
                                                       (##car _e2384523888_)))
                                                  (if (gx#stx-null?
                                                       _tl2384723893_)
                                                      (___kont2713527136_
                                                       _tl2384123877_
                                                       _hd2384623891_)
                                                      (___kont2713727138_))))
                                              (___kont2713727138_))
                                          (___kont2713727138_))
                                      (___kont2713727138_))))
                              (___kont2713727138_))))
                      (___kont2713727138_))))
              (___kont2713727138_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx23309_ _args23310_)
      (let* ((___stx2717127172_ _args23310_)
             (_g2331423428_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2717127172_))))
        (let ((___kont2717327174_
               (lambda (_L23778_ _L23779_ _L23780_ _L23781_ _L23782_)
                 (let ((__obj28894 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj28894
                      (gx#stx-e _L23782_)
                      '#f
                      (gx#stx-e _L23781_)
                      '0
                      (gx#stx-e _L23778_)
                      (gx#stx-e _L23779_))
                     __obj28894))))
              (___kont2717527176_
               (lambda (_L23568_ _L23569_ _L23570_ _L23571_ _L23572_ _L23573_)
                 (let* ((_super-t23619_
                         (if (gx#stx-e _L23572_)
                             (gxc#identifier-symbol _L23572_)
                             '#f))
                        (_super-type23621_
                         (if _super-t23619_
                             (gxc#optimizer-resolve-type _super-t23619_)
                             '#f)))
                   (begin
                     (if (if _super-type23621_
                             (not (##structure-instance-of?
                                   _super-type23621_
                                   'gxc#!struct-type::t))
                             '#f)
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx23309_
                          _L23572_)
                         '#!void)
                     (let ((_fields23637_ (gx#stx-e _L23571_))
                           (_xfields23638_
                            (if _super-type23621_
                                (let ((_super-fields2362323626_
                                       (##structure-ref
                                        _super-type23621_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2362423628_
                                       (##structure-ref
                                        _super-type23621_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2362323626_
                                      (if _super-xfields2362423628_
                                          (let ((_super-fields23631_
                                                 _super-fields2362323626_)
                                                (_super-xfields23632_
                                                 _super-xfields2362423628_))
                                            (fx+ _super-fields23631_
                                                 _super-xfields23632_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist23639_ (gx#stx-e _L23569_))
                           (_ctor23640_
                            (let ((_$e23634_ (gx#stx-e _L23568_)))
                              (if _$e23634_
                                  (values _$e23634_)
                                  (if _super-type23621_
                                      (##structure-ref
                                       _super-type23621_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t23619_ '#!void '#f))))))
                       (let ((__obj28895 (make-object gxc#!struct-type::t '7)))
                         (begin
                           (gxc#!struct-type:::init!
                            __obj28895
                            (gx#stx-e _L23573_)
                            _super-t23619_
                            _fields23637_
                            _xfields23638_
                            _ctor23640_
                            _plist23639_)
                           __obj28895)))))))
              (___kont2717727178_
               (lambda ()
                 (begin
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx23309_))
                   '#f))))
          (if (gx#stx-pair? ___stx2717127172_)
              (let ((_e2332123647_ (gx#stx-e ___stx2717127172_)))
                (let ((_tl2332323652_ (##cdr _e2332123647_))
                      (_hd2332223650_ (##car _e2332123647_)))
                  (if (gx#stx-pair? _hd2332223650_)
                      (let ((_e2332423655_ (gx#stx-e _hd2332223650_)))
                        (let ((_tl2332623660_ (##cdr _e2332423655_))
                              (_hd2332523658_ (##car _e2332423655_)))
                          (if (gx#identifier? _hd2332523658_)
                              (if (gx#stx-eq? '%#quote _hd2332523658_)
                                  (if (gx#stx-pair? _tl2332623660_)
                                      (let ((_e2332723663_
                                             (gx#stx-e _tl2332623660_)))
                                        (let ((_tl2332923668_
                                               (##cdr _e2332723663_))
                                              (_hd2332823666_
                                               (##car _e2332723663_)))
                                          (if (gx#stx-null? _tl2332923668_)
                                              (if (gx#stx-pair? _tl2332323652_)
                                                  (let ((_e2333023671_
                                                         (gx#stx-e
                                                          _tl2332323652_)))
                                                    (let ((_tl2333223676_
                                                           (##cdr _e2333023671_))
                                                          (_hd2333123674_
                                                           (##car _e2333023671_)))
                                                      (if (gx#stx-pair?
                                                           _hd2333123674_)
                                                          (let ((_e2333323679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2333123674_)))
                    (let ((_tl2333523684_ (##cdr _e2333323679_))
                          (_hd2333423682_ (##car _e2333323679_)))
                      (if (gx#identifier? _hd2333423682_)
                          (if (gx#stx-eq? '%#quote _hd2333423682_)
                              (if (gx#stx-pair? _tl2333523684_)
                                  (let ((_e2333623687_
                                         (gx#stx-e _tl2333523684_)))
                                    (let ((_tl2333823692_
                                           (##cdr _e2333623687_))
                                          (_hd2333723690_
                                           (##car _e2333623687_)))
                                      (if (gx#stx-datum? _hd2333723690_)
                                          (let ((_e2333923695_
                                                 (gx#stx-e _hd2333723690_)))
                                            (if (equal? _e2333923695_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2333823692_)
                                                    (if (gx#stx-pair?
                                                         _tl2333223676_)
                                                        (let ((_e2334023698_
                                                               (gx#stx-e
                                                                _tl2333223676_)))
                                                          (let ((_tl2334223703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2334023698_))
                        (_hd2334123701_ (##car _e2334023698_)))
                    (if (gx#stx-pair? _hd2334123701_)
                        (let ((_e2334323706_ (gx#stx-e _hd2334123701_)))
                          (let ((_tl2334523711_ (##cdr _e2334323706_))
                                (_hd2334423709_ (##car _e2334323706_)))
                            (if (gx#identifier? _hd2334423709_)
                                (if (gx#stx-eq? '%#quote _hd2334423709_)
                                    (if (gx#stx-pair? _tl2334523711_)
                                        (let ((_e2334623714_
                                               (gx#stx-e _tl2334523711_)))
                                          (let ((_tl2334823719_
                                                 (##cdr _e2334623714_))
                                                (_hd2334723717_
                                                 (##car _e2334623714_)))
                                            (if (gx#stx-null? _tl2334823719_)
                                                (if (gx#stx-pair?
                                                     _tl2334223703_)
                                                    (let ((_e2334923722_
                                                           (gx#stx-e
                                                            _tl2334223703_)))
                                                      (let ((_tl2335123727_
                                                             (##cdr _e2334923722_))
                                                            (_hd2335023725_
                                                             (##car _e2334923722_)))
                                                        (if (gx#stx-pair?
                                                             _tl2335123727_)
                                                            (let ((_e2335223730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2335123727_)))
                      (let ((_tl2335423735_ (##cdr _e2335223730_))
                            (_hd2335323733_ (##car _e2335223730_)))
                        (if (gx#stx-pair? _hd2335323733_)
                            (let ((_e2335523738_ (gx#stx-e _hd2335323733_)))
                              (let ((_tl2335723743_ (##cdr _e2335523738_))
                                    (_hd2335623741_ (##car _e2335523738_)))
                                (if (gx#identifier? _hd2335623741_)
                                    (if (gx#stx-eq? '%#quote _hd2335623741_)
                                        (if (gx#stx-pair? _tl2335723743_)
                                            (let ((_e2335823746_
                                                   (gx#stx-e _tl2335723743_)))
                                              (let ((_tl2336023751_
                                                     (##cdr _e2335823746_))
                                                    (_hd2335923749_
                                                     (##car _e2335823746_)))
                                                (if (gx#stx-null?
                                                     _tl2336023751_)
                                                    (if (gx#stx-pair?
                                                         _tl2335423735_)
                                                        (let ((_e2336123754_
                                                               (gx#stx-e
                                                                _tl2335423735_)))
                                                          (let ((_tl2336323759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2336123754_))
                        (_hd2336223757_ (##car _e2336123754_)))
                    (if (gx#stx-pair? _hd2336223757_)
                        (let ((_e2336423762_ (gx#stx-e _hd2336223757_)))
                          (let ((_tl2336623767_ (##cdr _e2336423762_))
                                (_hd2336523765_ (##car _e2336423762_)))
                            (if (gx#identifier? _hd2336523765_)
                                (if (gx#stx-eq? '%#quote _hd2336523765_)
                                    (if (gx#stx-pair? _tl2336623767_)
                                        (let ((_e2336723770_
                                               (gx#stx-e _tl2336623767_)))
                                          (let ((_tl2336923775_
                                                 (##cdr _e2336723770_))
                                                (_hd2336823773_
                                                 (##car _e2336723770_)))
                                            (if (gx#stx-null? _tl2336923775_)
                                                (___kont2717327174_
                                                 _hd2336823773_
                                                 _hd2335923749_
                                                 _hd2335023725_
                                                 _hd2334723717_
                                                 _hd2332823666_)
                                                (___kont2717727178_))))
                                        (___kont2717727178_))
                                    (___kont2717727178_))
                                (___kont2717727178_))))
                        (___kont2717727178_))))
                (___kont2717727178_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2717727178_))))
                                            (___kont2717727178_))
                                        (___kont2717727178_))
                                    (___kont2717727178_))))
                            (___kont2717727178_))))
                    (___kont2717727178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2717727178_))
                                                (___kont2717727178_))))
                                        (___kont2717727178_))
                                    (___kont2717727178_))
                                (___kont2717727178_))))
                        (___kont2717727178_))))
                (___kont2717727178_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2717727178_))
                                                (___kont2717727178_)))
                                          (___kont2717727178_))))
                                  (___kont2717727178_))
                              (if (gx#stx-eq? '%#ref _hd2333423682_)
                                  (if (gx#stx-pair? _tl2333523684_)
                                      (let ((_e2339123480_
                                             (gx#stx-e _tl2333523684_)))
                                        (let ((_tl2339323485_
                                               (##cdr _e2339123480_))
                                              (_hd2339223483_
                                               (##car _e2339123480_)))
                                          (if (gx#stx-null? _tl2339323485_)
                                              (if (gx#stx-pair? _tl2333223676_)
                                                  (let ((_e2339423488_
                                                         (gx#stx-e
                                                          _tl2333223676_)))
                                                    (let ((_tl2339623493_
                                                           (##cdr _e2339423488_))
                                                          (_hd2339523491_
                                                           (##car _e2339423488_)))
                                                      (if (gx#stx-pair?
                                                           _hd2339523491_)
                                                          (let ((_e2339723496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2339523491_)))
                    (let ((_tl2339923501_ (##cdr _e2339723496_))
                          (_hd2339823499_ (##car _e2339723496_)))
                      (if (gx#identifier? _hd2339823499_)
                          (if (gx#stx-eq? '%#quote _hd2339823499_)
                              (if (gx#stx-pair? _tl2339923501_)
                                  (let ((_e2340023504_
                                         (gx#stx-e _tl2339923501_)))
                                    (let ((_tl2340223509_
                                           (##cdr _e2340023504_))
                                          (_hd2340123507_
                                           (##car _e2340023504_)))
                                      (if (gx#stx-null? _tl2340223509_)
                                          (if (gx#stx-pair? _tl2339623493_)
                                              (let ((_e2340323512_
                                                     (gx#stx-e
                                                      _tl2339623493_)))
                                                (let ((_tl2340523517_
                                                       (##cdr _e2340323512_))
                                                      (_hd2340423515_
                                                       (##car _e2340323512_)))
                                                  (if (gx#stx-pair?
                                                       _tl2340523517_)
                                                      (let ((_e2340623520_
                                                             (gx#stx-e
                                                              _tl2340523517_)))
                                                        (let ((_tl2340823525_
                                                               (##cdr _e2340623520_))
                                                              (_hd2340723523_
                                                               (##car _e2340623520_)))
                                                          (if (gx#stx-pair?
                                                               _hd2340723523_)
                                                              (let ((_e2340923528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2340723523_)))
                        (let ((_tl2341123533_ (##cdr _e2340923528_))
                              (_hd2341023531_ (##car _e2340923528_)))
                          (if (gx#identifier? _hd2341023531_)
                              (if (gx#stx-eq? '%#quote _hd2341023531_)
                                  (if (gx#stx-pair? _tl2341123533_)
                                      (let ((_e2341223536_
                                             (gx#stx-e _tl2341123533_)))
                                        (let ((_tl2341423541_
                                               (##cdr _e2341223536_))
                                              (_hd2341323539_
                                               (##car _e2341223536_)))
                                          (if (gx#stx-null? _tl2341423541_)
                                              (if (gx#stx-pair? _tl2340823525_)
                                                  (let ((_e2341523544_
                                                         (gx#stx-e
                                                          _tl2340823525_)))
                                                    (let ((_tl2341723549_
                                                           (##cdr _e2341523544_))
                                                          (_hd2341623547_
                                                           (##car _e2341523544_)))
                                                      (if (gx#stx-pair?
                                                           _hd2341623547_)
                                                          (let ((_e2341823552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2341623547_)))
                    (let ((_tl2342023557_ (##cdr _e2341823552_))
                          (_hd2341923555_ (##car _e2341823552_)))
                      (if (gx#identifier? _hd2341923555_)
                          (if (gx#stx-eq? '%#quote _hd2341923555_)
                              (if (gx#stx-pair? _tl2342023557_)
                                  (let ((_e2342123560_
                                         (gx#stx-e _tl2342023557_)))
                                    (let ((_tl2342323565_
                                           (##cdr _e2342123560_))
                                          (_hd2342223563_
                                           (##car _e2342123560_)))
                                      (if (gx#stx-null? _tl2342323565_)
                                          (___kont2717527176_
                                           _hd2342223563_
                                           _hd2341323539_
                                           _hd2340423515_
                                           _hd2340123507_
                                           _hd2339223483_
                                           _hd2332823666_)
                                          (___kont2717727178_))))
                                  (___kont2717727178_))
                              (___kont2717727178_))
                          (___kont2717727178_))))
                  (___kont2717727178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2717727178_))
                                              (___kont2717727178_))))
                                      (___kont2717727178_))
                                  (___kont2717727178_))
                              (___kont2717727178_))))
                      (___kont2717727178_))))
              (___kont2717727178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2717727178_))
                                          (___kont2717727178_))))
                                  (___kont2717727178_))
                              (___kont2717727178_))
                          (___kont2717727178_))))
                  (___kont2717727178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2717727178_))
                                              (___kont2717727178_))))
                                      (___kont2717727178_))
                                  (___kont2717727178_)))
                          (___kont2717727178_))))
                  (___kont2717727178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2717727178_))
                                              (___kont2717727178_))))
                                      (___kont2717727178_))
                                  (___kont2717727178_))
                              (___kont2717727178_))))
                      (___kont2717727178_))))
              (___kont2717727178_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx23235_ _args23236_)
      (let* ((___stx2743927440_ _args23236_)
             (_g2323923255_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2743927440_))))
        (let ((___kont2744127442_
               (lambda (_L23291_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L23291_))))
              (___kont2744327444_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2743927440_)
              (let ((_e2324223267_ (gx#stx-e ___stx2743927440_)))
                (let ((_tl2324423272_ (##cdr _e2324223267_))
                      (_hd2324323270_ (##car _e2324223267_)))
                  (if (gx#stx-pair? _hd2324323270_)
                      (let ((_e2324523275_ (gx#stx-e _hd2324323270_)))
                        (let ((_tl2324723280_ (##cdr _e2324523275_))
                              (_hd2324623278_ (##car _e2324523275_)))
                          (if (gx#identifier? _hd2324623278_)
                              (if (gx#stx-eq? '%#ref _hd2324623278_)
                                  (if (gx#stx-pair? _tl2324723280_)
                                      (let ((_e2324823283_
                                             (gx#stx-e _tl2324723280_)))
                                        (let ((_tl2325023288_
                                               (##cdr _e2324823283_))
                                              (_hd2324923286_
                                               (##car _e2324823283_)))
                                          (if (gx#stx-null? _tl2325023288_)
                                              (if (gx#stx-null? _tl2324423272_)
                                                  (___kont2744127442_
                                                   _hd2324923286_)
                                                  (___kont2744327444_))
                                              (___kont2744327444_))))
                                      (___kont2744327444_))
                                  (___kont2744327444_))
                              (___kont2744327444_))))
                      (___kont2744327444_))))
              (___kont2744327444_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx23106_ _args23107_ _unchecked?23108_)
        (let* ((___stx2747327474_ _args23107_)
               (_g2311123137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2747327474_))))
          (let ((___kont2747527476_
                 (lambda (_L23197_ _L23198_)
                   (##structure
                    gxc#!struct-getf::t
                    (gxc#identifier-symbol _L23198_)
                    (gx#stx-e _L23197_)
                    _unchecked?23108_)))
                (___kont2747727478_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2747327474_)
                (let ((_e2311523149_ (gx#stx-e ___stx2747327474_)))
                  (let ((_tl2311723154_ (##cdr _e2311523149_))
                        (_hd2311623152_ (##car _e2311523149_)))
                    (if (gx#stx-pair? _hd2311623152_)
                        (let ((_e2311823157_ (gx#stx-e _hd2311623152_)))
                          (let ((_tl2312023162_ (##cdr _e2311823157_))
                                (_hd2311923160_ (##car _e2311823157_)))
                            (if (gx#identifier? _hd2311923160_)
                                (if (gx#stx-eq? '%#ref _hd2311923160_)
                                    (if (gx#stx-pair? _tl2312023162_)
                                        (let ((_e2312123165_
                                               (gx#stx-e _tl2312023162_)))
                                          (let ((_tl2312323170_
                                                 (##cdr _e2312123165_))
                                                (_hd2312223168_
                                                 (##car _e2312123165_)))
                                            (if (gx#stx-null? _tl2312323170_)
                                                (if (gx#stx-pair?
                                                     _tl2311723154_)
                                                    (let ((_e2312423173_
                                                           (gx#stx-e
                                                            _tl2311723154_)))
                                                      (let ((_tl2312623178_
                                                             (##cdr _e2312423173_))
                                                            (_hd2312523176_
                                                             (##car _e2312423173_)))
                                                        (if (gx#stx-pair?
                                                             _hd2312523176_)
                                                            (let ((_e2312723181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2312523176_)))
                      (let ((_tl2312923186_ (##cdr _e2312723181_))
                            (_hd2312823184_ (##car _e2312723181_)))
                        (if (gx#identifier? _hd2312823184_)
                            (if (gx#stx-eq? '%#quote _hd2312823184_)
                                (if (gx#stx-pair? _tl2312923186_)
                                    (let ((_e2313023189_
                                           (gx#stx-e _tl2312923186_)))
                                      (let ((_tl2313223194_
                                             (##cdr _e2313023189_))
                                            (_hd2313123192_
                                             (##car _e2313023189_)))
                                        (if (gx#stx-null? _tl2313223194_)
                                            (if (gx#stx-null? _tl2312623178_)
                                                (___kont2747527476_
                                                 _hd2313123192_
                                                 _hd2312223168_)
                                                (___kont2747727478_))
                                            (___kont2747727478_))))
                                    (___kont2747727478_))
                                (___kont2747727478_))
                            (___kont2747727478_))))
                    (___kont2747727478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2747727478_))
                                                (___kont2747727478_))))
                                        (___kont2747727478_))
                                    (___kont2747727478_))
                                (___kont2747727478_))))
                        (___kont2747727478_))))
                (___kont2747727478_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx23226_ _args23227_)
          (let ((_unchecked?23229_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx23226_
             _args23227_
             _unchecked?23229_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g28901_
          (let ((_g28900_ (length _g28901_)))
            (cond ((##fx= _g28900_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g28901_))
                  ((##fx= _g28900_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g28901_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g28901_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx22976_ _args22977_ _unchecked?22978_)
        (let* ((___stx2753127532_ _args22977_)
               (_g2298123007_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2753127532_))))
          (let ((___kont2753327534_
                 (lambda (_L23067_ _L23068_)
                   (##structure
                    gxc#!struct-setf::t
                    (gxc#identifier-symbol _L23068_)
                    (gx#stx-e _L23067_)
                    _unchecked?22978_)))
                (___kont2753527536_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2753127532_)
                (let ((_e2298523019_ (gx#stx-e ___stx2753127532_)))
                  (let ((_tl2298723024_ (##cdr _e2298523019_))
                        (_hd2298623022_ (##car _e2298523019_)))
                    (if (gx#stx-pair? _hd2298623022_)
                        (let ((_e2298823027_ (gx#stx-e _hd2298623022_)))
                          (let ((_tl2299023032_ (##cdr _e2298823027_))
                                (_hd2298923030_ (##car _e2298823027_)))
                            (if (gx#identifier? _hd2298923030_)
                                (if (gx#stx-eq? '%#ref _hd2298923030_)
                                    (if (gx#stx-pair? _tl2299023032_)
                                        (let ((_e2299123035_
                                               (gx#stx-e _tl2299023032_)))
                                          (let ((_tl2299323040_
                                                 (##cdr _e2299123035_))
                                                (_hd2299223038_
                                                 (##car _e2299123035_)))
                                            (if (gx#stx-null? _tl2299323040_)
                                                (if (gx#stx-pair?
                                                     _tl2298723024_)
                                                    (let ((_e2299423043_
                                                           (gx#stx-e
                                                            _tl2298723024_)))
                                                      (let ((_tl2299623048_
                                                             (##cdr _e2299423043_))
                                                            (_hd2299523046_
                                                             (##car _e2299423043_)))
                                                        (if (gx#stx-pair?
                                                             _hd2299523046_)
                                                            (let ((_e2299723051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2299523046_)))
                      (let ((_tl2299923056_ (##cdr _e2299723051_))
                            (_hd2299823054_ (##car _e2299723051_)))
                        (if (gx#identifier? _hd2299823054_)
                            (if (gx#stx-eq? '%#quote _hd2299823054_)
                                (if (gx#stx-pair? _tl2299923056_)
                                    (let ((_e2300023059_
                                           (gx#stx-e _tl2299923056_)))
                                      (let ((_tl2300223064_
                                             (##cdr _e2300023059_))
                                            (_hd2300123062_
                                             (##car _e2300023059_)))
                                        (if (gx#stx-null? _tl2300223064_)
                                            (if (gx#stx-null? _tl2299623048_)
                                                (___kont2753327534_
                                                 _hd2300123062_
                                                 _hd2299223038_)
                                                (___kont2753527536_))
                                            (___kont2753527536_))))
                                    (___kont2753527536_))
                                (___kont2753527536_))
                            (___kont2753527536_))))
                    (___kont2753527536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2753527536_))
                                                (___kont2753527536_))))
                                        (___kont2753527536_))
                                    (___kont2753527536_))
                                (___kont2753527536_))))
                        (___kont2753527536_))))
                (___kont2753527536_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx23096_ _args23097_)
          (let ((_unchecked?23099_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx23096_
             _args23097_
             _unchecked?23099_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g28903_
          (let ((_g28902_ (length _g28903_)))
            (cond ((##fx= _g28902_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g28903_))
                  ((##fx= _g28902_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g28903_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g28903_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx22972_ _args22973_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx22972_
       _args22973_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx22969_ _args22970_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx22969_
       _args22970_
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
  (define gxc#basic-expression-type-ref%
    (lambda (_stx22918_)
      (let* ((_g2292022933_
              (lambda (_g2292122930_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2292122930_)))
             (_g2291922966_
              (lambda (_g2292122936_)
                (if (gx#stx-pair? _g2292122936_)
                    (let ((_e2292322938_ (gx#stx-e _g2292122936_)))
                      (let ((_hd2292422941_ (##car _e2292322938_))
                            (_tl2292522943_ (##cdr _e2292322938_)))
                        (if (gx#stx-pair? _tl2292522943_)
                            (let ((_e2292622946_ (gx#stx-e _tl2292522943_)))
                              (let ((_hd2292722949_ (##car _e2292622946_))
                                    (_tl2292822951_ (##cdr _e2292622946_)))
                                (if (gx#stx-null? _tl2292822951_)
                                    ((lambda (_L22954_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L22954_)))
                                     _hd2292722949_)
                                    (_g2292022933_ _g2292122936_))))
                            (_g2292022933_ _g2292122936_))))
                    (_g2292022933_ _g2292122936_)))))
        (_g2291922966_ _stx22918_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form22152_)
      (let* ((___stx2758927590_ _form22152_)
             (_g2215722314_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2758927590_))))
        (let ((___kont2759127592_ (lambda (_L22838_ _L22839_ _L22840_) '#t))
              (___kont2759727598_
               (lambda (_L22626_ _L22627_ _L22628_ _L22629_ _L22630_ _L22631_)
                 '#t))
              (___kont2760327604_
               (lambda (_L22422_ _L22423_ _L22424_ _L22425_) '#t))
              (___kont2760527606_ (lambda () '#f)))
          (let* ((___match2773027731_
                  (lambda (_e2227422326_
                           _hd2227522329_
                           _tl2227622331_
                           _e2227722334_
                           _hd2227822337_
                           _tl2227922339_
                           _e2228022342_
                           _hd2228122345_
                           _tl2228222347_
                           _e2228322350_
                           _hd2228422353_
                           _tl2228522355_
                           _e2228622358_
                           _hd2228722361_
                           _tl2228822363_
                           _e2228922366_
                           _hd2229022369_
                           _tl2229122371_
                           _e2229222374_
                           _hd2229322377_
                           _tl2229422379_
                           _e2229522382_
                           _hd2229622385_
                           _tl2229722387_
                           _e2229822390_
                           _hd2229922393_
                           _tl2230022395_
                           _e2230122398_
                           _hd2230222401_
                           _tl2230322403_
                           _e2230422406_
                           _hd2230522409_
                           _tl2230622411_
                           _e2230722414_
                           _hd2230822417_
                           _tl2230922419_)
                    (let ((_L22422_ _hd2230822417_)
                          (_L22423_ _hd2229922393_)
                          (_L22424_ _hd2229022369_)
                          (_L22425_ _hd2227522329_))
                      (if (if (gx#identifier? _L22425_)
                              (if (gxc#runtime-identifier=? _L22424_ 'apply)
                                  (if (gx#free-identifier=? _L22425_ _L22422_)
                                      (not (gx#free-identifier=?
                                            _L22423_
                                            _L22425_))
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2760327604_
                           _L22422_
                           _L22423_
                           _L22424_
                           _L22425_)
                          (___kont2760527606_)))))
                 (___match2770227703_
                  (lambda (_e2227422326_
                           _hd2227522329_
                           _tl2227622331_
                           _e2227722334_
                           _hd2227822337_
                           _tl2227922339_
                           _e2228022342_
                           _hd2228122345_
                           _tl2228222347_
                           _e2228322350_
                           _hd2228422353_
                           _tl2228522355_
                           _e2228622358_
                           _hd2228722361_
                           _tl2228822363_
                           _e2228922366_
                           _hd2229022369_
                           _tl2229122371_
                           _e2229222374_
                           _hd2229322377_
                           _tl2229422379_
                           _e2229522382_
                           _hd2229622385_
                           _tl2229722387_
                           _e2229822390_
                           _hd2229922393_
                           _tl2230022395_)
                    (if (gx#stx-pair? _tl2229422379_)
                        (let ((_e2230122398_ (gx#stx-e _tl2229422379_)))
                          (let ((_tl2230322403_ (##cdr _e2230122398_))
                                (_hd2230222401_ (##car _e2230122398_)))
                            (if (gx#stx-pair? _hd2230222401_)
                                (let ((_e2230422406_
                                       (gx#stx-e _hd2230222401_)))
                                  (let ((_tl2230622411_ (##cdr _e2230422406_))
                                        (_hd2230522409_ (##car _e2230422406_)))
                                    (if (gx#identifier? _hd2230522409_)
                                        (if (gx#stx-eq? '%#ref _hd2230522409_)
                                            (if (gx#stx-pair? _tl2230622411_)
                                                (let ((_e2230722414_
                                                       (gx#stx-e
                                                        _tl2230622411_)))
                                                  (let ((_tl2230922419_
                                                         (##cdr _e2230722414_))
                                                        (_hd2230822417_
                                                         (##car _e2230722414_)))
                                                    (if (gx#stx-null?
                                                         _tl2230922419_)
                                                        (if (gx#stx-null?
                                                             _tl2230322403_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2227922339_)
                        (___match2773027731_
                         _e2227422326_
                         _hd2227522329_
                         _tl2227622331_
                         _e2227722334_
                         _hd2227822337_
                         _tl2227922339_
                         _e2228022342_
                         _hd2228122345_
                         _tl2228222347_
                         _e2228322350_
                         _hd2228422353_
                         _tl2228522355_
                         _e2228622358_
                         _hd2228722361_
                         _tl2228822363_
                         _e2228922366_
                         _hd2229022369_
                         _tl2229122371_
                         _e2229222374_
                         _hd2229322377_
                         _tl2229422379_
                         _e2229522382_
                         _hd2229622385_
                         _tl2229722387_
                         _e2229822390_
                         _hd2229922393_
                         _tl2230022395_
                         _e2230122398_
                         _hd2230222401_
                         _tl2230322403_
                         _e2230422406_
                         _hd2230522409_
                         _tl2230622411_
                         _e2230722414_
                         _hd2230822417_
                         _tl2230922419_)
                        (___kont2760527606_))
                    (___kont2760527606_))
                (___kont2760527606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2760527606_))
                                            (___kont2760527606_))
                                        (___kont2760527606_))))
                                (___kont2760527606_))))
                        (___kont2760527606_))))
                 (___match2763227633_
                  (lambda (_e2221022466_
                           _hd2221122469_
                           _tl2221222471_
                           ___splice2759927600_
                           _target2221322474_
                           _tl2221522476_)
                    (letrec ((_loop2221622479_
                              (lambda (_hd2221422482_ _arg2222022484_)
                                (if (gx#stx-pair? _hd2221422482_)
                                    (let ((_e2221722487_
                                           (gx#stx-e _hd2221422482_)))
                                      (let ((_lp-tl2221922492_
                                             (##cdr _e2221722487_))
                                            (_lp-hd2221822490_
                                             (##car _e2221722487_)))
                                        (_loop2221622479_
                                         _lp-tl2221922492_
                                         (cons _lp-hd2221822490_
                                               _arg2222022484_))))
                                    (let ((_arg2222122495_
                                           (reverse _arg2222022484_)))
                                      (if (gx#stx-pair? _tl2221222471_)
                                          (let ((_e2222222498_
                                                 (gx#stx-e _tl2221222471_)))
                                            (let ((_tl2222422503_
                                                   (##cdr _e2222222498_))
                                                  (_hd2222322501_
                                                   (##car _e2222222498_)))
                                              (if (gx#stx-pair? _hd2222322501_)
                                                  (let ((_e2222522506_
                                                         (gx#stx-e
                                                          _hd2222322501_)))
                                                    (let ((_tl2222722511_
                                                           (##cdr _e2222522506_))
                                                          (_hd2222622509_
                                                           (##car _e2222522506_)))
                                                      (if (gx#identifier?
                                                           _hd2222622509_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2222622509_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2222722511_)
                          (let ((_e2222822514_ (gx#stx-e _tl2222722511_)))
                            (let ((_tl2223022519_ (##cdr _e2222822514_))
                                  (_hd2222922517_ (##car _e2222822514_)))
                              (if (gx#stx-pair? _hd2222922517_)
                                  (let ((_e2223122522_
                                         (gx#stx-e _hd2222922517_)))
                                    (let ((_tl2223322527_
                                           (##cdr _e2223122522_))
                                          (_hd2223222525_
                                           (##car _e2223122522_)))
                                      (if (gx#identifier? _hd2223222525_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2223222525_)
                                              (if (gx#stx-pair? _tl2223322527_)
                                                  (let ((_e2223422530_
                                                         (gx#stx-e
                                                          _tl2223322527_)))
                                                    (let ((_tl2223622535_
                                                           (##cdr _e2223422530_))
                                                          (_hd2223522533_
                                                           (##car _e2223422530_)))
                                                      (if (gx#stx-null?
                                                           _tl2223622535_)
                                                          (if (gx#stx-pair?
                                                               _tl2223022519_)
                                                              (let ((_e2223722538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2223022519_)))
                        (let ((_tl2223922543_ (##cdr _e2223722538_))
                              (_hd2223822541_ (##car _e2223722538_)))
                          (if (gx#stx-pair? _hd2223822541_)
                              (let ((_e2224022546_ (gx#stx-e _hd2223822541_)))
                                (let ((_tl2224222551_ (##cdr _e2224022546_))
                                      (_hd2224122549_ (##car _e2224022546_)))
                                  (if (gx#identifier? _hd2224122549_)
                                      (if (gx#stx-eq? '%#ref _hd2224122549_)
                                          (if (gx#stx-pair? _tl2224222551_)
                                              (let ((_e2224322554_
                                                     (gx#stx-e
                                                      _tl2224222551_)))
                                                (let ((_tl2224522559_
                                                       (##cdr _e2224322554_))
                                                      (_hd2224422557_
                                                       (##car _e2224322554_)))
                                                  (if (gx#stx-null?
                                                       _tl2224522559_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2223922543_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2223922543_)
                            '1)
                      (let ((___splice2760127602_
                             (gx#syntax-split-splice _tl2223922543_ '1)))
                        (let ((_tl2224822564_
                               (##vector-ref ___splice2760127602_ '1))
                              (_target2224622562_
                               (##vector-ref ___splice2760127602_ '0)))
                          (if (gx#stx-pair? _tl2224822564_)
                              (let ((_e2225522567_ (gx#stx-e _tl2224822564_)))
                                (let ((_tl2225722572_ (##cdr _e2225522567_))
                                      (_hd2225622570_ (##car _e2225522567_)))
                                  (if (gx#stx-pair? _hd2225622570_)
                                      (let ((_e2225822575_
                                             (gx#stx-e _hd2225622570_)))
                                        (let ((_tl2226022580_
                                               (##cdr _e2225822575_))
                                              (_hd2225922578_
                                               (##car _e2225822575_)))
                                          (if (gx#identifier? _hd2225922578_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2225922578_)
                                                  (if (gx#stx-pair?
                                                       _tl2226022580_)
                                                      (let ((_e2226122583_
                                                             (gx#stx-e
                                                              _tl2226022580_)))
                                                        (let ((_tl2226322588_
                                                               (##cdr _e2226122583_))
                                                              (_hd2226222586_
                                                               (##car _e2226122583_)))
                                                          (if (gx#stx-null?
                                                               _tl2226322588_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2225722572_)
                          (letrec ((_loop2224922591_
                                    (lambda (_hd2224722594_ _xarg2225322596_)
                                      (if (gx#stx-pair? _hd2224722594_)
                                          (let ((_e2225022599_
                                                 (gx#stx-e _hd2224722594_)))
                                            (let ((_lp-tl2225222604_
                                                   (##cdr _e2225022599_))
                                                  (_lp-hd2225122602_
                                                   (##car _e2225022599_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2225122602_)
                                                  (let ((_e2226422607_
                                                         (gx#stx-e
                                                          _lp-hd2225122602_)))
                                                    (let ((_tl2226622612_
                                                           (##cdr _e2226422607_))
                                                          (_hd2226522610_
                                                           (##car _e2226422607_)))
                                                      (if (gx#identifier?
                                                           _hd2226522610_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2226522610_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2226622612_)
                          (let ((_e2226722615_ (gx#stx-e _tl2226622612_)))
                            (let ((_tl2226922620_ (##cdr _e2226722615_))
                                  (_hd2226822618_ (##car _e2226722615_)))
                              (if (gx#stx-null? _tl2226922620_)
                                  (_loop2224922591_
                                   _lp-tl2225222604_
                                   (cons _hd2226822618_ _xarg2225322596_))
                                  (___match2770227703_
                                   _e2221022466_
                                   _hd2221122469_
                                   _tl2221222471_
                                   _e2222222498_
                                   _hd2222322501_
                                   _tl2222422503_
                                   _e2222522506_
                                   _hd2222622509_
                                   _tl2222722511_
                                   _e2222822514_
                                   _hd2222922517_
                                   _tl2223022519_
                                   _e2223122522_
                                   _hd2223222525_
                                   _tl2223322527_
                                   _e2223422530_
                                   _hd2223522533_
                                   _tl2223622535_
                                   _e2223722538_
                                   _hd2223822541_
                                   _tl2223922543_
                                   _e2224022546_
                                   _hd2224122549_
                                   _tl2224222551_
                                   _e2224322554_
                                   _hd2224422557_
                                   _tl2224522559_))))
                          (___match2770227703_
                           _e2221022466_
                           _hd2221122469_
                           _tl2221222471_
                           _e2222222498_
                           _hd2222322501_
                           _tl2222422503_
                           _e2222522506_
                           _hd2222622509_
                           _tl2222722511_
                           _e2222822514_
                           _hd2222922517_
                           _tl2223022519_
                           _e2223122522_
                           _hd2223222525_
                           _tl2223322527_
                           _e2223422530_
                           _hd2223522533_
                           _tl2223622535_
                           _e2223722538_
                           _hd2223822541_
                           _tl2223922543_
                           _e2224022546_
                           _hd2224122549_
                           _tl2224222551_
                           _e2224322554_
                           _hd2224422557_
                           _tl2224522559_))
                      (___match2770227703_
                       _e2221022466_
                       _hd2221122469_
                       _tl2221222471_
                       _e2222222498_
                       _hd2222322501_
                       _tl2222422503_
                       _e2222522506_
                       _hd2222622509_
                       _tl2222722511_
                       _e2222822514_
                       _hd2222922517_
                       _tl2223022519_
                       _e2223122522_
                       _hd2223222525_
                       _tl2223322527_
                       _e2223422530_
                       _hd2223522533_
                       _tl2223622535_
                       _e2223722538_
                       _hd2223822541_
                       _tl2223922543_
                       _e2224022546_
                       _hd2224122549_
                       _tl2224222551_
                       _e2224322554_
                       _hd2224422557_
                       _tl2224522559_))
                  (___match2770227703_
                   _e2221022466_
                   _hd2221122469_
                   _tl2221222471_
                   _e2222222498_
                   _hd2222322501_
                   _tl2222422503_
                   _e2222522506_
                   _hd2222622509_
                   _tl2222722511_
                   _e2222822514_
                   _hd2222922517_
                   _tl2223022519_
                   _e2223122522_
                   _hd2223222525_
                   _tl2223322527_
                   _e2223422530_
                   _hd2223522533_
                   _tl2223622535_
                   _e2223722538_
                   _hd2223822541_
                   _tl2223922543_
                   _e2224022546_
                   _hd2224122549_
                   _tl2224222551_
                   _e2224322554_
                   _hd2224422557_
                   _tl2224522559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2770227703_
                                                   _e2221022466_
                                                   _hd2221122469_
                                                   _tl2221222471_
                                                   _e2222222498_
                                                   _hd2222322501_
                                                   _tl2222422503_
                                                   _e2222522506_
                                                   _hd2222622509_
                                                   _tl2222722511_
                                                   _e2222822514_
                                                   _hd2222922517_
                                                   _tl2223022519_
                                                   _e2223122522_
                                                   _hd2223222525_
                                                   _tl2223322527_
                                                   _e2223422530_
                                                   _hd2223522533_
                                                   _tl2223622535_
                                                   _e2223722538_
                                                   _hd2223822541_
                                                   _tl2223922543_
                                                   _e2224022546_
                                                   _hd2224122549_
                                                   _tl2224222551_
                                                   _e2224322554_
                                                   _hd2224422557_
                                                   _tl2224522559_))))
                                          (let ((_xarg2225422623_
                                                 (reverse _xarg2225322596_)))
                                            (if (gx#stx-null? _tl2222422503_)
                                                (let ((_L22626_ _hd2226222586_)
                                                      (_L22627_
                                                       _xarg2225422623_)
                                                      (_L22628_ _hd2224422557_)
                                                      (_L22629_ _hd2223522533_)
                                                      (_L22630_ _tl2221522476_)
                                                      (_L22631_
                                                       _arg2222122495_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2267422677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2267522679_)
                               (cons _g2267422677_ _g2267522679_))
                             '()
                             _L22631_)))
                  (if (gx#identifier? _L22630_)
                      (if (gxc#runtime-identifier=? _L22629_ 'apply)
                          (if (fx= (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2268122684_
                                                              _g2268222686_)
                                                       (cons _g2268122684_
                                                             _g2268222686_))
                                                     '()
                                                     _L22631_)))
                                   (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2268822691_
                                                              _g2268922693_)
                                                       (cons _g2268822691_
                                                             _g2268922693_))
                                                     '()
                                                     _L22627_))))
                              (if (andmap2 gx#free-identifier=?
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2269522698_
                                                              _g2269622700_)
                                                       (cons _g2269522698_
                                                             _g2269622700_))
                                                     '()
                                                     _L22631_))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2270222705_
                                                              _g2270322707_)
                                                       (cons _g2270222705_
                                                             _g2270322707_))
                                                     '()
                                                     _L22627_)))
                                  (if (gx#free-identifier=? _L22630_ _L22626_)
                                      (not (find (lambda (_g2270922711_)
                                                   (gx#free-identifier=?
                                                    _g2270922711_
                                                    _L22628_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2271322716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2271422718_)
                     (cons _g2271322716_ _g2271422718_))
                   (cons _L22630_ '())
                   _L22631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '#f)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  '#f)
              (___kont2759727598_
               _L22626_
               _L22627_
               _L22628_
               _L22629_
               _L22630_
               _L22631_)
              (___match2770227703_
               _e2221022466_
               _hd2221122469_
               _tl2221222471_
               _e2222222498_
               _hd2222322501_
               _tl2222422503_
               _e2222522506_
               _hd2222622509_
               _tl2222722511_
               _e2222822514_
               _hd2222922517_
               _tl2223022519_
               _e2223122522_
               _hd2223222525_
               _tl2223322527_
               _e2223422530_
               _hd2223522533_
               _tl2223622535_
               _e2223722538_
               _hd2223822541_
               _tl2223922543_
               _e2224022546_
               _hd2224122549_
               _tl2224222551_
               _e2224322554_
               _hd2224422557_
               _tl2224522559_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2770227703_
                                                 _e2221022466_
                                                 _hd2221122469_
                                                 _tl2221222471_
                                                 _e2222222498_
                                                 _hd2222322501_
                                                 _tl2222422503_
                                                 _e2222522506_
                                                 _hd2222622509_
                                                 _tl2222722511_
                                                 _e2222822514_
                                                 _hd2222922517_
                                                 _tl2223022519_
                                                 _e2223122522_
                                                 _hd2223222525_
                                                 _tl2223322527_
                                                 _e2223422530_
                                                 _hd2223522533_
                                                 _tl2223622535_
                                                 _e2223722538_
                                                 _hd2223822541_
                                                 _tl2223922543_
                                                 _e2224022546_
                                                 _hd2224122549_
                                                 _tl2224222551_
                                                 _e2224322554_
                                                 _hd2224422557_
                                                 _tl2224522559_)))))))
                            (_loop2224922591_ _target2224622562_ '()))
                          (___match2770227703_
                           _e2221022466_
                           _hd2221122469_
                           _tl2221222471_
                           _e2222222498_
                           _hd2222322501_
                           _tl2222422503_
                           _e2222522506_
                           _hd2222622509_
                           _tl2222722511_
                           _e2222822514_
                           _hd2222922517_
                           _tl2223022519_
                           _e2223122522_
                           _hd2223222525_
                           _tl2223322527_
                           _e2223422530_
                           _hd2223522533_
                           _tl2223622535_
                           _e2223722538_
                           _hd2223822541_
                           _tl2223922543_
                           _e2224022546_
                           _hd2224122549_
                           _tl2224222551_
                           _e2224322554_
                           _hd2224422557_
                           _tl2224522559_))
                      (___match2770227703_
                       _e2221022466_
                       _hd2221122469_
                       _tl2221222471_
                       _e2222222498_
                       _hd2222322501_
                       _tl2222422503_
                       _e2222522506_
                       _hd2222622509_
                       _tl2222722511_
                       _e2222822514_
                       _hd2222922517_
                       _tl2223022519_
                       _e2223122522_
                       _hd2223222525_
                       _tl2223322527_
                       _e2223422530_
                       _hd2223522533_
                       _tl2223622535_
                       _e2223722538_
                       _hd2223822541_
                       _tl2223922543_
                       _e2224022546_
                       _hd2224122549_
                       _tl2224222551_
                       _e2224322554_
                       _hd2224422557_
                       _tl2224522559_))))
              (___match2770227703_
               _e2221022466_
               _hd2221122469_
               _tl2221222471_
               _e2222222498_
               _hd2222322501_
               _tl2222422503_
               _e2222522506_
               _hd2222622509_
               _tl2222722511_
               _e2222822514_
               _hd2222922517_
               _tl2223022519_
               _e2223122522_
               _hd2223222525_
               _tl2223322527_
               _e2223422530_
               _hd2223522533_
               _tl2223622535_
               _e2223722538_
               _hd2223822541_
               _tl2223922543_
               _e2224022546_
               _hd2224122549_
               _tl2224222551_
               _e2224322554_
               _hd2224422557_
               _tl2224522559_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2770227703_
                                                   _e2221022466_
                                                   _hd2221122469_
                                                   _tl2221222471_
                                                   _e2222222498_
                                                   _hd2222322501_
                                                   _tl2222422503_
                                                   _e2222522506_
                                                   _hd2222622509_
                                                   _tl2222722511_
                                                   _e2222822514_
                                                   _hd2222922517_
                                                   _tl2223022519_
                                                   _e2223122522_
                                                   _hd2223222525_
                                                   _tl2223322527_
                                                   _e2223422530_
                                                   _hd2223522533_
                                                   _tl2223622535_
                                                   _e2223722538_
                                                   _hd2223822541_
                                                   _tl2223922543_
                                                   _e2224022546_
                                                   _hd2224122549_
                                                   _tl2224222551_
                                                   _e2224322554_
                                                   _hd2224422557_
                                                   _tl2224522559_))
                                              (___match2770227703_
                                               _e2221022466_
                                               _hd2221122469_
                                               _tl2221222471_
                                               _e2222222498_
                                               _hd2222322501_
                                               _tl2222422503_
                                               _e2222522506_
                                               _hd2222622509_
                                               _tl2222722511_
                                               _e2222822514_
                                               _hd2222922517_
                                               _tl2223022519_
                                               _e2223122522_
                                               _hd2223222525_
                                               _tl2223322527_
                                               _e2223422530_
                                               _hd2223522533_
                                               _tl2223622535_
                                               _e2223722538_
                                               _hd2223822541_
                                               _tl2223922543_
                                               _e2224022546_
                                               _hd2224122549_
                                               _tl2224222551_
                                               _e2224322554_
                                               _hd2224422557_
                                               _tl2224522559_))))
                                      (___match2770227703_
                                       _e2221022466_
                                       _hd2221122469_
                                       _tl2221222471_
                                       _e2222222498_
                                       _hd2222322501_
                                       _tl2222422503_
                                       _e2222522506_
                                       _hd2222622509_
                                       _tl2222722511_
                                       _e2222822514_
                                       _hd2222922517_
                                       _tl2223022519_
                                       _e2223122522_
                                       _hd2223222525_
                                       _tl2223322527_
                                       _e2223422530_
                                       _hd2223522533_
                                       _tl2223622535_
                                       _e2223722538_
                                       _hd2223822541_
                                       _tl2223922543_
                                       _e2224022546_
                                       _hd2224122549_
                                       _tl2224222551_
                                       _e2224322554_
                                       _hd2224422557_
                                       _tl2224522559_))))
                              (___match2770227703_
                               _e2221022466_
                               _hd2221122469_
                               _tl2221222471_
                               _e2222222498_
                               _hd2222322501_
                               _tl2222422503_
                               _e2222522506_
                               _hd2222622509_
                               _tl2222722511_
                               _e2222822514_
                               _hd2222922517_
                               _tl2223022519_
                               _e2223122522_
                               _hd2223222525_
                               _tl2223322527_
                               _e2223422530_
                               _hd2223522533_
                               _tl2223622535_
                               _e2223722538_
                               _hd2223822541_
                               _tl2223922543_
                               _e2224022546_
                               _hd2224122549_
                               _tl2224222551_
                               _e2224322554_
                               _hd2224422557_
                               _tl2224522559_))))
                      (___match2770227703_
                       _e2221022466_
                       _hd2221122469_
                       _tl2221222471_
                       _e2222222498_
                       _hd2222322501_
                       _tl2222422503_
                       _e2222522506_
                       _hd2222622509_
                       _tl2222722511_
                       _e2222822514_
                       _hd2222922517_
                       _tl2223022519_
                       _e2223122522_
                       _hd2223222525_
                       _tl2223322527_
                       _e2223422530_
                       _hd2223522533_
                       _tl2223622535_
                       _e2223722538_
                       _hd2223822541_
                       _tl2223922543_
                       _e2224022546_
                       _hd2224122549_
                       _tl2224222551_
                       _e2224322554_
                       _hd2224422557_
                       _tl2224522559_))
                  (___match2770227703_
                   _e2221022466_
                   _hd2221122469_
                   _tl2221222471_
                   _e2222222498_
                   _hd2222322501_
                   _tl2222422503_
                   _e2222522506_
                   _hd2222622509_
                   _tl2222722511_
                   _e2222822514_
                   _hd2222922517_
                   _tl2223022519_
                   _e2223122522_
                   _hd2223222525_
                   _tl2223322527_
                   _e2223422530_
                   _hd2223522533_
                   _tl2223622535_
                   _e2223722538_
                   _hd2223822541_
                   _tl2223922543_
                   _e2224022546_
                   _hd2224122549_
                   _tl2224222551_
                   _e2224322554_
                   _hd2224422557_
                   _tl2224522559_))
              (___kont2760527606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2760527606_))
                                          (___kont2760527606_))
                                      (___kont2760527606_))))
                              (___kont2760527606_))))
                      (___kont2760527606_))
                  (___kont2760527606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2760527606_))
                                              (___kont2760527606_))
                                          (___kont2760527606_))))
                                  (___kont2760527606_))))
                          (___kont2760527606_))
                      (___kont2760527606_))
                  (___kont2760527606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2760527606_))))
                                          (___kont2760527606_)))))))
                      (_loop2221622479_ _target2221322474_ '()))))
                 (___match2762027621_
                  (lambda (_e2216222726_
                           _hd2216322729_
                           _tl2216422731_
                           ___splice2759327594_
                           _target2216522734_
                           _tl2216722736_)
                    (letrec ((_loop2216822739_
                              (lambda (_hd2216622742_ _arg2217222744_)
                                (if (gx#stx-pair? _hd2216622742_)
                                    (let ((_e2216922747_
                                           (gx#stx-e _hd2216622742_)))
                                      (let ((_lp-tl2217122752_
                                             (##cdr _e2216922747_))
                                            (_lp-hd2217022750_
                                             (##car _e2216922747_)))
                                        (_loop2216822739_
                                         _lp-tl2217122752_
                                         (cons _lp-hd2217022750_
                                               _arg2217222744_))))
                                    (let ((_arg2217322755_
                                           (reverse _arg2217222744_)))
                                      (if (gx#stx-pair? _tl2216422731_)
                                          (let ((_e2217422758_
                                                 (gx#stx-e _tl2216422731_)))
                                            (let ((_tl2217622763_
                                                   (##cdr _e2217422758_))
                                                  (_hd2217522761_
                                                   (##car _e2217422758_)))
                                              (if (gx#stx-pair? _hd2217522761_)
                                                  (let ((_e2217722766_
                                                         (gx#stx-e
                                                          _hd2217522761_)))
                                                    (let ((_tl2217922771_
                                                           (##cdr _e2217722766_))
                                                          (_hd2217822769_
                                                           (##car _e2217722766_)))
                                                      (if (gx#identifier?
                                                           _hd2217822769_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2217822769_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2217922771_)
                          (let ((_e2218022774_ (gx#stx-e _tl2217922771_)))
                            (let ((_tl2218222779_ (##cdr _e2218022774_))
                                  (_hd2218122777_ (##car _e2218022774_)))
                              (if (gx#stx-pair? _hd2218122777_)
                                  (let ((_e2218322782_
                                         (gx#stx-e _hd2218122777_)))
                                    (let ((_tl2218522787_
                                           (##cdr _e2218322782_))
                                          (_hd2218422785_
                                           (##car _e2218322782_)))
                                      (if (gx#identifier? _hd2218422785_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2218422785_)
                                              (if (gx#stx-pair? _tl2218522787_)
                                                  (let ((_e2218622790_
                                                         (gx#stx-e
                                                          _tl2218522787_)))
                                                    (let ((_tl2218822795_
                                                           (##cdr _e2218622790_))
                                                          (_hd2218722793_
                                                           (##car _e2218622790_)))
                                                      (if (gx#stx-null?
                                                           _tl2218822795_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2218222779_)
                                                              (let ((___splice2759527596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2218222779_ '0)))
                        (let ((_tl2219122800_
                               (##vector-ref ___splice2759527596_ '1))
                              (_target2218922798_
                               (##vector-ref ___splice2759527596_ '0)))
                          (if (gx#stx-null? _tl2219122800_)
                              (letrec ((_loop2219222803_
                                        (lambda (_hd2219022806_
                                                 _xarg2219622808_)
                                          (if (gx#stx-pair? _hd2219022806_)
                                              (let ((_e2219322811_
                                                     (gx#stx-e
                                                      _hd2219022806_)))
                                                (let ((_lp-tl2219522816_
                                                       (##cdr _e2219322811_))
                                                      (_lp-hd2219422814_
                                                       (##car _e2219322811_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2219422814_)
                                                      (let ((_e2219822819_
                                                             (gx#stx-e
                                                              _lp-hd2219422814_)))
                                                        (let ((_tl2220022824_
                                                               (##cdr _e2219822819_))
                                                              (_hd2219922822_
                                                               (##car _e2219822819_)))
                                                          (if (gx#identifier?
                                                               _hd2219922822_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2219922822_)
                          (if (gx#stx-pair? _tl2220022824_)
                              (let ((_e2220122827_ (gx#stx-e _tl2220022824_)))
                                (let ((_tl2220322832_ (##cdr _e2220122827_))
                                      (_hd2220222830_ (##car _e2220122827_)))
                                  (if (gx#stx-null? _tl2220322832_)
                                      (_loop2219222803_
                                       _lp-tl2219522816_
                                       (cons _hd2220222830_ _xarg2219622808_))
                                      (___match2763227633_
                                       _e2216222726_
                                       _hd2216322729_
                                       _tl2216422731_
                                       ___splice2759327594_
                                       _target2216522734_
                                       _tl2216722736_))))
                              (___match2763227633_
                               _e2216222726_
                               _hd2216322729_
                               _tl2216422731_
                               ___splice2759327594_
                               _target2216522734_
                               _tl2216722736_))
                          (___match2763227633_
                           _e2216222726_
                           _hd2216322729_
                           _tl2216422731_
                           ___splice2759327594_
                           _target2216522734_
                           _tl2216722736_))
                      (___match2763227633_
                       _e2216222726_
                       _hd2216322729_
                       _tl2216422731_
                       ___splice2759327594_
                       _target2216522734_
                       _tl2216722736_))))
              (___match2763227633_
               _e2216222726_
               _hd2216322729_
               _tl2216422731_
               ___splice2759327594_
               _target2216522734_
               _tl2216722736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2219722835_
                                                     (reverse _xarg2219622808_)))
                                                (if (gx#stx-null?
                                                     _tl2217622763_)
                                                    (let ((_L22838_
                                                           _xarg2219722835_)
                                                          (_L22839_
                                                           _hd2218722793_)
                                                          (_L22840_
                                                           _arg2217322755_))
                                                      (if (if (gx#identifier-list?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2286822871_ _g2286922873_)
                                   (cons _g2286822871_ _g2286922873_))
                                 '()
                                 _L22840_)))
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2287522878_
                                                          _g2287622880_)
                                                   (cons _g2287522878_
                                                         _g2287622880_))
                                                 '()
                                                 _L22840_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2288222885_
                                                          _g2288322887_)
                                                   (cons _g2288222885_
                                                         _g2288322887_))
                                                 '()
                                                 _L22838_))))
                          (if (andmap2 gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2288922892_
                                                          _g2289022894_)
                                                   (cons _g2288922892_
                                                         _g2289022894_))
                                                 '()
                                                 _L22840_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2289622899_
                                                          _g2289722901_)
                                                   (cons _g2289622899_
                                                         _g2289722901_))
                                                 '()
                                                 _L22838_)))
                              (not (find (lambda (_g2290322905_)
                                           (gx#free-identifier=?
                                            _g2290322905_
                                            _L22839_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2290722910_
                                                            _g2290822912_)
                                                     (cons _g2290722910_
                                                           _g2290822912_))
                                                   '()
                                                   _L22840_))))
                              '#f)
                          '#f)
                      '#f)
                  (___kont2759127592_ _L22838_ _L22839_ _L22840_)
                  (___match2763227633_
                   _e2216222726_
                   _hd2216322729_
                   _tl2216422731_
                   ___splice2759327594_
                   _target2216522734_
                   _tl2216722736_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2763227633_
                                                     _e2216222726_
                                                     _hd2216322729_
                                                     _tl2216422731_
                                                     ___splice2759327594_
                                                     _target2216522734_
                                                     _tl2216722736_)))))))
                                (_loop2219222803_ _target2218922798_ '()))
                              (___match2763227633_
                               _e2216222726_
                               _hd2216322729_
                               _tl2216422731_
                               ___splice2759327594_
                               _target2216522734_
                               _tl2216722736_))))
                      (___match2763227633_
                       _e2216222726_
                       _hd2216322729_
                       _tl2216422731_
                       ___splice2759327594_
                       _target2216522734_
                       _tl2216722736_))
                  (___match2763227633_
                   _e2216222726_
                   _hd2216322729_
                   _tl2216422731_
                   ___splice2759327594_
                   _target2216522734_
                   _tl2216722736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2763227633_
                                                   _e2216222726_
                                                   _hd2216322729_
                                                   _tl2216422731_
                                                   ___splice2759327594_
                                                   _target2216522734_
                                                   _tl2216722736_))
                                              (___match2763227633_
                                               _e2216222726_
                                               _hd2216322729_
                                               _tl2216422731_
                                               ___splice2759327594_
                                               _target2216522734_
                                               _tl2216722736_))
                                          (___match2763227633_
                                           _e2216222726_
                                           _hd2216322729_
                                           _tl2216422731_
                                           ___splice2759327594_
                                           _target2216522734_
                                           _tl2216722736_))))
                                  (___match2763227633_
                                   _e2216222726_
                                   _hd2216322729_
                                   _tl2216422731_
                                   ___splice2759327594_
                                   _target2216522734_
                                   _tl2216722736_))))
                          (___match2763227633_
                           _e2216222726_
                           _hd2216322729_
                           _tl2216422731_
                           ___splice2759327594_
                           _target2216522734_
                           _tl2216722736_))
                      (___match2763227633_
                       _e2216222726_
                       _hd2216322729_
                       _tl2216422731_
                       ___splice2759327594_
                       _target2216522734_
                       _tl2216722736_))
                  (___match2763227633_
                   _e2216222726_
                   _hd2216322729_
                   _tl2216422731_
                   ___splice2759327594_
                   _target2216522734_
                   _tl2216722736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2763227633_
                                                   _e2216222726_
                                                   _hd2216322729_
                                                   _tl2216422731_
                                                   ___splice2759327594_
                                                   _target2216522734_
                                                   _tl2216722736_))))
                                          (___match2763227633_
                                           _e2216222726_
                                           _hd2216322729_
                                           _tl2216422731_
                                           ___splice2759327594_
                                           _target2216522734_
                                           _tl2216722736_)))))))
                      (_loop2216822739_ _target2216522734_ '())))))
            (if (gx#stx-pair? ___stx2758927590_)
                (let ((_e2216222726_ (gx#stx-e ___stx2758927590_)))
                  (let ((_tl2216422731_ (##cdr _e2216222726_))
                        (_hd2216322729_ (##car _e2216222726_)))
                    (if (gx#stx-pair/null? _hd2216322729_)
                        (let ((___splice2759327594_
                               (gx#syntax-split-splice _hd2216322729_ '0)))
                          (let ((_tl2216722736_
                                 (##vector-ref ___splice2759327594_ '1))
                                (_target2216522734_
                                 (##vector-ref ___splice2759327594_ '0)))
                            (if (gx#stx-null? _tl2216722736_)
                                (___match2762027621_
                                 _e2216222726_
                                 _hd2216322729_
                                 _tl2216422731_
                                 ___splice2759327594_
                                 _target2216522734_
                                 _tl2216722736_)
                                (___match2763227633_
                                 _e2216222726_
                                 _hd2216322729_
                                 _tl2216422731_
                                 ___splice2759327594_
                                 _target2216522734_
                                 _tl2216722736_))))
                        (if (gx#stx-pair? _tl2216422731_)
                            (let ((_e2227722334_ (gx#stx-e _tl2216422731_)))
                              (let ((_tl2227922339_ (##cdr _e2227722334_))
                                    (_hd2227822337_ (##car _e2227722334_)))
                                (if (gx#stx-pair? _hd2227822337_)
                                    (let ((_e2228022342_
                                           (gx#stx-e _hd2227822337_)))
                                      (let ((_tl2228222347_
                                             (##cdr _e2228022342_))
                                            (_hd2228122345_
                                             (##car _e2228022342_)))
                                        (if (gx#identifier? _hd2228122345_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2228122345_)
                                                (if (gx#stx-pair?
                                                     _tl2228222347_)
                                                    (let ((_e2228322350_
                                                           (gx#stx-e
                                                            _tl2228222347_)))
                                                      (let ((_tl2228522355_
                                                             (##cdr _e2228322350_))
                                                            (_hd2228422353_
                                                             (##car _e2228322350_)))
                                                        (if (gx#stx-pair?
                                                             _hd2228422353_)
                                                            (let ((_e2228622358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2228422353_)))
                      (let ((_tl2228822363_ (##cdr _e2228622358_))
                            (_hd2228722361_ (##car _e2228622358_)))
                        (if (gx#identifier? _hd2228722361_)
                            (if (gx#stx-eq? '%#ref _hd2228722361_)
                                (if (gx#stx-pair? _tl2228822363_)
                                    (let ((_e2228922366_
                                           (gx#stx-e _tl2228822363_)))
                                      (let ((_tl2229122371_
                                             (##cdr _e2228922366_))
                                            (_hd2229022369_
                                             (##car _e2228922366_)))
                                        (if (gx#stx-null? _tl2229122371_)
                                            (if (gx#stx-pair? _tl2228522355_)
                                                (let ((_e2229222374_
                                                       (gx#stx-e
                                                        _tl2228522355_)))
                                                  (let ((_tl2229422379_
                                                         (##cdr _e2229222374_))
                                                        (_hd2229322377_
                                                         (##car _e2229222374_)))
                                                    (if (gx#stx-pair?
                                                         _hd2229322377_)
                                                        (let ((_e2229522382_
                                                               (gx#stx-e
                                                                _hd2229322377_)))
                                                          (let ((_tl2229722387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2229522382_))
                        (_hd2229622385_ (##car _e2229522382_)))
                    (if (gx#identifier? _hd2229622385_)
                        (if (gx#stx-eq? '%#ref _hd2229622385_)
                            (if (gx#stx-pair? _tl2229722387_)
                                (let ((_e2229822390_
                                       (gx#stx-e _tl2229722387_)))
                                  (let ((_tl2230022395_ (##cdr _e2229822390_))
                                        (_hd2229922393_ (##car _e2229822390_)))
                                    (if (gx#stx-null? _tl2230022395_)
                                        (if (gx#stx-pair? _tl2229422379_)
                                            (let ((_e2230122398_
                                                   (gx#stx-e _tl2229422379_)))
                                              (let ((_tl2230322403_
                                                     (##cdr _e2230122398_))
                                                    (_hd2230222401_
                                                     (##car _e2230122398_)))
                                                (if (gx#stx-pair?
                                                     _hd2230222401_)
                                                    (let ((_e2230422406_
                                                           (gx#stx-e
                                                            _hd2230222401_)))
                                                      (let ((_tl2230622411_
                                                             (##cdr _e2230422406_))
                                                            (_hd2230522409_
                                                             (##car _e2230422406_)))
                                                        (if (gx#identifier?
                                                             _hd2230522409_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2230522409_)
                        (if (gx#stx-pair? _tl2230622411_)
                            (let ((_e2230722414_ (gx#stx-e _tl2230622411_)))
                              (let ((_tl2230922419_ (##cdr _e2230722414_))
                                    (_hd2230822417_ (##car _e2230722414_)))
                                (if (gx#stx-null? _tl2230922419_)
                                    (if (gx#stx-null? _tl2230322403_)
                                        (if (gx#stx-null? _tl2227922339_)
                                            (___match2773027731_
                                             _e2216222726_
                                             _hd2216322729_
                                             _tl2216422731_
                                             _e2227722334_
                                             _hd2227822337_
                                             _tl2227922339_
                                             _e2228022342_
                                             _hd2228122345_
                                             _tl2228222347_
                                             _e2228322350_
                                             _hd2228422353_
                                             _tl2228522355_
                                             _e2228622358_
                                             _hd2228722361_
                                             _tl2228822363_
                                             _e2228922366_
                                             _hd2229022369_
                                             _tl2229122371_
                                             _e2229222374_
                                             _hd2229322377_
                                             _tl2229422379_
                                             _e2229522382_
                                             _hd2229622385_
                                             _tl2229722387_
                                             _e2229822390_
                                             _hd2229922393_
                                             _tl2230022395_
                                             _e2230122398_
                                             _hd2230222401_
                                             _tl2230322403_
                                             _e2230422406_
                                             _hd2230522409_
                                             _tl2230622411_
                                             _e2230722414_
                                             _hd2230822417_
                                             _tl2230922419_)
                                            (___kont2760527606_))
                                        (___kont2760527606_))
                                    (___kont2760527606_))))
                            (___kont2760527606_))
                        (___kont2760527606_))
                    (___kont2760527606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2760527606_))))
                                            (___kont2760527606_))
                                        (___kont2760527606_))))
                                (___kont2760527606_))
                            (___kont2760527606_))
                        (___kont2760527606_))))
                (___kont2760527606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2760527606_))
                                            (___kont2760527606_))))
                                    (___kont2760527606_))
                                (___kont2760527606_))
                            (___kont2760527606_))))
                    (___kont2760527606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2760527606_))
                                                (___kont2760527606_))
                                            (___kont2760527606_))))
                                    (___kont2760527606_))))
                            (___kont2760527606_)))))
                (___kont2760527606_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form21620_)
      (let* ((___stx2773327734_ _form21620_)
             (_g2162421748_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2773327734_))))
        (let ((___kont2773527736_
               (lambda (_L22118_ _L22119_ _L22120_)
                 (gxc#identifier-symbol _L22119_)))
              (___kont2774127742_
               (lambda (_L21966_ _L21967_ _L21968_ _L21969_)
                 (gxc#identifier-symbol _L21966_)))
              (___kont2774527746_
               (lambda (_L21833_ _L21834_ _L21835_)
                 (gxc#identifier-symbol _L21833_))))
          (let* ((___match2784227843_
                  (lambda (_e2171421753_
                           _hd2171521756_
                           _tl2171621758_
                           _e2171721761_
                           _hd2171821764_
                           _tl2171921766_
                           _e2172021769_
                           _hd2172121772_
                           _tl2172221774_
                           _e2172321777_
                           _hd2172421780_
                           _tl2172521782_
                           _e2172621785_
                           _hd2172721788_
                           _tl2172821790_
                           _e2172921793_
                           _hd2173021796_
                           _tl2173121798_
                           _e2173221801_
                           _hd2173321804_
                           _tl2173421806_
                           _e2173521809_
                           _hd2173621812_
                           _tl2173721814_
                           _e2173821817_
                           _hd2173921820_
                           _tl2174021822_)
                    (if (gx#stx-pair? _tl2173421806_)
                        (let ((_e2174121825_ (gx#stx-e _tl2173421806_)))
                          (let ((_tl2174321830_ (##cdr _e2174121825_))
                                (_hd2174221828_ (##car _e2174121825_)))
                            (if (gx#stx-null? _tl2174321830_)
                                (if (gx#stx-null? _tl2171921766_)
                                    (___kont2774527746_
                                     _hd2173921820_
                                     _hd2173021796_
                                     _hd2171521756_)
                                    (_g2162421748_))
                                (_g2162421748_))))
                        (_g2162421748_))))
                 (___match2777227773_
                  (lambda (_e2167521870_
                           _hd2167621873_
                           _tl2167721875_
                           ___splice2774327744_
                           _target2167821878_
                           _tl2168021880_)
                    (letrec ((_loop2168121883_
                              (lambda (_hd2167921886_ _arg2168521888_)
                                (if (gx#stx-pair? _hd2167921886_)
                                    (let ((_e2168221891_
                                           (gx#stx-e _hd2167921886_)))
                                      (let ((_lp-tl2168421896_
                                             (##cdr _e2168221891_))
                                            (_lp-hd2168321894_
                                             (##car _e2168221891_)))
                                        (_loop2168121883_
                                         _lp-tl2168421896_
                                         (cons _lp-hd2168321894_
                                               _arg2168521888_))))
                                    (let ((_arg2168621899_
                                           (reverse _arg2168521888_)))
                                      (if (gx#stx-pair? _tl2167721875_)
                                          (let ((_e2168721902_
                                                 (gx#stx-e _tl2167721875_)))
                                            (let ((_tl2168921907_
                                                   (##cdr _e2168721902_))
                                                  (_hd2168821905_
                                                   (##car _e2168721902_)))
                                              (if (gx#stx-pair? _hd2168821905_)
                                                  (let ((_e2169021910_
                                                         (gx#stx-e
                                                          _hd2168821905_)))
                                                    (let ((_tl2169221915_
                                                           (##cdr _e2169021910_))
                                                          (_hd2169121913_
                                                           (##car _e2169021910_)))
                                                      (if (gx#identifier?
                                                           _hd2169121913_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2169121913_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2169221915_)
                          (let ((_e2169321918_ (gx#stx-e _tl2169221915_)))
                            (let ((_tl2169521923_ (##cdr _e2169321918_))
                                  (_hd2169421921_ (##car _e2169321918_)))
                              (if (gx#stx-pair? _hd2169421921_)
                                  (let ((_e2169621926_
                                         (gx#stx-e _hd2169421921_)))
                                    (let ((_tl2169821931_
                                           (##cdr _e2169621926_))
                                          (_hd2169721929_
                                           (##car _e2169621926_)))
                                      (if (gx#identifier? _hd2169721929_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2169721929_)
                                              (if (gx#stx-pair? _tl2169821931_)
                                                  (let ((_e2169921934_
                                                         (gx#stx-e
                                                          _tl2169821931_)))
                                                    (let ((_tl2170121939_
                                                           (##cdr _e2169921934_))
                                                          (_hd2170021937_
                                                           (##car _e2169921934_)))
                                                      (if (gx#stx-null?
                                                           _tl2170121939_)
                                                          (if (gx#stx-pair?
                                                               _tl2169521923_)
                                                              (let ((_e2170221942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2169521923_)))
                        (let ((_tl2170421947_ (##cdr _e2170221942_))
                              (_hd2170321945_ (##car _e2170221942_)))
                          (if (gx#stx-pair? _hd2170321945_)
                              (let ((_e2170521950_ (gx#stx-e _hd2170321945_)))
                                (let ((_tl2170721955_ (##cdr _e2170521950_))
                                      (_hd2170621953_ (##car _e2170521950_)))
                                  (if (gx#identifier? _hd2170621953_)
                                      (if (gx#stx-eq? '%#ref _hd2170621953_)
                                          (if (gx#stx-pair? _tl2170721955_)
                                              (let ((_e2170821958_
                                                     (gx#stx-e
                                                      _tl2170721955_)))
                                                (let ((_tl2171021963_
                                                       (##cdr _e2170821958_))
                                                      (_hd2170921961_
                                                       (##car _e2170821958_)))
                                                  (if (gx#stx-null?
                                                       _tl2171021963_)
                                                      (if (gx#stx-null?
                                                           _tl2168921907_)
                                                          (___kont2774127742_
                                                           _hd2170921961_
                                                           _hd2170021937_
                                                           _tl2168021880_
                                                           _arg2168621899_)
                                                          (___match2784227843_
                                                           _e2167521870_
                                                           _hd2167621873_
                                                           _tl2167721875_
                                                           _e2168721902_
                                                           _hd2168821905_
                                                           _tl2168921907_
                                                           _e2169021910_
                                                           _hd2169121913_
                                                           _tl2169221915_
                                                           _e2169321918_
                                                           _hd2169421921_
                                                           _tl2169521923_
                                                           _e2169621926_
                                                           _hd2169721929_
                                                           _tl2169821931_
                                                           _e2169921934_
                                                           _hd2170021937_
                                                           _tl2170121939_
                                                           _e2170221942_
                                                           _hd2170321945_
                                                           _tl2170421947_
                                                           _e2170521950_
                                                           _hd2170621953_
                                                           _tl2170721955_
                                                           _e2170821958_
                                                           _hd2170921961_
                                                           _tl2171021963_))
                                                      (_g2162421748_))))
                                              (_g2162421748_))
                                          (_g2162421748_))
                                      (_g2162421748_))))
                              (_g2162421748_))))
                      (_g2162421748_))
                  (_g2162421748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2162421748_))
                                              (_g2162421748_))
                                          (_g2162421748_))))
                                  (_g2162421748_))))
                          (_g2162421748_))
                      (_g2162421748_))
                  (_g2162421748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2162421748_))))
                                          (_g2162421748_)))))))
                      (_loop2168121883_ _target2167821878_ '()))))
                 (___match2776027761_
                  (lambda (_e2162922006_
                           _hd2163022009_
                           _tl2163122011_
                           ___splice2773727738_
                           _target2163222014_
                           _tl2163422016_)
                    (letrec ((_loop2163522019_
                              (lambda (_hd2163322022_ _arg2163922024_)
                                (if (gx#stx-pair? _hd2163322022_)
                                    (let ((_e2163622027_
                                           (gx#stx-e _hd2163322022_)))
                                      (let ((_lp-tl2163822032_
                                             (##cdr _e2163622027_))
                                            (_lp-hd2163722030_
                                             (##car _e2163622027_)))
                                        (_loop2163522019_
                                         _lp-tl2163822032_
                                         (cons _lp-hd2163722030_
                                               _arg2163922024_))))
                                    (let ((_arg2164022035_
                                           (reverse _arg2163922024_)))
                                      (if (gx#stx-pair? _tl2163122011_)
                                          (let ((_e2164122038_
                                                 (gx#stx-e _tl2163122011_)))
                                            (let ((_tl2164322043_
                                                   (##cdr _e2164122038_))
                                                  (_hd2164222041_
                                                   (##car _e2164122038_)))
                                              (if (gx#stx-pair? _hd2164222041_)
                                                  (let ((_e2164422046_
                                                         (gx#stx-e
                                                          _hd2164222041_)))
                                                    (let ((_tl2164622051_
                                                           (##cdr _e2164422046_))
                                                          (_hd2164522049_
                                                           (##car _e2164422046_)))
                                                      (if (gx#identifier?
                                                           _hd2164522049_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2164522049_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2164622051_)
                          (let ((_e2164722054_ (gx#stx-e _tl2164622051_)))
                            (let ((_tl2164922059_ (##cdr _e2164722054_))
                                  (_hd2164822057_ (##car _e2164722054_)))
                              (if (gx#stx-pair? _hd2164822057_)
                                  (let ((_e2165022062_
                                         (gx#stx-e _hd2164822057_)))
                                    (let ((_tl2165222067_
                                           (##cdr _e2165022062_))
                                          (_hd2165122065_
                                           (##car _e2165022062_)))
                                      (if (gx#identifier? _hd2165122065_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2165122065_)
                                              (if (gx#stx-pair? _tl2165222067_)
                                                  (let ((_e2165322070_
                                                         (gx#stx-e
                                                          _tl2165222067_)))
                                                    (let ((_tl2165522075_
                                                           (##cdr _e2165322070_))
                                                          (_hd2165422073_
                                                           (##car _e2165322070_)))
                                                      (if (gx#stx-null?
                                                           _tl2165522075_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2164922059_)
                                                              (let ((___splice2773927740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2164922059_ '0)))
                        (let ((_tl2165822080_
                               (##vector-ref ___splice2773927740_ '1))
                              (_target2165622078_
                               (##vector-ref ___splice2773927740_ '0)))
                          (if (gx#stx-null? _tl2165822080_)
                              (letrec ((_loop2165922083_
                                        (lambda (_hd2165722086_
                                                 _xarg2166322088_)
                                          (if (gx#stx-pair? _hd2165722086_)
                                              (let ((_e2166022091_
                                                     (gx#stx-e
                                                      _hd2165722086_)))
                                                (let ((_lp-tl2166222096_
                                                       (##cdr _e2166022091_))
                                                      (_lp-hd2166122094_
                                                       (##car _e2166022091_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2166122094_)
                                                      (let ((_e2166522099_
                                                             (gx#stx-e
                                                              _lp-hd2166122094_)))
                                                        (let ((_tl2166722104_
                                                               (##cdr _e2166522099_))
                                                              (_hd2166622102_
                                                               (##car _e2166522099_)))
                                                          (if (gx#identifier?
                                                               _hd2166622102_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2166622102_)
                          (if (gx#stx-pair? _tl2166722104_)
                              (let ((_e2166822107_ (gx#stx-e _tl2166722104_)))
                                (let ((_tl2167022112_ (##cdr _e2166822107_))
                                      (_hd2166922110_ (##car _e2166822107_)))
                                  (if (gx#stx-null? _tl2167022112_)
                                      (_loop2165922083_
                                       _lp-tl2166222096_
                                       (cons _hd2166922110_ _xarg2166322088_))
                                      (___match2777227773_
                                       _e2162922006_
                                       _hd2163022009_
                                       _tl2163122011_
                                       ___splice2773727738_
                                       _target2163222014_
                                       _tl2163422016_))))
                              (___match2777227773_
                               _e2162922006_
                               _hd2163022009_
                               _tl2163122011_
                               ___splice2773727738_
                               _target2163222014_
                               _tl2163422016_))
                          (___match2777227773_
                           _e2162922006_
                           _hd2163022009_
                           _tl2163122011_
                           ___splice2773727738_
                           _target2163222014_
                           _tl2163422016_))
                      (___match2777227773_
                       _e2162922006_
                       _hd2163022009_
                       _tl2163122011_
                       ___splice2773727738_
                       _target2163222014_
                       _tl2163422016_))))
              (___match2777227773_
               _e2162922006_
               _hd2163022009_
               _tl2163122011_
               ___splice2773727738_
               _target2163222014_
               _tl2163422016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2166422115_
                                                     (reverse _xarg2166322088_)))
                                                (if (gx#stx-null?
                                                     _tl2164322043_)
                                                    (___kont2773527736_
                                                     _xarg2166422115_
                                                     _hd2165422073_
                                                     _arg2164022035_)
                                                    (___match2777227773_
                                                     _e2162922006_
                                                     _hd2163022009_
                                                     _tl2163122011_
                                                     ___splice2773727738_
                                                     _target2163222014_
                                                     _tl2163422016_)))))))
                                (_loop2165922083_ _target2165622078_ '()))
                              (___match2777227773_
                               _e2162922006_
                               _hd2163022009_
                               _tl2163122011_
                               ___splice2773727738_
                               _target2163222014_
                               _tl2163422016_))))
                      (___match2777227773_
                       _e2162922006_
                       _hd2163022009_
                       _tl2163122011_
                       ___splice2773727738_
                       _target2163222014_
                       _tl2163422016_))
                  (___match2777227773_
                   _e2162922006_
                   _hd2163022009_
                   _tl2163122011_
                   ___splice2773727738_
                   _target2163222014_
                   _tl2163422016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2777227773_
                                                   _e2162922006_
                                                   _hd2163022009_
                                                   _tl2163122011_
                                                   ___splice2773727738_
                                                   _target2163222014_
                                                   _tl2163422016_))
                                              (___match2777227773_
                                               _e2162922006_
                                               _hd2163022009_
                                               _tl2163122011_
                                               ___splice2773727738_
                                               _target2163222014_
                                               _tl2163422016_))
                                          (___match2777227773_
                                           _e2162922006_
                                           _hd2163022009_
                                           _tl2163122011_
                                           ___splice2773727738_
                                           _target2163222014_
                                           _tl2163422016_))))
                                  (___match2777227773_
                                   _e2162922006_
                                   _hd2163022009_
                                   _tl2163122011_
                                   ___splice2773727738_
                                   _target2163222014_
                                   _tl2163422016_))))
                          (___match2777227773_
                           _e2162922006_
                           _hd2163022009_
                           _tl2163122011_
                           ___splice2773727738_
                           _target2163222014_
                           _tl2163422016_))
                      (___match2777227773_
                       _e2162922006_
                       _hd2163022009_
                       _tl2163122011_
                       ___splice2773727738_
                       _target2163222014_
                       _tl2163422016_))
                  (___match2777227773_
                   _e2162922006_
                   _hd2163022009_
                   _tl2163122011_
                   ___splice2773727738_
                   _target2163222014_
                   _tl2163422016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2777227773_
                                                   _e2162922006_
                                                   _hd2163022009_
                                                   _tl2163122011_
                                                   ___splice2773727738_
                                                   _target2163222014_
                                                   _tl2163422016_))))
                                          (___match2777227773_
                                           _e2162922006_
                                           _hd2163022009_
                                           _tl2163122011_
                                           ___splice2773727738_
                                           _target2163222014_
                                           _tl2163422016_)))))))
                      (_loop2163522019_ _target2163222014_ '())))))
            (if (gx#stx-pair? ___stx2773327734_)
                (let ((_e2162922006_ (gx#stx-e ___stx2773327734_)))
                  (let ((_tl2163122011_ (##cdr _e2162922006_))
                        (_hd2163022009_ (##car _e2162922006_)))
                    (if (gx#stx-pair/null? _hd2163022009_)
                        (let ((___splice2773727738_
                               (gx#syntax-split-splice _hd2163022009_ '0)))
                          (let ((_tl2163422016_
                                 (##vector-ref ___splice2773727738_ '1))
                                (_target2163222014_
                                 (##vector-ref ___splice2773727738_ '0)))
                            (if (gx#stx-null? _tl2163422016_)
                                (___match2776027761_
                                 _e2162922006_
                                 _hd2163022009_
                                 _tl2163122011_
                                 ___splice2773727738_
                                 _target2163222014_
                                 _tl2163422016_)
                                (___match2777227773_
                                 _e2162922006_
                                 _hd2163022009_
                                 _tl2163122011_
                                 ___splice2773727738_
                                 _target2163222014_
                                 _tl2163422016_))))
                        (if (gx#stx-pair? _tl2163122011_)
                            (let ((_e2171721761_ (gx#stx-e _tl2163122011_)))
                              (let ((_tl2171921766_ (##cdr _e2171721761_))
                                    (_hd2171821764_ (##car _e2171721761_)))
                                (if (gx#stx-pair? _hd2171821764_)
                                    (let ((_e2172021769_
                                           (gx#stx-e _hd2171821764_)))
                                      (let ((_tl2172221774_
                                             (##cdr _e2172021769_))
                                            (_hd2172121772_
                                             (##car _e2172021769_)))
                                        (if (gx#identifier? _hd2172121772_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2172121772_)
                                                (if (gx#stx-pair?
                                                     _tl2172221774_)
                                                    (let ((_e2172321777_
                                                           (gx#stx-e
                                                            _tl2172221774_)))
                                                      (let ((_tl2172521782_
                                                             (##cdr _e2172321777_))
                                                            (_hd2172421780_
                                                             (##car _e2172321777_)))
                                                        (if (gx#stx-pair?
                                                             _hd2172421780_)
                                                            (let ((_e2172621785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2172421780_)))
                      (let ((_tl2172821790_ (##cdr _e2172621785_))
                            (_hd2172721788_ (##car _e2172621785_)))
                        (if (gx#identifier? _hd2172721788_)
                            (if (gx#stx-eq? '%#ref _hd2172721788_)
                                (if (gx#stx-pair? _tl2172821790_)
                                    (let ((_e2172921793_
                                           (gx#stx-e _tl2172821790_)))
                                      (let ((_tl2173121798_
                                             (##cdr _e2172921793_))
                                            (_hd2173021796_
                                             (##car _e2172921793_)))
                                        (if (gx#stx-null? _tl2173121798_)
                                            (if (gx#stx-pair? _tl2172521782_)
                                                (let ((_e2173221801_
                                                       (gx#stx-e
                                                        _tl2172521782_)))
                                                  (let ((_tl2173421806_
                                                         (##cdr _e2173221801_))
                                                        (_hd2173321804_
                                                         (##car _e2173221801_)))
                                                    (if (gx#stx-pair?
                                                         _hd2173321804_)
                                                        (let ((_e2173521809_
                                                               (gx#stx-e
                                                                _hd2173321804_)))
                                                          (let ((_tl2173721814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2173521809_))
                        (_hd2173621812_ (##car _e2173521809_)))
                    (if (gx#identifier? _hd2173621812_)
                        (if (gx#stx-eq? '%#ref _hd2173621812_)
                            (if (gx#stx-pair? _tl2173721814_)
                                (let ((_e2173821817_
                                       (gx#stx-e _tl2173721814_)))
                                  (let ((_tl2174021822_ (##cdr _e2173821817_))
                                        (_hd2173921820_ (##car _e2173821817_)))
                                    (if (gx#stx-null? _tl2174021822_)
                                        (if (gx#stx-pair? _tl2173421806_)
                                            (let ((_e2174121825_
                                                   (gx#stx-e _tl2173421806_)))
                                              (let ((_tl2174321830_
                                                     (##cdr _e2174121825_))
                                                    (_hd2174221828_
                                                     (##car _e2174121825_)))
                                                (if (gx#stx-null?
                                                     _tl2174321830_)
                                                    (if (gx#stx-null?
                                                         _tl2171921766_)
                                                        (___kont2774527746_
                                                         _hd2173921820_
                                                         _hd2173021796_
                                                         _hd2163022009_)
                                                        (_g2162421748_))
                                                    (_g2162421748_))))
                                            (_g2162421748_))
                                        (_g2162421748_))))
                                (_g2162421748_))
                            (_g2162421748_))
                        (_g2162421748_))))
                (_g2162421748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2162421748_))
                                            (_g2162421748_))))
                                    (_g2162421748_))
                                (_g2162421748_))
                            (_g2162421748_))))
                    (_g2162421748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2162421748_))
                                                (_g2162421748_))
                                            (_g2162421748_))))
                                    (_g2162421748_))))
                            (_g2162421748_)))))
                (_g2162421748_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form21424_)
      (let* ((_g2142621440_
              (lambda (_g2142721437_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2142721437_)))
             (_g2142521617_
              (lambda (_g2142721443_)
                (if (gx#stx-pair? _g2142721443_)
                    (let ((_e2143021445_ (gx#stx-e _g2142721443_)))
                      (let ((_hd2143121448_ (##car _e2143021445_))
                            (_tl2143221450_ (##cdr _e2143021445_)))
                        (if (gx#stx-pair? _tl2143221450_)
                            (let ((_e2143321453_ (gx#stx-e _tl2143221450_)))
                              (let ((_hd2143421456_ (##car _e2143321453_))
                                    (_tl2143521458_ (##cdr _e2143321453_)))
                                (if (gx#stx-null? _tl2143521458_)
                                    ((lambda (_L21461_ _L21462_)
                                       (let* ((___stx2785527856_ _L21462_)
                                              (_g2147721505_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2785527856_))))
                                         (let ((___kont2785727858_
                                                (lambda (_L21596_)
                                                  (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2160621609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2160721611_)
                              (cons _g2160621609_ _g2160721611_))
                            '()
                            _L21596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2786127862_
                                                (lambda (_L21547_ _L21548_)
                                                  (cons (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2155921562_ _g2156021564_)
                                    (cons _g2155921562_ _g2156021564_))
                                  '()
                                  _L21548_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2786527866_
                                                (lambda (_L21510_)
                                                  (cons '0 '()))))
                                           (let* ((___match2788027881_
                                                   (lambda (___splice2786327864_
                                                            _target2149121523_
                                                            _tl2149321525_)
                                                     (letrec ((_loop2149421528_
                                                               (lambda (_hd2149221531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2149821533_)
                         (if (gx#stx-pair? _hd2149221531_)
                             (let ((_e2149521536_ (gx#stx-e _hd2149221531_)))
                               (let ((_lp-tl2149721541_ (##cdr _e2149521536_))
                                     (_lp-hd2149621539_ (##car _e2149521536_)))
                                 (_loop2149421528_
                                  _lp-tl2149721541_
                                  (cons _lp-hd2149621539_ _arg2149821533_))))
                             (let ((_arg2149921544_ (reverse _arg2149821533_)))
                               (___kont2786127862_
                                _tl2149321525_
                                _arg2149921544_))))))
               (_loop2149421528_ _target2149121523_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2787427875_
                                                   (lambda (___splice2785927860_
                                                            _target2148021572_
                                                            _tl2148221574_)
                                                     (letrec ((_loop2148321577_
                                                               (lambda (_hd2148121580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2148721582_)
                         (if (gx#stx-pair? _hd2148121580_)
                             (let ((_e2148421585_ (gx#stx-e _hd2148121580_)))
                               (let ((_lp-tl2148621590_ (##cdr _e2148421585_))
                                     (_lp-hd2148521588_ (##car _e2148421585_)))
                                 (_loop2148321577_
                                  _lp-tl2148621590_
                                  (cons _lp-hd2148521588_ _arg2148721582_))))
                             (let ((_arg2148821593_ (reverse _arg2148721582_)))
                               (___kont2785727858_ _arg2148821593_))))))
               (_loop2148321577_ _target2148021572_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2785527856_)
                                                 (let ((___splice2785927860_
                                                        (gx#syntax-split-splice
                                                         ___stx2785527856_
                                                         '0)))
                                                   (let ((_tl2148221574_
                                                          (##vector-ref
                                                           ___splice2785927860_
                                                           '1))
                                                         (_target2148021572_
                                                          (##vector-ref
                                                           ___splice2785927860_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2148221574_)
                                                         (___match2787427875_
                                                          ___splice2785927860_
                                                          _target2148021572_
                                                          _tl2148221574_)
                                                         (___match2788027881_
                                                          ___splice2785927860_
                                                          _target2148021572_
                                                          _tl2148221574_))))
                                                 (___kont2786527866_
                                                  ___stx2785527856_))))))
                                     _hd2143421456_
                                     _hd2143121448_)
                                    (_g2142621440_ _g2142721443_))))
                            (_g2142621440_ _g2142721443_))))
                    (_g2142621440_ _g2142721443_)))))
        (_g2142521617_ _form21424_))))
  (define gxc#lambda-expr?
    (lambda (_expr21377_)
      (let* ((___stx2788327884_ _expr21377_)
             (_g2138021390_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2788327884_))))
        (let ((___kont2788527886_ (lambda (_L21410_) '#t))
              (___kont2788727888_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2788327884_)
              (let ((_e2138321402_ (gx#stx-e ___stx2788327884_)))
                (let ((_tl2138521407_ (##cdr _e2138321402_))
                      (_hd2138421405_ (##car _e2138321402_)))
                  (if (gx#identifier? _hd2138421405_)
                      (if (gx#stx-eq? '%#lambda _hd2138421405_)
                          (___kont2788527886_ _tl2138521407_)
                          (___kont2788727888_))
                      (___kont2788727888_))))
              (___kont2788727888_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr21330_)
      (let* ((___stx2790127902_ _expr21330_)
             (_g2133321343_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2790127902_))))
        (let ((___kont2790327904_ (lambda (_L21363_) '#t))
              (___kont2790527906_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2790127902_)
              (let ((_e2133621355_ (gx#stx-e ___stx2790127902_)))
                (let ((_tl2133821360_ (##cdr _e2133621355_))
                      (_hd2133721358_ (##car _e2133621355_)))
                  (if (gx#identifier? _hd2133721358_)
                      (if (gx#stx-eq? '%#case-lambda _hd2133721358_)
                          (___kont2790327904_ _tl2133821360_)
                          (___kont2790527906_))
                      (___kont2790527906_))))
              (___kont2790527906_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr21199_)
      (let* ((___stx2791927920_ _expr21199_)
             (_g2120221232_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2791927920_))))
        (let ((___kont2792127922_
               (lambda (_L21300_ _L21301_ _L21302_)
                 (if (gx#identifier? _L21302_)
                     (if (gxc#lambda-expr? _L21301_)
                         (gxc#case-lambda-expr? _L21300_)
                         '#f)
                     '#f)))
              (___kont2792327924_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2791927920_)
              (let ((_e2120721244_ (gx#stx-e ___stx2791927920_)))
                (let ((_tl2120921249_ (##cdr _e2120721244_))
                      (_hd2120821247_ (##car _e2120721244_)))
                  (if (gx#identifier? _hd2120821247_)
                      (if (gx#stx-eq? '%#let-values _hd2120821247_)
                          (if (gx#stx-pair? _tl2120921249_)
                              (let ((_e2121021252_ (gx#stx-e _tl2120921249_)))
                                (let ((_tl2121221257_ (##cdr _e2121021252_))
                                      (_hd2121121255_ (##car _e2121021252_)))
                                  (if (gx#stx-pair? _hd2121121255_)
                                      (let ((_e2121321260_
                                             (gx#stx-e _hd2121121255_)))
                                        (let ((_tl2121521265_
                                               (##cdr _e2121321260_))
                                              (_hd2121421263_
                                               (##car _e2121321260_)))
                                          (if (gx#stx-pair? _hd2121421263_)
                                              (let ((_e2121621268_
                                                     (gx#stx-e
                                                      _hd2121421263_)))
                                                (let ((_tl2121821273_
                                                       (##cdr _e2121621268_))
                                                      (_hd2121721271_
                                                       (##car _e2121621268_)))
                                                  (if (gx#stx-pair?
                                                       _hd2121721271_)
                                                      (let ((_e2121921276_
                                                             (gx#stx-e
                                                              _hd2121721271_)))
                                                        (let ((_tl2122121281_
                                                               (##cdr _e2121921276_))
                                                              (_hd2122021279_
                                                               (##car _e2121921276_)))
                                                          (if (gx#stx-null?
                                                               _tl2122121281_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2121821273_)
                          (let ((_e2122221284_ (gx#stx-e _tl2121821273_)))
                            (let ((_tl2122421289_ (##cdr _e2122221284_))
                                  (_hd2122321287_ (##car _e2122221284_)))
                              (if (gx#stx-null? _tl2122421289_)
                                  (if (gx#stx-null? _tl2121521265_)
                                      (if (gx#stx-pair? _tl2121221257_)
                                          (let ((_e2122521292_
                                                 (gx#stx-e _tl2121221257_)))
                                            (let ((_tl2122721297_
                                                   (##cdr _e2122521292_))
                                                  (_hd2122621295_
                                                   (##car _e2122521292_)))
                                              (if (gx#stx-null? _tl2122721297_)
                                                  (___kont2792127922_
                                                   _hd2122621295_
                                                   _hd2122321287_
                                                   _hd2122021279_)
                                                  (___kont2792327924_))))
                                          (___kont2792327924_))
                                      (___kont2792327924_))
                                  (___kont2792327924_))))
                          (___kont2792327924_))
                      (___kont2792327924_))))
              (___kont2792327924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2792327924_))))
                                      (___kont2792327924_))))
                              (___kont2792327924_))
                          (___kont2792327924_))
                      (___kont2792327924_))))
              (___kont2792327924_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr20524_)
      (let* ((___stx2798127982_ _expr20524_)
             (_g2052720685_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2798127982_))))
        (let ((___kont2798327984_
               (lambda (_L21073_
                        _L21074_
                        _L21075_
                        _L21076_
                        _L21077_
                        _L21078_
                        _L21079_
                        _L21080_
                        _L21081_
                        _L21082_
                        _L21083_)
                 (if (gxc#runtime-identifier=? _L21080_ 'apply)
                     (if (gxc#runtime-identifier=? _L21076_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L21075_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L21083_ _L21074_)
                                 (if (gx#free-identifier=? _L21082_ _L21079_)
                                     (if (gx#free-identifier=?
                                          _L21077_
                                          _L21073_)
                                         (gx#free-identifier=?
                                          _L21081_
                                          _L21078_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2798527986_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2798127982_)
              (let ((_e2054020697_ (gx#stx-e ___stx2798127982_)))
                (let ((_tl2054220702_ (##cdr _e2054020697_))
                      (_hd2054120700_ (##car _e2054020697_)))
                  (if (gx#identifier? _hd2054120700_)
                      (if (gx#stx-eq? '%#let-values _hd2054120700_)
                          (if (gx#stx-pair? _tl2054220702_)
                              (let ((_e2054320705_ (gx#stx-e _tl2054220702_)))
                                (let ((_tl2054520710_ (##cdr _e2054320705_))
                                      (_hd2054420708_ (##car _e2054320705_)))
                                  (if (gx#stx-pair? _hd2054420708_)
                                      (let ((_e2054620713_
                                             (gx#stx-e _hd2054420708_)))
                                        (let ((_tl2054820718_
                                               (##cdr _e2054620713_))
                                              (_hd2054720716_
                                               (##car _e2054620713_)))
                                          (if (gx#stx-pair? _hd2054720716_)
                                              (let ((_e2054920721_
                                                     (gx#stx-e
                                                      _hd2054720716_)))
                                                (let ((_tl2055120726_
                                                       (##cdr _e2054920721_))
                                                      (_hd2055020724_
                                                       (##car _e2054920721_)))
                                                  (if (gx#stx-pair?
                                                       _hd2055020724_)
                                                      (let ((_e2055220729_
                                                             (gx#stx-e
                                                              _hd2055020724_)))
                                                        (let ((_tl2055420734_
                                                               (##cdr _e2055220729_))
                                                              (_hd2055320732_
                                                               (##car _e2055220729_)))
                                                          (if (gx#stx-null?
                                                               _tl2055420734_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2055120726_)
                          (let ((_e2055520737_ (gx#stx-e _tl2055120726_)))
                            (let ((_tl2055720742_ (##cdr _e2055520737_))
                                  (_hd2055620740_ (##car _e2055520737_)))
                              (if (gx#stx-pair? _hd2055620740_)
                                  (let ((_e2055820745_
                                         (gx#stx-e _hd2055620740_)))
                                    (let ((_tl2056020750_
                                           (##cdr _e2055820745_))
                                          (_hd2055920748_
                                           (##car _e2055820745_)))
                                      (if (gx#identifier? _hd2055920748_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2055920748_)
                                              (if (gx#stx-pair? _tl2056020750_)
                                                  (let ((_e2056120753_
                                                         (gx#stx-e
                                                          _tl2056020750_)))
                                                    (let ((_tl2056320758_
                                                           (##cdr _e2056120753_))
                                                          (_hd2056220756_
                                                           (##car _e2056120753_)))
                                                      (if (gx#stx-pair?
                                                           _hd2056220756_)
                                                          (let ((_e2056420761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2056220756_)))
                    (let ((_tl2056620766_ (##cdr _e2056420761_))
                          (_hd2056520764_ (##car _e2056420761_)))
                      (if (gx#stx-pair? _hd2056520764_)
                          (let ((_e2056720769_ (gx#stx-e _hd2056520764_)))
                            (let ((_tl2056920774_ (##cdr _e2056720769_))
                                  (_hd2056820772_ (##car _e2056720769_)))
                              (if (gx#stx-pair? _hd2056820772_)
                                  (let ((_e2057020777_
                                         (gx#stx-e _hd2056820772_)))
                                    (let ((_tl2057220782_
                                           (##cdr _e2057020777_))
                                          (_hd2057120780_
                                           (##car _e2057020777_)))
                                      (if (gx#stx-null? _tl2057220782_)
                                          (if (gx#stx-pair? _tl2056920774_)
                                              (let ((_e2057320785_
                                                     (gx#stx-e
                                                      _tl2056920774_)))
                                                (let ((_tl2057520790_
                                                       (##cdr _e2057320785_))
                                                      (_hd2057420788_
                                                       (##car _e2057320785_)))
                                                  (if (gx#stx-null?
                                                       _tl2057520790_)
                                                      (if (gx#stx-null?
                                                           _tl2056620766_)
                                                          (if (gx#stx-pair?
                                                               _tl2056320758_)
                                                              (let ((_e2057620793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2056320758_)))
                        (let ((_tl2057820798_ (##cdr _e2057620793_))
                              (_hd2057720796_ (##car _e2057620793_)))
                          (if (gx#stx-pair? _hd2057720796_)
                              (let ((_e2057920801_ (gx#stx-e _hd2057720796_)))
                                (let ((_tl2058120806_ (##cdr _e2057920801_))
                                      (_hd2058020804_ (##car _e2057920801_)))
                                  (if (gx#identifier? _hd2058020804_)
                                      (if (gx#stx-eq? '%#lambda _hd2058020804_)
                                          (if (gx#stx-pair? _tl2058120806_)
                                              (let ((_e2058220809_
                                                     (gx#stx-e
                                                      _tl2058120806_)))
                                                (let ((_tl2058420814_
                                                       (##cdr _e2058220809_))
                                                      (_hd2058320812_
                                                       (##car _e2058220809_)))
                                                  (if (gx#stx-pair?
                                                       _hd2058320812_)
                                                      (let ((_e2058520817_
                                                             (gx#stx-e
                                                              _hd2058320812_)))
                                                        (let ((_tl2058720822_
                                                               (##cdr _e2058520817_))
                                                              (_hd2058620820_
                                                               (##car _e2058520817_)))
                                                          (if (gx#stx-pair?
                                                               _tl2058420814_)
                                                              (let ((_e2058820825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2058420814_)))
                        (let ((_tl2059020830_ (##cdr _e2058820825_))
                              (_hd2058920828_ (##car _e2058820825_)))
                          (if (gx#stx-pair? _hd2058920828_)
                              (let ((_e2059120833_ (gx#stx-e _hd2058920828_)))
                                (let ((_tl2059320838_ (##cdr _e2059120833_))
                                      (_hd2059220836_ (##car _e2059120833_)))
                                  (if (gx#identifier? _hd2059220836_)
                                      (if (gx#stx-eq? '%#call _hd2059220836_)
                                          (if (gx#stx-pair? _tl2059320838_)
                                              (let ((_e2059420841_
                                                     (gx#stx-e
                                                      _tl2059320838_)))
                                                (let ((_tl2059620846_
                                                       (##cdr _e2059420841_))
                                                      (_hd2059520844_
                                                       (##car _e2059420841_)))
                                                  (if (gx#stx-pair?
                                                       _hd2059520844_)
                                                      (let ((_e2059720849_
                                                             (gx#stx-e
                                                              _hd2059520844_)))
                                                        (let ((_tl2059920854_
                                                               (##cdr _e2059720849_))
                                                              (_hd2059820852_
                                                               (##car _e2059720849_)))
                                                          (if (gx#identifier?
                                                               _hd2059820852_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2059820852_)
                          (if (gx#stx-pair? _tl2059920854_)
                              (let ((_e2060020857_ (gx#stx-e _tl2059920854_)))
                                (let ((_tl2060220862_ (##cdr _e2060020857_))
                                      (_hd2060120860_ (##car _e2060020857_)))
                                  (if (gx#stx-null? _tl2060220862_)
                                      (if (gx#stx-pair? _tl2059620846_)
                                          (let ((_e2060320865_
                                                 (gx#stx-e _tl2059620846_)))
                                            (let ((_tl2060520870_
                                                   (##cdr _e2060320865_))
                                                  (_hd2060420868_
                                                   (##car _e2060320865_)))
                                              (if (gx#stx-pair? _hd2060420868_)
                                                  (let ((_e2060620873_
                                                         (gx#stx-e
                                                          _hd2060420868_)))
                                                    (let ((_tl2060820878_
                                                           (##cdr _e2060620873_))
                                                          (_hd2060720876_
                                                           (##car _e2060620873_)))
                                                      (if (gx#identifier?
                                                           _hd2060720876_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2060720876_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2060820878_)
                          (let ((_e2060920881_ (gx#stx-e _tl2060820878_)))
                            (let ((_tl2061120886_ (##cdr _e2060920881_))
                                  (_hd2061020884_ (##car _e2060920881_)))
                              (if (gx#stx-null? _tl2061120886_)
                                  (if (gx#stx-pair? _tl2060520870_)
                                      (let ((_e2061220889_
                                             (gx#stx-e _tl2060520870_)))
                                        (let ((_tl2061420894_
                                               (##cdr _e2061220889_))
                                              (_hd2061320892_
                                               (##car _e2061220889_)))
                                          (if (gx#stx-pair? _hd2061320892_)
                                              (let ((_e2061520897_
                                                     (gx#stx-e
                                                      _hd2061320892_)))
                                                (let ((_tl2061720902_
                                                       (##cdr _e2061520897_))
                                                      (_hd2061620900_
                                                       (##car _e2061520897_)))
                                                  (if (gx#identifier?
                                                       _hd2061620900_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2061620900_)
                                                          (if (gx#stx-pair?
                                                               _tl2061720902_)
                                                              (let ((_e2061820905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2061720902_)))
                        (let ((_tl2062020910_ (##cdr _e2061820905_))
                              (_hd2061920908_ (##car _e2061820905_)))
                          (if (gx#stx-null? _tl2062020910_)
                              (if (gx#stx-null? _tl2059020830_)
                                  (if (gx#stx-null? _tl2057820798_)
                                      (if (gx#stx-null? _tl2055720742_)
                                          (if (gx#stx-null? _tl2054820718_)
                                              (if (gx#stx-pair? _tl2054520710_)
                                                  (let ((_e2062120913_
                                                         (gx#stx-e
                                                          _tl2054520710_)))
                                                    (let ((_tl2062320918_
                                                           (##cdr _e2062120913_))
                                                          (_hd2062220916_
                                                           (##car _e2062120913_)))
                                                      (if (gx#stx-pair?
                                                           _hd2062220916_)
                                                          (let ((_e2062420921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2062220916_)))
                    (let ((_tl2062620926_ (##cdr _e2062420921_))
                          (_hd2062520924_ (##car _e2062420921_)))
                      (if (gx#identifier? _hd2062520924_)
                          (if (gx#stx-eq? '%#lambda _hd2062520924_)
                              (if (gx#stx-pair? _tl2062620926_)
                                  (let ((_e2062720929_
                                         (gx#stx-e _tl2062620926_)))
                                    (let ((_tl2062920934_
                                           (##cdr _e2062720929_))
                                          (_hd2062820932_
                                           (##car _e2062720929_)))
                                      (if (gx#stx-pair? _tl2062920934_)
                                          (let ((_e2063020937_
                                                 (gx#stx-e _tl2062920934_)))
                                            (let ((_tl2063220942_
                                                   (##cdr _e2063020937_))
                                                  (_hd2063120940_
                                                   (##car _e2063020937_)))
                                              (if (gx#stx-pair? _hd2063120940_)
                                                  (let ((_e2063320945_
                                                         (gx#stx-e
                                                          _hd2063120940_)))
                                                    (let ((_tl2063520950_
                                                           (##cdr _e2063320945_))
                                                          (_hd2063420948_
                                                           (##car _e2063320945_)))
                                                      (if (gx#identifier?
                                                           _hd2063420948_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2063420948_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2063520950_)
                          (let ((_e2063620953_ (gx#stx-e _tl2063520950_)))
                            (let ((_tl2063820958_ (##cdr _e2063620953_))
                                  (_hd2063720956_ (##car _e2063620953_)))
                              (if (gx#stx-pair? _hd2063720956_)
                                  (let ((_e2063920961_
                                         (gx#stx-e _hd2063720956_)))
                                    (let ((_tl2064120966_
                                           (##cdr _e2063920961_))
                                          (_hd2064020964_
                                           (##car _e2063920961_)))
                                      (if (gx#identifier? _hd2064020964_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2064020964_)
                                              (if (gx#stx-pair? _tl2064120966_)
                                                  (let ((_e2064220969_
                                                         (gx#stx-e
                                                          _tl2064120966_)))
                                                    (let ((_tl2064420974_
                                                           (##cdr _e2064220969_))
                                                          (_hd2064320972_
                                                           (##car _e2064220969_)))
                                                      (if (gx#stx-null?
                                                           _tl2064420974_)
                                                          (if (gx#stx-pair?
                                                               _tl2063820958_)
                                                              (let ((_e2064520977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2063820958_)))
                        (let ((_tl2064720982_ (##cdr _e2064520977_))
                              (_hd2064620980_ (##car _e2064520977_)))
                          (if (gx#stx-pair? _hd2064620980_)
                              (let ((_e2064820985_ (gx#stx-e _hd2064620980_)))
                                (let ((_tl2065020990_ (##cdr _e2064820985_))
                                      (_hd2064920988_ (##car _e2064820985_)))
                                  (if (gx#identifier? _hd2064920988_)
                                      (if (gx#stx-eq? '%#ref _hd2064920988_)
                                          (if (gx#stx-pair? _tl2065020990_)
                                              (let ((_e2065120993_
                                                     (gx#stx-e
                                                      _tl2065020990_)))
                                                (let ((_tl2065320998_
                                                       (##cdr _e2065120993_))
                                                      (_hd2065220996_
                                                       (##car _e2065120993_)))
                                                  (if (gx#stx-null?
                                                       _tl2065320998_)
                                                      (if (gx#stx-pair?
                                                           _tl2064720982_)
                                                          (let ((_e2065421001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2064720982_)))
                    (let ((_tl2065621006_ (##cdr _e2065421001_))
                          (_hd2065521004_ (##car _e2065421001_)))
                      (if (gx#stx-pair? _hd2065521004_)
                          (let ((_e2065721009_ (gx#stx-e _hd2065521004_)))
                            (let ((_tl2065921014_ (##cdr _e2065721009_))
                                  (_hd2065821012_ (##car _e2065721009_)))
                              (if (gx#identifier? _hd2065821012_)
                                  (if (gx#stx-eq? '%#quote _hd2065821012_)
                                      (if (gx#stx-pair? _tl2065921014_)
                                          (let ((_e2066021017_
                                                 (gx#stx-e _tl2065921014_)))
                                            (let ((_tl2066221022_
                                                   (##cdr _e2066021017_))
                                                  (_hd2066121020_
                                                   (##car _e2066021017_)))
                                              (if (gx#stx-null? _tl2066221022_)
                                                  (if (gx#stx-pair?
                                                       _tl2065621006_)
                                                      (let ((_e2066321025_
                                                             (gx#stx-e
                                                              _tl2065621006_)))
                                                        (let ((_tl2066521030_
                                                               (##cdr _e2066321025_))
                                                              (_hd2066421028_
                                                               (##car _e2066321025_)))
                                                          (if (gx#stx-pair?
                                                               _hd2066421028_)
                                                              (let ((_e2066621033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2066421028_)))
                        (let ((_tl2066821038_ (##cdr _e2066621033_))
                              (_hd2066721036_ (##car _e2066621033_)))
                          (if (gx#identifier? _hd2066721036_)
                              (if (gx#stx-eq? '%#ref _hd2066721036_)
                                  (if (gx#stx-pair? _tl2066821038_)
                                      (let ((_e2066921041_
                                             (gx#stx-e _tl2066821038_)))
                                        (let ((_tl2067121046_
                                               (##cdr _e2066921041_))
                                              (_hd2067021044_
                                               (##car _e2066921041_)))
                                          (if (gx#stx-null? _tl2067121046_)
                                              (if (gx#stx-pair? _tl2066521030_)
                                                  (let ((_e2067221049_
                                                         (gx#stx-e
                                                          _tl2066521030_)))
                                                    (let ((_tl2067421054_
                                                           (##cdr _e2067221049_))
                                                          (_hd2067321052_
                                                           (##car _e2067221049_)))
                                                      (if (gx#stx-pair?
                                                           _hd2067321052_)
                                                          (let ((_e2067521057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2067321052_)))
                    (let ((_tl2067721062_ (##cdr _e2067521057_))
                          (_hd2067621060_ (##car _e2067521057_)))
                      (if (gx#identifier? _hd2067621060_)
                          (if (gx#stx-eq? '%#ref _hd2067621060_)
                              (if (gx#stx-pair? _tl2067721062_)
                                  (let ((_e2067821065_
                                         (gx#stx-e _tl2067721062_)))
                                    (let ((_tl2068021070_
                                           (##cdr _e2067821065_))
                                          (_hd2067921068_
                                           (##car _e2067821065_)))
                                      (if (gx#stx-null? _tl2068021070_)
                                          (if (gx#stx-null? _tl2067421054_)
                                              (if (gx#stx-null? _tl2063220942_)
                                                  (if (gx#stx-null?
                                                       _tl2062320918_)
                                                      (___kont2798327984_
                                                       _hd2067921068_
                                                       _hd2067021044_
                                                       _hd2065220996_
                                                       _hd2064320972_
                                                       _hd2062820932_
                                                       _hd2061920908_
                                                       _hd2061020884_
                                                       _hd2060120860_
                                                       _hd2058620820_
                                                       _hd2057120780_
                                                       _hd2055320732_)
                                                      (___kont2798527986_))
                                                  (___kont2798527986_))
                                              (___kont2798527986_))
                                          (___kont2798527986_))))
                                  (___kont2798527986_))
                              (___kont2798527986_))
                          (___kont2798527986_))))
                  (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2798527986_))
                                              (___kont2798527986_))))
                                      (___kont2798527986_))
                                  (___kont2798527986_))
                              (___kont2798527986_))))
                      (___kont2798527986_))))
              (___kont2798527986_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2798527986_))))
                                          (___kont2798527986_))
                                      (___kont2798527986_))
                                  (___kont2798527986_))))
                          (___kont2798527986_))))
                  (___kont2798527986_))
              (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2798527986_))
                                          (___kont2798527986_))
                                      (___kont2798527986_))))
                              (___kont2798527986_))))
                      (___kont2798527986_))
                  (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2798527986_))
                                              (___kont2798527986_))
                                          (___kont2798527986_))))
                                  (___kont2798527986_))))
                          (___kont2798527986_))
                      (___kont2798527986_))
                  (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2798527986_))))
                                          (___kont2798527986_))))
                                  (___kont2798527986_))
                              (___kont2798527986_))
                          (___kont2798527986_))))
                  (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2798527986_))
                                              (___kont2798527986_))
                                          (___kont2798527986_))
                                      (___kont2798527986_))
                                  (___kont2798527986_))
                              (___kont2798527986_))))
                      (___kont2798527986_))
                  (___kont2798527986_))
              (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2798527986_))))
                                      (___kont2798527986_))
                                  (___kont2798527986_))))
                          (___kont2798527986_))
                      (___kont2798527986_))
                  (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2798527986_))))
                                          (___kont2798527986_))
                                      (___kont2798527986_))))
                              (___kont2798527986_))
                          (___kont2798527986_))
                      (___kont2798527986_))))
              (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2798527986_))
                                          (___kont2798527986_))
                                      (___kont2798527986_))))
                              (___kont2798527986_))))
                      (___kont2798527986_))))
              (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2798527986_))
                                          (___kont2798527986_))
                                      (___kont2798527986_))))
                              (___kont2798527986_))))
                      (___kont2798527986_))
                  (___kont2798527986_))
              (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2798527986_))
                                          (___kont2798527986_))))
                                  (___kont2798527986_))))
                          (___kont2798527986_))))
                  (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2798527986_))
                                              (___kont2798527986_))
                                          (___kont2798527986_))))
                                  (___kont2798527986_))))
                          (___kont2798527986_))
                      (___kont2798527986_))))
              (___kont2798527986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2798527986_))))
                                      (___kont2798527986_))))
                              (___kont2798527986_))
                          (___kont2798527986_))
                      (___kont2798527986_))))
              (___kont2798527986_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx20266_ _id20267_ _clauses20268_ _gensym?20269_)
        (let _lp20271_ ((_rest20273_ _clauses20268_)
                        (_ids20274_ '())
                        (_impls20275_ '())
                        (_clauses20276_ '()))
          (let* ((_rest2027720285_ _rest20273_)
                 (_else2027920293_
                  (lambda ()
                    (values (reverse _ids20274_)
                            (reverse _impls20275_)
                            (reverse _clauses20276_))))
                 (_K2028120498_
                  (lambda (_rest20296_ _clause20297_)
                    (if (gxc#dispatch-lambda-form? _clause20297_)
                        (_lp20271_
                         _rest20296_
                         _ids20274_
                         _impls20275_
                         (cons _clause20297_ _clauses20276_))
                        (let* ((_g2029920310_
                                (lambda (_g2030020307_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2030020307_)))
                               (_g2029820495_
                                (lambda (_g2030020313_)
                                  (if (gx#stx-pair? _g2030020313_)
                                      (let ((_e2030320315_
                                             (gx#stx-e _g2030020313_)))
                                        (let ((_hd2030420318_
                                               (##car _e2030320315_))
                                              (_tl2030520320_
                                               (##cdr _e2030320315_)))
                                          ((lambda (_L20323_ _L20324_)
                                             (let* ((_id20341_
                                                     (make-symbol
                                                      (gx#stx-e _id20267_)
                                                      '"__"
                                                      (length _clauses20276_)
                                                      (if _gensym?20269_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id20343_
                                                     (gx#core-quote-syntax__1
                                                      _id20341_
                                                      (gx#stx-source
                                                       _stx20266_)))
                                                    (_impl20345_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L20324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20323_))
              _stx20266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20492_
                                                     (let* ((___stx2836528366_
                                                             _L20324_)
                                                            (_g2034920377_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx2836528366_))))
                                                       (let ((___kont2836728368_
                                                              (lambda (_L20471_)
                                                                (cons _L20324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id20343_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2048120484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2048220486_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g2048120484_ '()))
                           _g2048220486_))
                   '()
                   _L20471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx20266_)
                                    '()))))
                     (___kont2837128372_
                      (lambda (_L20422_ _L20423_)
                        (cons _L20324_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id20343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L20422_ '()))
                             '())
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2043420437_ _g2043520439_)
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _g2043420437_ '()))
                                         _g2043520439_))
                                 '()
                                 _L20423_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx20266_)
                                    '()))))
                     (___kont2837528376_
                      (lambda (_L20382_)
                        (cons _L20324_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id20343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L20382_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx20266_)
                                    '())))))
                 (let* ((___match2839028391_
                         (lambda (___splice2837328374_
                                  _target2036320398_
                                  _tl2036520400_)
                           (letrec ((_loop2036620403_
                                     (lambda (_hd2036420406_ _arg2037020408_)
                                       (if (gx#stx-pair? _hd2036420406_)
                                           (let ((_e2036720411_
                                                  (gx#stx-e _hd2036420406_)))
                                             (let ((_lp-tl2036920416_
                                                    (##cdr _e2036720411_))
                                                   (_lp-hd2036820414_
                                                    (##car _e2036720411_)))
                                               (_loop2036620403_
                                                _lp-tl2036920416_
                                                (cons _lp-hd2036820414_
                                                      _arg2037020408_))))
                                           (let ((_arg2037120419_
                                                  (reverse _arg2037020408_)))
                                             (___kont2837128372_
                                              _tl2036520400_
                                              _arg2037120419_))))))
                             (_loop2036620403_ _target2036320398_ '()))))
                        (___match2838428385_
                         (lambda (___splice2836928370_
                                  _target2035220447_
                                  _tl2035420449_)
                           (letrec ((_loop2035520452_
                                     (lambda (_hd2035320455_ _arg2035920457_)
                                       (if (gx#stx-pair? _hd2035320455_)
                                           (let ((_e2035620460_
                                                  (gx#stx-e _hd2035320455_)))
                                             (let ((_lp-tl2035820465_
                                                    (##cdr _e2035620460_))
                                                   (_lp-hd2035720463_
                                                    (##car _e2035620460_)))
                                               (_loop2035520452_
                                                _lp-tl2035820465_
                                                (cons _lp-hd2035720463_
                                                      _arg2035920457_))))
                                           (let ((_arg2036020468_
                                                  (reverse _arg2035920457_)))
                                             (___kont2836728368_
                                              _arg2036020468_))))))
                             (_loop2035520452_ _target2035220447_ '())))))
                   (if (gx#stx-pair/null? ___stx2836528366_)
                       (let ((___splice2836928370_
                              (gx#syntax-split-splice ___stx2836528366_ '0)))
                         (let ((_tl2035420449_
                                (##vector-ref ___splice2836928370_ '1))
                               (_target2035220447_
                                (##vector-ref ___splice2836928370_ '0)))
                           (if (gx#stx-null? _tl2035420449_)
                               (___match2838428385_
                                ___splice2836928370_
                                _target2035220447_
                                _tl2035420449_)
                               (___match2839028391_
                                ___splice2836928370_
                                _target2035220447_
                                _tl2035420449_))))
                       (___kont2837528376_ ___stx2836528366_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp20271_
                                                _rest20296_
                                                (cons _id20343_ _ids20274_)
                                                (cons _impl20345_ _impls20275_)
                                                (cons _clause20492_
                                                      _clauses20276_))))
                                           _tl2030520320_
                                           _hd2030420318_)))
                                      (_g2029920310_ _g2030020313_)))))
                          (_g2029820495_ _clause20297_))))))
            (if (##pair? _rest2027720285_)
                (let ((_hd2028220501_ (##car _rest2027720285_))
                      (_tl2028320503_ (##cdr _rest2027720285_)))
                  (let* ((_clause20506_ _hd2028220501_)
                         (_rest20508_ _tl2028320503_))
                    (_K2028120498_ _rest20508_ _clause20506_)))
                (_else2027920293_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20513_ _id20514_ _clauses20515_)
          (let ((_gensym?20517_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx20513_
             _id20514_
             _clauses20515_
             _gensym?20517_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g28905_
          (let ((_g28904_ (length _g28905_)))
            (cond ((##fx= _g28904_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g28905_))
                  ((##fx= _g28904_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g28905_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g28905_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19543_)
      (letrec ((_case-lambda-clause-def19545_
                (lambda (_id20262_ _impl20263_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id20262_ '())
                               (cons (gxc#compile-e _impl20263_) '())))
                   _stx19543_)))
               (_opt-lambda-dispatch-name19546_
                (lambda (_id20258_)
                  (if (uninterned-symbol? _id20258_)
                      (let ((_str20260_ (symbol->string _id20258_)))
                        (if (string-prefix? _str20260_ '"opt-lambda")
                            '"%"
                            _id20258_))
                      _id20258_)))
               (_kw-lambda-dispatch-name19547_
                (lambda (_id20253_ _name20254_)
                  (if (uninterned-symbol? _id20253_)
                      (let ((_str20256_ (symbol->string _id20253_)))
                        (if (string-prefix? _str20256_ '"kw-lambda")
                            _name20254_
                            _id20253_))
                      _id20253_))))
        (let* ((___stx2841328414_ _stx19543_)
               (_g1955219611_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2841328414_))))
          (let ((___kont2841528416_
                 (lambda (_L20162_ _L20163_)
                   (let* ((___stx2839328394_ _L20162_)
                          (_g2018020194_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2839328394_))))
                     (let ((___kont2839528396_ (lambda (_L20238_) _stx19543_))
                           (___kont2839728398_
                            (lambda (_L20207_)
                              (let ((_g28906_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx19543_
                                      _L20163_
                                      _L20207_)))
                                (begin
                                  (let ((_g28907_
                                         (if (##values? _g28906_)
                                             (##vector-length _g28906_)
                                             1)))
                                    (if (not (##fx= _g28907_ 3))
                                        (error "Context expects 3 values"
                                               _g28907_)))
                                  (let ((_ids20217_ (##vector-ref _g28906_ 0))
                                        (_impls20218_
                                         (##vector-ref _g28906_ 1))
                                        (_clauses20219_
                                         (##vector-ref _g28906_ 2)))
                                    (let* ((_g28908_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids20217_))
                                           (_defs20222_
                                            (map _case-lambda-clause-def19545_
                                                 _ids20217_
                                                 _impls20218_)))
                                      (begin
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L20163_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids20217_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L20163_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses20219_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx19543_)
                     '())
               _defs20222_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx19543_)))))))))
                       (let ((___match2840428405_
                              (lambda (_e2018320230_
                                       _hd2018420233_
                                       _tl2018520235_)
                                (let ((_L20238_ _tl2018520235_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L20238_)
                                      (___kont2839528396_ _L20238_)
                                      (___kont2839728398_ _tl2018520235_))))))
                         (if (gx#stx-pair? ___stx2839328394_)
                             (let ((_e2018320230_
                                    (gx#stx-e ___stx2839328394_)))
                               (let ((_tl2018520235_ (##cdr _e2018320230_))
                                     (_hd2018420233_ (##car _e2018320230_)))
                                 (___match2840428405_
                                  _e2018320230_
                                  _hd2018420233_
                                  _tl2018520235_)))
                             (_g2018020194_)))))))
                (___kont2841728418_
                 (lambda (_L19980_ _L19981_)
                   (let* ((_g1999720027_
                           (lambda (_g1999820024_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1999820024_)))
                          (_g1999620122_
                           (lambda (_g1999820030_)
                             (if (gx#stx-pair? _g1999820030_)
                                 (let ((_e2000220032_
                                        (gx#stx-e _g1999820030_)))
                                   (let ((_hd2000320035_ (##car _e2000220032_))
                                         (_tl2000420037_
                                          (##cdr _e2000220032_)))
                                     (if (gx#stx-pair? _tl2000420037_)
                                         (let ((_e2000520040_
                                                (gx#stx-e _tl2000420037_)))
                                           (let ((_hd2000620043_
                                                  (##car _e2000520040_))
                                                 (_tl2000720045_
                                                  (##cdr _e2000520040_)))
                                             (if (gx#stx-pair? _hd2000620043_)
                                                 (let ((_e2000820048_
                                                        (gx#stx-e
                                                         _hd2000620043_)))
                                                   (let ((_hd2000920051_
                                                          (##car _e2000820048_))
                                                         (_tl2001020053_
                                                          (##cdr _e2000820048_)))
                                                     (if (gx#stx-pair?
                                                          _hd2000920051_)
                                                         (let ((_e2001120056_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2000920051_)))
                   (let ((_hd2001220059_ (##car _e2001120056_))
                         (_tl2001320061_ (##cdr _e2001120056_)))
                     (if (gx#stx-pair? _hd2001220059_)
                         (let ((_e2001420064_ (gx#stx-e _hd2001220059_)))
                           (let ((_hd2001520067_ (##car _e2001420064_))
                                 (_tl2001620069_ (##cdr _e2001420064_)))
                             (if (gx#stx-null? _tl2001620069_)
                                 (if (gx#stx-pair? _tl2001320061_)
                                     (let ((_e2001720072_
                                            (gx#stx-e _tl2001320061_)))
                                       (let ((_hd2001820075_
                                              (##car _e2001720072_))
                                             (_tl2001920077_
                                              (##cdr _e2001720072_)))
                                         (if (gx#stx-null? _tl2001920077_)
                                             (if (gx#stx-null? _tl2001020053_)
                                                 (if (gx#stx-pair?
                                                      _tl2000720045_)
                                                     (let ((_e2002020080_
                                                            (gx#stx-e
                                                             _tl2000720045_)))
                                                       (let ((_hd2002120083_
                                                              (##car _e2002020080_))
                                                             (_tl2002220085_
                                                              (##cdr _e2002020080_)))
                                                         (if (gx#stx-null?
                                                              _tl2002220085_)
                                                             ((lambda (_L20088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20089_
                               _L20090_)
                        (let* ((_lambda-id20114_
                                (make-symbol
                                 (gx#stx-e _L19981_)
                                 '"__"
                                 (_opt-lambda-dispatch-name19546_
                                  (gx#stx-e _L20090_))))
                               (_lambda-id20116_
                                (gx#core-quote-syntax__1
                                 _lambda-id20114_
                                 (gx#stx-source _stx19543_)))
                               (_g28909_
                                (gx#core-bind-runtime!__0 _lambda-id20116_))
                               (_new-case-lambda-expr20119_
                                (gxc#apply-expression-subst
                                 _L20088_
                                 _L20090_
                                 _lambda-id20116_)))
                          (begin
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L19981_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id20116_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id20116_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L20089_)
                                                            '())))
                                          _stx19543_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L19981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr20119_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx19543_))
                                               '())))
                             _stx19543_))))
                      _hd2002120083_
                      _hd2001820075_
                      _hd2001520067_)
                     (_g1999720027_ _g1999820030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1999720027_
                                                      _g1999820030_))
                                                 (_g1999720027_ _g1999820030_))
                                             (_g1999720027_ _g1999820030_))))
                                     (_g1999720027_ _g1999820030_))
                                 (_g1999720027_ _g1999820030_))))
                         (_g1999720027_ _g1999820030_))))
                 (_g1999720027_ _g1999820030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1999720027_
                                                  _g1999820030_))))
                                         (_g1999720027_ _g1999820030_))))
                                 (_g1999720027_ _g1999820030_)))))
                     (_g1999620122_ _L19980_))))
                (___kont2841928420_
                 (lambda (_L19694_ _L19695_)
                   (let* ((_g1971119764_
                           (lambda (_g1971219761_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1971219761_)))
                          (_g1971019940_
                           (lambda (_g1971219767_)
                             (if (gx#stx-pair? _g1971219767_)
                                 (let ((_e1971819769_
                                        (gx#stx-e _g1971219767_)))
                                   (let ((_hd1971919772_ (##car _e1971819769_))
                                         (_tl1972019774_
                                          (##cdr _e1971819769_)))
                                     (if (gx#stx-pair? _tl1972019774_)
                                         (let ((_e1972119777_
                                                (gx#stx-e _tl1972019774_)))
                                           (let ((_hd1972219780_
                                                  (##car _e1972119777_))
                                                 (_tl1972319782_
                                                  (##cdr _e1972119777_)))
                                             (if (gx#stx-pair? _hd1972219780_)
                                                 (let ((_e1972419785_
                                                        (gx#stx-e
                                                         _hd1972219780_)))
                                                   (let ((_hd1972519788_
                                                          (##car _e1972419785_))
                                                         (_tl1972619790_
                                                          (##cdr _e1972419785_)))
                                                     (if (gx#stx-pair?
                                                          _hd1972519788_)
                                                         (let ((_e1972719793_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1972519788_)))
                   (let ((_hd1972819796_ (##car _e1972719793_))
                         (_tl1972919798_ (##cdr _e1972719793_)))
                     (if (gx#stx-pair? _hd1972819796_)
                         (let ((_e1973019801_ (gx#stx-e _hd1972819796_)))
                           (let ((_hd1973119804_ (##car _e1973019801_))
                                 (_tl1973219806_ (##cdr _e1973019801_)))
                             (if (gx#stx-null? _tl1973219806_)
                                 (if (gx#stx-pair? _tl1972919798_)
                                     (let ((_e1973319809_
                                            (gx#stx-e _tl1972919798_)))
                                       (let ((_hd1973419812_
                                              (##car _e1973319809_))
                                             (_tl1973519814_
                                              (##cdr _e1973319809_)))
                                         (if (gx#stx-pair? _hd1973419812_)
                                             (let ((_e1973619817_
                                                    (gx#stx-e _hd1973419812_)))
                                               (let ((_hd1973719820_
                                                      (##car _e1973619817_))
                                                     (_tl1973819822_
                                                      (##cdr _e1973619817_)))
                                                 (if (gx#stx-pair?
                                                      _tl1973819822_)
                                                     (let ((_e1973919825_
                                                            (gx#stx-e
                                                             _tl1973819822_)))
                                                       (let ((_hd1974019828_
                                                              (##car _e1973919825_))
                                                             (_tl1974119830_
                                                              (##cdr _e1973919825_)))
                                                         (if (gx#stx-pair?
                                                              _hd1974019828_)
                                                             (let ((_e1974219833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1974019828_)))
                       (let ((_hd1974319836_ (##car _e1974219833_))
                             (_tl1974419838_ (##cdr _e1974219833_)))
                         (if (gx#stx-pair? _hd1974319836_)
                             (let ((_e1974519841_ (gx#stx-e _hd1974319836_)))
                               (let ((_hd1974619844_ (##car _e1974519841_))
                                     (_tl1974719846_ (##cdr _e1974519841_)))
                                 (if (gx#stx-pair? _hd1974619844_)
                                     (let ((_e1974819849_
                                            (gx#stx-e _hd1974619844_)))
                                       (let ((_hd1974919852_
                                              (##car _e1974819849_))
                                             (_tl1975019854_
                                              (##cdr _e1974819849_)))
                                         (if (gx#stx-null? _tl1975019854_)
                                             (if (gx#stx-pair? _tl1974719846_)
                                                 (let ((_e1975119857_
                                                        (gx#stx-e
                                                         _tl1974719846_)))
                                                   (let ((_hd1975219860_
                                                          (##car _e1975119857_))
                                                         (_tl1975319862_
                                                          (##cdr _e1975119857_)))
                                                     (if (gx#stx-null?
                                                          _tl1975319862_)
                                                         (if (gx#stx-null?
                                                              _tl1974419838_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1974119830_)
                         (let ((_e1975419865_ (gx#stx-e _tl1974119830_)))
                           (let ((_hd1975519868_ (##car _e1975419865_))
                                 (_tl1975619870_ (##cdr _e1975419865_)))
                             (if (gx#stx-null? _tl1975619870_)
                                 (if (gx#stx-null? _tl1973519814_)
                                     (if (gx#stx-null? _tl1972619790_)
                                         (if (gx#stx-pair? _tl1972319782_)
                                             (let ((_e1975719873_
                                                    (gx#stx-e _tl1972319782_)))
                                               (let ((_hd1975819876_
                                                      (##car _e1975719873_))
                                                     (_tl1975919878_
                                                      (##cdr _e1975719873_)))
                                                 (if (gx#stx-null?
                                                      _tl1975919878_)
                                                     ((lambda (_L19881_
                                                               _L19882_
                                                               _L19883_
                                                               _L19884_
                                                               _L19885_)
                                                        (let* ((_get-kws-id19925_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L19695_)
                         '"__"
                         (_kw-lambda-dispatch-name19547_
                          (gx#stx-e _L19885_)
                          '"@")))
                       (_get-kws-id19927_
                        (gx#core-quote-syntax__1
                         _get-kws-id19925_
                         (gx#stx-source _stx19543_)))
                       (_main-id19929_
                        (make-symbol
                         (gx#stx-e _L19695_)
                         '"__"
                         (_kw-lambda-dispatch-name19547_
                          (gx#stx-e _L19884_)
                          '"%")))
                       (_main-id19931_
                        (gx#core-quote-syntax__1
                         _main-id19929_
                         (gx#stx-source _stx19543_)))
                       (_g28910_ (gx#core-bind-runtime!__0 _get-kws-id19927_))
                       (_g28911_ (gx#core-bind-runtime!__0 _main-id19931_))
                       (_new-kw-dispatch19935_
                        (gxc#apply-expression-subst
                         _L19881_
                         _L19885_
                         _get-kws-id19927_))
                       (_new-get-kws19937_
                        (gxc#apply-expression-subst
                         _L19882_
                         _L19884_
                         _main-id19931_)))
                  (begin
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L19695_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id19927_)
                     '" => "
                     (gxc#identifier-symbol _main-id19931_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id19931_ '())
                                               (cons _L19883_ '())))
                                   _stx19543_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id19927_
                                                          '())
                                                    (cons _new-get-kws19937_
                                                          '())))
                                        _stx19543_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L19695_ '())
                                                          (cons _new-kw-dispatch19935_
                                                                '())))
                                              _stx19543_)
                                             '()))))
                     _stx19543_))))
              _hd1975819876_
              _hd1975519868_
              _hd1975219860_
              _hd1974919852_
              _hd1973119804_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1971119764_
                                                      _g1971219767_))))
                                             (_g1971119764_ _g1971219767_))
                                         (_g1971119764_ _g1971219767_))
                                     (_g1971119764_ _g1971219767_))
                                 (_g1971119764_ _g1971219767_))))
                         (_g1971119764_ _g1971219767_))
                     (_g1971119764_ _g1971219767_))
                 (_g1971119764_ _g1971219767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1971119764_ _g1971219767_))
                                             (_g1971119764_ _g1971219767_))))
                                     (_g1971119764_ _g1971219767_))))
                             (_g1971119764_ _g1971219767_))))
                     (_g1971119764_ _g1971219767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1971119764_
                                                      _g1971219767_))))
                                             (_g1971119764_ _g1971219767_))))
                                     (_g1971119764_ _g1971219767_))
                                 (_g1971119764_ _g1971219767_))))
                         (_g1971119764_ _g1971219767_))))
                 (_g1971119764_ _g1971219767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1971119764_
                                                  _g1971219767_))))
                                         (_g1971119764_ _g1971219767_))))
                                 (_g1971119764_ _g1971219767_)))))
                     (_g1971019940_ _L19694_))))
                (___kont2842128422_
                 (lambda (_L19640_ _L19641_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L19641_ (cons (gxc#compile-e _L19640_) '())))
                    _stx19543_))))
            (let* ((___match2850628507_
                    (lambda (_e1958419662_
                             _hd1958519665_
                             _tl1958619667_
                             _e1958719670_
                             _hd1958819673_
                             _tl1958919675_
                             _e1959019678_
                             _hd1959119681_
                             _tl1959219683_
                             _e1959319686_
                             _hd1959419689_
                             _tl1959519691_)
                      (let ((_L19694_ _hd1959419689_)
                            (_L19695_ _hd1959119681_))
                        (if (if (gx#identifier? _L19695_)
                                (gxc#kw-lambda-expr? _L19694_)
                                '#f)
                            (___kont2841928420_ _L19694_ _L19695_)
                            (___kont2842128422_
                             _hd1959419689_
                             _hd1958819673_)))))
                   (___match2847828479_
                    (lambda (_e1957019948_
                             _hd1957119951_
                             _tl1957219953_
                             _e1957319956_
                             _hd1957419959_
                             _tl1957519961_
                             _e1957619964_
                             _hd1957719967_
                             _tl1957819969_
                             _e1957919972_
                             _hd1958019975_
                             _tl1958119977_)
                      (let ((_L19980_ _hd1958019975_)
                            (_L19981_ _hd1957719967_))
                        (if (if (gx#identifier? _L19981_)
                                (gxc#opt-lambda-expr? _L19980_)
                                '#f)
                            (___kont2841728418_ _L19980_ _L19981_)
                            (___match2850628507_
                             _e1957019948_
                             _hd1957119951_
                             _tl1957219953_
                             _e1957319956_
                             _hd1957419959_
                             _tl1957519961_
                             _e1957619964_
                             _hd1957719967_
                             _tl1957819969_
                             _e1957919972_
                             _hd1958019975_
                             _tl1958119977_)))))
                   (___match2845028451_
                    (lambda (_e1955620130_
                             _hd1955720133_
                             _tl1955820135_
                             _e1955920138_
                             _hd1956020141_
                             _tl1956120143_
                             _e1956220146_
                             _hd1956320149_
                             _tl1956420151_
                             _e1956520154_
                             _hd1956620157_
                             _tl1956720159_)
                      (let ((_L20162_ _hd1956620157_)
                            (_L20163_ _hd1956320149_))
                        (if (if (gx#identifier? _L20163_)
                                (gxc#case-lambda-expr? _L20162_)
                                '#f)
                            (___kont2841528416_ _L20162_ _L20163_)
                            (___match2847828479_
                             _e1955620130_
                             _hd1955720133_
                             _tl1955820135_
                             _e1955920138_
                             _hd1956020141_
                             _tl1956120143_
                             _e1956220146_
                             _hd1956320149_
                             _tl1956420151_
                             _e1956520154_
                             _hd1956620157_
                             _tl1956720159_))))))
              (if (gx#stx-pair? ___stx2841328414_)
                  (let ((_e1955620130_ (gx#stx-e ___stx2841328414_)))
                    (let ((_tl1955820135_ (##cdr _e1955620130_))
                          (_hd1955720133_ (##car _e1955620130_)))
                      (if (gx#stx-pair? _tl1955820135_)
                          (let ((_e1955920138_ (gx#stx-e _tl1955820135_)))
                            (let ((_tl1956120143_ (##cdr _e1955920138_))
                                  (_hd1956020141_ (##car _e1955920138_)))
                              (if (gx#stx-pair? _hd1956020141_)
                                  (let ((_e1956220146_
                                         (gx#stx-e _hd1956020141_)))
                                    (let ((_tl1956420151_
                                           (##cdr _e1956220146_))
                                          (_hd1956320149_
                                           (##car _e1956220146_)))
                                      (if (gx#stx-null? _tl1956420151_)
                                          (if (gx#stx-pair? _tl1956120143_)
                                              (let ((_e1956520154_
                                                     (gx#stx-e
                                                      _tl1956120143_)))
                                                (let ((_tl1956720159_
                                                       (##cdr _e1956520154_))
                                                      (_hd1956620157_
                                                       (##car _e1956520154_)))
                                                  (if (gx#stx-null?
                                                       _tl1956720159_)
                                                      (___match2845028451_
                                                       _e1955620130_
                                                       _hd1955720133_
                                                       _tl1955820135_
                                                       _e1955920138_
                                                       _hd1956020141_
                                                       _tl1956120143_
                                                       _e1956220146_
                                                       _hd1956320149_
                                                       _tl1956420151_
                                                       _e1956520154_
                                                       _hd1956620157_
                                                       _tl1956720159_)
                                                      (_g1955219611_))))
                                              (_g1955219611_))
                                          (if (gx#stx-pair? _tl1956120143_)
                                              (let ((_e1960419632_
                                                     (gx#stx-e
                                                      _tl1956120143_)))
                                                (let ((_tl1960619637_
                                                       (##cdr _e1960419632_))
                                                      (_hd1960519635_
                                                       (##car _e1960419632_)))
                                                  (if (gx#stx-null?
                                                       _tl1960619637_)
                                                      (___kont2842128422_
                                                       _hd1960519635_
                                                       _hd1956020141_)
                                                      (_g1955219611_))))
                                              (_g1955219611_)))))
                                  (if (gx#stx-pair? _tl1956120143_)
                                      (let ((_e1960419632_
                                             (gx#stx-e _tl1956120143_)))
                                        (let ((_tl1960619637_
                                               (##cdr _e1960419632_))
                                              (_hd1960519635_
                                               (##car _e1960419632_)))
                                          (if (gx#stx-null? _tl1960619637_)
                                              (___kont2842128422_
                                               _hd1960519635_
                                               _hd1956020141_)
                                              (_g1955219611_))))
                                      (_g1955219611_)))))
                          (_g1955219611_))))
                  (_g1955219611_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx18475_)
      (letrec* ((_bind-e__2630326304_
                 (lambda (_id19527_ _expr19528_ _compile?19529_)
                   (cons (cons _id19527_ '())
                         (cons (if _compile?19529_
                                   (gxc#compile-e _expr19528_)
                                   _expr19528_)
                               '()))))
                (_bind-e__0__2630526306_
                 (lambda (_id19534_ _expr19535_)
                   (let ((_compile?19537_ '#t))
                     (_bind-e__2630326304_
                      _id19534_
                      _expr19535_
                      _compile?19537_))))
                (_bind-e18477_
                 (lambda _g28913_
                   (let ((_g28912_ (length _g28913_)))
                     (cond ((##fx= _g28912_ 2)
                            (apply _bind-e__0__2630526306_ _g28913_))
                           ((##fx= _g28912_ 3)
                            (apply _bind-e__2630326304_ _g28913_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28913_))))))
                (_compile-bindings18478_
                 (lambda (_bindings19111_)
                   (let _lp19113_ ((_rest19115_ _bindings19111_)
                                   (_lift119116_ '())
                                   (_lift219117_ '())
                                   (_bind19118_ '()))
                     (let* ((_rest1911919127_ _rest19115_)
                            (_else1912119135_
                             (lambda ()
                               (values (reverse _lift119116_)
                                       (reverse _lift219117_)
                                       (reverse _bind19118_))))
                            (_K1912319514_
                             (lambda (_rest19138_ _hd19139_)
                               (let* ((___stx2854928550_ _hd19139_)
                                      (_g1914319179_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2854928550_))))
                                 (let ((___kont2855128552_
                                        (lambda (_L19421_ _L19422_)
                                          (let* ((___stx2852928530_ _L19421_)
                                                 (_g1943719451_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2852928530_))))
                                            (let ((___kont2853128532_
                                                   (lambda (_L19499_)
                                                     (_lp19113_
                                                      _rest19138_
                                                      _lift119116_
                                                      _lift219117_
                                                      (cons (_bind-e__2630326304_
                                                             _L19422_
                                                             _L19421_
                                                             '#f)
                                                            _bind19118_))))
                                                  (___kont2853328534_
                                                   (lambda (_L19464_)
                                                     (let ((_g28914_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx18475_
                                                             _L19422_
                                                             _L19464_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28915_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28914_)
                            (##vector-length _g28914_)
                            1)))
                   (if (not (##fx= _g28915_ 3))
                       (error "Context expects 3 values" _g28915_)))
                 (let ((_ids19474_ (##vector-ref _g28914_ 0))
                       (_impls19475_ (##vector-ref _g28914_ 1))
                       (_clauses19476_ (##vector-ref _g28914_ 2)))
                   (let* ((_g28916_
                           (for-each gx#core-bind-runtime! _ids19474_))
                          (_xbind19479_
                           (map _bind-e18477_ _ids19474_ _impls19475_))
                          (_expr*19481_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses19476_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*19483_
                           (_bind-e__2630326304_ _L19422_ _expr*19481_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L19422_)
                        '" => "
                        (map gxc#identifier-symbol _ids19474_))
                       (_lp19113_
                        _rest19138_
                        _lift119116_
                        (foldl1 cons _lift219117_ _xbind19479_)
                        (cons _bind*19483_ _bind19118_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2854028541_
                                                     (lambda (_e1944019491_
                                                              _hd1944119494_
                                                              _tl1944219496_)
                                                       (let ((_L19499_
                                                              _tl1944219496_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19499_)
                     (___kont2853128532_ _L19499_)
                     (___kont2853328534_ _tl1944219496_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2852928530_)
                                                    (let ((_e1944019491_
                                                           (gx#stx-e
                                                            ___stx2852928530_)))
                                                      (let ((_tl1944219496_
                                                             (##cdr _e1944019491_))
                                                            (_hd1944119494_
                                                             (##car _e1944019491_)))
                                                        (___match2854028541_
                                                         _e1944019491_
                                                         _hd1944119494_
                                                         _tl1944219496_)))
                                                    (_g1943719451_)))))))
                                       (___kont2855328554_
                                        (lambda (_L19249_ _L19250_)
                                          (let* ((_g1926419294_
                                                  (lambda (_g1926519291_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1926519291_)))
                                                 (_g1926319389_
                                                  (lambda (_g1926519297_)
                                                    (if (gx#stx-pair?
                                                         _g1926519297_)
                                                        (let ((_e1926919299_
                                                               (gx#stx-e
                                                                _g1926519297_)))
                                                          (let ((_hd1927019302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1926919299_))
                        (_tl1927119304_ (##cdr _e1926919299_)))
                    (if (gx#stx-pair? _tl1927119304_)
                        (let ((_e1927219307_ (gx#stx-e _tl1927119304_)))
                          (let ((_hd1927319310_ (##car _e1927219307_))
                                (_tl1927419312_ (##cdr _e1927219307_)))
                            (if (gx#stx-pair? _hd1927319310_)
                                (let ((_e1927519315_
                                       (gx#stx-e _hd1927319310_)))
                                  (let ((_hd1927619318_ (##car _e1927519315_))
                                        (_tl1927719320_ (##cdr _e1927519315_)))
                                    (if (gx#stx-pair? _hd1927619318_)
                                        (let ((_e1927819323_
                                               (gx#stx-e _hd1927619318_)))
                                          (let ((_hd1927919326_
                                                 (##car _e1927819323_))
                                                (_tl1928019328_
                                                 (##cdr _e1927819323_)))
                                            (if (gx#stx-pair? _hd1927919326_)
                                                (let ((_e1928119331_
                                                       (gx#stx-e
                                                        _hd1927919326_)))
                                                  (let ((_hd1928219334_
                                                         (##car _e1928119331_))
                                                        (_tl1928319336_
                                                         (##cdr _e1928119331_)))
                                                    (if (gx#stx-null?
                                                         _tl1928319336_)
                                                        (if (gx#stx-pair?
                                                             _tl1928019328_)
                                                            (let ((_e1928419339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1928019328_)))
                      (let ((_hd1928519342_ (##car _e1928419339_))
                            (_tl1928619344_ (##cdr _e1928419339_)))
                        (if (gx#stx-null? _tl1928619344_)
                            (if (gx#stx-null? _tl1927719320_)
                                (if (gx#stx-pair? _tl1927419312_)
                                    (let ((_e1928719347_
                                           (gx#stx-e _tl1927419312_)))
                                      (let ((_hd1928819350_
                                             (##car _e1928719347_))
                                            (_tl1928919352_
                                             (##cdr _e1928719347_)))
                                        (if (gx#stx-null? _tl1928919352_)
                                            ((lambda (_L19355_
                                                      _L19356_
                                                      _L19357_)
                                               (let* ((_lambda-id19381_
                                                       (make-symbol
                                                        (gx#stx-e _L19250_)
                                                        (gensym '__)))
                                                      (_lambda-id19383_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id19381_
                                                        (gx#stx-source
                                                         _stx18475_)))
                                                      (_g28917_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id19383_))
                                                      (_new-case-lambda-expr19386_
                                                       (gxc#apply-expression-subst
                                                        _L19355_
                                                        _L19357_
                                                        _lambda-id19383_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L19250_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id19383_))
                                                   (_lp19113_
                                                    (cons (_bind-e__2630326304_
                                                           _L19250_
                                                           _new-case-lambda-expr19386_
                                                           '#f)
                                                          _rest19138_)
                                                    (cons (_bind-e__0__2630526306_
                                                           _lambda-id19383_
                                                           _L19356_)
                                                          _lift119116_)
                                                    _lift219117_
                                                    _bind19118_))))
                                             _hd1928819350_
                                             _hd1928519342_
                                             _hd1928219334_)
                                            (_g1926419294_ _g1926519297_))))
                                    (_g1926419294_ _g1926519297_))
                                (_g1926419294_ _g1926519297_))
                            (_g1926419294_ _g1926519297_))))
                    (_g1926419294_ _g1926519297_))
                (_g1926419294_ _g1926519297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1926419294_
                                                 _g1926519297_))))
                                        (_g1926419294_ _g1926519297_))))
                                (_g1926419294_ _g1926519297_))))
                        (_g1926419294_ _g1926519297_))))
                (_g1926419294_ _g1926519297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1926319389_ _L19249_))))
                                       (___kont2855528556_
                                        (lambda (_L19200_ _L19201_)
                                          (_lp19113_
                                           _rest19138_
                                           _lift119116_
                                           _lift219117_
                                           (cons (cons _L19201_
                                                       (cons (gxc#compile-e
                                                              _L19200_)
                                                             '()))
                                                 _bind19118_)))))
                                   (let* ((___match2860028601_
                                           (lambda (_e1915819225_
                                                    _hd1915919228_
                                                    _tl1916019230_
                                                    _e1916119233_
                                                    _hd1916219236_
                                                    _tl1916319238_
                                                    _e1916419241_
                                                    _hd1916519244_
                                                    _tl1916619246_)
                                             (let ((_L19249_ _hd1916519244_)
                                                   (_L19250_ _hd1916219236_))
                                               (if (if (gx#identifier?
                                                        _L19250_)
                                                       (gxc#opt-lambda-expr?
                                                        _L19249_)
                                                       '#f)
                                                   (___kont2855328554_
                                                    _L19249_
                                                    _L19250_)
                                                   (___kont2855528556_
                                                    _hd1916519244_
                                                    _hd1915919228_)))))
                                          (___match2857828579_
                                           (lambda (_e1914719397_
                                                    _hd1914819400_
                                                    _tl1914919402_
                                                    _e1915019405_
                                                    _hd1915119408_
                                                    _tl1915219410_
                                                    _e1915319413_
                                                    _hd1915419416_
                                                    _tl1915519418_)
                                             (let ((_L19421_ _hd1915419416_)
                                                   (_L19422_ _hd1915119408_))
                                               (if (if (gx#identifier?
                                                        _L19422_)
                                                       (gxc#case-lambda-expr?
                                                        _L19421_)
                                                       '#f)
                                                   (___kont2855128552_
                                                    _L19421_
                                                    _L19422_)
                                                   (___match2860028601_
                                                    _e1914719397_
                                                    _hd1914819400_
                                                    _tl1914919402_
                                                    _e1915019405_
                                                    _hd1915119408_
                                                    _tl1915219410_
                                                    _e1915319413_
                                                    _hd1915419416_
                                                    _tl1915519418_))))))
                                     (if (gx#stx-pair? ___stx2854928550_)
                                         (let ((_e1914719397_
                                                (gx#stx-e ___stx2854928550_)))
                                           (let ((_tl1914919402_
                                                  (##cdr _e1914719397_))
                                                 (_hd1914819400_
                                                  (##car _e1914719397_)))
                                             (if (gx#stx-pair? _hd1914819400_)
                                                 (let ((_e1915019405_
                                                        (gx#stx-e
                                                         _hd1914819400_)))
                                                   (let ((_tl1915219410_
                                                          (##cdr _e1915019405_))
                                                         (_hd1915119408_
                                                          (##car _e1915019405_)))
                                                     (if (gx#stx-null?
                                                          _tl1915219410_)
                                                         (if (gx#stx-pair?
                                                              _tl1914919402_)
                                                             (let ((_e1915319413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1914919402_)))
                       (let ((_tl1915519418_ (##cdr _e1915319413_))
                             (_hd1915419416_ (##car _e1915319413_)))
                         (if (gx#stx-null? _tl1915519418_)
                             (___match2857828579_
                              _e1914719397_
                              _hd1914819400_
                              _tl1914919402_
                              _e1915019405_
                              _hd1915119408_
                              _tl1915219410_
                              _e1915319413_
                              _hd1915419416_
                              _tl1915519418_)
                             (_g1914319179_))))
                     (_g1914319179_))
                 (if (gx#stx-pair? _tl1914919402_)
                     (let ((_e1917219192_ (gx#stx-e _tl1914919402_)))
                       (let ((_tl1917419197_ (##cdr _e1917219192_))
                             (_hd1917319195_ (##car _e1917219192_)))
                         (if (gx#stx-null? _tl1917419197_)
                             (___kont2855528556_ _hd1917319195_ _hd1914819400_)
                             (_g1914319179_))))
                     (_g1914319179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1914919402_)
                                                     (let ((_e1917219192_
                                                            (gx#stx-e
                                                             _tl1914919402_)))
                                                       (let ((_tl1917419197_
                                                              (##cdr _e1917219192_))
                                                             (_hd1917319195_
                                                              (##car _e1917219192_)))
                                                         (if (gx#stx-null?
                                                              _tl1917419197_)
                                                             (___kont2855528556_
                                                              _hd1917319195_
                                                              _hd1914819400_)
                                                             (_g1914319179_))))
                                                     (_g1914319179_)))))
                                         (_g1914319179_))))))))
                       (if (##pair? _rest1911919127_)
                           (let ((_hd1912419517_ (##car _rest1911919127_))
                                 (_tl1912519519_ (##cdr _rest1911919127_)))
                             (let* ((_hd19522_ _hd1912419517_)
                                    (_rest19524_ _tl1912519519_))
                               (_K1912319514_ _rest19524_ _hd19522_)))
                           (_else1912119135_))))))
                (_lift-kw-lambda?18479_
                 (lambda (_bind19035_)
                   (let* ((___stx2861728618_ _bind19035_)
                          (_g1903819055_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2861728618_))))
                     (let ((___kont2861928620_
                            (lambda (_L19091_ _L19092_)
                              (if (gx#identifier? _L19092_)
                                  (gxc#kw-lambda-expr? _L19091_)
                                  '#f)))
                           (___kont2862128622_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx2861728618_)
                           (let ((_e1904219067_ (gx#stx-e ___stx2861728618_)))
                             (let ((_tl1904419072_ (##cdr _e1904219067_))
                                   (_hd1904319070_ (##car _e1904219067_)))
                               (if (gx#stx-pair? _hd1904319070_)
                                   (let ((_e1904519075_
                                          (gx#stx-e _hd1904319070_)))
                                     (let ((_tl1904719080_
                                            (##cdr _e1904519075_))
                                           (_hd1904619078_
                                            (##car _e1904519075_)))
                                       (if (gx#stx-null? _tl1904719080_)
                                           (if (gx#stx-pair? _tl1904419072_)
                                               (let ((_e1904819083_
                                                      (gx#stx-e
                                                       _tl1904419072_)))
                                                 (let ((_tl1905019088_
                                                        (##cdr _e1904819083_))
                                                       (_hd1904919086_
                                                        (##car _e1904819083_)))
                                                   (if (gx#stx-null?
                                                        _tl1905019088_)
                                                       (___kont2861928620_
                                                        _hd1904919086_
                                                        _hd1904619078_)
                                                       (___kont2862128622_))))
                                               (___kont2862128622_))
                                           (___kont2862128622_))))
                                   (___kont2862128622_))))
                           (___kont2862128622_))))))
                (_lift-kw-lambda-bindings18480_
                 (lambda (_bindings18647_)
                   (let _lp18649_ ((_rest18651_ _bindings18647_)
                                   (_lift118652_ '())
                                   (_lift218653_ '())
                                   (_bind18654_ '()))
                     (let* ((_rest1865518663_ _rest18651_)
                            (_else1865718671_
                             (lambda ()
                               (values (reverse _lift118652_)
                                       (reverse _lift218653_)
                                       (reverse _bind18654_))))
                            (_K1865919023_
                             (lambda (_rest18674_ _hd18675_)
                               (let* ((___stx2864728648_ _hd18675_)
                                      (_g1867818703_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2864728648_))))
                                 (let ((___kont2864928650_
                                        (lambda (_L18773_ _L18774_)
                                          (let* ((_g1878818841_
                                                  (lambda (_g1878918838_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1878918838_)))
                                                 (_g1878719017_
                                                  (lambda (_g1878918844_)
                                                    (if (gx#stx-pair?
                                                         _g1878918844_)
                                                        (let ((_e1879518846_
                                                               (gx#stx-e
                                                                _g1878918844_)))
                                                          (let ((_hd1879618849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1879518846_))
                        (_tl1879718851_ (##cdr _e1879518846_)))
                    (if (gx#stx-pair? _tl1879718851_)
                        (let ((_e1879818854_ (gx#stx-e _tl1879718851_)))
                          (let ((_hd1879918857_ (##car _e1879818854_))
                                (_tl1880018859_ (##cdr _e1879818854_)))
                            (if (gx#stx-pair? _hd1879918857_)
                                (let ((_e1880118862_
                                       (gx#stx-e _hd1879918857_)))
                                  (let ((_hd1880218865_ (##car _e1880118862_))
                                        (_tl1880318867_ (##cdr _e1880118862_)))
                                    (if (gx#stx-pair? _hd1880218865_)
                                        (let ((_e1880418870_
                                               (gx#stx-e _hd1880218865_)))
                                          (let ((_hd1880518873_
                                                 (##car _e1880418870_))
                                                (_tl1880618875_
                                                 (##cdr _e1880418870_)))
                                            (if (gx#stx-pair? _hd1880518873_)
                                                (let ((_e1880718878_
                                                       (gx#stx-e
                                                        _hd1880518873_)))
                                                  (let ((_hd1880818881_
                                                         (##car _e1880718878_))
                                                        (_tl1880918883_
                                                         (##cdr _e1880718878_)))
                                                    (if (gx#stx-null?
                                                         _tl1880918883_)
                                                        (if (gx#stx-pair?
                                                             _tl1880618875_)
                                                            (let ((_e1881018886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1880618875_)))
                      (let ((_hd1881118889_ (##car _e1881018886_))
                            (_tl1881218891_ (##cdr _e1881018886_)))
                        (if (gx#stx-pair? _hd1881118889_)
                            (let ((_e1881318894_ (gx#stx-e _hd1881118889_)))
                              (let ((_hd1881418897_ (##car _e1881318894_))
                                    (_tl1881518899_ (##cdr _e1881318894_)))
                                (if (gx#stx-pair? _tl1881518899_)
                                    (let ((_e1881618902_
                                           (gx#stx-e _tl1881518899_)))
                                      (let ((_hd1881718905_
                                             (##car _e1881618902_))
                                            (_tl1881818907_
                                             (##cdr _e1881618902_)))
                                        (if (gx#stx-pair? _hd1881718905_)
                                            (let ((_e1881918910_
                                                   (gx#stx-e _hd1881718905_)))
                                              (let ((_hd1882018913_
                                                     (##car _e1881918910_))
                                                    (_tl1882118915_
                                                     (##cdr _e1881918910_)))
                                                (if (gx#stx-pair?
                                                     _hd1882018913_)
                                                    (let ((_e1882218918_
                                                           (gx#stx-e
                                                            _hd1882018913_)))
                                                      (let ((_hd1882318921_
                                                             (##car _e1882218918_))
                                                            (_tl1882418923_
                                                             (##cdr _e1882218918_)))
                                                        (if (gx#stx-pair?
                                                             _hd1882318921_)
                                                            (let ((_e1882518926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1882318921_)))
                      (let ((_hd1882618929_ (##car _e1882518926_))
                            (_tl1882718931_ (##cdr _e1882518926_)))
                        (if (gx#stx-null? _tl1882718931_)
                            (if (gx#stx-pair? _tl1882418923_)
                                (let ((_e1882818934_
                                       (gx#stx-e _tl1882418923_)))
                                  (let ((_hd1882918937_ (##car _e1882818934_))
                                        (_tl1883018939_ (##cdr _e1882818934_)))
                                    (if (gx#stx-null? _tl1883018939_)
                                        (if (gx#stx-null? _tl1882118915_)
                                            (if (gx#stx-pair? _tl1881818907_)
                                                (let ((_e1883118942_
                                                       (gx#stx-e
                                                        _tl1881818907_)))
                                                  (let ((_hd1883218945_
                                                         (##car _e1883118942_))
                                                        (_tl1883318947_
                                                         (##cdr _e1883118942_)))
                                                    (if (gx#stx-null?
                                                         _tl1883318947_)
                                                        (if (gx#stx-null?
                                                             _tl1881218891_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1880318867_)
                        (if (gx#stx-pair? _tl1880018859_)
                            (let ((_e1883418950_ (gx#stx-e _tl1880018859_)))
                              (let ((_hd1883518953_ (##car _e1883418950_))
                                    (_tl1883618955_ (##cdr _e1883418950_)))
                                (if (gx#stx-null? _tl1883618955_)
                                    ((lambda (_L18958_
                                              _L18959_
                                              _L18960_
                                              _L18961_
                                              _L18962_)
                                       (let* ((_get-kws-id19002_
                                               (make-symbol
                                                (gx#stx-e _L18774_)
                                                (gensym '__)))
                                              (_get-kws-id19004_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id19002_
                                                (gx#stx-source _stx18475_)))
                                              (_main-id19006_
                                               (make-symbol
                                                (gx#stx-e _L18774_)
                                                (gensym '__)))
                                              (_main-id19008_
                                               (gx#core-quote-syntax__1
                                                _main-id19006_
                                                (gx#stx-source _stx18475_)))
                                              (_g28918_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id19004_))
                                              (_g28919_
                                               (gx#core-bind-runtime!__0
                                                _main-id19008_))
                                              (_new-kw-dispatch19012_
                                               (gxc#apply-expression-subst
                                                _L18958_
                                                _L18962_
                                                _get-kws-id19004_))
                                              (_new-get-kws19014_
                                               (gxc#apply-expression-subst
                                                _L18959_
                                                _L18961_
                                                _main-id19008_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L18774_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id19004_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id19008_))
                                           (_lp18649_
                                            _rest18674_
                                            (cons (_bind-e__2630326304_
                                                   _main-id19008_
                                                   _L18960_
                                                   '#f)
                                                  _lift118652_)
                                            (cons (_bind-e__2630326304_
                                                   _get-kws-id19004_
                                                   _new-get-kws19014_
                                                   '#f)
                                                  _lift218653_)
                                            (cons (_bind-e__2630326304_
                                                   _L18774_
                                                   _new-kw-dispatch19012_
                                                   '#f)
                                                  _bind18654_)))))
                                     _hd1883518953_
                                     _hd1883218945_
                                     _hd1882918937_
                                     _hd1882618929_
                                     _hd1880818881_)
                                    (_g1878818841_ _g1878918844_))))
                            (_g1878818841_ _g1878918844_))
                        (_g1878818841_ _g1878918844_))
                    (_g1878818841_ _g1878918844_))
                (_g1878818841_ _g1878918844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1878818841_ _g1878918844_))
                                            (_g1878818841_ _g1878918844_))
                                        (_g1878818841_ _g1878918844_))))
                                (_g1878818841_ _g1878918844_))
                            (_g1878818841_ _g1878918844_))))
                    (_g1878818841_ _g1878918844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1878818841_
                                                     _g1878918844_))))
                                            (_g1878818841_ _g1878918844_))))
                                    (_g1878818841_ _g1878918844_))))
                            (_g1878818841_ _g1878918844_))))
                    (_g1878818841_ _g1878918844_))
                (_g1878818841_ _g1878918844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1878818841_
                                                 _g1878918844_))))
                                        (_g1878818841_ _g1878918844_))))
                                (_g1878818841_ _g1878918844_))))
                        (_g1878818841_ _g1878918844_))))
                (_g1878818841_ _g1878918844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1878719017_ _L18773_))))
                                       (___kont2865128652_
                                        (lambda (_L18724_ _L18725_)
                                          (_lp18649_
                                           _rest18674_
                                           _lift118652_
                                           _lift218653_
                                           (cons (cons _L18725_
                                                       (cons _L18724_ '()))
                                                 _bind18654_)))))
                                   (let ((___match2867428675_
                                          (lambda (_e1868218749_
                                                   _hd1868318752_
                                                   _tl1868418754_
                                                   _e1868518757_
                                                   _hd1868618760_
                                                   _tl1868718762_
                                                   _e1868818765_
                                                   _hd1868918768_
                                                   _tl1869018770_)
                                            (let ((_L18773_ _hd1868918768_)
                                                  (_L18774_ _hd1868618760_))
                                              (if (if (gx#identifier? _L18774_)
                                                      (gxc#kw-lambda-expr?
                                                       _L18773_)
                                                      '#f)
                                                  (___kont2864928650_
                                                   _L18773_
                                                   _L18774_)
                                                  (___kont2865128652_
                                                   _hd1868918768_
                                                   _hd1868318752_))))))
                                     (if (gx#stx-pair? ___stx2864728648_)
                                         (let ((_e1868218749_
                                                (gx#stx-e ___stx2864728648_)))
                                           (let ((_tl1868418754_
                                                  (##cdr _e1868218749_))
                                                 (_hd1868318752_
                                                  (##car _e1868218749_)))
                                             (if (gx#stx-pair? _hd1868318752_)
                                                 (let ((_e1868518757_
                                                        (gx#stx-e
                                                         _hd1868318752_)))
                                                   (let ((_tl1868718762_
                                                          (##cdr _e1868518757_))
                                                         (_hd1868618760_
                                                          (##car _e1868518757_)))
                                                     (if (gx#stx-null?
                                                          _tl1868718762_)
                                                         (if (gx#stx-pair?
                                                              _tl1868418754_)
                                                             (let ((_e1868818765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1868418754_)))
                       (let ((_tl1869018770_ (##cdr _e1868818765_))
                             (_hd1868918768_ (##car _e1868818765_)))
                         (if (gx#stx-null? _tl1869018770_)
                             (___match2867428675_
                              _e1868218749_
                              _hd1868318752_
                              _tl1868418754_
                              _e1868518757_
                              _hd1868618760_
                              _tl1868718762_
                              _e1868818765_
                              _hd1868918768_
                              _tl1869018770_)
                             (_g1867818703_))))
                     (_g1867818703_))
                 (if (gx#stx-pair? _tl1868418754_)
                     (let ((_e1869618716_ (gx#stx-e _tl1868418754_)))
                       (let ((_tl1869818721_ (##cdr _e1869618716_))
                             (_hd1869718719_ (##car _e1869618716_)))
                         (if (gx#stx-null? _tl1869818721_)
                             (___kont2865128652_ _hd1869718719_ _hd1868318752_)
                             (_g1867818703_))))
                     (_g1867818703_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1868418754_)
                                                     (let ((_e1869618716_
                                                            (gx#stx-e
                                                             _tl1868418754_)))
                                                       (let ((_tl1869818721_
                                                              (##cdr _e1869618716_))
                                                             (_hd1869718719_
                                                              (##car _e1869618716_)))
                                                         (if (gx#stx-null?
                                                              _tl1869818721_)
                                                             (___kont2865128652_
                                                              _hd1869718719_
                                                              _hd1868318752_)
                                                             (_g1867818703_))))
                                                     (_g1867818703_)))))
                                         (_g1867818703_))))))))
                       (if (##pair? _rest1865518663_)
                           (let ((_hd1866019026_ (##car _rest1865518663_))
                                 (_tl1866119028_ (##cdr _rest1865518663_)))
                             (let* ((_hd19031_ _hd1866019026_)
                                    (_rest19033_ _tl1866119028_))
                               (_K1865919023_ _rest19033_ _hd19031_)))
                           (_else1865718671_)))))))
        (let* ((___stx2869128692_ _stx18475_)
               (_g1848318509_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2869128692_))))
          (let ((___kont2869328694_
                 (lambda (_L18569_ _L18570_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?18479_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1859818601_
                                                     _g1859918603_)
                                              (cons _g1859818601_
                                                    _g1859918603_))
                                            '()
                                            _L18570_)))
                          (let ((_g28922_
                                 (_lift-kw-lambda-bindings18480_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1860518608_
                                                     _g1860618610_)
                                              (cons _g1860518608_
                                                    _g1860618610_))
                                            '()
                                            _L18570_)))))
                            (begin
                              (let ((_g28923_
                                     (if (##values? _g28922_)
                                         (##vector-length _g28922_)
                                         1)))
                                (if (not (##fx= _g28923_ 3))
                                    (error "Context expects 3 values"
                                           _g28923_)))
                              (let ((_lift118613_ (##vector-ref _g28922_ 0))
                                    (_lift218614_ (##vector-ref _g28922_ 1))
                                    (_hd18615_ (##vector-ref _g28922_ 2)))
                                (let* ((_expr18617_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18615_
                                                     (cons _L18569_ '())))
                                         _stx18475_))
                                       (_expr18619_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift218614_
                                                     (cons _expr18617_ '())))
                                         _stx18475_))
                                       (_expr18621_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift118613_
                                                     (cons _expr18619_ '())))
                                         _stx18475_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr18621_)))))
                          (let ((_g28920_
                                 (_compile-bindings18478_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1862318626_
                                                     _g1862418628_)
                                              (cons _g1862318626_
                                                    _g1862418628_))
                                            '()
                                            _L18570_)))))
                            (begin
                              (let ((_g28921_
                                     (if (##values? _g28920_)
                                         (##vector-length _g28920_)
                                         1)))
                                (if (not (##fx= _g28921_ 3))
                                    (error "Context expects 3 values"
                                           _g28921_)))
                              (let ((_lift118631_ (##vector-ref _g28920_ 0))
                                    (_lift218632_ (##vector-ref _g28920_ 1))
                                    (_hd18633_ (##vector-ref _g28920_ 2)))
                                (let* ((_body18635_ (gxc#compile-e _L18569_))
                                       (_expr18637_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18633_
                                                     (cons _body18635_ '())))
                                         _stx18475_))
                                       (_expr18639_
                                        (if (null? _lift218632_)
                                            _expr18637_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift218632_
                                                         (cons _expr18637_
                                                               '())))
                                             _stx18475_)))
                                       (_expr18641_
                                        (if (null? _lift118631_)
                                            _expr18639_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift118631_
                                                         (cons _expr18639_
                                                               '())))
                                             _stx18475_))))
                                  _expr18641_))))))
                    gx#current-expander-context
                    (let ((__obj28896 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28896)
                        __obj28896)))))
                (___kont2869728698_
                 (lambda () (gxc#xform-let-values% _stx18475_))))
            (let ((___match2871828719_
                   (lambda (_e1848718521_
                            _hd1848818524_
                            _tl1848918526_
                            _e1849018529_
                            _hd1849118532_
                            _tl1849218534_
                            ___splice2869528696_
                            _target1849318537_
                            _tl1849518539_)
                     (letrec ((_loop1849618542_
                               (lambda (_hd1849418545_ _bind1850018547_)
                                 (if (gx#stx-pair? _hd1849418545_)
                                     (let ((_e1849718550_
                                            (gx#stx-e _hd1849418545_)))
                                       (let ((_lp-tl1849918555_
                                              (##cdr _e1849718550_))
                                             (_lp-hd1849818553_
                                              (##car _e1849718550_)))
                                         (_loop1849618542_
                                          _lp-tl1849918555_
                                          (cons _lp-hd1849818553_
                                                _bind1850018547_))))
                                     (let ((_bind1850118558_
                                            (reverse _bind1850018547_)))
                                       (if (gx#stx-pair? _tl1849218534_)
                                           (let ((_e1850218561_
                                                  (gx#stx-e _tl1849218534_)))
                                             (let ((_tl1850418566_
                                                    (##cdr _e1850218561_))
                                                   (_hd1850318564_
                                                    (##car _e1850218561_)))
                                               (if (gx#stx-null?
                                                    _tl1850418566_)
                                                   (let ((_L18569_
                                                          _hd1850318564_)
                                                         (_L18570_
                                                          _bind1850118558_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1859018593_ _g1859118595_)
                                     (cons _g1859018593_ _g1859118595_))
                                   '()
                                   _L18570_)))
                 (___kont2869328694_ _L18569_ _L18570_)
                 (___kont2869728698_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2869728698_))))
                                           (___kont2869728698_)))))))
                       (_loop1849618542_ _target1849318537_ '())))))
              (if (gx#stx-pair? ___stx2869128692_)
                  (let ((_e1848718521_ (gx#stx-e ___stx2869128692_)))
                    (let ((_tl1848918526_ (##cdr _e1848718521_))
                          (_hd1848818524_ (##car _e1848718521_)))
                      (if (gx#stx-pair? _tl1848918526_)
                          (let ((_e1849018529_ (gx#stx-e _tl1848918526_)))
                            (let ((_tl1849218534_ (##cdr _e1849018529_))
                                  (_hd1849118532_ (##car _e1849018529_)))
                              (if (gx#stx-pair/null? _hd1849118532_)
                                  (let ((___splice2869528696_
                                         (gx#syntax-split-splice
                                          _hd1849118532_
                                          '0)))
                                    (let ((_tl1849518539_
                                           (##vector-ref
                                            ___splice2869528696_
                                            '1))
                                          (_target1849318537_
                                           (##vector-ref
                                            ___splice2869528696_
                                            '0)))
                                      (if (gx#stx-null? _tl1849518539_)
                                          (___match2871828719_
                                           _e1848718521_
                                           _hd1848818524_
                                           _tl1848918526_
                                           _e1849018529_
                                           _hd1849118532_
                                           _tl1849218534_
                                           ___splice2869528696_
                                           _target1849318537_
                                           _tl1849518539_)
                                          (___kont2869728698_))))
                                  (___kont2869728698_))))
                          (___kont2869728698_))))
                  (___kont2869728698_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx17619_)
      (letrec* ((_bind-e__2630826309_
                 (lambda (_id18459_ _expr18460_ _compile?18461_)
                   (cons (cons _id18459_ '())
                         (cons (if _compile?18461_
                                   (gxc#compile-e _expr18460_)
                                   _expr18460_)
                               '()))))
                (_bind-e__0__2631026311_
                 (lambda (_id18466_ _expr18467_)
                   (let ((_compile?18469_ '#t))
                     (_bind-e__2630826309_
                      _id18466_
                      _expr18467_
                      _compile?18469_))))
                (_bind-e17621_
                 (lambda _g28925_
                   (let ((_g28924_ (length _g28925_)))
                     (cond ((##fx= _g28924_ 2)
                            (apply _bind-e__0__2631026311_ _g28925_))
                           ((##fx= _g28924_ 3)
                            (apply _bind-e__2630826309_ _g28925_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28925_))))))
                (_compile-bindings17622_
                 (lambda (_rest17757_)
                   (let _lp17759_ ((_rest17761_ _rest17757_) (_bind17762_ '()))
                     (let* ((_rest1776317771_ _rest17761_)
                            (_else1776517779_
                             (lambda () (reverse _bind17762_)))
                            (_K1776718446_
                             (lambda (_rest17782_ _hd17783_)
                               (let* ((___stx2874128742_ _hd17783_)
                                      (_g1778817835_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2874128742_))))
                                 (let ((___kont2874328744_
                                        (lambda (_L18353_ _L18354_)
                                          (let* ((___stx2872128722_ _L18353_)
                                                 (_g1836918383_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2872128722_))))
                                            (let ((___kont2872328724_
                                                   (lambda (_L18431_)
                                                     (_lp17759_
                                                      _rest17782_
                                                      (cons (_bind-e__2630826309_
                                                             _L18354_
                                                             _L18353_
                                                             '#f)
                                                            _bind17762_))))
                                                  (___kont2872528726_
                                                   (lambda (_L18396_)
                                                     (let ((_g28926_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx17619_
                                                             _L18354_
                                                             _L18396_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28927_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28926_)
                            (##vector-length _g28926_)
                            1)))
                   (if (not (##fx= _g28927_ 3))
                       (error "Context expects 3 values" _g28927_)))
                 (let ((_ids18406_ (##vector-ref _g28926_ 0))
                       (_impls18407_ (##vector-ref _g28926_ 1))
                       (_clauses18408_ (##vector-ref _g28926_ 2)))
                   (let* ((_g28928_
                           (for-each gx#core-bind-runtime! _ids18406_))
                          (_xbind18411_
                           (map _bind-e17621_ _ids18406_ _impls18407_))
                          (_expr*18413_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses18408_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*18415_
                           (_bind-e__2630826309_ _L18354_ _expr*18413_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L18354_)
                        '" => "
                        (map gxc#identifier-symbol _ids18406_))
                       (_lp17759_
                        _rest17782_
                        (cons _bind*18415_
                              (foldl1 cons _bind17762_ _xbind18411_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2873228733_
                                                     (lambda (_e1837218423_
                                                              _hd1837318426_
                                                              _tl1837418428_)
                                                       (let ((_L18431_
                                                              _tl1837418428_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18431_)
                     (___kont2872328724_ _L18431_)
                     (___kont2872528726_ _tl1837418428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2872128722_)
                                                    (let ((_e1837218423_
                                                           (gx#stx-e
                                                            ___stx2872128722_)))
                                                      (let ((_tl1837418428_
                                                             (##cdr _e1837218423_))
                                                            (_hd1837318426_
                                                             (##car _e1837218423_)))
                                                        (___match2873228733_
                                                         _e1837218423_
                                                         _hd1837318426_
                                                         _tl1837418428_)))
                                                    (_g1836918383_)))))))
                                       (___kont2874528746_
                                        (lambda (_L18181_ _L18182_)
                                          (let* ((_g1819618226_
                                                  (lambda (_g1819718223_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1819718223_)))
                                                 (_g1819518321_
                                                  (lambda (_g1819718229_)
                                                    (if (gx#stx-pair?
                                                         _g1819718229_)
                                                        (let ((_e1820118231_
                                                               (gx#stx-e
                                                                _g1819718229_)))
                                                          (let ((_hd1820218234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1820118231_))
                        (_tl1820318236_ (##cdr _e1820118231_)))
                    (if (gx#stx-pair? _tl1820318236_)
                        (let ((_e1820418239_ (gx#stx-e _tl1820318236_)))
                          (let ((_hd1820518242_ (##car _e1820418239_))
                                (_tl1820618244_ (##cdr _e1820418239_)))
                            (if (gx#stx-pair? _hd1820518242_)
                                (let ((_e1820718247_
                                       (gx#stx-e _hd1820518242_)))
                                  (let ((_hd1820818250_ (##car _e1820718247_))
                                        (_tl1820918252_ (##cdr _e1820718247_)))
                                    (if (gx#stx-pair? _hd1820818250_)
                                        (let ((_e1821018255_
                                               (gx#stx-e _hd1820818250_)))
                                          (let ((_hd1821118258_
                                                 (##car _e1821018255_))
                                                (_tl1821218260_
                                                 (##cdr _e1821018255_)))
                                            (if (gx#stx-pair? _hd1821118258_)
                                                (let ((_e1821318263_
                                                       (gx#stx-e
                                                        _hd1821118258_)))
                                                  (let ((_hd1821418266_
                                                         (##car _e1821318263_))
                                                        (_tl1821518268_
                                                         (##cdr _e1821318263_)))
                                                    (if (gx#stx-null?
                                                         _tl1821518268_)
                                                        (if (gx#stx-pair?
                                                             _tl1821218260_)
                                                            (let ((_e1821618271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1821218260_)))
                      (let ((_hd1821718274_ (##car _e1821618271_))
                            (_tl1821818276_ (##cdr _e1821618271_)))
                        (if (gx#stx-null? _tl1821818276_)
                            (if (gx#stx-null? _tl1820918252_)
                                (if (gx#stx-pair? _tl1820618244_)
                                    (let ((_e1821918279_
                                           (gx#stx-e _tl1820618244_)))
                                      (let ((_hd1822018282_
                                             (##car _e1821918279_))
                                            (_tl1822118284_
                                             (##cdr _e1821918279_)))
                                        (if (gx#stx-null? _tl1822118284_)
                                            ((lambda (_L18287_
                                                      _L18288_
                                                      _L18289_)
                                               (let* ((_lambda-id18313_
                                                       (make-symbol
                                                        (gx#stx-e _L18182_)
                                                        (gensym '__)))
                                                      (_lambda-id18315_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id18313_
                                                        (gx#stx-source
                                                         _stx17619_)))
                                                      (_g28929_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id18315_))
                                                      (_new-case-lambda-expr18318_
                                                       (gxc#apply-expression-subst
                                                        _L18287_
                                                        _L18289_
                                                        _lambda-id18315_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L18182_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id18315_))
                                                   (_lp17759_
                                                    (cons (_bind-e__2630826309_
                                                           _L18182_
                                                           _new-case-lambda-expr18318_
                                                           '#f)
                                                          _rest17782_)
                                                    (cons (_bind-e__0__2631026311_
                                                           _lambda-id18315_
                                                           _L18288_)
                                                          _bind17762_)))))
                                             _hd1822018282_
                                             _hd1821718274_
                                             _hd1821418266_)
                                            (_g1819618226_ _g1819718229_))))
                                    (_g1819618226_ _g1819718229_))
                                (_g1819618226_ _g1819718229_))
                            (_g1819618226_ _g1819718229_))))
                    (_g1819618226_ _g1819718229_))
                (_g1819618226_ _g1819718229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1819618226_
                                                 _g1819718229_))))
                                        (_g1819618226_ _g1819718229_))))
                                (_g1819618226_ _g1819718229_))))
                        (_g1819618226_ _g1819718229_))))
                (_g1819618226_ _g1819718229_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1819518321_ _L18181_))))
                                       (___kont2874728748_
                                        (lambda (_L17905_ _L17906_)
                                          (let* ((_g1792017973_
                                                  (lambda (_g1792117970_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1792117970_)))
                                                 (_g1791918149_
                                                  (lambda (_g1792117976_)
                                                    (if (gx#stx-pair?
                                                         _g1792117976_)
                                                        (let ((_e1792717978_
                                                               (gx#stx-e
                                                                _g1792117976_)))
                                                          (let ((_hd1792817981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1792717978_))
                        (_tl1792917983_ (##cdr _e1792717978_)))
                    (if (gx#stx-pair? _tl1792917983_)
                        (let ((_e1793017986_ (gx#stx-e _tl1792917983_)))
                          (let ((_hd1793117989_ (##car _e1793017986_))
                                (_tl1793217991_ (##cdr _e1793017986_)))
                            (if (gx#stx-pair? _hd1793117989_)
                                (let ((_e1793317994_
                                       (gx#stx-e _hd1793117989_)))
                                  (let ((_hd1793417997_ (##car _e1793317994_))
                                        (_tl1793517999_ (##cdr _e1793317994_)))
                                    (if (gx#stx-pair? _hd1793417997_)
                                        (let ((_e1793618002_
                                               (gx#stx-e _hd1793417997_)))
                                          (let ((_hd1793718005_
                                                 (##car _e1793618002_))
                                                (_tl1793818007_
                                                 (##cdr _e1793618002_)))
                                            (if (gx#stx-pair? _hd1793718005_)
                                                (let ((_e1793918010_
                                                       (gx#stx-e
                                                        _hd1793718005_)))
                                                  (let ((_hd1794018013_
                                                         (##car _e1793918010_))
                                                        (_tl1794118015_
                                                         (##cdr _e1793918010_)))
                                                    (if (gx#stx-null?
                                                         _tl1794118015_)
                                                        (if (gx#stx-pair?
                                                             _tl1793818007_)
                                                            (let ((_e1794218018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1793818007_)))
                      (let ((_hd1794318021_ (##car _e1794218018_))
                            (_tl1794418023_ (##cdr _e1794218018_)))
                        (if (gx#stx-pair? _hd1794318021_)
                            (let ((_e1794518026_ (gx#stx-e _hd1794318021_)))
                              (let ((_hd1794618029_ (##car _e1794518026_))
                                    (_tl1794718031_ (##cdr _e1794518026_)))
                                (if (gx#stx-pair? _tl1794718031_)
                                    (let ((_e1794818034_
                                           (gx#stx-e _tl1794718031_)))
                                      (let ((_hd1794918037_
                                             (##car _e1794818034_))
                                            (_tl1795018039_
                                             (##cdr _e1794818034_)))
                                        (if (gx#stx-pair? _hd1794918037_)
                                            (let ((_e1795118042_
                                                   (gx#stx-e _hd1794918037_)))
                                              (let ((_hd1795218045_
                                                     (##car _e1795118042_))
                                                    (_tl1795318047_
                                                     (##cdr _e1795118042_)))
                                                (if (gx#stx-pair?
                                                     _hd1795218045_)
                                                    (let ((_e1795418050_
                                                           (gx#stx-e
                                                            _hd1795218045_)))
                                                      (let ((_hd1795518053_
                                                             (##car _e1795418050_))
                                                            (_tl1795618055_
                                                             (##cdr _e1795418050_)))
                                                        (if (gx#stx-pair?
                                                             _hd1795518053_)
                                                            (let ((_e1795718058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1795518053_)))
                      (let ((_hd1795818061_ (##car _e1795718058_))
                            (_tl1795918063_ (##cdr _e1795718058_)))
                        (if (gx#stx-null? _tl1795918063_)
                            (if (gx#stx-pair? _tl1795618055_)
                                (let ((_e1796018066_
                                       (gx#stx-e _tl1795618055_)))
                                  (let ((_hd1796118069_ (##car _e1796018066_))
                                        (_tl1796218071_ (##cdr _e1796018066_)))
                                    (if (gx#stx-null? _tl1796218071_)
                                        (if (gx#stx-null? _tl1795318047_)
                                            (if (gx#stx-pair? _tl1795018039_)
                                                (let ((_e1796318074_
                                                       (gx#stx-e
                                                        _tl1795018039_)))
                                                  (let ((_hd1796418077_
                                                         (##car _e1796318074_))
                                                        (_tl1796518079_
                                                         (##cdr _e1796318074_)))
                                                    (if (gx#stx-null?
                                                         _tl1796518079_)
                                                        (if (gx#stx-null?
                                                             _tl1794418023_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1793517999_)
                        (if (gx#stx-pair? _tl1793217991_)
                            (let ((_e1796618082_ (gx#stx-e _tl1793217991_)))
                              (let ((_hd1796718085_ (##car _e1796618082_))
                                    (_tl1796818087_ (##cdr _e1796618082_)))
                                (if (gx#stx-null? _tl1796818087_)
                                    ((lambda (_L18090_
                                              _L18091_
                                              _L18092_
                                              _L18093_
                                              _L18094_)
                                       (let* ((_get-kws-id18134_
                                               (make-symbol
                                                (gx#stx-e _L17906_)
                                                (gensym '__)))
                                              (_get-kws-id18136_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id18134_
                                                (gx#stx-source _stx17619_)))
                                              (_main-id18138_
                                               (make-symbol
                                                (gx#stx-e _L17906_)
                                                (gensym '__)))
                                              (_main-id18140_
                                               (gx#core-quote-syntax__1
                                                _main-id18138_
                                                (gx#stx-source _stx17619_)))
                                              (_g28930_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id18136_))
                                              (_g28931_
                                               (gx#core-bind-runtime!__0
                                                _main-id18140_))
                                              (_new-kw-dispatch18144_
                                               (gxc#apply-expression-subst
                                                _L18090_
                                                _L18094_
                                                _get-kws-id18136_))
                                              (_new-get-kws18146_
                                               (gxc#apply-expression-subst
                                                _L18091_
                                                _L18093_
                                                _main-id18140_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L17906_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id18136_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id18140_))
                                           (_lp17759_
                                            (cons (_bind-e__2630826309_
                                                   _main-id18140_
                                                   _L18092_
                                                   '#f)
                                                  (cons (_bind-e__2630826309_
                                                         _get-kws-id18136_
                                                         _new-get-kws18146_
                                                         '#f)
                                                        (cons (_bind-e__2630826309_
                                                               _L17906_
                                                               _new-kw-dispatch18144_
                                                               '#f)
                                                              _rest17782_)))
                                            _bind17762_))))
                                     _hd1796718085_
                                     _hd1796418077_
                                     _hd1796118069_
                                     _hd1795818061_
                                     _hd1794018013_)
                                    (_g1792017973_ _g1792117976_))))
                            (_g1792017973_ _g1792117976_))
                        (_g1792017973_ _g1792117976_))
                    (_g1792017973_ _g1792117976_))
                (_g1792017973_ _g1792117976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1792017973_ _g1792117976_))
                                            (_g1792017973_ _g1792117976_))
                                        (_g1792017973_ _g1792117976_))))
                                (_g1792017973_ _g1792117976_))
                            (_g1792017973_ _g1792117976_))))
                    (_g1792017973_ _g1792117976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1792017973_
                                                     _g1792117976_))))
                                            (_g1792017973_ _g1792117976_))))
                                    (_g1792017973_ _g1792117976_))))
                            (_g1792017973_ _g1792117976_))))
                    (_g1792017973_ _g1792117976_))
                (_g1792017973_ _g1792117976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1792017973_
                                                 _g1792117976_))))
                                        (_g1792017973_ _g1792117976_))))
                                (_g1792017973_ _g1792117976_))))
                        (_g1792017973_ _g1792117976_))))
                (_g1792017973_ _g1792117976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1791918149_ _L17905_))))
                                       (___kont2874928750_
                                        (lambda (_L17856_ _L17857_)
                                          (_lp17759_
                                           _rest17782_
                                           (cons (cons _L17857_
                                                       (cons (gxc#compile-e
                                                              _L17856_)
                                                             '()))
                                                 _bind17762_)))))
                                   (let* ((___match2881628817_
                                           (lambda (_e1781417881_
                                                    _hd1781517884_
                                                    _tl1781617886_
                                                    _e1781717889_
                                                    _hd1781817892_
                                                    _tl1781917894_
                                                    _e1782017897_
                                                    _hd1782117900_
                                                    _tl1782217902_)
                                             (let ((_L17905_ _hd1782117900_)
                                                   (_L17906_ _hd1781817892_))
                                               (if (if (gx#identifier?
                                                        _L17906_)
                                                       (gxc#kw-lambda-expr?
                                                        _L17905_)
                                                       '#f)
                                                   (___kont2874728748_
                                                    _L17905_
                                                    _L17906_)
                                                   (___kont2874928750_
                                                    _hd1782117900_
                                                    _hd1781517884_)))))
                                          (___match2879428795_
                                           (lambda (_e1780318157_
                                                    _hd1780418160_
                                                    _tl1780518162_
                                                    _e1780618165_
                                                    _hd1780718168_
                                                    _tl1780818170_
                                                    _e1780918173_
                                                    _hd1781018176_
                                                    _tl1781118178_)
                                             (let ((_L18181_ _hd1781018176_)
                                                   (_L18182_ _hd1780718168_))
                                               (if (if (gx#identifier?
                                                        _L18182_)
                                                       (gxc#opt-lambda-expr?
                                                        _L18181_)
                                                       '#f)
                                                   (___kont2874528746_
                                                    _L18181_
                                                    _L18182_)
                                                   (___match2881628817_
                                                    _e1780318157_
                                                    _hd1780418160_
                                                    _tl1780518162_
                                                    _e1780618165_
                                                    _hd1780718168_
                                                    _tl1780818170_
                                                    _e1780918173_
                                                    _hd1781018176_
                                                    _tl1781118178_)))))
                                          (___match2877228773_
                                           (lambda (_e1779218329_
                                                    _hd1779318332_
                                                    _tl1779418334_
                                                    _e1779518337_
                                                    _hd1779618340_
                                                    _tl1779718342_
                                                    _e1779818345_
                                                    _hd1779918348_
                                                    _tl1780018350_)
                                             (let ((_L18353_ _hd1779918348_)
                                                   (_L18354_ _hd1779618340_))
                                               (if (if (gx#identifier?
                                                        _L18354_)
                                                       (gxc#case-lambda-expr?
                                                        _L18353_)
                                                       '#f)
                                                   (___kont2874328744_
                                                    _L18353_
                                                    _L18354_)
                                                   (___match2879428795_
                                                    _e1779218329_
                                                    _hd1779318332_
                                                    _tl1779418334_
                                                    _e1779518337_
                                                    _hd1779618340_
                                                    _tl1779718342_
                                                    _e1779818345_
                                                    _hd1779918348_
                                                    _tl1780018350_))))))
                                     (if (gx#stx-pair? ___stx2874128742_)
                                         (let ((_e1779218329_
                                                (gx#stx-e ___stx2874128742_)))
                                           (let ((_tl1779418334_
                                                  (##cdr _e1779218329_))
                                                 (_hd1779318332_
                                                  (##car _e1779218329_)))
                                             (if (gx#stx-pair? _hd1779318332_)
                                                 (let ((_e1779518337_
                                                        (gx#stx-e
                                                         _hd1779318332_)))
                                                   (let ((_tl1779718342_
                                                          (##cdr _e1779518337_))
                                                         (_hd1779618340_
                                                          (##car _e1779518337_)))
                                                     (if (gx#stx-null?
                                                          _tl1779718342_)
                                                         (if (gx#stx-pair?
                                                              _tl1779418334_)
                                                             (let ((_e1779818345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1779418334_)))
                       (let ((_tl1780018350_ (##cdr _e1779818345_))
                             (_hd1779918348_ (##car _e1779818345_)))
                         (if (gx#stx-null? _tl1780018350_)
                             (___match2877228773_
                              _e1779218329_
                              _hd1779318332_
                              _tl1779418334_
                              _e1779518337_
                              _hd1779618340_
                              _tl1779718342_
                              _e1779818345_
                              _hd1779918348_
                              _tl1780018350_)
                             (_g1778817835_))))
                     (_g1778817835_))
                 (if (gx#stx-pair? _tl1779418334_)
                     (let ((_e1782817848_ (gx#stx-e _tl1779418334_)))
                       (let ((_tl1783017853_ (##cdr _e1782817848_))
                             (_hd1782917851_ (##car _e1782817848_)))
                         (if (gx#stx-null? _tl1783017853_)
                             (___kont2874928750_ _hd1782917851_ _hd1779318332_)
                             (_g1778817835_))))
                     (_g1778817835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1779418334_)
                                                     (let ((_e1782817848_
                                                            (gx#stx-e
                                                             _tl1779418334_)))
                                                       (let ((_tl1783017853_
                                                              (##cdr _e1782817848_))
                                                             (_hd1782917851_
                                                              (##car _e1782817848_)))
                                                         (if (gx#stx-null?
                                                              _tl1783017853_)
                                                             (___kont2874928750_
                                                              _hd1782917851_
                                                              _hd1779318332_)
                                                             (_g1778817835_))))
                                                     (_g1778817835_)))))
                                         (_g1778817835_))))))))
                       (if (##pair? _rest1776317771_)
                           (let ((_hd1776818449_ (##car _rest1776317771_))
                                 (_tl1776918451_ (##cdr _rest1776317771_)))
                             (let* ((_hd18454_ _hd1776818449_)
                                    (_rest18456_ _tl1776918451_))
                               (_K1776718446_ _rest18456_ _hd18454_)))
                           (_else1776517779_)))))))
        (let* ((___stx2883328834_ _stx17619_)
               (_g1762517652_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2883328834_))))
          (let ((___kont2883528836_
                 (lambda (_L17712_ _L17713_ _L17714_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd17751_
                             (_compile-bindings17622_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1774317746_ _g1774417748_)
                                          (cons _g1774317746_ _g1774417748_))
                                        '()
                                        _L17713_))))
                            (_body17752_ (gxc#compile-e _L17712_)))
                        (gxc#xform-wrap-source
                         (cons _L17714_
                               (cons _hd17751_ (cons _body17752_ '())))
                         _stx17619_)))
                    gx#current-expander-context
                    (let ((__obj28897 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28897)
                        __obj28897)))))
                (___kont2883928840_
                 (lambda () (gxc#xform-let-values% _stx17619_))))
            (let ((___match2886028861_
                   (lambda (_e1763017664_
                            _hd1763117667_
                            _tl1763217669_
                            _e1763317672_
                            _hd1763417675_
                            _tl1763517677_
                            ___splice2883728838_
                            _target1763617680_
                            _tl1763817682_)
                     (letrec ((_loop1763917685_
                               (lambda (_hd1763717688_ _bind1764317690_)
                                 (if (gx#stx-pair? _hd1763717688_)
                                     (let ((_e1764017693_
                                            (gx#stx-e _hd1763717688_)))
                                       (let ((_lp-tl1764217698_
                                              (##cdr _e1764017693_))
                                             (_lp-hd1764117696_
                                              (##car _e1764017693_)))
                                         (_loop1763917685_
                                          _lp-tl1764217698_
                                          (cons _lp-hd1764117696_
                                                _bind1764317690_))))
                                     (let ((_bind1764417701_
                                            (reverse _bind1764317690_)))
                                       (if (gx#stx-pair? _tl1763517677_)
                                           (let ((_e1764517704_
                                                  (gx#stx-e _tl1763517677_)))
                                             (let ((_tl1764717709_
                                                    (##cdr _e1764517704_))
                                                   (_hd1764617707_
                                                    (##car _e1764517704_)))
                                               (if (gx#stx-null?
                                                    _tl1764717709_)
                                                   (let ((_L17712_
                                                          _hd1764617707_)
                                                         (_L17713_
                                                          _bind1764417701_)
                                                         (_L17714_
                                                          _hd1763117667_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1773517738_ _g1773617740_)
                                     (cons _g1773517738_ _g1773617740_))
                                   '()
                                   _L17713_)))
                 (___kont2883528836_ _L17712_ _L17713_ _L17714_)
                 (___kont2883928840_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2883928840_))))
                                           (___kont2883928840_)))))))
                       (_loop1763917685_ _target1763617680_ '())))))
              (if (gx#stx-pair? ___stx2883328834_)
                  (let ((_e1763017664_ (gx#stx-e ___stx2883328834_)))
                    (let ((_tl1763217669_ (##cdr _e1763017664_))
                          (_hd1763117667_ (##car _e1763017664_)))
                      (if (gx#stx-pair? _tl1763217669_)
                          (let ((_e1763317672_ (gx#stx-e _tl1763217669_)))
                            (let ((_tl1763517677_ (##cdr _e1763317672_))
                                  (_hd1763417675_ (##car _e1763317672_)))
                              (if (gx#stx-pair/null? _hd1763417675_)
                                  (let ((___splice2883728838_
                                         (gx#syntax-split-splice
                                          _hd1763417675_
                                          '0)))
                                    (let ((_tl1763817682_
                                           (##vector-ref
                                            ___splice2883728838_
                                            '1))
                                          (_target1763617680_
                                           (##vector-ref
                                            ___splice2883728838_
                                            '0)))
                                      (if (gx#stx-null? _tl1763817682_)
                                          (___match2886028861_
                                           _e1763017664_
                                           _hd1763117667_
                                           _tl1763217669_
                                           _e1763317672_
                                           _hd1763417675_
                                           _tl1763517677_
                                           ___splice2883728838_
                                           _target1763617680_
                                           _tl1763817682_)
                                          (___kont2883928840_))))
                                  (___kont2883928840_))))
                          (___kont2883928840_))))
                  (___kont2883928840_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind17537_)
      (let* ((___stx2886328864_ _bind17537_)
             (_g1754017557_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2886328864_))))
        (let ((___kont2886528866_
               (lambda (_L17593_ _L17594_)
                 (if (gx#identifier? _L17594_)
                     (let ((_$e17610_ (gxc#case-lambda-expr? _L17593_)))
                       (if _$e17610_
                           _$e17610_
                           (let ((_$e17613_ (gxc#opt-lambda-expr? _L17593_)))
                             (if _$e17613_
                                 _$e17613_
                                 (gxc#kw-lambda-expr? _L17593_)))))
                     '#f)))
              (___kont2886728868_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2886328864_)
              (let ((_e1754417569_ (gx#stx-e ___stx2886328864_)))
                (let ((_tl1754617574_ (##cdr _e1754417569_))
                      (_hd1754517572_ (##car _e1754417569_)))
                  (if (gx#stx-pair? _hd1754517572_)
                      (let ((_e1754717577_ (gx#stx-e _hd1754517572_)))
                        (let ((_tl1754917582_ (##cdr _e1754717577_))
                              (_hd1754817580_ (##car _e1754717577_)))
                          (if (gx#stx-null? _tl1754917582_)
                              (if (gx#stx-pair? _tl1754617574_)
                                  (let ((_e1755017585_
                                         (gx#stx-e _tl1754617574_)))
                                    (let ((_tl1755217590_
                                           (##cdr _e1755017585_))
                                          (_hd1755117588_
                                           (##car _e1755017585_)))
                                      (if (gx#stx-null? _tl1755217590_)
                                          (___kont2886528866_
                                           _hd1755117588_
                                           _hd1754817580_)
                                          (___kont2886728868_))))
                                  (___kont2886728868_))
                              (___kont2886728868_))))
                      (___kont2886728868_))))
              (___kont2886728868_)))))))
