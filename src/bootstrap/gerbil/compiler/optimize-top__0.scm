(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (##make-promise
     (lambda ()
       (let ((_tbl27446_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl27446_ (force gxc#&void))
           (table-set! _tbl27446_ '%#begin gxc#collect-begin%)
           (table-set! _tbl27446_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl27446_ '%#module gxc#collect-module%)
           (table-set!
            _tbl27446_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl27446_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl27446_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl27446_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl27446_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl27446_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl27446_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl27446_ '%#call gxc#collect-type-call%)
           (table-set! _tbl27446_ '%#if gxc#collect-operands)
           (table-set! _tbl27446_ '%#set! gxc#collect-body-setq%)
           _tbl27446_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx27439_ . _args27441_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27439_ _args27441_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (##make-promise
     (lambda ()
       (let ((_tbl27436_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl27436_ (force gxc#&false))
           (table-set! _tbl27436_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl27436_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl27436_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl27436_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set!
            _tbl27436_
            '%#let-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl27436_
            '%#letrec-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl27436_
            '%#letrec*-values
            gxc#basic-expression-type-let-values%)
           (table-set! _tbl27436_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl27436_ '%#ref gxc#basic-expression-type-ref%)
           _tbl27436_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx27429_ . _args27431_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27429_ _args27431_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (##make-promise
     (lambda ()
       (let ((_tbl27426_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl27426_ (force gxc#&basic-xform))
           (table-set!
            _tbl27426_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl27426_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl27426_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl27426_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl27426_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx27419_ . _args27421_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27419_ _args27421_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx27275_)
      (let* ((___stx2745927460_ _stx27275_)
             (_g2727827309_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2745927460_))))
        (let ((___kont2746127462_
               (lambda (_L27391_ _L27392_)
                 (let ((_sym27408_ (gxc#identifier-symbol _L27392_)))
                   (begin
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym27408_
                          '#f)
                         (gxc#verbose
                          '"skipping type declaration for mutable binding "
                          _sym27408_)
                         (let ((_type2740927411_
                                (gxc#apply-basic-expression-type _L27391_)))
                           (if _type2740927411_
                               (let ((_type27414_ _type2740927411_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym27408_
                                  _type27414_))
                               '#f)))
                     (gxc#compile-e _L27391_)))))
              (___kont2746327464_
               (lambda (_L27338_ _L27339_) (gxc#compile-e _L27338_))))
          (let ((___match2749227493_
                 (lambda (_e2728227359_
                          _hd2728327362_
                          _tl2728427364_
                          _e2728527367_
                          _hd2728627370_
                          _tl2728727372_
                          _e2728827375_
                          _hd2728927378_
                          _tl2729027380_
                          _e2729127383_
                          _hd2729227386_
                          _tl2729327388_)
                   (let ((_L27391_ _hd2729227386_) (_L27392_ _hd2728927378_))
                     (if (gx#identifier? _L27392_)
                         (___kont2746127462_ _L27391_ _L27392_)
                         (___kont2746327464_
                          _hd2729227386_
                          _hd2728627370_))))))
            (if (gx#stx-pair? ___stx2745927460_)
                (let ((_e2728227359_ (gx#stx-e ___stx2745927460_)))
                  (let ((_tl2728427364_ (##cdr _e2728227359_))
                        (_hd2728327362_ (##car _e2728227359_)))
                    (if (gx#stx-pair? _tl2728427364_)
                        (let ((_e2728527367_ (gx#stx-e _tl2728427364_)))
                          (let ((_tl2728727372_ (##cdr _e2728527367_))
                                (_hd2728627370_ (##car _e2728527367_)))
                            (if (gx#stx-pair? _hd2728627370_)
                                (let ((_e2728827375_
                                       (gx#stx-e _hd2728627370_)))
                                  (let ((_tl2729027380_ (##cdr _e2728827375_))
                                        (_hd2728927378_ (##car _e2728827375_)))
                                    (if (gx#stx-null? _tl2729027380_)
                                        (if (gx#stx-pair? _tl2728727372_)
                                            (let ((_e2729127383_
                                                   (gx#stx-e _tl2728727372_)))
                                              (let ((_tl2729327388_
                                                     (##cdr _e2729127383_))
                                                    (_hd2729227386_
                                                     (##car _e2729127383_)))
                                                (if (gx#stx-null?
                                                     _tl2729327388_)
                                                    (___match2749227493_
                                                     _e2728227359_
                                                     _hd2728327362_
                                                     _tl2728427364_
                                                     _e2728527367_
                                                     _hd2728627370_
                                                     _tl2728727372_
                                                     _e2728827375_
                                                     _hd2728927378_
                                                     _tl2729027380_
                                                     _e2729127383_
                                                     _hd2729227386_
                                                     _tl2729327388_)
                                                    (_g2727827309_))))
                                            (_g2727827309_))
                                        (if (gx#stx-pair? _tl2728727372_)
                                            (let ((_e2730227330_
                                                   (gx#stx-e _tl2728727372_)))
                                              (let ((_tl2730427335_
                                                     (##cdr _e2730227330_))
                                                    (_hd2730327333_
                                                     (##car _e2730227330_)))
                                                (if (gx#stx-null?
                                                     _tl2730427335_)
                                                    (___kont2746327464_
                                                     _hd2730327333_
                                                     _hd2728627370_)
                                                    (_g2727827309_))))
                                            (_g2727827309_)))))
                                (if (gx#stx-pair? _tl2728727372_)
                                    (let ((_e2730227330_
                                           (gx#stx-e _tl2728727372_)))
                                      (let ((_tl2730427335_
                                             (##cdr _e2730227330_))
                                            (_hd2730327333_
                                             (##car _e2730227330_)))
                                        (if (gx#stx-null? _tl2730427335_)
                                            (___kont2746327464_
                                             _hd2730327333_
                                             _hd2728627370_)
                                            (_g2727827309_))))
                                    (_g2727827309_)))))
                        (_g2727827309_))))
                (_g2727827309_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx27060_)
      (letrec ((_collect-e27062_
                (lambda (_hd27219_ _expr27220_)
                  (let* ((___stx2751527516_ _hd27219_)
                         (_g2722327233_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2751527516_))))
                    (let ((___kont2751727518_
                           (lambda (_L27253_)
                             (let ((_sym27264_
                                    (gxc#identifier-symbol _L27253_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym27264_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym27264_)
                                   (let ((_type2726527267_
                                          (gxc#apply-basic-expression-type
                                           _expr27220_)))
                                     (if _type2726527267_
                                         (let ((_type27270_ _type2726527267_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym27264_
                                            _type27270_
                                            '#t))
                                         '#f))))))
                          (___kont2751927520_ (lambda () '#!void)))
                      (let ((___match2752827529_
                             (lambda (_e2722627245_
                                      _hd2722727248_
                                      _tl2722827250_)
                               (let ((_L27253_ _hd2722727248_))
                                 (if (gx#identifier? _L27253_)
                                     (___kont2751727518_ _L27253_)
                                     (___kont2751927520_))))))
                        (if (gx#stx-pair? ___stx2751527516_)
                            (let ((_e2722627245_ (gx#stx-e ___stx2751527516_)))
                              (let ((_tl2722827250_ (##cdr _e2722627245_))
                                    (_hd2722727248_ (##car _e2722627245_)))
                                (if (gx#stx-null? _tl2722827250_)
                                    (___match2752827529_
                                     _e2722627245_
                                     _hd2722727248_
                                     _tl2722827250_)
                                    (___kont2751927520_))))
                            (___kont2751927520_))))))))
        (let* ((_g2706427099_
                (lambda (_g2706527096_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2706527096_)))
               (_g2706327216_
                (lambda (_g2706527102_)
                  (if (gx#stx-pair? _g2706527102_)
                      (let ((_e2706927104_ (gx#stx-e _g2706527102_)))
                        (let ((_hd2707027107_ (##car _e2706927104_))
                              (_tl2707127109_ (##cdr _e2706927104_)))
                          (if (gx#stx-pair? _tl2707127109_)
                              (let ((_e2707227112_ (gx#stx-e _tl2707127109_)))
                                (let ((_hd2707327115_ (##car _e2707227112_))
                                      (_tl2707427117_ (##cdr _e2707227112_)))
                                  (if (gx#stx-pair/null? _hd2707327115_)
                                      (let ((_g30064_
                                             (gx#syntax-split-splice
                                              _hd2707327115_
                                              '0)))
                                        (begin
                                          (let ((_g30065_
                                                 (if (##values? _g30064_)
                                                     (##vector-length _g30064_)
                                                     1)))
                                            (if (not (##fx= _g30065_ 2))
                                                (error "Context expects 2 values"
                                                       _g30065_)))
                                          (let ((_target2707527120_
                                                 (##vector-ref _g30064_ 0))
                                                (_tl2707727122_
                                                 (##vector-ref _g30064_ 1)))
                                            (if (gx#stx-null? _tl2707727122_)
                                                (letrec ((_loop2707827125_
                                                          (lambda (_hd2707627128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2708227130_
                           _hd2708327132_)
                    (if (gx#stx-pair? _hd2707627128_)
                        (let ((_e2707927135_ (gx#stx-e _hd2707627128_)))
                          (let ((_lp-hd2708027138_ (##car _e2707927135_))
                                (_lp-tl2708127140_ (##cdr _e2707927135_)))
                            (if (gx#stx-pair? _lp-hd2708027138_)
                                (let ((_e2708627143_
                                       (gx#stx-e _lp-hd2708027138_)))
                                  (let ((_hd2708727146_ (##car _e2708627143_))
                                        (_tl2708827148_ (##cdr _e2708627143_)))
                                    (if (gx#stx-pair? _tl2708827148_)
                                        (let ((_e2708927151_
                                               (gx#stx-e _tl2708827148_)))
                                          (let ((_hd2709027154_
                                                 (##car _e2708927151_))
                                                (_tl2709127156_
                                                 (##cdr _e2708927151_)))
                                            (if (gx#stx-null? _tl2709127156_)
                                                (_loop2707827125_
                                                 _lp-tl2708127140_
                                                 (cons _hd2709027154_
                                                       _expr2708227130_)
                                                 (cons _hd2708727146_
                                                       _hd2708327132_))
                                                (_g2706427099_
                                                 _g2706527102_))))
                                        (_g2706427099_ _g2706527102_))))
                                (_g2706427099_ _g2706527102_))))
                        (let ((_expr2708427159_ (reverse _expr2708227130_))
                              (_hd2708527161_ (reverse _hd2708327132_)))
                          (if (gx#stx-pair? _tl2707427117_)
                              (let ((_e2709227164_ (gx#stx-e _tl2707427117_)))
                                (let ((_hd2709327167_ (##car _e2709227164_))
                                      (_tl2709427169_ (##cdr _e2709227164_)))
                                  (if (gx#stx-null? _tl2709427169_)
                                      ((lambda (_L27172_ _L27173_ _L27174_)
                                         (begin
                                           (for-each
                                            _collect-e27062_
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2719427197_
                                                               _g2719527199_)
                                                        (cons _g2719427197_
                                                              _g2719527199_))
                                                      '()
                                                      _L27174_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2720127204_
                                                               _g2720227206_)
                                                        (cons _g2720127204_
                                                              _g2720227206_))
                                                      '()
                                                      _L27173_)))
                                           (for-each
                                            gxc#compile-e
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2720827211_
                                                               _g2720927213_)
                                                        (cons _g2720827211_
                                                              _g2720927213_))
                                                      '()
                                                      _L27173_)))
                                           (gxc#compile-e _L27172_)))
                                       _hd2709327167_
                                       _expr2708427159_
                                       _hd2708527161_)
                                      (_g2706427099_ _g2706527102_))))
                              (_g2706427099_ _g2706527102_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2707827125_
                                                   _target2707527120_
                                                   '()
                                                   '()))
                                                (_g2706427099_
                                                 _g2706527102_)))))
                                      (_g2706427099_ _g2706527102_))))
                              (_g2706427099_ _g2706527102_))))
                      (_g2706427099_ _g2706527102_)))))
          (_g2706327216_ _stx27060_)))))
  (define gxc#collect-type-call%
    (lambda (_stx26552_)
      (let* ((___stx2753127532_ _stx26552_)
             (_g2655626671_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2753127532_))))
        (let ((___kont2753327534_
               (lambda (_L27010_ _L27011_ _L27012_ _L27013_ _L27014_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L27013_)
                  (gx#stx-e _L27012_)
                  (gxc#identifier-symbol _L27011_)
                  (gx#stx-e _L27010_))))
              (___kont2753527536_
               (lambda (_L26838_ _L26839_ _L26840_ _L26841_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L26840_)
                  (gx#stx-e _L26839_)
                  (gxc#identifier-symbol _L26838_)
                  '#f)))
              (___kont2753727538_
               (lambda (_L26708_)
                 (for-each
                  gxc#compile-e
                  (begin
                    '#!void
                    (foldr1 (lambda (_g2672126724_ _g2672226726_)
                              (cons _g2672126724_ _g2672226726_))
                            '()
                            _L26708_))))))
          (let* ((___match2778827789_
                  (lambda (_e2665526676_
                           _hd2665626679_
                           _tl2665726681_
                           ___splice2753927540_
                           _target2665826684_
                           _tl2666026686_)
                    (letrec ((_loop2666126689_
                              (lambda (_hd2665926692_ _expr2666526694_)
                                (if (gx#stx-pair? _hd2665926692_)
                                    (let ((_e2666226697_
                                           (gx#stx-e _hd2665926692_)))
                                      (let ((_lp-tl2666426702_
                                             (##cdr _e2666226697_))
                                            (_lp-hd2666326700_
                                             (##car _e2666226697_)))
                                        (_loop2666126689_
                                         _lp-tl2666426702_
                                         (cons _lp-hd2666326700_
                                               _expr2666526694_))))
                                    (let ((_expr2666626705_
                                           (reverse _expr2666526694_)))
                                      (___kont2753727538_
                                       _expr2666626705_))))))
                      (_loop2666126689_ _target2665826684_ '()))))
                 (___match2766827669_
                  (lambda (_e2656326882_
                           _hd2656426885_
                           _tl2656526887_
                           _e2656626890_
                           _hd2656726893_
                           _tl2656826895_
                           _e2656926898_
                           _hd2657026901_
                           _tl2657126903_
                           _e2657226906_
                           _hd2657326909_
                           _tl2657426911_
                           _e2657526914_
                           _hd2657626917_
                           _tl2657726919_
                           _e2657826922_
                           _hd2657926925_
                           _tl2658026927_
                           _e2658126930_
                           _hd2658226933_
                           _tl2658326935_
                           _e2658426938_
                           _hd2658526941_
                           _tl2658626943_
                           _e2658726946_
                           _hd2658826949_
                           _tl2658926951_
                           _e2659026954_
                           _hd2659126957_
                           _tl2659226959_
                           _e2659326962_
                           _hd2659426965_
                           _tl2659526967_
                           _e2659626970_
                           _hd2659726973_
                           _tl2659826975_
                           _e2659926978_
                           _hd2660026981_
                           _tl2660126983_
                           _e2660226986_
                           _hd2660326989_
                           _tl2660426991_
                           _e2660526994_
                           _hd2660626997_
                           _tl2660726999_
                           _e2660827002_
                           _hd2660927005_
                           _tl2661027007_)
                    (let ((_L27010_ _hd2660927005_)
                          (_L27011_ _hd2660026981_)
                          (_L27012_ _hd2659126957_)
                          (_L27013_ _hd2658226933_)
                          (_L27014_ _hd2657326909_))
                      (if (gxc#runtime-identifier=? _L27014_ 'bind-method!)
                          (___kont2753327534_
                           _L27010_
                           _L27011_
                           _L27012_
                           _L27013_
                           _L27014_)
                          (if (gx#stx-pair/null? _tl2656526887_)
                              (let ((___splice2753927540_
                                     (gx#syntax-split-splice
                                      _tl2656526887_
                                      '0)))
                                (let ((_tl2666026686_
                                       (##vector-ref ___splice2753927540_ '1))
                                      (_target2665826684_
                                       (##vector-ref ___splice2753927540_ '0)))
                                  (if (gx#stx-null? _tl2666026686_)
                                      (___match2778827789_
                                       _e2656326882_
                                       _hd2656426885_
                                       _tl2656526887_
                                       ___splice2753927540_
                                       _target2665826684_
                                       _tl2666026686_)
                                      (_g2655626671_))))
                              (_g2655626671_)))))))
            (if (gx#stx-pair? ___stx2753127532_)
                (let ((_e2656326882_ (gx#stx-e ___stx2753127532_)))
                  (let ((_tl2656526887_ (##cdr _e2656326882_))
                        (_hd2656426885_ (##car _e2656326882_)))
                    (if (gx#stx-pair? _tl2656526887_)
                        (let ((_e2656626890_ (gx#stx-e _tl2656526887_)))
                          (let ((_tl2656826895_ (##cdr _e2656626890_))
                                (_hd2656726893_ (##car _e2656626890_)))
                            (if (gx#stx-pair? _hd2656726893_)
                                (let ((_e2656926898_
                                       (gx#stx-e _hd2656726893_)))
                                  (let ((_tl2657126903_ (##cdr _e2656926898_))
                                        (_hd2657026901_ (##car _e2656926898_)))
                                    (if (gx#identifier? _hd2657026901_)
                                        (if (gx#stx-eq? '%#ref _hd2657026901_)
                                            (if (gx#stx-pair? _tl2657126903_)
                                                (let ((_e2657226906_
                                                       (gx#stx-e
                                                        _tl2657126903_)))
                                                  (let ((_tl2657426911_
                                                         (##cdr _e2657226906_))
                                                        (_hd2657326909_
                                                         (##car _e2657226906_)))
                                                    (if (gx#stx-null?
                                                         _tl2657426911_)
                                                        (if (gx#stx-pair?
                                                             _tl2656826895_)
                                                            (let ((_e2657526914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2656826895_)))
                      (let ((_tl2657726919_ (##cdr _e2657526914_))
                            (_hd2657626917_ (##car _e2657526914_)))
                        (if (gx#stx-pair? _hd2657626917_)
                            (let ((_e2657826922_ (gx#stx-e _hd2657626917_)))
                              (let ((_tl2658026927_ (##cdr _e2657826922_))
                                    (_hd2657926925_ (##car _e2657826922_)))
                                (if (gx#identifier? _hd2657926925_)
                                    (if (gx#stx-eq? '%#ref _hd2657926925_)
                                        (if (gx#stx-pair? _tl2658026927_)
                                            (let ((_e2658126930_
                                                   (gx#stx-e _tl2658026927_)))
                                              (let ((_tl2658326935_
                                                     (##cdr _e2658126930_))
                                                    (_hd2658226933_
                                                     (##car _e2658126930_)))
                                                (if (gx#stx-null?
                                                     _tl2658326935_)
                                                    (if (gx#stx-pair?
                                                         _tl2657726919_)
                                                        (let ((_e2658426938_
                                                               (gx#stx-e
                                                                _tl2657726919_)))
                                                          (let ((_tl2658626943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2658426938_))
                        (_hd2658526941_ (##car _e2658426938_)))
                    (if (gx#stx-pair? _hd2658526941_)
                        (let ((_e2658726946_ (gx#stx-e _hd2658526941_)))
                          (let ((_tl2658926951_ (##cdr _e2658726946_))
                                (_hd2658826949_ (##car _e2658726946_)))
                            (if (gx#identifier? _hd2658826949_)
                                (if (gx#stx-eq? '%#quote _hd2658826949_)
                                    (if (gx#stx-pair? _tl2658926951_)
                                        (let ((_e2659026954_
                                               (gx#stx-e _tl2658926951_)))
                                          (let ((_tl2659226959_
                                                 (##cdr _e2659026954_))
                                                (_hd2659126957_
                                                 (##car _e2659026954_)))
                                            (if (gx#stx-null? _tl2659226959_)
                                                (if (gx#stx-pair?
                                                     _tl2658626943_)
                                                    (let ((_e2659326962_
                                                           (gx#stx-e
                                                            _tl2658626943_)))
                                                      (let ((_tl2659526967_
                                                             (##cdr _e2659326962_))
                                                            (_hd2659426965_
                                                             (##car _e2659326962_)))
                                                        (if (gx#stx-pair?
                                                             _hd2659426965_)
                                                            (let ((_e2659626970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2659426965_)))
                      (let ((_tl2659826975_ (##cdr _e2659626970_))
                            (_hd2659726973_ (##car _e2659626970_)))
                        (if (gx#identifier? _hd2659726973_)
                            (if (gx#stx-eq? '%#ref _hd2659726973_)
                                (if (gx#stx-pair? _tl2659826975_)
                                    (let ((_e2659926978_
                                           (gx#stx-e _tl2659826975_)))
                                      (let ((_tl2660126983_
                                             (##cdr _e2659926978_))
                                            (_hd2660026981_
                                             (##car _e2659926978_)))
                                        (if (gx#stx-null? _tl2660126983_)
                                            (if (gx#stx-pair? _tl2659526967_)
                                                (let ((_e2660226986_
                                                       (gx#stx-e
                                                        _tl2659526967_)))
                                                  (let ((_tl2660426991_
                                                         (##cdr _e2660226986_))
                                                        (_hd2660326989_
                                                         (##car _e2660226986_)))
                                                    (if (gx#stx-pair?
                                                         _hd2660326989_)
                                                        (let ((_e2660526994_
                                                               (gx#stx-e
                                                                _hd2660326989_)))
                                                          (let ((_tl2660726999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2660526994_))
                        (_hd2660626997_ (##car _e2660526994_)))
                    (if (gx#identifier? _hd2660626997_)
                        (if (gx#stx-eq? '%#quote _hd2660626997_)
                            (if (gx#stx-pair? _tl2660726999_)
                                (let ((_e2660827002_
                                       (gx#stx-e _tl2660726999_)))
                                  (let ((_tl2661027007_ (##cdr _e2660827002_))
                                        (_hd2660927005_ (##car _e2660827002_)))
                                    (if (gx#stx-null? _tl2661027007_)
                                        (if (gx#stx-null? _tl2660426991_)
                                            (___match2766827669_
                                             _e2656326882_
                                             _hd2656426885_
                                             _tl2656526887_
                                             _e2656626890_
                                             _hd2656726893_
                                             _tl2656826895_
                                             _e2656926898_
                                             _hd2657026901_
                                             _tl2657126903_
                                             _e2657226906_
                                             _hd2657326909_
                                             _tl2657426911_
                                             _e2657526914_
                                             _hd2657626917_
                                             _tl2657726919_
                                             _e2657826922_
                                             _hd2657926925_
                                             _tl2658026927_
                                             _e2658126930_
                                             _hd2658226933_
                                             _tl2658326935_
                                             _e2658426938_
                                             _hd2658526941_
                                             _tl2658626943_
                                             _e2658726946_
                                             _hd2658826949_
                                             _tl2658926951_
                                             _e2659026954_
                                             _hd2659126957_
                                             _tl2659226959_
                                             _e2659326962_
                                             _hd2659426965_
                                             _tl2659526967_
                                             _e2659626970_
                                             _hd2659726973_
                                             _tl2659826975_
                                             _e2659926978_
                                             _hd2660026981_
                                             _tl2660126983_
                                             _e2660226986_
                                             _hd2660326989_
                                             _tl2660426991_
                                             _e2660526994_
                                             _hd2660626997_
                                             _tl2660726999_
                                             _e2660827002_
                                             _hd2660927005_
                                             _tl2661027007_)
                                            (if (gx#stx-pair/null?
                                                 _tl2656526887_)
                                                (let ((___splice2753927540_
                                                       (gx#syntax-split-splice
                                                        _tl2656526887_
                                                        '0)))
                                                  (let ((_tl2666026686_
                                                         (##vector-ref
                                                          ___splice2753927540_
                                                          '1))
                                                        (_target2665826684_
                                                         (##vector-ref
                                                          ___splice2753927540_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2666026686_)
                                                        (___match2778827789_
                                                         _e2656326882_
                                                         _hd2656426885_
                                                         _tl2656526887_
                                                         ___splice2753927540_
                                                         _target2665826684_
                                                         _tl2666026686_)
                                                        (_g2655626671_))))
                                                (_g2655626671_)))
                                        (if (gx#stx-pair/null? _tl2656526887_)
                                            (let ((___splice2753927540_
                                                   (gx#syntax-split-splice
                                                    _tl2656526887_
                                                    '0)))
                                              (let ((_tl2666026686_
                                                     (##vector-ref
                                                      ___splice2753927540_
                                                      '1))
                                                    (_target2665826684_
                                                     (##vector-ref
                                                      ___splice2753927540_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2666026686_)
                                                    (___match2778827789_
                                                     _e2656326882_
                                                     _hd2656426885_
                                                     _tl2656526887_
                                                     ___splice2753927540_
                                                     _target2665826684_
                                                     _tl2666026686_)
                                                    (_g2655626671_))))
                                            (_g2655626671_)))))
                                (if (gx#stx-pair/null? _tl2656526887_)
                                    (let ((___splice2753927540_
                                           (gx#syntax-split-splice
                                            _tl2656526887_
                                            '0)))
                                      (let ((_tl2666026686_
                                             (##vector-ref
                                              ___splice2753927540_
                                              '1))
                                            (_target2665826684_
                                             (##vector-ref
                                              ___splice2753927540_
                                              '0)))
                                        (if (gx#stx-null? _tl2666026686_)
                                            (___match2778827789_
                                             _e2656326882_
                                             _hd2656426885_
                                             _tl2656526887_
                                             ___splice2753927540_
                                             _target2665826684_
                                             _tl2666026686_)
                                            (_g2655626671_))))
                                    (_g2655626671_)))
                            (if (gx#stx-pair/null? _tl2656526887_)
                                (let ((___splice2753927540_
                                       (gx#syntax-split-splice
                                        _tl2656526887_
                                        '0)))
                                  (let ((_tl2666026686_
                                         (##vector-ref
                                          ___splice2753927540_
                                          '1))
                                        (_target2665826684_
                                         (##vector-ref
                                          ___splice2753927540_
                                          '0)))
                                    (if (gx#stx-null? _tl2666026686_)
                                        (___match2778827789_
                                         _e2656326882_
                                         _hd2656426885_
                                         _tl2656526887_
                                         ___splice2753927540_
                                         _target2665826684_
                                         _tl2666026686_)
                                        (_g2655626671_))))
                                (_g2655626671_)))
                        (if (gx#stx-pair/null? _tl2656526887_)
                            (let ((___splice2753927540_
                                   (gx#syntax-split-splice _tl2656526887_ '0)))
                              (let ((_tl2666026686_
                                     (##vector-ref ___splice2753927540_ '1))
                                    (_target2665826684_
                                     (##vector-ref ___splice2753927540_ '0)))
                                (if (gx#stx-null? _tl2666026686_)
                                    (___match2778827789_
                                     _e2656326882_
                                     _hd2656426885_
                                     _tl2656526887_
                                     ___splice2753927540_
                                     _target2665826684_
                                     _tl2666026686_)
                                    (_g2655626671_))))
                            (_g2655626671_)))))
                (if (gx#stx-pair/null? _tl2656526887_)
                    (let ((___splice2753927540_
                           (gx#syntax-split-splice _tl2656526887_ '0)))
                      (let ((_tl2666026686_
                             (##vector-ref ___splice2753927540_ '1))
                            (_target2665826684_
                             (##vector-ref ___splice2753927540_ '0)))
                        (if (gx#stx-null? _tl2666026686_)
                            (___match2778827789_
                             _e2656326882_
                             _hd2656426885_
                             _tl2656526887_
                             ___splice2753927540_
                             _target2665826684_
                             _tl2666026686_)
                            (_g2655626671_))))
                    (_g2655626671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2659526967_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L26838_
                                                               _hd2660026981_)
                                                              (_L26839_
                                                               _hd2659126957_)
                                                              (_L26840_
                                                               _hd2658226933_)
                                                              (_L26841_
                                                               _hd2657326909_))
                                                          (___kont2753527536_
                                                           _L26838_
                                                           _L26839_
                                                           _L26840_
                                                           _L26841_))
                                                        (if (gx#stx-pair/null?
                                                             _tl2656526887_)
                                                            (let ((___splice2753927540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl2656526887_ '0)))
                      (let ((_tl2666026686_
                             (##vector-ref ___splice2753927540_ '1))
                            (_target2665826684_
                             (##vector-ref ___splice2753927540_ '0)))
                        (if (gx#stx-null? _tl2666026686_)
                            (___match2778827789_
                             _e2656326882_
                             _hd2656426885_
                             _tl2656526887_
                             ___splice2753927540_
                             _target2665826684_
                             _tl2666026686_)
                            (_g2655626671_))))
                    (_g2655626671_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2656526887_)
                                                        (let ((___splice2753927540_
                                                               (gx#syntax-split-splice
                                                                _tl2656526887_
                                                                '0)))
                                                          (let ((_tl2666026686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2753927540_ '1))
                        (_target2665826684_
                         (##vector-ref ___splice2753927540_ '0)))
                    (if (gx#stx-null? _tl2666026686_)
                        (___match2778827789_
                         _e2656326882_
                         _hd2656426885_
                         _tl2656526887_
                         ___splice2753927540_
                         _target2665826684_
                         _tl2666026686_)
                        (_g2655626671_))))
                (_g2655626671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2656526887_)
                                                (let ((___splice2753927540_
                                                       (gx#syntax-split-splice
                                                        _tl2656526887_
                                                        '0)))
                                                  (let ((_tl2666026686_
                                                         (##vector-ref
                                                          ___splice2753927540_
                                                          '1))
                                                        (_target2665826684_
                                                         (##vector-ref
                                                          ___splice2753927540_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2666026686_)
                                                        (___match2778827789_
                                                         _e2656326882_
                                                         _hd2656426885_
                                                         _tl2656526887_
                                                         ___splice2753927540_
                                                         _target2665826684_
                                                         _tl2666026686_)
                                                        (_g2655626671_))))
                                                (_g2655626671_)))))
                                    (if (gx#stx-pair/null? _tl2656526887_)
                                        (let ((___splice2753927540_
                                               (gx#syntax-split-splice
                                                _tl2656526887_
                                                '0)))
                                          (let ((_tl2666026686_
                                                 (##vector-ref
                                                  ___splice2753927540_
                                                  '1))
                                                (_target2665826684_
                                                 (##vector-ref
                                                  ___splice2753927540_
                                                  '0)))
                                            (if (gx#stx-null? _tl2666026686_)
                                                (___match2778827789_
                                                 _e2656326882_
                                                 _hd2656426885_
                                                 _tl2656526887_
                                                 ___splice2753927540_
                                                 _target2665826684_
                                                 _tl2666026686_)
                                                (_g2655626671_))))
                                        (_g2655626671_)))
                                (if (gx#stx-pair/null? _tl2656526887_)
                                    (let ((___splice2753927540_
                                           (gx#syntax-split-splice
                                            _tl2656526887_
                                            '0)))
                                      (let ((_tl2666026686_
                                             (##vector-ref
                                              ___splice2753927540_
                                              '1))
                                            (_target2665826684_
                                             (##vector-ref
                                              ___splice2753927540_
                                              '0)))
                                        (if (gx#stx-null? _tl2666026686_)
                                            (___match2778827789_
                                             _e2656326882_
                                             _hd2656426885_
                                             _tl2656526887_
                                             ___splice2753927540_
                                             _target2665826684_
                                             _tl2666026686_)
                                            (_g2655626671_))))
                                    (_g2655626671_)))
                            (if (gx#stx-pair/null? _tl2656526887_)
                                (let ((___splice2753927540_
                                       (gx#syntax-split-splice
                                        _tl2656526887_
                                        '0)))
                                  (let ((_tl2666026686_
                                         (##vector-ref
                                          ___splice2753927540_
                                          '1))
                                        (_target2665826684_
                                         (##vector-ref
                                          ___splice2753927540_
                                          '0)))
                                    (if (gx#stx-null? _tl2666026686_)
                                        (___match2778827789_
                                         _e2656326882_
                                         _hd2656426885_
                                         _tl2656526887_
                                         ___splice2753927540_
                                         _target2665826684_
                                         _tl2666026686_)
                                        (_g2655626671_))))
                                (_g2655626671_)))))
                    (if (gx#stx-pair/null? _tl2656526887_)
                        (let ((___splice2753927540_
                               (gx#syntax-split-splice _tl2656526887_ '0)))
                          (let ((_tl2666026686_
                                 (##vector-ref ___splice2753927540_ '1))
                                (_target2665826684_
                                 (##vector-ref ___splice2753927540_ '0)))
                            (if (gx#stx-null? _tl2666026686_)
                                (___match2778827789_
                                 _e2656326882_
                                 _hd2656426885_
                                 _tl2656526887_
                                 ___splice2753927540_
                                 _target2665826684_
                                 _tl2666026686_)
                                (_g2655626671_))))
                        (_g2655626671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2656526887_)
                                                        (let ((___splice2753927540_
                                                               (gx#syntax-split-splice
                                                                _tl2656526887_
                                                                '0)))
                                                          (let ((_tl2666026686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2753927540_ '1))
                        (_target2665826684_
                         (##vector-ref ___splice2753927540_ '0)))
                    (if (gx#stx-null? _tl2666026686_)
                        (___match2778827789_
                         _e2656326882_
                         _hd2656426885_
                         _tl2656526887_
                         ___splice2753927540_
                         _target2665826684_
                         _tl2666026686_)
                        (_g2655626671_))))
                (_g2655626671_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2656526887_)
                                                    (let ((___splice2753927540_
                                                           (gx#syntax-split-splice
                                                            _tl2656526887_
                                                            '0)))
                                                      (let ((_tl2666026686_
                                                             (##vector-ref
                                                              ___splice2753927540_
                                                              '1))
                                                            (_target2665826684_
                                                             (##vector-ref
                                                              ___splice2753927540_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2666026686_)
                                                            (___match2778827789_
                                                             _e2656326882_
                                                             _hd2656426885_
                                                             _tl2656526887_
                                                             ___splice2753927540_
                                                             _target2665826684_
                                                             _tl2666026686_)
                                                            (_g2655626671_))))
                                                    (_g2655626671_)))))
                                        (if (gx#stx-pair/null? _tl2656526887_)
                                            (let ((___splice2753927540_
                                                   (gx#syntax-split-splice
                                                    _tl2656526887_
                                                    '0)))
                                              (let ((_tl2666026686_
                                                     (##vector-ref
                                                      ___splice2753927540_
                                                      '1))
                                                    (_target2665826684_
                                                     (##vector-ref
                                                      ___splice2753927540_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2666026686_)
                                                    (___match2778827789_
                                                     _e2656326882_
                                                     _hd2656426885_
                                                     _tl2656526887_
                                                     ___splice2753927540_
                                                     _target2665826684_
                                                     _tl2666026686_)
                                                    (_g2655626671_))))
                                            (_g2655626671_)))
                                    (if (gx#stx-pair/null? _tl2656526887_)
                                        (let ((___splice2753927540_
                                               (gx#syntax-split-splice
                                                _tl2656526887_
                                                '0)))
                                          (let ((_tl2666026686_
                                                 (##vector-ref
                                                  ___splice2753927540_
                                                  '1))
                                                (_target2665826684_
                                                 (##vector-ref
                                                  ___splice2753927540_
                                                  '0)))
                                            (if (gx#stx-null? _tl2666026686_)
                                                (___match2778827789_
                                                 _e2656326882_
                                                 _hd2656426885_
                                                 _tl2656526887_
                                                 ___splice2753927540_
                                                 _target2665826684_
                                                 _tl2666026686_)
                                                (_g2655626671_))))
                                        (_g2655626671_)))
                                (if (gx#stx-pair/null? _tl2656526887_)
                                    (let ((___splice2753927540_
                                           (gx#syntax-split-splice
                                            _tl2656526887_
                                            '0)))
                                      (let ((_tl2666026686_
                                             (##vector-ref
                                              ___splice2753927540_
                                              '1))
                                            (_target2665826684_
                                             (##vector-ref
                                              ___splice2753927540_
                                              '0)))
                                        (if (gx#stx-null? _tl2666026686_)
                                            (___match2778827789_
                                             _e2656326882_
                                             _hd2656426885_
                                             _tl2656526887_
                                             ___splice2753927540_
                                             _target2665826684_
                                             _tl2666026686_)
                                            (_g2655626671_))))
                                    (_g2655626671_)))))
                        (if (gx#stx-pair/null? _tl2656526887_)
                            (let ((___splice2753927540_
                                   (gx#syntax-split-splice _tl2656526887_ '0)))
                              (let ((_tl2666026686_
                                     (##vector-ref ___splice2753927540_ '1))
                                    (_target2665826684_
                                     (##vector-ref ___splice2753927540_ '0)))
                                (if (gx#stx-null? _tl2666026686_)
                                    (___match2778827789_
                                     _e2656326882_
                                     _hd2656426885_
                                     _tl2656526887_
                                     ___splice2753927540_
                                     _target2665826684_
                                     _tl2666026686_)
                                    (_g2655626671_))))
                            (_g2655626671_)))))
                (if (gx#stx-pair/null? _tl2656526887_)
                    (let ((___splice2753927540_
                           (gx#syntax-split-splice _tl2656526887_ '0)))
                      (let ((_tl2666026686_
                             (##vector-ref ___splice2753927540_ '1))
                            (_target2665826684_
                             (##vector-ref ___splice2753927540_ '0)))
                        (if (gx#stx-null? _tl2666026686_)
                            (___match2778827789_
                             _e2656326882_
                             _hd2656426885_
                             _tl2656526887_
                             ___splice2753927540_
                             _target2665826684_
                             _tl2666026686_)
                            (_g2655626671_))))
                    (_g2655626671_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2656526887_)
                                                        (let ((___splice2753927540_
                                                               (gx#syntax-split-splice
                                                                _tl2656526887_
                                                                '0)))
                                                          (let ((_tl2666026686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2753927540_ '1))
                        (_target2665826684_
                         (##vector-ref ___splice2753927540_ '0)))
                    (if (gx#stx-null? _tl2666026686_)
                        (___match2778827789_
                         _e2656326882_
                         _hd2656426885_
                         _tl2656526887_
                         ___splice2753927540_
                         _target2665826684_
                         _tl2666026686_)
                        (_g2655626671_))))
                (_g2655626671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2656526887_)
                                                (let ((___splice2753927540_
                                                       (gx#syntax-split-splice
                                                        _tl2656526887_
                                                        '0)))
                                                  (let ((_tl2666026686_
                                                         (##vector-ref
                                                          ___splice2753927540_
                                                          '1))
                                                        (_target2665826684_
                                                         (##vector-ref
                                                          ___splice2753927540_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2666026686_)
                                                        (___match2778827789_
                                                         _e2656326882_
                                                         _hd2656426885_
                                                         _tl2656526887_
                                                         ___splice2753927540_
                                                         _target2665826684_
                                                         _tl2666026686_)
                                                        (_g2655626671_))))
                                                (_g2655626671_)))
                                        (if (gx#stx-pair/null? _tl2656526887_)
                                            (let ((___splice2753927540_
                                                   (gx#syntax-split-splice
                                                    _tl2656526887_
                                                    '0)))
                                              (let ((_tl2666026686_
                                                     (##vector-ref
                                                      ___splice2753927540_
                                                      '1))
                                                    (_target2665826684_
                                                     (##vector-ref
                                                      ___splice2753927540_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2666026686_)
                                                    (___match2778827789_
                                                     _e2656326882_
                                                     _hd2656426885_
                                                     _tl2656526887_
                                                     ___splice2753927540_
                                                     _target2665826684_
                                                     _tl2666026686_)
                                                    (_g2655626671_))))
                                            (_g2655626671_)))
                                    (if (gx#stx-pair/null? _tl2656526887_)
                                        (let ((___splice2753927540_
                                               (gx#syntax-split-splice
                                                _tl2656526887_
                                                '0)))
                                          (let ((_tl2666026686_
                                                 (##vector-ref
                                                  ___splice2753927540_
                                                  '1))
                                                (_target2665826684_
                                                 (##vector-ref
                                                  ___splice2753927540_
                                                  '0)))
                                            (if (gx#stx-null? _tl2666026686_)
                                                (___match2778827789_
                                                 _e2656326882_
                                                 _hd2656426885_
                                                 _tl2656526887_
                                                 ___splice2753927540_
                                                 _target2665826684_
                                                 _tl2666026686_)
                                                (_g2655626671_))))
                                        (_g2655626671_)))))
                            (if (gx#stx-pair/null? _tl2656526887_)
                                (let ((___splice2753927540_
                                       (gx#syntax-split-splice
                                        _tl2656526887_
                                        '0)))
                                  (let ((_tl2666026686_
                                         (##vector-ref
                                          ___splice2753927540_
                                          '1))
                                        (_target2665826684_
                                         (##vector-ref
                                          ___splice2753927540_
                                          '0)))
                                    (if (gx#stx-null? _tl2666026686_)
                                        (___match2778827789_
                                         _e2656326882_
                                         _hd2656426885_
                                         _tl2656526887_
                                         ___splice2753927540_
                                         _target2665826684_
                                         _tl2666026686_)
                                        (_g2655626671_))))
                                (_g2655626671_)))))
                    (if (gx#stx-pair/null? _tl2656526887_)
                        (let ((___splice2753927540_
                               (gx#syntax-split-splice _tl2656526887_ '0)))
                          (let ((_tl2666026686_
                                 (##vector-ref ___splice2753927540_ '1))
                                (_target2665826684_
                                 (##vector-ref ___splice2753927540_ '0)))
                            (if (gx#stx-null? _tl2666026686_)
                                (___match2778827789_
                                 _e2656326882_
                                 _hd2656426885_
                                 _tl2656526887_
                                 ___splice2753927540_
                                 _target2665826684_
                                 _tl2666026686_)
                                (_g2655626671_))))
                        (_g2655626671_)))
                (if (gx#stx-pair/null? _tl2656526887_)
                    (let ((___splice2753927540_
                           (gx#syntax-split-splice _tl2656526887_ '0)))
                      (let ((_tl2666026686_
                             (##vector-ref ___splice2753927540_ '1))
                            (_target2665826684_
                             (##vector-ref ___splice2753927540_ '0)))
                        (if (gx#stx-null? _tl2666026686_)
                            (___match2778827789_
                             _e2656326882_
                             _hd2656426885_
                             _tl2656526887_
                             ___splice2753927540_
                             _target2665826684_
                             _tl2666026686_)
                            (_g2655626671_))))
                    (_g2655626671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2656526887_)
                                                    (let ((___splice2753927540_
                                                           (gx#syntax-split-splice
                                                            _tl2656526887_
                                                            '0)))
                                                      (let ((_tl2666026686_
                                                             (##vector-ref
                                                              ___splice2753927540_
                                                              '1))
                                                            (_target2665826684_
                                                             (##vector-ref
                                                              ___splice2753927540_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2666026686_)
                                                            (___match2778827789_
                                                             _e2656326882_
                                                             _hd2656426885_
                                                             _tl2656526887_
                                                             ___splice2753927540_
                                                             _target2665826684_
                                                             _tl2666026686_)
                                                            (_g2655626671_))))
                                                    (_g2655626671_)))
                                            (if (gx#stx-pair/null?
                                                 _tl2656526887_)
                                                (let ((___splice2753927540_
                                                       (gx#syntax-split-splice
                                                        _tl2656526887_
                                                        '0)))
                                                  (let ((_tl2666026686_
                                                         (##vector-ref
                                                          ___splice2753927540_
                                                          '1))
                                                        (_target2665826684_
                                                         (##vector-ref
                                                          ___splice2753927540_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2666026686_)
                                                        (___match2778827789_
                                                         _e2656326882_
                                                         _hd2656426885_
                                                         _tl2656526887_
                                                         ___splice2753927540_
                                                         _target2665826684_
                                                         _tl2666026686_)
                                                        (_g2655626671_))))
                                                (_g2655626671_)))
                                        (if (gx#stx-pair/null? _tl2656526887_)
                                            (let ((___splice2753927540_
                                                   (gx#syntax-split-splice
                                                    _tl2656526887_
                                                    '0)))
                                              (let ((_tl2666026686_
                                                     (##vector-ref
                                                      ___splice2753927540_
                                                      '1))
                                                    (_target2665826684_
                                                     (##vector-ref
                                                      ___splice2753927540_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2666026686_)
                                                    (___match2778827789_
                                                     _e2656326882_
                                                     _hd2656426885_
                                                     _tl2656526887_
                                                     ___splice2753927540_
                                                     _target2665826684_
                                                     _tl2666026686_)
                                                    (_g2655626671_))))
                                            (_g2655626671_)))))
                                (if (gx#stx-pair/null? _tl2656526887_)
                                    (let ((___splice2753927540_
                                           (gx#syntax-split-splice
                                            _tl2656526887_
                                            '0)))
                                      (let ((_tl2666026686_
                                             (##vector-ref
                                              ___splice2753927540_
                                              '1))
                                            (_target2665826684_
                                             (##vector-ref
                                              ___splice2753927540_
                                              '0)))
                                        (if (gx#stx-null? _tl2666026686_)
                                            (___match2778827789_
                                             _e2656326882_
                                             _hd2656426885_
                                             _tl2656526887_
                                             ___splice2753927540_
                                             _target2665826684_
                                             _tl2666026686_)
                                            (_g2655626671_))))
                                    (_g2655626671_)))))
                        (if (gx#stx-pair/null? _tl2656526887_)
                            (let ((___splice2753927540_
                                   (gx#syntax-split-splice _tl2656526887_ '0)))
                              (let ((_tl2666026686_
                                     (##vector-ref ___splice2753927540_ '1))
                                    (_target2665826684_
                                     (##vector-ref ___splice2753927540_ '0)))
                                (if (gx#stx-null? _tl2666026686_)
                                    (___match2778827789_
                                     _e2656326882_
                                     _hd2656426885_
                                     _tl2656526887_
                                     ___splice2753927540_
                                     _target2665826684_
                                     _tl2666026686_)
                                    (_g2655626671_))))
                            (_g2655626671_)))))
                (_g2655626671_)))))))
  (define gxc#current-compile-type-closure (make-parameter '#f))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx26492_)
      (let* ((___stx2779127792_ _stx26492_)
             (_g2649526508_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2779127792_))))
        (let ((___kont2779327794_ (lambda (_L26536_) (gxc#compile-e _L26536_)))
              (___kont2779527796_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2779127792_)
              (let ((_e2649826520_ (gx#stx-e ___stx2779127792_)))
                (let ((_tl2650026525_ (##cdr _e2649826520_))
                      (_hd2649926523_ (##car _e2649826520_)))
                  (if (gx#stx-pair? _tl2650026525_)
                      (let ((_e2650126528_ (gx#stx-e _tl2650026525_)))
                        (let ((_tl2650326533_ (##cdr _e2650126528_))
                              (_hd2650226531_ (##car _e2650126528_)))
                          (if (gx#stx-null? _tl2650326533_)
                              (___kont2779327794_ _hd2650226531_)
                              (___kont2779527796_))))
                      (___kont2779527796_))))
              (___kont2779527796_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx26425_)
      (let* ((_g2642726444_
              (lambda (_g2642826441_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2642826441_)))
             (_g2642626489_
              (lambda (_g2642826447_)
                (if (gx#stx-pair? _g2642826447_)
                    (let ((_e2643126449_ (gx#stx-e _g2642826447_)))
                      (let ((_hd2643226452_ (##car _e2643126449_))
                            (_tl2643326454_ (##cdr _e2643126449_)))
                        (if (gx#stx-pair? _tl2643326454_)
                            (let ((_e2643426457_ (gx#stx-e _tl2643326454_)))
                              (let ((_hd2643526460_ (##car _e2643426457_))
                                    (_tl2643626462_ (##cdr _e2643426457_)))
                                (if (gx#stx-pair? _tl2643626462_)
                                    (let ((_e2643726465_
                                           (gx#stx-e _tl2643626462_)))
                                      (let ((_hd2643826468_
                                             (##car _e2643726465_))
                                            (_tl2643926470_
                                             (##cdr _e2643726465_)))
                                        (if (gx#stx-null? _tl2643926470_)
                                            ((lambda (_L26473_ _L26474_)
                                               (gxc#compile-e _L26473_))
                                             _hd2643826468_
                                             _hd2643526460_)
                                            (_g2642726444_ _g2642826447_))))
                                    (_g2642726444_ _g2642826447_))))
                            (_g2642726444_ _g2642826447_))))
                    (_g2642726444_ _g2642826447_)))))
        (_g2642626489_ _stx26425_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx25017_)
      (let* ((___stx2781327814_ _stx25017_)
             (_g2502525332_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2781327814_))))
        (let ((___kont2781527816_
               (lambda (_L26413_)
                 (let ((__obj30056 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj30056
                      'lambda
                      (gxc#lambda-form-arity _L26413_)
                      '#f)
                     __obj30056))))
              (___kont2781727818_
               (lambda (_L26348_ _L26349_ _L26350_ _L26351_ _L26352_)
                 (let* ((_type-t26395_ (gxc#identifier-symbol _L26349_))
                        (_type26397_
                         (gxc#optimizer-resolve-type _type-t26395_)))
                   (if (##structure-instance-of?
                        _type26397_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t26395_)
                       '#f))))
              (___kont2781927820_
               (lambda (_L26134_ _L26135_ _L26136_ _L26137_)
                 (let* ((_type-t26210_ (gxc#identifier-symbol _L26135_))
                        (_type26212_
                         (gxc#optimizer-resolve-type _type-t26210_)))
                   (if (##structure-instance-of?
                        _type26212_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t26210_)
                       '#f))))
              (___kont2782527826_
               (lambda (_L25925_ _L25926_ _L25927_ _L25928_ _L25929_ _L25930_)
                 (let* ((_tab25980_ (gx#stx-e _L25927_))
                        (_keys25982_
                         (if _tab25980_
                             (filter values (vector->list _tab25980_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys25982_
                    (gxc#identifier-symbol _L25926_)))))
              (___kont2782727828_
               (lambda (_L25658_
                        _L25659_
                        _L25660_
                        _L25661_
                        _L25662_
                        _L25663_
                        _L25664_
                        _L25665_
                        _L25666_
                        _L25667_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2576025763_ _g2576125765_)
                                   (cons _g2576025763_ _g2576125765_))
                                 '()
                                 _L25660_)))
                  (gxc#identifier-symbol _L25664_))))
              (___kont2783127832_
               (lambda (_L25368_)
                 (let ((__obj30057 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj30057
                      'lambda
                      (gxc#lambda-form-arity _L25368_)
                      (gxc#dispatch-lambda-form-delegate _L25368_))
                     __obj30057))))
              (___kont2783327834_
               (lambda (_L25345_)
                 (let ((__obj30058 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj30058
                      'lambda
                      (gxc#lambda-form-arity _L25345_)
                      '#f)
                     __obj30058)))))
          (let* ((___match2828828289_
                  (lambda (_e2532125360_ _hd2532225363_ _tl2532325365_)
                    (let ((_L25368_ _tl2532325365_))
                      (if (gxc#dispatch-lambda-form? _L25368_)
                          (___kont2783127832_ _L25368_)
                          (___kont2783327834_ _tl2532325365_)))))
                 (___match2828228283_
                  (lambda (_e2521525382_
                           _hd2521625385_
                           _tl2521725387_
                           _e2521825390_
                           _hd2521925393_
                           _tl2522025395_
                           _e2522125398_
                           _hd2522225401_
                           _tl2522325403_
                           _e2522425406_
                           _hd2522525409_
                           _tl2522625411_
                           _e2522725414_
                           _hd2522825417_
                           _tl2522925419_
                           _e2523025422_
                           _hd2523125425_
                           _tl2523225427_
                           _e2523325430_
                           _hd2523425433_
                           _tl2523525435_
                           _e2523625438_
                           _hd2523725441_
                           _tl2523825443_
                           _e2523925446_
                           _hd2524025449_
                           _tl2524125451_
                           _e2524225454_
                           _hd2524325457_
                           _tl2524425459_
                           _e2524525462_
                           _hd2524625465_
                           _tl2524725467_
                           _e2524825470_
                           _hd2524925473_
                           _tl2525025475_
                           _e2525125478_
                           _hd2525225481_
                           _tl2525325483_
                           _e2525425486_
                           _hd2525525489_
                           _tl2525625491_
                           ___splice2782927830_
                           _target2525725494_
                           _tl2525925496_
                           _e2527225499_
                           _hd2527325502_
                           _tl2527425504_
                           _e2527525507_
                           _hd2527625510_
                           _tl2527725512_
                           _e2527825515_
                           _hd2527925518_
                           _tl2528025520_)
                    (letrec ((_loop2526025523_
                              (lambda (_hd2525825526_
                                       _-absent-value2526425528_
                                       _key2526525530_
                                       _-xkwvar2526625532_
                                       _-hash-ref2526725534_)
                                (if (gx#stx-pair? _hd2525825526_)
                                    (let ((_e2526125537_
                                           (gx#stx-e _hd2525825526_)))
                                      (let ((_lp-tl2526325542_
                                             (##cdr _e2526125537_))
                                            (_lp-hd2526225540_
                                             (##car _e2526125537_)))
                                        (if (gx#stx-pair? _lp-hd2526225540_)
                                            (let ((_e2528125545_
                                                   (gx#stx-e
                                                    _lp-hd2526225540_)))
                                              (let ((_tl2528325550_
                                                     (##cdr _e2528125545_))
                                                    (_hd2528225548_
                                                     (##car _e2528125545_)))
                                                (if (gx#identifier?
                                                     _hd2528225548_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2528225548_)
                                                        (if (gx#stx-pair?
                                                             _tl2528325550_)
                                                            (let ((_e2528425553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2528325550_)))
                      (let ((_tl2528625558_ (##cdr _e2528425553_))
                            (_hd2528525556_ (##car _e2528425553_)))
                        (if (gx#stx-pair? _hd2528525556_)
                            (let ((_e2528725561_ (gx#stx-e _hd2528525556_)))
                              (let ((_tl2528925566_ (##cdr _e2528725561_))
                                    (_hd2528825564_ (##car _e2528725561_)))
                                (if (gx#identifier? _hd2528825564_)
                                    (if (gx#stx-eq? '%#ref _hd2528825564_)
                                        (if (gx#stx-pair? _tl2528925566_)
                                            (let ((_e2529025569_
                                                   (gx#stx-e _tl2528925566_)))
                                              (let ((_tl2529225574_
                                                     (##cdr _e2529025569_))
                                                    (_hd2529125572_
                                                     (##car _e2529025569_)))
                                                (if (gx#stx-null?
                                                     _tl2529225574_)
                                                    (if (gx#stx-pair?
                                                         _tl2528625558_)
                                                        (let ((_e2529325577_
                                                               (gx#stx-e
                                                                _tl2528625558_)))
                                                          (let ((_tl2529525582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2529325577_))
                        (_hd2529425580_ (##car _e2529325577_)))
                    (if (gx#stx-pair? _hd2529425580_)
                        (let ((_e2529625585_ (gx#stx-e _hd2529425580_)))
                          (let ((_tl2529825590_ (##cdr _e2529625585_))
                                (_hd2529725588_ (##car _e2529625585_)))
                            (if (gx#identifier? _hd2529725588_)
                                (if (gx#stx-eq? '%#ref _hd2529725588_)
                                    (if (gx#stx-pair? _tl2529825590_)
                                        (let ((_e2529925593_
                                               (gx#stx-e _tl2529825590_)))
                                          (let ((_tl2530125598_
                                                 (##cdr _e2529925593_))
                                                (_hd2530025596_
                                                 (##car _e2529925593_)))
                                            (if (gx#stx-null? _tl2530125598_)
                                                (if (gx#stx-pair?
                                                     _tl2529525582_)
                                                    (let ((_e2530225601_
                                                           (gx#stx-e
                                                            _tl2529525582_)))
                                                      (let ((_tl2530425606_
                                                             (##cdr _e2530225601_))
                                                            (_hd2530325604_
                                                             (##car _e2530225601_)))
                                                        (if (gx#stx-pair?
                                                             _hd2530325604_)
                                                            (let ((_e2530525609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2530325604_)))
                      (let ((_tl2530725614_ (##cdr _e2530525609_))
                            (_hd2530625612_ (##car _e2530525609_)))
                        (if (gx#identifier? _hd2530625612_)
                            (if (gx#stx-eq? '%#quote _hd2530625612_)
                                (if (gx#stx-pair? _tl2530725614_)
                                    (let ((_e2530825617_
                                           (gx#stx-e _tl2530725614_)))
                                      (let ((_tl2531025622_
                                             (##cdr _e2530825617_))
                                            (_hd2530925620_
                                             (##car _e2530825617_)))
                                        (if (gx#stx-null? _tl2531025622_)
                                            (if (gx#stx-pair? _tl2530425606_)
                                                (let ((_e2531125625_
                                                       (gx#stx-e
                                                        _tl2530425606_)))
                                                  (let ((_tl2531325630_
                                                         (##cdr _e2531125625_))
                                                        (_hd2531225628_
                                                         (##car _e2531125625_)))
                                                    (if (gx#stx-pair?
                                                         _hd2531225628_)
                                                        (let ((_e2531425633_
                                                               (gx#stx-e
                                                                _hd2531225628_)))
                                                          (let ((_tl2531625638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2531425633_))
                        (_hd2531525636_ (##car _e2531425633_)))
                    (if (gx#identifier? _hd2531525636_)
                        (if (gx#stx-eq? '%#ref _hd2531525636_)
                            (if (gx#stx-pair? _tl2531625638_)
                                (let ((_e2531725641_
                                       (gx#stx-e _tl2531625638_)))
                                  (let ((_tl2531925646_ (##cdr _e2531725641_))
                                        (_hd2531825644_ (##car _e2531725641_)))
                                    (if (gx#stx-null? _tl2531925646_)
                                        (if (gx#stx-null? _tl2531325630_)
                                            (_loop2526025523_
                                             _lp-tl2526325542_
                                             (cons _hd2531825644_
                                                   _-absent-value2526425528_)
                                             (cons _hd2530925620_
                                                   _key2526525530_)
                                             (cons _hd2530025596_
                                                   _-xkwvar2526625532_)
                                             (cons _hd2529125572_
                                                   _-hash-ref2526725534_))
                                            (___match2828828289_
                                             _e2521525382_
                                             _hd2521625385_
                                             _tl2521725387_))
                                        (___match2828828289_
                                         _e2521525382_
                                         _hd2521625385_
                                         _tl2521725387_))))
                                (___match2828828289_
                                 _e2521525382_
                                 _hd2521625385_
                                 _tl2521725387_))
                            (___match2828828289_
                             _e2521525382_
                             _hd2521625385_
                             _tl2521725387_))
                        (___match2828828289_
                         _e2521525382_
                         _hd2521625385_
                         _tl2521725387_))))
                (___match2828828289_
                 _e2521525382_
                 _hd2521625385_
                 _tl2521725387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2828828289_
                                                 _e2521525382_
                                                 _hd2521625385_
                                                 _tl2521725387_))
                                            (___match2828828289_
                                             _e2521525382_
                                             _hd2521625385_
                                             _tl2521725387_))))
                                    (___match2828828289_
                                     _e2521525382_
                                     _hd2521625385_
                                     _tl2521725387_))
                                (___match2828828289_
                                 _e2521525382_
                                 _hd2521625385_
                                 _tl2521725387_))
                            (___match2828828289_
                             _e2521525382_
                             _hd2521625385_
                             _tl2521725387_))))
                    (___match2828828289_
                     _e2521525382_
                     _hd2521625385_
                     _tl2521725387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828828289_
                                                     _e2521525382_
                                                     _hd2521625385_
                                                     _tl2521725387_))
                                                (___match2828828289_
                                                 _e2521525382_
                                                 _hd2521625385_
                                                 _tl2521725387_))))
                                        (___match2828828289_
                                         _e2521525382_
                                         _hd2521625385_
                                         _tl2521725387_))
                                    (___match2828828289_
                                     _e2521525382_
                                     _hd2521625385_
                                     _tl2521725387_))
                                (___match2828828289_
                                 _e2521525382_
                                 _hd2521625385_
                                 _tl2521725387_))))
                        (___match2828828289_
                         _e2521525382_
                         _hd2521625385_
                         _tl2521725387_))))
                (___match2828828289_
                 _e2521525382_
                 _hd2521625385_
                 _tl2521725387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828828289_
                                                     _e2521525382_
                                                     _hd2521625385_
                                                     _tl2521725387_))))
                                            (___match2828828289_
                                             _e2521525382_
                                             _hd2521625385_
                                             _tl2521725387_))
                                        (___match2828828289_
                                         _e2521525382_
                                         _hd2521625385_
                                         _tl2521725387_))
                                    (___match2828828289_
                                     _e2521525382_
                                     _hd2521625385_
                                     _tl2521725387_))))
                            (___match2828828289_
                             _e2521525382_
                             _hd2521625385_
                             _tl2521725387_))))
                    (___match2828828289_
                     _e2521525382_
                     _hd2521625385_
                     _tl2521725387_))
                (___match2828828289_
                 _e2521525382_
                 _hd2521625385_
                 _tl2521725387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828828289_
                                                     _e2521525382_
                                                     _hd2521625385_
                                                     _tl2521725387_))))
                                            (___match2828828289_
                                             _e2521525382_
                                             _hd2521625385_
                                             _tl2521725387_))))
                                    (let ((_-hash-ref2527125655_
                                           (reverse _-hash-ref2526725534_))
                                          (_-xkwvar2527025653_
                                           (reverse _-xkwvar2526625532_))
                                          (_key2526925651_
                                           (reverse _key2526525530_))
                                          (_-absent-value2526825649_
                                           (reverse _-absent-value2526425528_)))
                                      (if (gx#stx-null? _tl2522625411_)
                                          (let ((_L25658_ _hd2527925518_)
                                                (_L25659_
                                                 _-absent-value2526825649_)
                                                (_L25660_ _key2526925651_)
                                                (_L25661_ _-xkwvar2527025653_)
                                                (_L25662_
                                                 _-hash-ref2527125655_)
                                                (_L25663_ _hd2525525489_)
                                                (_L25664_ _hd2524625465_)
                                                (_L25665_ _hd2523725441_)
                                                (_L25666_ _tl2522325403_)
                                                (_L25667_ _hd2522225401_))
                                            (if (if (gx#identifier? _L25667_)
                                                    (if (gx#identifier?
                                                         _L25666_)
                                                        (if (gxc#runtime-identifier=?
                                                             _L25665_
                                                             'apply)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25667_
                         _L25663_)
                        (if (andmap1 gx#stx-keyword?
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g2572025723_
                                                        _g2572125725_)
                                                 (cons _g2572025723_
                                                       _g2572125725_))
                                               '()
                                               _L25660_)))
                            (if (andmap1 (lambda (_g2572725729_)
                                           (gxc#runtime-identifier=?
                                            _g2572725729_
                                            'hash-ref))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2573125734_
                                                            _g2573225736_)
                                                     (cons _g2573125734_
                                                           _g2573225736_))
                                                   '()
                                                   _L25662_)))
                                (if (andmap1 (lambda (_g2573825740_)
                                               (gxc#runtime-identifier=?
                                                _g2573825740_
                                                'absent-value))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2574225745_
                                                                _g2574325747_)
                                                         (cons _g2574225745_
                                                               _g2574325747_))
                                                       '()
                                                       _L25659_)))
                                    (andmap1 (lambda (_g2574925751_)
                                               (gx#free-identifier=?
                                                _g2574925751_
                                                _L25667_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2575325756_
                                                                _g2575425758_)
                                                         (cons _g2575325756_
                                                               _g2575425758_))
                                                       '()
                                                       _L25661_)))
                                    '#f)
                                '#f)
                            '#f)
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (___kont2782727828_
                                                 _L25658_
                                                 _L25659_
                                                 _L25660_
                                                 _L25661_
                                                 _L25662_
                                                 _L25663_
                                                 _L25664_
                                                 _L25665_
                                                 _L25666_
                                                 _L25667_)
                                                (___match2828828289_
                                                 _e2521525382_
                                                 _hd2521625385_
                                                 _tl2521725387_)))
                                          (___match2828828289_
                                           _e2521525382_
                                           _hd2521625385_
                                           _tl2521725387_)))))))
                      (_loop2526025523_ _target2525725494_ '() '() '() '()))))
                 (___match2815428155_
                  (lambda (_e2521525382_
                           _hd2521625385_
                           _tl2521725387_
                           _e2521825390_
                           _hd2521925393_
                           _tl2522025395_)
                    (if (gx#stx-pair? _hd2521925393_)
                        (let ((_e2522125398_ (gx#stx-e _hd2521925393_)))
                          (let ((_tl2522325403_ (##cdr _e2522125398_))
                                (_hd2522225401_ (##car _e2522125398_)))
                            (if (gx#stx-pair? _tl2522025395_)
                                (let ((_e2522425406_
                                       (gx#stx-e _tl2522025395_)))
                                  (let ((_tl2522625411_ (##cdr _e2522425406_))
                                        (_hd2522525409_ (##car _e2522425406_)))
                                    (if (gx#stx-pair? _hd2522525409_)
                                        (let ((_e2522725414_
                                               (gx#stx-e _hd2522525409_)))
                                          (let ((_tl2522925419_
                                                 (##cdr _e2522725414_))
                                                (_hd2522825417_
                                                 (##car _e2522725414_)))
                                            (if (gx#identifier? _hd2522825417_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2522825417_)
                                                    (if (gx#stx-pair?
                                                         _tl2522925419_)
                                                        (let ((_e2523025422_
                                                               (gx#stx-e
                                                                _tl2522925419_)))
                                                          (let ((_tl2523225427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2523025422_))
                        (_hd2523125425_ (##car _e2523025422_)))
                    (if (gx#stx-pair? _hd2523125425_)
                        (let ((_e2523325430_ (gx#stx-e _hd2523125425_)))
                          (let ((_tl2523525435_ (##cdr _e2523325430_))
                                (_hd2523425433_ (##car _e2523325430_)))
                            (if (gx#identifier? _hd2523425433_)
                                (if (gx#stx-eq? '%#ref _hd2523425433_)
                                    (if (gx#stx-pair? _tl2523525435_)
                                        (let ((_e2523625438_
                                               (gx#stx-e _tl2523525435_)))
                                          (let ((_tl2523825443_
                                                 (##cdr _e2523625438_))
                                                (_hd2523725441_
                                                 (##car _e2523625438_)))
                                            (if (gx#stx-null? _tl2523825443_)
                                                (if (gx#stx-pair?
                                                     _tl2523225427_)
                                                    (let ((_e2523925446_
                                                           (gx#stx-e
                                                            _tl2523225427_)))
                                                      (let ((_tl2524125451_
                                                             (##cdr _e2523925446_))
                                                            (_hd2524025449_
                                                             (##car _e2523925446_)))
                                                        (if (gx#stx-pair?
                                                             _hd2524025449_)
                                                            (let ((_e2524225454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2524025449_)))
                      (let ((_tl2524425459_ (##cdr _e2524225454_))
                            (_hd2524325457_ (##car _e2524225454_)))
                        (if (gx#identifier? _hd2524325457_)
                            (if (gx#stx-eq? '%#ref _hd2524325457_)
                                (if (gx#stx-pair? _tl2524425459_)
                                    (let ((_e2524525462_
                                           (gx#stx-e _tl2524425459_)))
                                      (let ((_tl2524725467_
                                             (##cdr _e2524525462_))
                                            (_hd2524625465_
                                             (##car _e2524525462_)))
                                        (if (gx#stx-null? _tl2524725467_)
                                            (if (gx#stx-pair? _tl2524125451_)
                                                (let ((_e2524825470_
                                                       (gx#stx-e
                                                        _tl2524125451_)))
                                                  (let ((_tl2525025475_
                                                         (##cdr _e2524825470_))
                                                        (_hd2524925473_
                                                         (##car _e2524825470_)))
                                                    (if (gx#stx-pair?
                                                         _hd2524925473_)
                                                        (let ((_e2525125478_
                                                               (gx#stx-e
                                                                _hd2524925473_)))
                                                          (let ((_tl2525325483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2525125478_))
                        (_hd2525225481_ (##car _e2525125478_)))
                    (if (gx#identifier? _hd2525225481_)
                        (if (gx#stx-eq? '%#ref _hd2525225481_)
                            (if (gx#stx-pair? _tl2525325483_)
                                (let ((_e2525425486_
                                       (gx#stx-e _tl2525325483_)))
                                  (let ((_tl2525625491_ (##cdr _e2525425486_))
                                        (_hd2525525489_ (##car _e2525425486_)))
                                    (if (gx#stx-null? _tl2525625491_)
                                        (if (gx#stx-pair/null? _tl2525025475_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2525025475_)
                                                      '1)
                                                (let ((___splice2782927830_
                                                       (gx#syntax-split-splice
                                                        _tl2525025475_
                                                        '1)))
                                                  (let ((_tl2525925496_
                                                         (##vector-ref
                                                          ___splice2782927830_
                                                          '1))
                                                        (_target2525725494_
                                                         (##vector-ref
                                                          ___splice2782927830_
                                                          '0)))
                                                    (if (gx#stx-pair?
                                                         _tl2525925496_)
                                                        (let ((_e2527225499_
                                                               (gx#stx-e
                                                                _tl2525925496_)))
                                                          (let ((_tl2527425504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2527225499_))
                        (_hd2527325502_ (##car _e2527225499_)))
                    (if (gx#stx-pair? _hd2527325502_)
                        (let ((_e2527525507_ (gx#stx-e _hd2527325502_)))
                          (let ((_tl2527725512_ (##cdr _e2527525507_))
                                (_hd2527625510_ (##car _e2527525507_)))
                            (if (gx#identifier? _hd2527625510_)
                                (if (gx#stx-eq? '%#ref _hd2527625510_)
                                    (if (gx#stx-pair? _tl2527725512_)
                                        (let ((_e2527825515_
                                               (gx#stx-e _tl2527725512_)))
                                          (let ((_tl2528025520_
                                                 (##cdr _e2527825515_))
                                                (_hd2527925518_
                                                 (##car _e2527825515_)))
                                            (if (gx#stx-null? _tl2528025520_)
                                                (if (gx#stx-null?
                                                     _tl2527425504_)
                                                    (___match2828228283_
                                                     _e2521525382_
                                                     _hd2521625385_
                                                     _tl2521725387_
                                                     _e2521825390_
                                                     _hd2521925393_
                                                     _tl2522025395_
                                                     _e2522125398_
                                                     _hd2522225401_
                                                     _tl2522325403_
                                                     _e2522425406_
                                                     _hd2522525409_
                                                     _tl2522625411_
                                                     _e2522725414_
                                                     _hd2522825417_
                                                     _tl2522925419_
                                                     _e2523025422_
                                                     _hd2523125425_
                                                     _tl2523225427_
                                                     _e2523325430_
                                                     _hd2523425433_
                                                     _tl2523525435_
                                                     _e2523625438_
                                                     _hd2523725441_
                                                     _tl2523825443_
                                                     _e2523925446_
                                                     _hd2524025449_
                                                     _tl2524125451_
                                                     _e2524225454_
                                                     _hd2524325457_
                                                     _tl2524425459_
                                                     _e2524525462_
                                                     _hd2524625465_
                                                     _tl2524725467_
                                                     _e2524825470_
                                                     _hd2524925473_
                                                     _tl2525025475_
                                                     _e2525125478_
                                                     _hd2525225481_
                                                     _tl2525325483_
                                                     _e2525425486_
                                                     _hd2525525489_
                                                     _tl2525625491_
                                                     ___splice2782927830_
                                                     _target2525725494_
                                                     _tl2525925496_
                                                     _e2527225499_
                                                     _hd2527325502_
                                                     _tl2527425504_
                                                     _e2527525507_
                                                     _hd2527625510_
                                                     _tl2527725512_
                                                     _e2527825515_
                                                     _hd2527925518_
                                                     _tl2528025520_)
                                                    (___match2828828289_
                                                     _e2521525382_
                                                     _hd2521625385_
                                                     _tl2521725387_))
                                                (___match2828828289_
                                                 _e2521525382_
                                                 _hd2521625385_
                                                 _tl2521725387_))))
                                        (___match2828828289_
                                         _e2521525382_
                                         _hd2521625385_
                                         _tl2521725387_))
                                    (___match2828828289_
                                     _e2521525382_
                                     _hd2521625385_
                                     _tl2521725387_))
                                (___match2828828289_
                                 _e2521525382_
                                 _hd2521625385_
                                 _tl2521725387_))))
                        (___match2828828289_
                         _e2521525382_
                         _hd2521625385_
                         _tl2521725387_))))
                (___match2828828289_
                 _e2521525382_
                 _hd2521625385_
                 _tl2521725387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2828828289_
                                                 _e2521525382_
                                                 _hd2521625385_
                                                 _tl2521725387_))
                                            (___match2828828289_
                                             _e2521525382_
                                             _hd2521625385_
                                             _tl2521725387_))
                                        (___match2828828289_
                                         _e2521525382_
                                         _hd2521625385_
                                         _tl2521725387_))))
                                (___match2828828289_
                                 _e2521525382_
                                 _hd2521625385_
                                 _tl2521725387_))
                            (___match2828828289_
                             _e2521525382_
                             _hd2521625385_
                             _tl2521725387_))
                        (___match2828828289_
                         _e2521525382_
                         _hd2521625385_
                         _tl2521725387_))))
                (___match2828828289_
                 _e2521525382_
                 _hd2521625385_
                 _tl2521725387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2828828289_
                                                 _e2521525382_
                                                 _hd2521625385_
                                                 _tl2521725387_))
                                            (___match2828828289_
                                             _e2521525382_
                                             _hd2521625385_
                                             _tl2521725387_))))
                                    (___match2828828289_
                                     _e2521525382_
                                     _hd2521625385_
                                     _tl2521725387_))
                                (___match2828828289_
                                 _e2521525382_
                                 _hd2521625385_
                                 _tl2521725387_))
                            (___match2828828289_
                             _e2521525382_
                             _hd2521625385_
                             _tl2521725387_))))
                    (___match2828828289_
                     _e2521525382_
                     _hd2521625385_
                     _tl2521725387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828828289_
                                                     _e2521525382_
                                                     _hd2521625385_
                                                     _tl2521725387_))
                                                (___match2828828289_
                                                 _e2521525382_
                                                 _hd2521625385_
                                                 _tl2521725387_))))
                                        (___match2828828289_
                                         _e2521525382_
                                         _hd2521625385_
                                         _tl2521725387_))
                                    (___match2828828289_
                                     _e2521525382_
                                     _hd2521625385_
                                     _tl2521725387_))
                                (___match2828828289_
                                 _e2521525382_
                                 _hd2521625385_
                                 _tl2521725387_))))
                        (___match2828828289_
                         _e2521525382_
                         _hd2521625385_
                         _tl2521725387_))))
                (___match2828828289_
                 _e2521525382_
                 _hd2521625385_
                 _tl2521725387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828828289_
                                                     _e2521525382_
                                                     _hd2521625385_
                                                     _tl2521725387_))
                                                (___match2828828289_
                                                 _e2521525382_
                                                 _hd2521625385_
                                                 _tl2521725387_))))
                                        (___match2828828289_
                                         _e2521525382_
                                         _hd2521625385_
                                         _tl2521725387_))))
                                (___match2828828289_
                                 _e2521525382_
                                 _hd2521625385_
                                 _tl2521725387_))))
                        (___match2828828289_
                         _e2521525382_
                         _hd2521625385_
                         _tl2521725387_))))
                 (___match2814228143_
                  (lambda (_e2514825773_
                           _hd2514925776_
                           _tl2515025778_
                           _e2515125781_
                           _hd2515225784_
                           _tl2515325786_
                           _e2515425789_
                           _hd2515525792_
                           _tl2515625794_
                           _e2515725797_
                           _hd2515825800_
                           _tl2515925802_
                           _e2516025805_
                           _hd2516125808_
                           _tl2516225810_
                           _e2516325813_
                           _hd2516425816_
                           _tl2516525818_
                           _e2516625821_
                           _hd2516725824_
                           _tl2516825826_
                           _e2516925829_
                           _hd2517025832_
                           _tl2517125834_
                           _e2517225837_
                           _hd2517325840_
                           _tl2517425842_
                           _e2517525845_
                           _hd2517625848_
                           _tl2517725850_
                           _e2517825853_
                           _hd2517925856_
                           _tl2518025858_
                           _e2518125861_
                           _hd2518225864_
                           _tl2518325866_
                           _e2518425869_
                           _hd2518525872_
                           _tl2518625874_
                           _e2518725877_
                           _hd2518825880_
                           _tl2518925882_
                           _e2519025885_
                           _hd2519125888_
                           _tl2519225890_
                           _e2519325893_
                           _hd2519425896_
                           _tl2519525898_
                           _e2519625901_
                           _hd2519725904_
                           _tl2519825906_
                           _e2519925909_
                           _hd2520025912_
                           _tl2520125914_
                           _e2520225917_
                           _hd2520325920_
                           _tl2520425922_)
                    (let ((_L25925_ _hd2520325920_)
                          (_L25926_ _hd2519425896_)
                          (_L25927_ _hd2518525872_)
                          (_L25928_ _hd2517625848_)
                          (_L25929_ _hd2516725824_)
                          (_L25930_ _hd2515225784_))
                      (if (if (gx#identifier? _L25930_)
                              (if (gxc#runtime-identifier=? _L25929_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L25928_
                                       'keyword-dispatch)
                                      (gx#free-identifier=? _L25930_ _L25925_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2782527826_
                           _L25925_
                           _L25926_
                           _L25927_
                           _L25928_
                           _L25929_
                           _L25930_)
                          (___match2815428155_
                           _e2514825773_
                           _hd2514925776_
                           _tl2515025778_
                           _e2515125781_
                           _hd2515225784_
                           _tl2515325786_)))))
                 (___match2806628067_
                  (lambda (_e2514825773_
                           _hd2514925776_
                           _tl2515025778_
                           _e2515125781_
                           _hd2515225784_
                           _tl2515325786_
                           _e2515425789_
                           _hd2515525792_
                           _tl2515625794_
                           _e2515725797_
                           _hd2515825800_
                           _tl2515925802_
                           _e2516025805_
                           _hd2516125808_
                           _tl2516225810_
                           _e2516325813_
                           _hd2516425816_
                           _tl2516525818_
                           _e2516625821_
                           _hd2516725824_
                           _tl2516825826_
                           _e2516925829_
                           _hd2517025832_
                           _tl2517125834_
                           _e2517225837_
                           _hd2517325840_
                           _tl2517425842_
                           _e2517525845_
                           _hd2517625848_
                           _tl2517725850_)
                    (if (gx#stx-pair? _tl2517125834_)
                        (let ((_e2517825853_ (gx#stx-e _tl2517125834_)))
                          (let ((_tl2518025858_ (##cdr _e2517825853_))
                                (_hd2517925856_ (##car _e2517825853_)))
                            (if (gx#stx-pair? _hd2517925856_)
                                (let ((_e2518125861_
                                       (gx#stx-e _hd2517925856_)))
                                  (let ((_tl2518325866_ (##cdr _e2518125861_))
                                        (_hd2518225864_ (##car _e2518125861_)))
                                    (if (gx#identifier? _hd2518225864_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2518225864_)
                                            (if (gx#stx-pair? _tl2518325866_)
                                                (let ((_e2518425869_
                                                       (gx#stx-e
                                                        _tl2518325866_)))
                                                  (let ((_tl2518625874_
                                                         (##cdr _e2518425869_))
                                                        (_hd2518525872_
                                                         (##car _e2518425869_)))
                                                    (if (gx#stx-null?
                                                         _tl2518625874_)
                                                        (if (gx#stx-pair?
                                                             _tl2518025858_)
                                                            (let ((_e2518725877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2518025858_)))
                      (let ((_tl2518925882_ (##cdr _e2518725877_))
                            (_hd2518825880_ (##car _e2518725877_)))
                        (if (gx#stx-pair? _hd2518825880_)
                            (let ((_e2519025885_ (gx#stx-e _hd2518825880_)))
                              (let ((_tl2519225890_ (##cdr _e2519025885_))
                                    (_hd2519125888_ (##car _e2519025885_)))
                                (if (gx#identifier? _hd2519125888_)
                                    (if (gx#stx-eq? '%#ref _hd2519125888_)
                                        (if (gx#stx-pair? _tl2519225890_)
                                            (let ((_e2519325893_
                                                   (gx#stx-e _tl2519225890_)))
                                              (let ((_tl2519525898_
                                                     (##cdr _e2519325893_))
                                                    (_hd2519425896_
                                                     (##car _e2519325893_)))
                                                (if (gx#stx-null?
                                                     _tl2519525898_)
                                                    (if (gx#stx-pair?
                                                         _tl2518925882_)
                                                        (let ((_e2519625901_
                                                               (gx#stx-e
                                                                _tl2518925882_)))
                                                          (let ((_tl2519825906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2519625901_))
                        (_hd2519725904_ (##car _e2519625901_)))
                    (if (gx#stx-pair? _hd2519725904_)
                        (let ((_e2519925909_ (gx#stx-e _hd2519725904_)))
                          (let ((_tl2520125914_ (##cdr _e2519925909_))
                                (_hd2520025912_ (##car _e2519925909_)))
                            (if (gx#identifier? _hd2520025912_)
                                (if (gx#stx-eq? '%#ref _hd2520025912_)
                                    (if (gx#stx-pair? _tl2520125914_)
                                        (let ((_e2520225917_
                                               (gx#stx-e _tl2520125914_)))
                                          (let ((_tl2520425922_
                                                 (##cdr _e2520225917_))
                                                (_hd2520325920_
                                                 (##car _e2520225917_)))
                                            (if (gx#stx-null? _tl2520425922_)
                                                (if (gx#stx-null?
                                                     _tl2519825906_)
                                                    (if (gx#stx-null?
                                                         _tl2515625794_)
                                                        (___match2814228143_
                                                         _e2514825773_
                                                         _hd2514925776_
                                                         _tl2515025778_
                                                         _e2515125781_
                                                         _hd2515225784_
                                                         _tl2515325786_
                                                         _e2515425789_
                                                         _hd2515525792_
                                                         _tl2515625794_
                                                         _e2515725797_
                                                         _hd2515825800_
                                                         _tl2515925802_
                                                         _e2516025805_
                                                         _hd2516125808_
                                                         _tl2516225810_
                                                         _e2516325813_
                                                         _hd2516425816_
                                                         _tl2516525818_
                                                         _e2516625821_
                                                         _hd2516725824_
                                                         _tl2516825826_
                                                         _e2516925829_
                                                         _hd2517025832_
                                                         _tl2517125834_
                                                         _e2517225837_
                                                         _hd2517325840_
                                                         _tl2517425842_
                                                         _e2517525845_
                                                         _hd2517625848_
                                                         _tl2517725850_
                                                         _e2517825853_
                                                         _hd2517925856_
                                                         _tl2518025858_
                                                         _e2518125861_
                                                         _hd2518225864_
                                                         _tl2518325866_
                                                         _e2518425869_
                                                         _hd2518525872_
                                                         _tl2518625874_
                                                         _e2518725877_
                                                         _hd2518825880_
                                                         _tl2518925882_
                                                         _e2519025885_
                                                         _hd2519125888_
                                                         _tl2519225890_
                                                         _e2519325893_
                                                         _hd2519425896_
                                                         _tl2519525898_
                                                         _e2519625901_
                                                         _hd2519725904_
                                                         _tl2519825906_
                                                         _e2519925909_
                                                         _hd2520025912_
                                                         _tl2520125914_
                                                         _e2520225917_
                                                         _hd2520325920_
                                                         _tl2520425922_)
                                                        (___match2815428155_
                                                         _e2514825773_
                                                         _hd2514925776_
                                                         _tl2515025778_
                                                         _e2515125781_
                                                         _hd2515225784_
                                                         _tl2515325786_))
                                                    (___match2815428155_
                                                     _e2514825773_
                                                     _hd2514925776_
                                                     _tl2515025778_
                                                     _e2515125781_
                                                     _hd2515225784_
                                                     _tl2515325786_))
                                                (___match2815428155_
                                                 _e2514825773_
                                                 _hd2514925776_
                                                 _tl2515025778_
                                                 _e2515125781_
                                                 _hd2515225784_
                                                 _tl2515325786_))))
                                        (___match2815428155_
                                         _e2514825773_
                                         _hd2514925776_
                                         _tl2515025778_
                                         _e2515125781_
                                         _hd2515225784_
                                         _tl2515325786_))
                                    (___match2815428155_
                                     _e2514825773_
                                     _hd2514925776_
                                     _tl2515025778_
                                     _e2515125781_
                                     _hd2515225784_
                                     _tl2515325786_))
                                (___match2815428155_
                                 _e2514825773_
                                 _hd2514925776_
                                 _tl2515025778_
                                 _e2515125781_
                                 _hd2515225784_
                                 _tl2515325786_))))
                        (___match2815428155_
                         _e2514825773_
                         _hd2514925776_
                         _tl2515025778_
                         _e2515125781_
                         _hd2515225784_
                         _tl2515325786_))))
                (___match2815428155_
                 _e2514825773_
                 _hd2514925776_
                 _tl2515025778_
                 _e2515125781_
                 _hd2515225784_
                 _tl2515325786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815428155_
                                                     _e2514825773_
                                                     _hd2514925776_
                                                     _tl2515025778_
                                                     _e2515125781_
                                                     _hd2515225784_
                                                     _tl2515325786_))))
                                            (___match2815428155_
                                             _e2514825773_
                                             _hd2514925776_
                                             _tl2515025778_
                                             _e2515125781_
                                             _hd2515225784_
                                             _tl2515325786_))
                                        (___match2815428155_
                                         _e2514825773_
                                         _hd2514925776_
                                         _tl2515025778_
                                         _e2515125781_
                                         _hd2515225784_
                                         _tl2515325786_))
                                    (___match2815428155_
                                     _e2514825773_
                                     _hd2514925776_
                                     _tl2515025778_
                                     _e2515125781_
                                     _hd2515225784_
                                     _tl2515325786_))))
                            (___match2815428155_
                             _e2514825773_
                             _hd2514925776_
                             _tl2515025778_
                             _e2515125781_
                             _hd2515225784_
                             _tl2515325786_))))
                    (___match2815428155_
                     _e2514825773_
                     _hd2514925776_
                     _tl2515025778_
                     _e2515125781_
                     _hd2515225784_
                     _tl2515325786_))
                (___match2815428155_
                 _e2514825773_
                 _hd2514925776_
                 _tl2515025778_
                 _e2515125781_
                 _hd2515225784_
                 _tl2515325786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2815428155_
                                                 _e2514825773_
                                                 _hd2514925776_
                                                 _tl2515025778_
                                                 _e2515125781_
                                                 _hd2515225784_
                                                 _tl2515325786_))
                                            (___match2815428155_
                                             _e2514825773_
                                             _hd2514925776_
                                             _tl2515025778_
                                             _e2515125781_
                                             _hd2515225784_
                                             _tl2515325786_))
                                        (___match2815428155_
                                         _e2514825773_
                                         _hd2514925776_
                                         _tl2515025778_
                                         _e2515125781_
                                         _hd2515225784_
                                         _tl2515325786_))))
                                (___match2815428155_
                                 _e2514825773_
                                 _hd2514925776_
                                 _tl2515025778_
                                 _e2515125781_
                                 _hd2515225784_
                                 _tl2515325786_))))
                        (___match2815428155_
                         _e2514825773_
                         _hd2514925776_
                         _tl2515025778_
                         _e2515125781_
                         _hd2515225784_
                         _tl2515325786_))))
                 (___match2800228003_
                  (lambda (_e2514825773_
                           _hd2514925776_
                           _tl2515025778_
                           _e2515125781_
                           _hd2515225784_
                           _tl2515325786_)
                    (if (gx#stx-pair? _tl2515325786_)
                        (let ((_e2515425789_ (gx#stx-e _tl2515325786_)))
                          (let ((_tl2515625794_ (##cdr _e2515425789_))
                                (_hd2515525792_ (##car _e2515425789_)))
                            (if (gx#stx-pair? _hd2515525792_)
                                (let ((_e2515725797_
                                       (gx#stx-e _hd2515525792_)))
                                  (let ((_tl2515925802_ (##cdr _e2515725797_))
                                        (_hd2515825800_ (##car _e2515725797_)))
                                    (if (gx#identifier? _hd2515825800_)
                                        (if (gx#stx-eq? '%#call _hd2515825800_)
                                            (if (gx#stx-pair? _tl2515925802_)
                                                (let ((_e2516025805_
                                                       (gx#stx-e
                                                        _tl2515925802_)))
                                                  (let ((_tl2516225810_
                                                         (##cdr _e2516025805_))
                                                        (_hd2516125808_
                                                         (##car _e2516025805_)))
                                                    (if (gx#stx-pair?
                                                         _hd2516125808_)
                                                        (let ((_e2516325813_
                                                               (gx#stx-e
                                                                _hd2516125808_)))
                                                          (let ((_tl2516525818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2516325813_))
                        (_hd2516425816_ (##car _e2516325813_)))
                    (if (gx#identifier? _hd2516425816_)
                        (if (gx#stx-eq? '%#ref _hd2516425816_)
                            (if (gx#stx-pair? _tl2516525818_)
                                (let ((_e2516625821_
                                       (gx#stx-e _tl2516525818_)))
                                  (let ((_tl2516825826_ (##cdr _e2516625821_))
                                        (_hd2516725824_ (##car _e2516625821_)))
                                    (if (gx#stx-null? _tl2516825826_)
                                        (if (gx#stx-pair? _tl2516225810_)
                                            (let ((_e2516925829_
                                                   (gx#stx-e _tl2516225810_)))
                                              (let ((_tl2517125834_
                                                     (##cdr _e2516925829_))
                                                    (_hd2517025832_
                                                     (##car _e2516925829_)))
                                                (if (gx#stx-pair?
                                                     _hd2517025832_)
                                                    (let ((_e2517225837_
                                                           (gx#stx-e
                                                            _hd2517025832_)))
                                                      (let ((_tl2517425842_
                                                             (##cdr _e2517225837_))
                                                            (_hd2517325840_
                                                             (##car _e2517225837_)))
                                                        (if (gx#identifier?
                                                             _hd2517325840_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2517325840_)
                        (if (gx#stx-pair? _tl2517425842_)
                            (let ((_e2517525845_ (gx#stx-e _tl2517425842_)))
                              (let ((_tl2517725850_ (##cdr _e2517525845_))
                                    (_hd2517625848_ (##car _e2517525845_)))
                                (if (gx#stx-null? _tl2517725850_)
                                    (if (gx#stx-pair? _tl2517125834_)
                                        (let ((_e2517825853_
                                               (gx#stx-e _tl2517125834_)))
                                          (let ((_tl2518025858_
                                                 (##cdr _e2517825853_))
                                                (_hd2517925856_
                                                 (##car _e2517825853_)))
                                            (if (gx#stx-pair? _hd2517925856_)
                                                (let ((_e2518125861_
                                                       (gx#stx-e
                                                        _hd2517925856_)))
                                                  (let ((_tl2518325866_
                                                         (##cdr _e2518125861_))
                                                        (_hd2518225864_
                                                         (##car _e2518125861_)))
                                                    (if (gx#identifier?
                                                         _hd2518225864_)
                                                        (if (gx#stx-eq?
                                                             '%#quote
                                                             _hd2518225864_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2518325866_)
                        (let ((_e2518425869_ (gx#stx-e _tl2518325866_)))
                          (let ((_tl2518625874_ (##cdr _e2518425869_))
                                (_hd2518525872_ (##car _e2518425869_)))
                            (if (gx#stx-null? _tl2518625874_)
                                (if (gx#stx-pair? _tl2518025858_)
                                    (let ((_e2518725877_
                                           (gx#stx-e _tl2518025858_)))
                                      (let ((_tl2518925882_
                                             (##cdr _e2518725877_))
                                            (_hd2518825880_
                                             (##car _e2518725877_)))
                                        (if (gx#stx-pair? _hd2518825880_)
                                            (let ((_e2519025885_
                                                   (gx#stx-e _hd2518825880_)))
                                              (let ((_tl2519225890_
                                                     (##cdr _e2519025885_))
                                                    (_hd2519125888_
                                                     (##car _e2519025885_)))
                                                (if (gx#identifier?
                                                     _hd2519125888_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd2519125888_)
                                                        (if (gx#stx-pair?
                                                             _tl2519225890_)
                                                            (let ((_e2519325893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2519225890_)))
                      (let ((_tl2519525898_ (##cdr _e2519325893_))
                            (_hd2519425896_ (##car _e2519325893_)))
                        (if (gx#stx-null? _tl2519525898_)
                            (if (gx#stx-pair? _tl2518925882_)
                                (let ((_e2519625901_
                                       (gx#stx-e _tl2518925882_)))
                                  (let ((_tl2519825906_ (##cdr _e2519625901_))
                                        (_hd2519725904_ (##car _e2519625901_)))
                                    (if (gx#stx-pair? _hd2519725904_)
                                        (let ((_e2519925909_
                                               (gx#stx-e _hd2519725904_)))
                                          (let ((_tl2520125914_
                                                 (##cdr _e2519925909_))
                                                (_hd2520025912_
                                                 (##car _e2519925909_)))
                                            (if (gx#identifier? _hd2520025912_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2520025912_)
                                                    (if (gx#stx-pair?
                                                         _tl2520125914_)
                                                        (let ((_e2520225917_
                                                               (gx#stx-e
                                                                _tl2520125914_)))
                                                          (let ((_tl2520425922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2520225917_))
                        (_hd2520325920_ (##car _e2520225917_)))
                    (if (gx#stx-null? _tl2520425922_)
                        (if (gx#stx-null? _tl2519825906_)
                            (if (gx#stx-null? _tl2515625794_)
                                (___match2814228143_
                                 _e2514825773_
                                 _hd2514925776_
                                 _tl2515025778_
                                 _e2515125781_
                                 _hd2515225784_
                                 _tl2515325786_
                                 _e2515425789_
                                 _hd2515525792_
                                 _tl2515625794_
                                 _e2515725797_
                                 _hd2515825800_
                                 _tl2515925802_
                                 _e2516025805_
                                 _hd2516125808_
                                 _tl2516225810_
                                 _e2516325813_
                                 _hd2516425816_
                                 _tl2516525818_
                                 _e2516625821_
                                 _hd2516725824_
                                 _tl2516825826_
                                 _e2516925829_
                                 _hd2517025832_
                                 _tl2517125834_
                                 _e2517225837_
                                 _hd2517325840_
                                 _tl2517425842_
                                 _e2517525845_
                                 _hd2517625848_
                                 _tl2517725850_
                                 _e2517825853_
                                 _hd2517925856_
                                 _tl2518025858_
                                 _e2518125861_
                                 _hd2518225864_
                                 _tl2518325866_
                                 _e2518425869_
                                 _hd2518525872_
                                 _tl2518625874_
                                 _e2518725877_
                                 _hd2518825880_
                                 _tl2518925882_
                                 _e2519025885_
                                 _hd2519125888_
                                 _tl2519225890_
                                 _e2519325893_
                                 _hd2519425896_
                                 _tl2519525898_
                                 _e2519625901_
                                 _hd2519725904_
                                 _tl2519825906_
                                 _e2519925909_
                                 _hd2520025912_
                                 _tl2520125914_
                                 _e2520225917_
                                 _hd2520325920_
                                 _tl2520425922_)
                                (___match2815428155_
                                 _e2514825773_
                                 _hd2514925776_
                                 _tl2515025778_
                                 _e2515125781_
                                 _hd2515225784_
                                 _tl2515325786_))
                            (___match2815428155_
                             _e2514825773_
                             _hd2514925776_
                             _tl2515025778_
                             _e2515125781_
                             _hd2515225784_
                             _tl2515325786_))
                        (___match2815428155_
                         _e2514825773_
                         _hd2514925776_
                         _tl2515025778_
                         _e2515125781_
                         _hd2515225784_
                         _tl2515325786_))))
                (___match2815428155_
                 _e2514825773_
                 _hd2514925776_
                 _tl2515025778_
                 _e2515125781_
                 _hd2515225784_
                 _tl2515325786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815428155_
                                                     _e2514825773_
                                                     _hd2514925776_
                                                     _tl2515025778_
                                                     _e2515125781_
                                                     _hd2515225784_
                                                     _tl2515325786_))
                                                (___match2815428155_
                                                 _e2514825773_
                                                 _hd2514925776_
                                                 _tl2515025778_
                                                 _e2515125781_
                                                 _hd2515225784_
                                                 _tl2515325786_))))
                                        (___match2815428155_
                                         _e2514825773_
                                         _hd2514925776_
                                         _tl2515025778_
                                         _e2515125781_
                                         _hd2515225784_
                                         _tl2515325786_))))
                                (___match2815428155_
                                 _e2514825773_
                                 _hd2514925776_
                                 _tl2515025778_
                                 _e2515125781_
                                 _hd2515225784_
                                 _tl2515325786_))
                            (___match2815428155_
                             _e2514825773_
                             _hd2514925776_
                             _tl2515025778_
                             _e2515125781_
                             _hd2515225784_
                             _tl2515325786_))))
                    (___match2815428155_
                     _e2514825773_
                     _hd2514925776_
                     _tl2515025778_
                     _e2515125781_
                     _hd2515225784_
                     _tl2515325786_))
                (___match2815428155_
                 _e2514825773_
                 _hd2514925776_
                 _tl2515025778_
                 _e2515125781_
                 _hd2515225784_
                 _tl2515325786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815428155_
                                                     _e2514825773_
                                                     _hd2514925776_
                                                     _tl2515025778_
                                                     _e2515125781_
                                                     _hd2515225784_
                                                     _tl2515325786_))))
                                            (___match2815428155_
                                             _e2514825773_
                                             _hd2514925776_
                                             _tl2515025778_
                                             _e2515125781_
                                             _hd2515225784_
                                             _tl2515325786_))))
                                    (___match2815428155_
                                     _e2514825773_
                                     _hd2514925776_
                                     _tl2515025778_
                                     _e2515125781_
                                     _hd2515225784_
                                     _tl2515325786_))
                                (___match2815428155_
                                 _e2514825773_
                                 _hd2514925776_
                                 _tl2515025778_
                                 _e2515125781_
                                 _hd2515225784_
                                 _tl2515325786_))))
                        (___match2815428155_
                         _e2514825773_
                         _hd2514925776_
                         _tl2515025778_
                         _e2515125781_
                         _hd2515225784_
                         _tl2515325786_))
                    (___match2815428155_
                     _e2514825773_
                     _hd2514925776_
                     _tl2515025778_
                     _e2515125781_
                     _hd2515225784_
                     _tl2515325786_))
                (___match2815428155_
                 _e2514825773_
                 _hd2514925776_
                 _tl2515025778_
                 _e2515125781_
                 _hd2515225784_
                 _tl2515325786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2815428155_
                                                 _e2514825773_
                                                 _hd2514925776_
                                                 _tl2515025778_
                                                 _e2515125781_
                                                 _hd2515225784_
                                                 _tl2515325786_))))
                                        (___match2815428155_
                                         _e2514825773_
                                         _hd2514925776_
                                         _tl2515025778_
                                         _e2515125781_
                                         _hd2515225784_
                                         _tl2515325786_))
                                    (___match2815428155_
                                     _e2514825773_
                                     _hd2514925776_
                                     _tl2515025778_
                                     _e2515125781_
                                     _hd2515225784_
                                     _tl2515325786_))))
                            (___match2815428155_
                             _e2514825773_
                             _hd2514925776_
                             _tl2515025778_
                             _e2515125781_
                             _hd2515225784_
                             _tl2515325786_))
                        (___match2815428155_
                         _e2514825773_
                         _hd2514925776_
                         _tl2515025778_
                         _e2515125781_
                         _hd2515225784_
                         _tl2515325786_))
                    (___match2815428155_
                     _e2514825773_
                     _hd2514925776_
                     _tl2515025778_
                     _e2515125781_
                     _hd2515225784_
                     _tl2515325786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815428155_
                                                     _e2514825773_
                                                     _hd2514925776_
                                                     _tl2515025778_
                                                     _e2515125781_
                                                     _hd2515225784_
                                                     _tl2515325786_))))
                                            (___match2815428155_
                                             _e2514825773_
                                             _hd2514925776_
                                             _tl2515025778_
                                             _e2515125781_
                                             _hd2515225784_
                                             _tl2515325786_))
                                        (___match2815428155_
                                         _e2514825773_
                                         _hd2514925776_
                                         _tl2515025778_
                                         _e2515125781_
                                         _hd2515225784_
                                         _tl2515325786_))))
                                (___match2815428155_
                                 _e2514825773_
                                 _hd2514925776_
                                 _tl2515025778_
                                 _e2515125781_
                                 _hd2515225784_
                                 _tl2515325786_))
                            (___match2815428155_
                             _e2514825773_
                             _hd2514925776_
                             _tl2515025778_
                             _e2515125781_
                             _hd2515225784_
                             _tl2515325786_))
                        (___match2815428155_
                         _e2514825773_
                         _hd2514925776_
                         _tl2515025778_
                         _e2515125781_
                         _hd2515225784_
                         _tl2515325786_))))
                (___match2815428155_
                 _e2514825773_
                 _hd2514925776_
                 _tl2515025778_
                 _e2515125781_
                 _hd2515225784_
                 _tl2515325786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2815428155_
                                                 _e2514825773_
                                                 _hd2514925776_
                                                 _tl2515025778_
                                                 _e2515125781_
                                                 _hd2515225784_
                                                 _tl2515325786_))
                                            (___match2815428155_
                                             _e2514825773_
                                             _hd2514925776_
                                             _tl2515025778_
                                             _e2515125781_
                                             _hd2515225784_
                                             _tl2515325786_))
                                        (___match2815428155_
                                         _e2514825773_
                                         _hd2514925776_
                                         _tl2515025778_
                                         _e2515125781_
                                         _hd2515225784_
                                         _tl2515325786_))))
                                (___match2815428155_
                                 _e2514825773_
                                 _hd2514925776_
                                 _tl2515025778_
                                 _e2515125781_
                                 _hd2515225784_
                                 _tl2515325786_))))
                        (___match2815428155_
                         _e2514825773_
                         _hd2514925776_
                         _tl2515025778_
                         _e2515125781_
                         _hd2515225784_
                         _tl2515325786_))))
                 (___match2799027991_
                  (lambda (_e2508825990_
                           _hd2508925993_
                           _tl2509025995_
                           _e2509125998_
                           _hd2509226001_
                           _tl2509326003_
                           ___splice2782127822_
                           _target2509426006_
                           _tl2509626008_)
                    (letrec ((_loop2509726011_
                              (lambda (_hd2509526014_ _arg2510126016_)
                                (if (gx#stx-pair? _hd2509526014_)
                                    (let ((_e2509826019_
                                           (gx#stx-e _hd2509526014_)))
                                      (let ((_lp-tl2510026024_
                                             (##cdr _e2509826019_))
                                            (_lp-hd2509926022_
                                             (##car _e2509826019_)))
                                        (_loop2509726011_
                                         _lp-tl2510026024_
                                         (cons _lp-hd2509926022_
                                               _arg2510126016_))))
                                    (let ((_arg2510226027_
                                           (reverse _arg2510126016_)))
                                      (if (gx#stx-pair? _tl2509326003_)
                                          (let ((_e2510326030_
                                                 (gx#stx-e _tl2509326003_)))
                                            (let ((_tl2510526035_
                                                   (##cdr _e2510326030_))
                                                  (_hd2510426033_
                                                   (##car _e2510326030_)))
                                              (if (gx#stx-pair? _hd2510426033_)
                                                  (let ((_e2510626038_
                                                         (gx#stx-e
                                                          _hd2510426033_)))
                                                    (let ((_tl2510826043_
                                                           (##cdr _e2510626038_))
                                                          (_hd2510726041_
                                                           (##car _e2510626038_)))
                                                      (if (gx#identifier?
                                                           _hd2510726041_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2510726041_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2510826043_)
                          (let ((_e2510926046_ (gx#stx-e _tl2510826043_)))
                            (let ((_tl2511126051_ (##cdr _e2510926046_))
                                  (_hd2511026049_ (##car _e2510926046_)))
                              (if (gx#stx-pair? _hd2511026049_)
                                  (let ((_e2511226054_
                                         (gx#stx-e _hd2511026049_)))
                                    (let ((_tl2511426059_
                                           (##cdr _e2511226054_))
                                          (_hd2511326057_
                                           (##car _e2511226054_)))
                                      (if (gx#identifier? _hd2511326057_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2511326057_)
                                              (if (gx#stx-pair? _tl2511426059_)
                                                  (let ((_e2511526062_
                                                         (gx#stx-e
                                                          _tl2511426059_)))
                                                    (let ((_tl2511726067_
                                                           (##cdr _e2511526062_))
                                                          (_hd2511626065_
                                                           (##car _e2511526062_)))
                                                      (if (gx#stx-null?
                                                           _tl2511726067_)
                                                          (if (gx#stx-pair?
                                                               _tl2511126051_)
                                                              (let ((_e2511826070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2511126051_)))
                        (let ((_tl2512026075_ (##cdr _e2511826070_))
                              (_hd2511926073_ (##car _e2511826070_)))
                          (if (gx#stx-pair? _hd2511926073_)
                              (let ((_e2512126078_ (gx#stx-e _hd2511926073_)))
                                (let ((_tl2512326083_ (##cdr _e2512126078_))
                                      (_hd2512226081_ (##car _e2512126078_)))
                                  (if (gx#identifier? _hd2512226081_)
                                      (if (gx#stx-eq? '%#ref _hd2512226081_)
                                          (if (gx#stx-pair? _tl2512326083_)
                                              (let ((_e2512426086_
                                                     (gx#stx-e
                                                      _tl2512326083_)))
                                                (let ((_tl2512626091_
                                                       (##cdr _e2512426086_))
                                                      (_hd2512526089_
                                                       (##car _e2512426086_)))
                                                  (if (gx#stx-null?
                                                       _tl2512626091_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2512026075_)
                                                          (let ((___splice2782327824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2512026075_ '0)))
                    (let ((_tl2512926096_
                           (##vector-ref ___splice2782327824_ '1))
                          (_target2512726094_
                           (##vector-ref ___splice2782327824_ '0)))
                      (if (gx#stx-null? _tl2512926096_)
                          (letrec ((_loop2513026099_
                                    (lambda (_hd2512826102_ _xarg2513426104_)
                                      (if (gx#stx-pair? _hd2512826102_)
                                          (let ((_e2513126107_
                                                 (gx#stx-e _hd2512826102_)))
                                            (let ((_lp-tl2513326112_
                                                   (##cdr _e2513126107_))
                                                  (_lp-hd2513226110_
                                                   (##car _e2513126107_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2513226110_)
                                                  (let ((_e2513626115_
                                                         (gx#stx-e
                                                          _lp-hd2513226110_)))
                                                    (let ((_tl2513826120_
                                                           (##cdr _e2513626115_))
                                                          (_hd2513726118_
                                                           (##car _e2513626115_)))
                                                      (if (gx#identifier?
                                                           _hd2513726118_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2513726118_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2513826120_)
                          (let ((_e2513926123_ (gx#stx-e _tl2513826120_)))
                            (let ((_tl2514126128_ (##cdr _e2513926123_))
                                  (_hd2514026126_ (##car _e2513926123_)))
                              (if (gx#stx-null? _tl2514126128_)
                                  (_loop2513026099_
                                   _lp-tl2513326112_
                                   (cons _hd2514026126_ _xarg2513426104_))
                                  (___match2806628067_
                                   _e2508825990_
                                   _hd2508925993_
                                   _tl2509025995_
                                   _e2509125998_
                                   _hd2509226001_
                                   _tl2509326003_
                                   _e2510326030_
                                   _hd2510426033_
                                   _tl2510526035_
                                   _e2510626038_
                                   _hd2510726041_
                                   _tl2510826043_
                                   _e2510926046_
                                   _hd2511026049_
                                   _tl2511126051_
                                   _e2511226054_
                                   _hd2511326057_
                                   _tl2511426059_
                                   _e2511526062_
                                   _hd2511626065_
                                   _tl2511726067_
                                   _e2511826070_
                                   _hd2511926073_
                                   _tl2512026075_
                                   _e2512126078_
                                   _hd2512226081_
                                   _tl2512326083_
                                   _e2512426086_
                                   _hd2512526089_
                                   _tl2512626091_))))
                          (___match2806628067_
                           _e2508825990_
                           _hd2508925993_
                           _tl2509025995_
                           _e2509125998_
                           _hd2509226001_
                           _tl2509326003_
                           _e2510326030_
                           _hd2510426033_
                           _tl2510526035_
                           _e2510626038_
                           _hd2510726041_
                           _tl2510826043_
                           _e2510926046_
                           _hd2511026049_
                           _tl2511126051_
                           _e2511226054_
                           _hd2511326057_
                           _tl2511426059_
                           _e2511526062_
                           _hd2511626065_
                           _tl2511726067_
                           _e2511826070_
                           _hd2511926073_
                           _tl2512026075_
                           _e2512126078_
                           _hd2512226081_
                           _tl2512326083_
                           _e2512426086_
                           _hd2512526089_
                           _tl2512626091_))
                      (___match2806628067_
                       _e2508825990_
                       _hd2508925993_
                       _tl2509025995_
                       _e2509125998_
                       _hd2509226001_
                       _tl2509326003_
                       _e2510326030_
                       _hd2510426033_
                       _tl2510526035_
                       _e2510626038_
                       _hd2510726041_
                       _tl2510826043_
                       _e2510926046_
                       _hd2511026049_
                       _tl2511126051_
                       _e2511226054_
                       _hd2511326057_
                       _tl2511426059_
                       _e2511526062_
                       _hd2511626065_
                       _tl2511726067_
                       _e2511826070_
                       _hd2511926073_
                       _tl2512026075_
                       _e2512126078_
                       _hd2512226081_
                       _tl2512326083_
                       _e2512426086_
                       _hd2512526089_
                       _tl2512626091_))
                  (___match2806628067_
                   _e2508825990_
                   _hd2508925993_
                   _tl2509025995_
                   _e2509125998_
                   _hd2509226001_
                   _tl2509326003_
                   _e2510326030_
                   _hd2510426033_
                   _tl2510526035_
                   _e2510626038_
                   _hd2510726041_
                   _tl2510826043_
                   _e2510926046_
                   _hd2511026049_
                   _tl2511126051_
                   _e2511226054_
                   _hd2511326057_
                   _tl2511426059_
                   _e2511526062_
                   _hd2511626065_
                   _tl2511726067_
                   _e2511826070_
                   _hd2511926073_
                   _tl2512026075_
                   _e2512126078_
                   _hd2512226081_
                   _tl2512326083_
                   _e2512426086_
                   _hd2512526089_
                   _tl2512626091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2806628067_
                                                   _e2508825990_
                                                   _hd2508925993_
                                                   _tl2509025995_
                                                   _e2509125998_
                                                   _hd2509226001_
                                                   _tl2509326003_
                                                   _e2510326030_
                                                   _hd2510426033_
                                                   _tl2510526035_
                                                   _e2510626038_
                                                   _hd2510726041_
                                                   _tl2510826043_
                                                   _e2510926046_
                                                   _hd2511026049_
                                                   _tl2511126051_
                                                   _e2511226054_
                                                   _hd2511326057_
                                                   _tl2511426059_
                                                   _e2511526062_
                                                   _hd2511626065_
                                                   _tl2511726067_
                                                   _e2511826070_
                                                   _hd2511926073_
                                                   _tl2512026075_
                                                   _e2512126078_
                                                   _hd2512226081_
                                                   _tl2512326083_
                                                   _e2512426086_
                                                   _hd2512526089_
                                                   _tl2512626091_))))
                                          (let ((_xarg2513526131_
                                                 (reverse _xarg2513426104_)))
                                            (if (gx#stx-null? _tl2510526035_)
                                                (let ((_L26134_
                                                       _xarg2513526131_)
                                                      (_L26135_ _hd2512526089_)
                                                      (_L26136_ _hd2511626065_)
                                                      (_L26137_
                                                       _arg2510226027_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2617426177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2617526179_)
                               (cons _g2617426177_ _g2617526179_))
                             '()
                             _L26137_)))
                  (if (gxc#runtime-identifier=? _L26136_ 'make-struct-instance)
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2618126184_
                                                          _g2618226186_)
                                                   (cons _g2618126184_
                                                         _g2618226186_))
                                                 '()
                                                 _L26137_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2618826191_
                                                          _g2618926193_)
                                                   (cons _g2618826191_
                                                         _g2618926193_))
                                                 '()
                                                 _L26134_))))
                          (andmap2 gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2619526198_
                                                      _g2619626200_)
                                               (cons _g2619526198_
                                                     _g2619626200_))
                                             '()
                                             _L26137_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2620226205_
                                                      _g2620326207_)
                                               (cons _g2620226205_
                                                     _g2620326207_))
                                             '()
                                             _L26134_)))
                          '#f)
                      '#f)
                  '#f)
              (___kont2781927820_ _L26134_ _L26135_ _L26136_ _L26137_)
              (___match2806628067_
               _e2508825990_
               _hd2508925993_
               _tl2509025995_
               _e2509125998_
               _hd2509226001_
               _tl2509326003_
               _e2510326030_
               _hd2510426033_
               _tl2510526035_
               _e2510626038_
               _hd2510726041_
               _tl2510826043_
               _e2510926046_
               _hd2511026049_
               _tl2511126051_
               _e2511226054_
               _hd2511326057_
               _tl2511426059_
               _e2511526062_
               _hd2511626065_
               _tl2511726067_
               _e2511826070_
               _hd2511926073_
               _tl2512026075_
               _e2512126078_
               _hd2512226081_
               _tl2512326083_
               _e2512426086_
               _hd2512526089_
               _tl2512626091_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2806628067_
                                                 _e2508825990_
                                                 _hd2508925993_
                                                 _tl2509025995_
                                                 _e2509125998_
                                                 _hd2509226001_
                                                 _tl2509326003_
                                                 _e2510326030_
                                                 _hd2510426033_
                                                 _tl2510526035_
                                                 _e2510626038_
                                                 _hd2510726041_
                                                 _tl2510826043_
                                                 _e2510926046_
                                                 _hd2511026049_
                                                 _tl2511126051_
                                                 _e2511226054_
                                                 _hd2511326057_
                                                 _tl2511426059_
                                                 _e2511526062_
                                                 _hd2511626065_
                                                 _tl2511726067_
                                                 _e2511826070_
                                                 _hd2511926073_
                                                 _tl2512026075_
                                                 _e2512126078_
                                                 _hd2512226081_
                                                 _tl2512326083_
                                                 _e2512426086_
                                                 _hd2512526089_
                                                 _tl2512626091_)))))))
                            (_loop2513026099_ _target2512726094_ '()))
                          (___match2806628067_
                           _e2508825990_
                           _hd2508925993_
                           _tl2509025995_
                           _e2509125998_
                           _hd2509226001_
                           _tl2509326003_
                           _e2510326030_
                           _hd2510426033_
                           _tl2510526035_
                           _e2510626038_
                           _hd2510726041_
                           _tl2510826043_
                           _e2510926046_
                           _hd2511026049_
                           _tl2511126051_
                           _e2511226054_
                           _hd2511326057_
                           _tl2511426059_
                           _e2511526062_
                           _hd2511626065_
                           _tl2511726067_
                           _e2511826070_
                           _hd2511926073_
                           _tl2512026075_
                           _e2512126078_
                           _hd2512226081_
                           _tl2512326083_
                           _e2512426086_
                           _hd2512526089_
                           _tl2512626091_))))
                  (___match2806628067_
                   _e2508825990_
                   _hd2508925993_
                   _tl2509025995_
                   _e2509125998_
                   _hd2509226001_
                   _tl2509326003_
                   _e2510326030_
                   _hd2510426033_
                   _tl2510526035_
                   _e2510626038_
                   _hd2510726041_
                   _tl2510826043_
                   _e2510926046_
                   _hd2511026049_
                   _tl2511126051_
                   _e2511226054_
                   _hd2511326057_
                   _tl2511426059_
                   _e2511526062_
                   _hd2511626065_
                   _tl2511726067_
                   _e2511826070_
                   _hd2511926073_
                   _tl2512026075_
                   _e2512126078_
                   _hd2512226081_
                   _tl2512326083_
                   _e2512426086_
                   _hd2512526089_
                   _tl2512626091_))
              (___match2815428155_
               _e2508825990_
               _hd2508925993_
               _tl2509025995_
               _e2509125998_
               _hd2509226001_
               _tl2509326003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2815428155_
                                               _e2508825990_
                                               _hd2508925993_
                                               _tl2509025995_
                                               _e2509125998_
                                               _hd2509226001_
                                               _tl2509326003_))
                                          (___match2815428155_
                                           _e2508825990_
                                           _hd2508925993_
                                           _tl2509025995_
                                           _e2509125998_
                                           _hd2509226001_
                                           _tl2509326003_))
                                      (___match2815428155_
                                       _e2508825990_
                                       _hd2508925993_
                                       _tl2509025995_
                                       _e2509125998_
                                       _hd2509226001_
                                       _tl2509326003_))))
                              (___match2815428155_
                               _e2508825990_
                               _hd2508925993_
                               _tl2509025995_
                               _e2509125998_
                               _hd2509226001_
                               _tl2509326003_))))
                      (___match2815428155_
                       _e2508825990_
                       _hd2508925993_
                       _tl2509025995_
                       _e2509125998_
                       _hd2509226001_
                       _tl2509326003_))
                  (___match2815428155_
                   _e2508825990_
                   _hd2508925993_
                   _tl2509025995_
                   _e2509125998_
                   _hd2509226001_
                   _tl2509326003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2815428155_
                                                   _e2508825990_
                                                   _hd2508925993_
                                                   _tl2509025995_
                                                   _e2509125998_
                                                   _hd2509226001_
                                                   _tl2509326003_))
                                              (___match2815428155_
                                               _e2508825990_
                                               _hd2508925993_
                                               _tl2509025995_
                                               _e2509125998_
                                               _hd2509226001_
                                               _tl2509326003_))
                                          (___match2815428155_
                                           _e2508825990_
                                           _hd2508925993_
                                           _tl2509025995_
                                           _e2509125998_
                                           _hd2509226001_
                                           _tl2509326003_))))
                                  (___match2815428155_
                                   _e2508825990_
                                   _hd2508925993_
                                   _tl2509025995_
                                   _e2509125998_
                                   _hd2509226001_
                                   _tl2509326003_))))
                          (___match2815428155_
                           _e2508825990_
                           _hd2508925993_
                           _tl2509025995_
                           _e2509125998_
                           _hd2509226001_
                           _tl2509326003_))
                      (___match2815428155_
                       _e2508825990_
                       _hd2508925993_
                       _tl2509025995_
                       _e2509125998_
                       _hd2509226001_
                       _tl2509326003_))
                  (___match2815428155_
                   _e2508825990_
                   _hd2508925993_
                   _tl2509025995_
                   _e2509125998_
                   _hd2509226001_
                   _tl2509326003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2815428155_
                                                   _e2508825990_
                                                   _hd2508925993_
                                                   _tl2509025995_
                                                   _e2509125998_
                                                   _hd2509226001_
                                                   _tl2509326003_))))
                                          (___match2815428155_
                                           _e2508825990_
                                           _hd2508925993_
                                           _tl2509025995_
                                           _e2509125998_
                                           _hd2509226001_
                                           _tl2509326003_)))))))
                      (_loop2509726011_ _target2509426006_ '()))))
                 (___match2798227983_
                  (lambda (_e2508825990_
                           _hd2508925993_
                           _tl2509025995_
                           _e2509125998_
                           _hd2509226001_
                           _tl2509326003_)
                    (if (gx#stx-pair/null? _hd2509226001_)
                        (let ((___splice2782127822_
                               (gx#syntax-split-splice _hd2509226001_ '0)))
                          (let ((_tl2509626008_
                                 (##vector-ref ___splice2782127822_ '1))
                                (_target2509426006_
                                 (##vector-ref ___splice2782127822_ '0)))
                            (if (gx#stx-null? _tl2509626008_)
                                (___match2799027991_
                                 _e2508825990_
                                 _hd2508925993_
                                 _tl2509025995_
                                 _e2509125998_
                                 _hd2509226001_
                                 _tl2509326003_
                                 ___splice2782127822_
                                 _target2509426006_
                                 _tl2509626008_)
                                (___match2800228003_
                                 _e2508825990_
                                 _hd2508925993_
                                 _tl2509025995_
                                 _e2509125998_
                                 _hd2509226001_
                                 _tl2509326003_))))
                        (___match2800228003_
                         _e2508825990_
                         _hd2508925993_
                         _tl2509025995_
                         _e2509125998_
                         _hd2509226001_
                         _tl2509326003_))))
                 (___match2797027971_
                  (lambda (_e2503626220_
                           _hd2503726223_
                           _tl2503826225_
                           _e2503926228_
                           _hd2504026231_
                           _tl2504126233_
                           _e2504226236_
                           _hd2504326239_
                           _tl2504426241_
                           _e2504526244_
                           _hd2504626247_
                           _tl2504726249_
                           _e2504826252_
                           _hd2504926255_
                           _tl2505026257_
                           _e2505126260_
                           _hd2505226263_
                           _tl2505326265_
                           _e2505426268_
                           _hd2505526271_
                           _tl2505626273_
                           _e2505726276_
                           _hd2505826279_
                           _tl2505926281_
                           _e2506026284_
                           _hd2506126287_
                           _tl2506226289_
                           _e2506326292_
                           _hd2506426295_
                           _tl2506526297_
                           _e2506626300_
                           _hd2506726303_
                           _tl2506826305_
                           _e2506926308_
                           _hd2507026311_
                           _tl2507126313_
                           _e2507226316_
                           _hd2507326319_
                           _tl2507426321_
                           _e2507526324_
                           _hd2507626327_
                           _tl2507726329_
                           _e2507826332_
                           _hd2507926335_
                           _tl2508026337_
                           _e2508126340_
                           _hd2508226343_
                           _tl2508326345_)
                    (let ((_L26348_ _hd2508226343_)
                          (_L26349_ _hd2507326319_)
                          (_L26350_ _hd2506426295_)
                          (_L26351_ _hd2505526271_)
                          (_L26352_ _hd2504026231_))
                      (if (if (gx#identifier? _L26352_)
                              (if (gxc#runtime-identifier=? _L26351_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L26350_
                                       'make-struct-instance)
                                      (gx#free-identifier=? _L26352_ _L26348_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2781727818_
                           _L26348_
                           _L26349_
                           _L26350_
                           _L26351_
                           _L26352_)
                          (___match2798227983_
                           _e2503626220_
                           _hd2503726223_
                           _tl2503826225_
                           _e2503926228_
                           _hd2504026231_
                           _tl2504126233_)))))
                 (___match2784827849_
                  (lambda (_e2503626220_ _hd2503726223_ _tl2503826225_)
                    (if (gx#stx-pair? _tl2503826225_)
                        (let ((_e2503926228_ (gx#stx-e _tl2503826225_)))
                          (let ((_tl2504126233_ (##cdr _e2503926228_))
                                (_hd2504026231_ (##car _e2503926228_)))
                            (if (gx#stx-pair? _tl2504126233_)
                                (let ((_e2504226236_
                                       (gx#stx-e _tl2504126233_)))
                                  (let ((_tl2504426241_ (##cdr _e2504226236_))
                                        (_hd2504326239_ (##car _e2504226236_)))
                                    (if (gx#stx-pair? _hd2504326239_)
                                        (let ((_e2504526244_
                                               (gx#stx-e _hd2504326239_)))
                                          (let ((_tl2504726249_
                                                 (##cdr _e2504526244_))
                                                (_hd2504626247_
                                                 (##car _e2504526244_)))
                                            (if (gx#identifier? _hd2504626247_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2504626247_)
                                                    (if (gx#stx-pair?
                                                         _tl2504726249_)
                                                        (let ((_e2504826252_
                                                               (gx#stx-e
                                                                _tl2504726249_)))
                                                          (let ((_tl2505026257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2504826252_))
                        (_hd2504926255_ (##car _e2504826252_)))
                    (if (gx#stx-pair? _hd2504926255_)
                        (let ((_e2505126260_ (gx#stx-e _hd2504926255_)))
                          (let ((_tl2505326265_ (##cdr _e2505126260_))
                                (_hd2505226263_ (##car _e2505126260_)))
                            (if (gx#identifier? _hd2505226263_)
                                (if (gx#stx-eq? '%#ref _hd2505226263_)
                                    (if (gx#stx-pair? _tl2505326265_)
                                        (let ((_e2505426268_
                                               (gx#stx-e _tl2505326265_)))
                                          (let ((_tl2505626273_
                                                 (##cdr _e2505426268_))
                                                (_hd2505526271_
                                                 (##car _e2505426268_)))
                                            (if (gx#stx-null? _tl2505626273_)
                                                (if (gx#stx-pair?
                                                     _tl2505026257_)
                                                    (let ((_e2505726276_
                                                           (gx#stx-e
                                                            _tl2505026257_)))
                                                      (let ((_tl2505926281_
                                                             (##cdr _e2505726276_))
                                                            (_hd2505826279_
                                                             (##car _e2505726276_)))
                                                        (if (gx#stx-pair?
                                                             _hd2505826279_)
                                                            (let ((_e2506026284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2505826279_)))
                      (let ((_tl2506226289_ (##cdr _e2506026284_))
                            (_hd2506126287_ (##car _e2506026284_)))
                        (if (gx#identifier? _hd2506126287_)
                            (if (gx#stx-eq? '%#ref _hd2506126287_)
                                (if (gx#stx-pair? _tl2506226289_)
                                    (let ((_e2506326292_
                                           (gx#stx-e _tl2506226289_)))
                                      (let ((_tl2506526297_
                                             (##cdr _e2506326292_))
                                            (_hd2506426295_
                                             (##car _e2506326292_)))
                                        (if (gx#stx-null? _tl2506526297_)
                                            (if (gx#stx-pair? _tl2505926281_)
                                                (let ((_e2506626300_
                                                       (gx#stx-e
                                                        _tl2505926281_)))
                                                  (let ((_tl2506826305_
                                                         (##cdr _e2506626300_))
                                                        (_hd2506726303_
                                                         (##car _e2506626300_)))
                                                    (if (gx#stx-pair?
                                                         _hd2506726303_)
                                                        (let ((_e2506926308_
                                                               (gx#stx-e
                                                                _hd2506726303_)))
                                                          (let ((_tl2507126313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2506926308_))
                        (_hd2507026311_ (##car _e2506926308_)))
                    (if (gx#identifier? _hd2507026311_)
                        (if (gx#stx-eq? '%#ref _hd2507026311_)
                            (if (gx#stx-pair? _tl2507126313_)
                                (let ((_e2507226316_
                                       (gx#stx-e _tl2507126313_)))
                                  (let ((_tl2507426321_ (##cdr _e2507226316_))
                                        (_hd2507326319_ (##car _e2507226316_)))
                                    (if (gx#stx-null? _tl2507426321_)
                                        (if (gx#stx-pair? _tl2506826305_)
                                            (let ((_e2507526324_
                                                   (gx#stx-e _tl2506826305_)))
                                              (let ((_tl2507726329_
                                                     (##cdr _e2507526324_))
                                                    (_hd2507626327_
                                                     (##car _e2507526324_)))
                                                (if (gx#stx-pair?
                                                     _hd2507626327_)
                                                    (let ((_e2507826332_
                                                           (gx#stx-e
                                                            _hd2507626327_)))
                                                      (let ((_tl2508026337_
                                                             (##cdr _e2507826332_))
                                                            (_hd2507926335_
                                                             (##car _e2507826332_)))
                                                        (if (gx#identifier?
                                                             _hd2507926335_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2507926335_)
                        (if (gx#stx-pair? _tl2508026337_)
                            (let ((_e2508126340_ (gx#stx-e _tl2508026337_)))
                              (let ((_tl2508326345_ (##cdr _e2508126340_))
                                    (_hd2508226343_ (##car _e2508126340_)))
                                (if (gx#stx-null? _tl2508326345_)
                                    (if (gx#stx-null? _tl2507726329_)
                                        (if (gx#stx-null? _tl2504426241_)
                                            (___match2797027971_
                                             _e2503626220_
                                             _hd2503726223_
                                             _tl2503826225_
                                             _e2503926228_
                                             _hd2504026231_
                                             _tl2504126233_
                                             _e2504226236_
                                             _hd2504326239_
                                             _tl2504426241_
                                             _e2504526244_
                                             _hd2504626247_
                                             _tl2504726249_
                                             _e2504826252_
                                             _hd2504926255_
                                             _tl2505026257_
                                             _e2505126260_
                                             _hd2505226263_
                                             _tl2505326265_
                                             _e2505426268_
                                             _hd2505526271_
                                             _tl2505626273_
                                             _e2505726276_
                                             _hd2505826279_
                                             _tl2505926281_
                                             _e2506026284_
                                             _hd2506126287_
                                             _tl2506226289_
                                             _e2506326292_
                                             _hd2506426295_
                                             _tl2506526297_
                                             _e2506626300_
                                             _hd2506726303_
                                             _tl2506826305_
                                             _e2506926308_
                                             _hd2507026311_
                                             _tl2507126313_
                                             _e2507226316_
                                             _hd2507326319_
                                             _tl2507426321_
                                             _e2507526324_
                                             _hd2507626327_
                                             _tl2507726329_
                                             _e2507826332_
                                             _hd2507926335_
                                             _tl2508026337_
                                             _e2508126340_
                                             _hd2508226343_
                                             _tl2508326345_)
                                            (___match2798227983_
                                             _e2503626220_
                                             _hd2503726223_
                                             _tl2503826225_
                                             _e2503926228_
                                             _hd2504026231_
                                             _tl2504126233_))
                                        (___match2798227983_
                                         _e2503626220_
                                         _hd2503726223_
                                         _tl2503826225_
                                         _e2503926228_
                                         _hd2504026231_
                                         _tl2504126233_))
                                    (___match2798227983_
                                     _e2503626220_
                                     _hd2503726223_
                                     _tl2503826225_
                                     _e2503926228_
                                     _hd2504026231_
                                     _tl2504126233_))))
                            (___match2798227983_
                             _e2503626220_
                             _hd2503726223_
                             _tl2503826225_
                             _e2503926228_
                             _hd2504026231_
                             _tl2504126233_))
                        (___match2798227983_
                         _e2503626220_
                         _hd2503726223_
                         _tl2503826225_
                         _e2503926228_
                         _hd2504026231_
                         _tl2504126233_))
                    (___match2798227983_
                     _e2503626220_
                     _hd2503726223_
                     _tl2503826225_
                     _e2503926228_
                     _hd2504026231_
                     _tl2504126233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2798227983_
                                                     _e2503626220_
                                                     _hd2503726223_
                                                     _tl2503826225_
                                                     _e2503926228_
                                                     _hd2504026231_
                                                     _tl2504126233_))))
                                            (___match2798227983_
                                             _e2503626220_
                                             _hd2503726223_
                                             _tl2503826225_
                                             _e2503926228_
                                             _hd2504026231_
                                             _tl2504126233_))
                                        (___match2798227983_
                                         _e2503626220_
                                         _hd2503726223_
                                         _tl2503826225_
                                         _e2503926228_
                                         _hd2504026231_
                                         _tl2504126233_))))
                                (___match2798227983_
                                 _e2503626220_
                                 _hd2503726223_
                                 _tl2503826225_
                                 _e2503926228_
                                 _hd2504026231_
                                 _tl2504126233_))
                            (___match2798227983_
                             _e2503626220_
                             _hd2503726223_
                             _tl2503826225_
                             _e2503926228_
                             _hd2504026231_
                             _tl2504126233_))
                        (___match2798227983_
                         _e2503626220_
                         _hd2503726223_
                         _tl2503826225_
                         _e2503926228_
                         _hd2504026231_
                         _tl2504126233_))))
                (___match2798227983_
                 _e2503626220_
                 _hd2503726223_
                 _tl2503826225_
                 _e2503926228_
                 _hd2504026231_
                 _tl2504126233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2798227983_
                                                 _e2503626220_
                                                 _hd2503726223_
                                                 _tl2503826225_
                                                 _e2503926228_
                                                 _hd2504026231_
                                                 _tl2504126233_))
                                            (___match2798227983_
                                             _e2503626220_
                                             _hd2503726223_
                                             _tl2503826225_
                                             _e2503926228_
                                             _hd2504026231_
                                             _tl2504126233_))))
                                    (___match2798227983_
                                     _e2503626220_
                                     _hd2503726223_
                                     _tl2503826225_
                                     _e2503926228_
                                     _hd2504026231_
                                     _tl2504126233_))
                                (___match2798227983_
                                 _e2503626220_
                                 _hd2503726223_
                                 _tl2503826225_
                                 _e2503926228_
                                 _hd2504026231_
                                 _tl2504126233_))
                            (___match2798227983_
                             _e2503626220_
                             _hd2503726223_
                             _tl2503826225_
                             _e2503926228_
                             _hd2504026231_
                             _tl2504126233_))))
                    (___match2798227983_
                     _e2503626220_
                     _hd2503726223_
                     _tl2503826225_
                     _e2503926228_
                     _hd2504026231_
                     _tl2504126233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2798227983_
                                                     _e2503626220_
                                                     _hd2503726223_
                                                     _tl2503826225_
                                                     _e2503926228_
                                                     _hd2504026231_
                                                     _tl2504126233_))
                                                (___match2798227983_
                                                 _e2503626220_
                                                 _hd2503726223_
                                                 _tl2503826225_
                                                 _e2503926228_
                                                 _hd2504026231_
                                                 _tl2504126233_))))
                                        (___match2798227983_
                                         _e2503626220_
                                         _hd2503726223_
                                         _tl2503826225_
                                         _e2503926228_
                                         _hd2504026231_
                                         _tl2504126233_))
                                    (___match2798227983_
                                     _e2503626220_
                                     _hd2503726223_
                                     _tl2503826225_
                                     _e2503926228_
                                     _hd2504026231_
                                     _tl2504126233_))
                                (___match2798227983_
                                 _e2503626220_
                                 _hd2503726223_
                                 _tl2503826225_
                                 _e2503926228_
                                 _hd2504026231_
                                 _tl2504126233_))))
                        (___match2798227983_
                         _e2503626220_
                         _hd2503726223_
                         _tl2503826225_
                         _e2503926228_
                         _hd2504026231_
                         _tl2504126233_))))
                (___match2798227983_
                 _e2503626220_
                 _hd2503726223_
                 _tl2503826225_
                 _e2503926228_
                 _hd2504026231_
                 _tl2504126233_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2798227983_
                                                     _e2503626220_
                                                     _hd2503726223_
                                                     _tl2503826225_
                                                     _e2503926228_
                                                     _hd2504026231_
                                                     _tl2504126233_))
                                                (___match2798227983_
                                                 _e2503626220_
                                                 _hd2503726223_
                                                 _tl2503826225_
                                                 _e2503926228_
                                                 _hd2504026231_
                                                 _tl2504126233_))))
                                        (___match2798227983_
                                         _e2503626220_
                                         _hd2503726223_
                                         _tl2503826225_
                                         _e2503926228_
                                         _hd2504026231_
                                         _tl2504126233_))))
                                (___match2798227983_
                                 _e2503626220_
                                 _hd2503726223_
                                 _tl2503826225_
                                 _e2503926228_
                                 _hd2504026231_
                                 _tl2504126233_))))
                        (___match2828828289_
                         _e2503626220_
                         _hd2503726223_
                         _tl2503826225_)))))
            (if (gx#stx-pair? ___stx2781327814_)
                (let ((_e2502826405_ (gx#stx-e ___stx2781327814_)))
                  (let ((_tl2503026410_ (##cdr _e2502826405_))
                        (_hd2502926408_ (##car _e2502826405_)))
                    (if (gxc#current-compile-type-closure)
                        (let ((_L26413_ _tl2503026410_))
                          (___kont2781527816_ _L26413_))
                        (___match2784827849_
                         _e2502826405_
                         _hd2502926408_
                         _tl2503026410_))))
                (_g2502525332_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx24972_)
      (letrec ((_clause-e24974_
                (lambda (_form25015_)
                  (let ((__obj30059 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj30059
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form25015_)
                       (if (not (gxc#current-compile-type-closure))
                           (if (gxc#dispatch-lambda-form? _form25015_)
                               (gxc#dispatch-lambda-form-delegate _form25015_)
                               '#f)
                           '#f))
                      __obj30059)))))
        (let* ((_g2497624986_
                (lambda (_g2497724983_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2497724983_)))
               (_g2497525012_
                (lambda (_g2497724989_)
                  (if (gx#stx-pair? _g2497724989_)
                      (let ((_e2497924991_ (gx#stx-e _g2497724989_)))
                        (let ((_hd2498024994_ (##car _e2497924991_))
                              (_tl2498124996_ (##cdr _e2497924991_)))
                          ((lambda (_L24999_)
                             (let ((_clauses25010_
                                    (map _clause-e24974_ _L24999_)))
                               (##structure
                                gxc#!case-lambda::t
                                'case-lambda
                                _clauses25010_)))
                           _tl2498124996_)))
                      (_g2497624986_ _g2497724989_)))))
          (_g2497525012_ _stx24972_)))))
  (define gxc#basic-expression-type-let-values%
    (lambda (_stx24904_)
      (let* ((_g2490624923_
              (lambda (_g2490724920_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2490724920_)))
             (_g2490524969_
              (lambda (_g2490724926_)
                (if (gx#stx-pair? _g2490724926_)
                    (let ((_e2491024928_ (gx#stx-e _g2490724926_)))
                      (let ((_hd2491124931_ (##car _e2491024928_))
                            (_tl2491224933_ (##cdr _e2491024928_)))
                        (if (gx#stx-pair? _tl2491224933_)
                            (let ((_e2491324936_ (gx#stx-e _tl2491224933_)))
                              (let ((_hd2491424939_ (##car _e2491324936_))
                                    (_tl2491524941_ (##cdr _e2491324936_)))
                                (if (gx#stx-pair? _tl2491524941_)
                                    (let ((_e2491624944_
                                           (gx#stx-e _tl2491524941_)))
                                      (let ((_hd2491724947_
                                             (##car _e2491624944_))
                                            (_tl2491824949_
                                             (##cdr _e2491624944_)))
                                        (if (gx#stx-null? _tl2491824949_)
                                            ((lambda (_L24952_ _L24953_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (gxc#compile-e _L24952_))
                                                gxc#current-compile-type-closure
                                                '#t))
                                             _hd2491724947_
                                             _hd2491424939_)
                                            (_g2490624923_ _g2490724926_))))
                                    (_g2490624923_ _g2490724926_))))
                            (_g2490624923_ _g2490724926_))))
                    (_g2490624923_ _g2490724926_)))))
        (_g2490524969_ _stx24904_))))
  (define gxc#basic-expression-type-builtin (make-table 'test: eq?))
  (define gxc#basic-expression-type-call%
    (lambda (_stx24809_)
      (let* ((___stx2829728298_ _stx24809_)
             (_g2481224832_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2829728298_))))
        (let ((___kont2829928300_
               (lambda (_L24876_ _L24877_)
                 (let ((_type-e2489424896_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L24877_)
                         '#f)))
                   (if _type-e2489424896_
                       (let ((_type-e24899_ _type-e2489424896_))
                         (_type-e24899_ _stx24809_ _L24876_))
                       '#f))))
              (___kont2830128302_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2829728298_)
              (let ((_e2481624844_ (gx#stx-e ___stx2829728298_)))
                (let ((_tl2481824849_ (##cdr _e2481624844_))
                      (_hd2481724847_ (##car _e2481624844_)))
                  (if (gx#stx-pair? _tl2481824849_)
                      (let ((_e2481924852_ (gx#stx-e _tl2481824849_)))
                        (let ((_tl2482124857_ (##cdr _e2481924852_))
                              (_hd2482024855_ (##car _e2481924852_)))
                          (if (gx#stx-pair? _hd2482024855_)
                              (let ((_e2482224860_ (gx#stx-e _hd2482024855_)))
                                (let ((_tl2482424865_ (##cdr _e2482224860_))
                                      (_hd2482324863_ (##car _e2482224860_)))
                                  (if (gx#identifier? _hd2482324863_)
                                      (if (gx#stx-eq? '%#ref _hd2482324863_)
                                          (if (gx#stx-pair? _tl2482424865_)
                                              (let ((_e2482524868_
                                                     (gx#stx-e
                                                      _tl2482424865_)))
                                                (let ((_tl2482724873_
                                                       (##cdr _e2482524868_))
                                                      (_hd2482624871_
                                                       (##car _e2482524868_)))
                                                  (if (gx#stx-null?
                                                       _tl2482724873_)
                                                      (___kont2829928300_
                                                       _tl2482124857_
                                                       _hd2482624871_)
                                                      (___kont2830128302_))))
                                              (___kont2830128302_))
                                          (___kont2830128302_))
                                      (___kont2830128302_))))
                              (___kont2830128302_))))
                      (___kont2830128302_))))
              (___kont2830128302_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx24289_ _args24290_)
      (let* ((___stx2833528336_ _args24290_)
             (_g2429424408_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2833528336_))))
        (let ((___kont2833728338_
               (lambda (_L24758_ _L24759_ _L24760_ _L24761_ _L24762_)
                 (let ((__obj30060 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj30060
                      (gx#stx-e _L24762_)
                      '#f
                      (gx#stx-e _L24761_)
                      '0
                      (gx#stx-e _L24758_)
                      (gx#stx-e _L24759_))
                     __obj30060))))
              (___kont2833928340_
               (lambda (_L24548_ _L24549_ _L24550_ _L24551_ _L24552_ _L24553_)
                 (let* ((_super-t24599_
                         (if (gx#stx-e _L24552_)
                             (gxc#identifier-symbol _L24552_)
                             '#f))
                        (_super-type24601_
                         (if _super-t24599_
                             (gxc#optimizer-resolve-type _super-t24599_)
                             '#f)))
                   (begin
                     (if (if _super-type24601_
                             (not (##structure-instance-of?
                                   _super-type24601_
                                   'gxc#!struct-type::t))
                             '#f)
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx24289_
                          _L24552_)
                         '#!void)
                     (let ((_fields24617_ (gx#stx-e _L24551_))
                           (_xfields24618_
                            (if _super-type24601_
                                (let ((_super-fields2460324606_
                                       (##structure-ref
                                        _super-type24601_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2460424608_
                                       (##structure-ref
                                        _super-type24601_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2460324606_
                                      (if _super-xfields2460424608_
                                          (let ((_super-fields24611_
                                                 _super-fields2460324606_)
                                                (_super-xfields24612_
                                                 _super-xfields2460424608_))
                                            (fx+ _super-fields24611_
                                                 _super-xfields24612_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist24619_ (gx#stx-e _L24549_))
                           (_ctor24620_
                            (let ((_$e24614_ (gx#stx-e _L24548_)))
                              (if _$e24614_
                                  (values _$e24614_)
                                  (if _super-type24601_
                                      (##structure-ref
                                       _super-type24601_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t24599_ '#!void '#f))))))
                       (let ((__obj30061 (make-object gxc#!struct-type::t '7)))
                         (begin
                           (gxc#!struct-type:::init!
                            __obj30061
                            (gx#stx-e _L24553_)
                            _super-t24599_
                            _fields24617_
                            _xfields24618_
                            _ctor24620_
                            _plist24619_)
                           __obj30061)))))))
              (___kont2834128342_
               (lambda ()
                 (begin
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx24289_))
                   '#f))))
          (if (gx#stx-pair? ___stx2833528336_)
              (let ((_e2430124627_ (gx#stx-e ___stx2833528336_)))
                (let ((_tl2430324632_ (##cdr _e2430124627_))
                      (_hd2430224630_ (##car _e2430124627_)))
                  (if (gx#stx-pair? _hd2430224630_)
                      (let ((_e2430424635_ (gx#stx-e _hd2430224630_)))
                        (let ((_tl2430624640_ (##cdr _e2430424635_))
                              (_hd2430524638_ (##car _e2430424635_)))
                          (if (gx#identifier? _hd2430524638_)
                              (if (gx#stx-eq? '%#quote _hd2430524638_)
                                  (if (gx#stx-pair? _tl2430624640_)
                                      (let ((_e2430724643_
                                             (gx#stx-e _tl2430624640_)))
                                        (let ((_tl2430924648_
                                               (##cdr _e2430724643_))
                                              (_hd2430824646_
                                               (##car _e2430724643_)))
                                          (if (gx#stx-null? _tl2430924648_)
                                              (if (gx#stx-pair? _tl2430324632_)
                                                  (let ((_e2431024651_
                                                         (gx#stx-e
                                                          _tl2430324632_)))
                                                    (let ((_tl2431224656_
                                                           (##cdr _e2431024651_))
                                                          (_hd2431124654_
                                                           (##car _e2431024651_)))
                                                      (if (gx#stx-pair?
                                                           _hd2431124654_)
                                                          (let ((_e2431324659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2431124654_)))
                    (let ((_tl2431524664_ (##cdr _e2431324659_))
                          (_hd2431424662_ (##car _e2431324659_)))
                      (if (gx#identifier? _hd2431424662_)
                          (if (gx#stx-eq? '%#quote _hd2431424662_)
                              (if (gx#stx-pair? _tl2431524664_)
                                  (let ((_e2431624667_
                                         (gx#stx-e _tl2431524664_)))
                                    (let ((_tl2431824672_
                                           (##cdr _e2431624667_))
                                          (_hd2431724670_
                                           (##car _e2431624667_)))
                                      (if (gx#stx-datum? _hd2431724670_)
                                          (let ((_e2431924675_
                                                 (gx#stx-e _hd2431724670_)))
                                            (if (equal? _e2431924675_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2431824672_)
                                                    (if (gx#stx-pair?
                                                         _tl2431224656_)
                                                        (let ((_e2432024678_
                                                               (gx#stx-e
                                                                _tl2431224656_)))
                                                          (let ((_tl2432224683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2432024678_))
                        (_hd2432124681_ (##car _e2432024678_)))
                    (if (gx#stx-pair? _hd2432124681_)
                        (let ((_e2432324686_ (gx#stx-e _hd2432124681_)))
                          (let ((_tl2432524691_ (##cdr _e2432324686_))
                                (_hd2432424689_ (##car _e2432324686_)))
                            (if (gx#identifier? _hd2432424689_)
                                (if (gx#stx-eq? '%#quote _hd2432424689_)
                                    (if (gx#stx-pair? _tl2432524691_)
                                        (let ((_e2432624694_
                                               (gx#stx-e _tl2432524691_)))
                                          (let ((_tl2432824699_
                                                 (##cdr _e2432624694_))
                                                (_hd2432724697_
                                                 (##car _e2432624694_)))
                                            (if (gx#stx-null? _tl2432824699_)
                                                (if (gx#stx-pair?
                                                     _tl2432224683_)
                                                    (let ((_e2432924702_
                                                           (gx#stx-e
                                                            _tl2432224683_)))
                                                      (let ((_tl2433124707_
                                                             (##cdr _e2432924702_))
                                                            (_hd2433024705_
                                                             (##car _e2432924702_)))
                                                        (if (gx#stx-pair?
                                                             _tl2433124707_)
                                                            (let ((_e2433224710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2433124707_)))
                      (let ((_tl2433424715_ (##cdr _e2433224710_))
                            (_hd2433324713_ (##car _e2433224710_)))
                        (if (gx#stx-pair? _hd2433324713_)
                            (let ((_e2433524718_ (gx#stx-e _hd2433324713_)))
                              (let ((_tl2433724723_ (##cdr _e2433524718_))
                                    (_hd2433624721_ (##car _e2433524718_)))
                                (if (gx#identifier? _hd2433624721_)
                                    (if (gx#stx-eq? '%#quote _hd2433624721_)
                                        (if (gx#stx-pair? _tl2433724723_)
                                            (let ((_e2433824726_
                                                   (gx#stx-e _tl2433724723_)))
                                              (let ((_tl2434024731_
                                                     (##cdr _e2433824726_))
                                                    (_hd2433924729_
                                                     (##car _e2433824726_)))
                                                (if (gx#stx-null?
                                                     _tl2434024731_)
                                                    (if (gx#stx-pair?
                                                         _tl2433424715_)
                                                        (let ((_e2434124734_
                                                               (gx#stx-e
                                                                _tl2433424715_)))
                                                          (let ((_tl2434324739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2434124734_))
                        (_hd2434224737_ (##car _e2434124734_)))
                    (if (gx#stx-pair? _hd2434224737_)
                        (let ((_e2434424742_ (gx#stx-e _hd2434224737_)))
                          (let ((_tl2434624747_ (##cdr _e2434424742_))
                                (_hd2434524745_ (##car _e2434424742_)))
                            (if (gx#identifier? _hd2434524745_)
                                (if (gx#stx-eq? '%#quote _hd2434524745_)
                                    (if (gx#stx-pair? _tl2434624747_)
                                        (let ((_e2434724750_
                                               (gx#stx-e _tl2434624747_)))
                                          (let ((_tl2434924755_
                                                 (##cdr _e2434724750_))
                                                (_hd2434824753_
                                                 (##car _e2434724750_)))
                                            (if (gx#stx-null? _tl2434924755_)
                                                (___kont2833728338_
                                                 _hd2434824753_
                                                 _hd2433924729_
                                                 _hd2433024705_
                                                 _hd2432724697_
                                                 _hd2430824646_)
                                                (___kont2834128342_))))
                                        (___kont2834128342_))
                                    (___kont2834128342_))
                                (___kont2834128342_))))
                        (___kont2834128342_))))
                (___kont2834128342_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2834128342_))))
                                            (___kont2834128342_))
                                        (___kont2834128342_))
                                    (___kont2834128342_))))
                            (___kont2834128342_))))
                    (___kont2834128342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2834128342_))
                                                (___kont2834128342_))))
                                        (___kont2834128342_))
                                    (___kont2834128342_))
                                (___kont2834128342_))))
                        (___kont2834128342_))))
                (___kont2834128342_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2834128342_))
                                                (___kont2834128342_)))
                                          (___kont2834128342_))))
                                  (___kont2834128342_))
                              (if (gx#stx-eq? '%#ref _hd2431424662_)
                                  (if (gx#stx-pair? _tl2431524664_)
                                      (let ((_e2437124460_
                                             (gx#stx-e _tl2431524664_)))
                                        (let ((_tl2437324465_
                                               (##cdr _e2437124460_))
                                              (_hd2437224463_
                                               (##car _e2437124460_)))
                                          (if (gx#stx-null? _tl2437324465_)
                                              (if (gx#stx-pair? _tl2431224656_)
                                                  (let ((_e2437424468_
                                                         (gx#stx-e
                                                          _tl2431224656_)))
                                                    (let ((_tl2437624473_
                                                           (##cdr _e2437424468_))
                                                          (_hd2437524471_
                                                           (##car _e2437424468_)))
                                                      (if (gx#stx-pair?
                                                           _hd2437524471_)
                                                          (let ((_e2437724476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2437524471_)))
                    (let ((_tl2437924481_ (##cdr _e2437724476_))
                          (_hd2437824479_ (##car _e2437724476_)))
                      (if (gx#identifier? _hd2437824479_)
                          (if (gx#stx-eq? '%#quote _hd2437824479_)
                              (if (gx#stx-pair? _tl2437924481_)
                                  (let ((_e2438024484_
                                         (gx#stx-e _tl2437924481_)))
                                    (let ((_tl2438224489_
                                           (##cdr _e2438024484_))
                                          (_hd2438124487_
                                           (##car _e2438024484_)))
                                      (if (gx#stx-null? _tl2438224489_)
                                          (if (gx#stx-pair? _tl2437624473_)
                                              (let ((_e2438324492_
                                                     (gx#stx-e
                                                      _tl2437624473_)))
                                                (let ((_tl2438524497_
                                                       (##cdr _e2438324492_))
                                                      (_hd2438424495_
                                                       (##car _e2438324492_)))
                                                  (if (gx#stx-pair?
                                                       _tl2438524497_)
                                                      (let ((_e2438624500_
                                                             (gx#stx-e
                                                              _tl2438524497_)))
                                                        (let ((_tl2438824505_
                                                               (##cdr _e2438624500_))
                                                              (_hd2438724503_
                                                               (##car _e2438624500_)))
                                                          (if (gx#stx-pair?
                                                               _hd2438724503_)
                                                              (let ((_e2438924508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2438724503_)))
                        (let ((_tl2439124513_ (##cdr _e2438924508_))
                              (_hd2439024511_ (##car _e2438924508_)))
                          (if (gx#identifier? _hd2439024511_)
                              (if (gx#stx-eq? '%#quote _hd2439024511_)
                                  (if (gx#stx-pair? _tl2439124513_)
                                      (let ((_e2439224516_
                                             (gx#stx-e _tl2439124513_)))
                                        (let ((_tl2439424521_
                                               (##cdr _e2439224516_))
                                              (_hd2439324519_
                                               (##car _e2439224516_)))
                                          (if (gx#stx-null? _tl2439424521_)
                                              (if (gx#stx-pair? _tl2438824505_)
                                                  (let ((_e2439524524_
                                                         (gx#stx-e
                                                          _tl2438824505_)))
                                                    (let ((_tl2439724529_
                                                           (##cdr _e2439524524_))
                                                          (_hd2439624527_
                                                           (##car _e2439524524_)))
                                                      (if (gx#stx-pair?
                                                           _hd2439624527_)
                                                          (let ((_e2439824532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2439624527_)))
                    (let ((_tl2440024537_ (##cdr _e2439824532_))
                          (_hd2439924535_ (##car _e2439824532_)))
                      (if (gx#identifier? _hd2439924535_)
                          (if (gx#stx-eq? '%#quote _hd2439924535_)
                              (if (gx#stx-pair? _tl2440024537_)
                                  (let ((_e2440124540_
                                         (gx#stx-e _tl2440024537_)))
                                    (let ((_tl2440324545_
                                           (##cdr _e2440124540_))
                                          (_hd2440224543_
                                           (##car _e2440124540_)))
                                      (if (gx#stx-null? _tl2440324545_)
                                          (___kont2833928340_
                                           _hd2440224543_
                                           _hd2439324519_
                                           _hd2438424495_
                                           _hd2438124487_
                                           _hd2437224463_
                                           _hd2430824646_)
                                          (___kont2834128342_))))
                                  (___kont2834128342_))
                              (___kont2834128342_))
                          (___kont2834128342_))))
                  (___kont2834128342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2834128342_))
                                              (___kont2834128342_))))
                                      (___kont2834128342_))
                                  (___kont2834128342_))
                              (___kont2834128342_))))
                      (___kont2834128342_))))
              (___kont2834128342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2834128342_))
                                          (___kont2834128342_))))
                                  (___kont2834128342_))
                              (___kont2834128342_))
                          (___kont2834128342_))))
                  (___kont2834128342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2834128342_))
                                              (___kont2834128342_))))
                                      (___kont2834128342_))
                                  (___kont2834128342_)))
                          (___kont2834128342_))))
                  (___kont2834128342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2834128342_))
                                              (___kont2834128342_))))
                                      (___kont2834128342_))
                                  (___kont2834128342_))
                              (___kont2834128342_))))
                      (___kont2834128342_))))
              (___kont2834128342_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx24215_ _args24216_)
      (let* ((___stx2860328604_ _args24216_)
             (_g2421924235_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2860328604_))))
        (let ((___kont2860528606_
               (lambda (_L24271_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L24271_))))
              (___kont2860728608_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2860328604_)
              (let ((_e2422224247_ (gx#stx-e ___stx2860328604_)))
                (let ((_tl2422424252_ (##cdr _e2422224247_))
                      (_hd2422324250_ (##car _e2422224247_)))
                  (if (gx#stx-pair? _hd2422324250_)
                      (let ((_e2422524255_ (gx#stx-e _hd2422324250_)))
                        (let ((_tl2422724260_ (##cdr _e2422524255_))
                              (_hd2422624258_ (##car _e2422524255_)))
                          (if (gx#identifier? _hd2422624258_)
                              (if (gx#stx-eq? '%#ref _hd2422624258_)
                                  (if (gx#stx-pair? _tl2422724260_)
                                      (let ((_e2422824263_
                                             (gx#stx-e _tl2422724260_)))
                                        (let ((_tl2423024268_
                                               (##cdr _e2422824263_))
                                              (_hd2422924266_
                                               (##car _e2422824263_)))
                                          (if (gx#stx-null? _tl2423024268_)
                                              (if (gx#stx-null? _tl2422424252_)
                                                  (___kont2860528606_
                                                   _hd2422924266_)
                                                  (___kont2860728608_))
                                              (___kont2860728608_))))
                                      (___kont2860728608_))
                                  (___kont2860728608_))
                              (___kont2860728608_))))
                      (___kont2860728608_))))
              (___kont2860728608_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx24086_ _args24087_ _unchecked?24088_)
        (let* ((___stx2863728638_ _args24087_)
               (_g2409124117_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2863728638_))))
          (let ((___kont2863928640_
                 (lambda (_L24177_ _L24178_)
                   (##structure
                    gxc#!struct-getf::t
                    (gxc#identifier-symbol _L24178_)
                    (gx#stx-e _L24177_)
                    _unchecked?24088_)))
                (___kont2864128642_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2863728638_)
                (let ((_e2409524129_ (gx#stx-e ___stx2863728638_)))
                  (let ((_tl2409724134_ (##cdr _e2409524129_))
                        (_hd2409624132_ (##car _e2409524129_)))
                    (if (gx#stx-pair? _hd2409624132_)
                        (let ((_e2409824137_ (gx#stx-e _hd2409624132_)))
                          (let ((_tl2410024142_ (##cdr _e2409824137_))
                                (_hd2409924140_ (##car _e2409824137_)))
                            (if (gx#identifier? _hd2409924140_)
                                (if (gx#stx-eq? '%#ref _hd2409924140_)
                                    (if (gx#stx-pair? _tl2410024142_)
                                        (let ((_e2410124145_
                                               (gx#stx-e _tl2410024142_)))
                                          (let ((_tl2410324150_
                                                 (##cdr _e2410124145_))
                                                (_hd2410224148_
                                                 (##car _e2410124145_)))
                                            (if (gx#stx-null? _tl2410324150_)
                                                (if (gx#stx-pair?
                                                     _tl2409724134_)
                                                    (let ((_e2410424153_
                                                           (gx#stx-e
                                                            _tl2409724134_)))
                                                      (let ((_tl2410624158_
                                                             (##cdr _e2410424153_))
                                                            (_hd2410524156_
                                                             (##car _e2410424153_)))
                                                        (if (gx#stx-pair?
                                                             _hd2410524156_)
                                                            (let ((_e2410724161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2410524156_)))
                      (let ((_tl2410924166_ (##cdr _e2410724161_))
                            (_hd2410824164_ (##car _e2410724161_)))
                        (if (gx#identifier? _hd2410824164_)
                            (if (gx#stx-eq? '%#quote _hd2410824164_)
                                (if (gx#stx-pair? _tl2410924166_)
                                    (let ((_e2411024169_
                                           (gx#stx-e _tl2410924166_)))
                                      (let ((_tl2411224174_
                                             (##cdr _e2411024169_))
                                            (_hd2411124172_
                                             (##car _e2411024169_)))
                                        (if (gx#stx-null? _tl2411224174_)
                                            (if (gx#stx-null? _tl2410624158_)
                                                (___kont2863928640_
                                                 _hd2411124172_
                                                 _hd2410224148_)
                                                (___kont2864128642_))
                                            (___kont2864128642_))))
                                    (___kont2864128642_))
                                (___kont2864128642_))
                            (___kont2864128642_))))
                    (___kont2864128642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2864128642_))
                                                (___kont2864128642_))))
                                        (___kont2864128642_))
                                    (___kont2864128642_))
                                (___kont2864128642_))))
                        (___kont2864128642_))))
                (___kont2864128642_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx24206_ _args24207_)
          (let ((_unchecked?24209_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx24206_
             _args24207_
             _unchecked?24209_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g30067_
          (let ((_g30066_ (length _g30067_)))
            (cond ((##fx= _g30066_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g30067_))
                  ((##fx= _g30066_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g30067_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g30067_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx23956_ _args23957_ _unchecked?23958_)
        (let* ((___stx2869528696_ _args23957_)
               (_g2396123987_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2869528696_))))
          (let ((___kont2869728698_
                 (lambda (_L24047_ _L24048_)
                   (##structure
                    gxc#!struct-setf::t
                    (gxc#identifier-symbol _L24048_)
                    (gx#stx-e _L24047_)
                    _unchecked?23958_)))
                (___kont2869928700_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2869528696_)
                (let ((_e2396523999_ (gx#stx-e ___stx2869528696_)))
                  (let ((_tl2396724004_ (##cdr _e2396523999_))
                        (_hd2396624002_ (##car _e2396523999_)))
                    (if (gx#stx-pair? _hd2396624002_)
                        (let ((_e2396824007_ (gx#stx-e _hd2396624002_)))
                          (let ((_tl2397024012_ (##cdr _e2396824007_))
                                (_hd2396924010_ (##car _e2396824007_)))
                            (if (gx#identifier? _hd2396924010_)
                                (if (gx#stx-eq? '%#ref _hd2396924010_)
                                    (if (gx#stx-pair? _tl2397024012_)
                                        (let ((_e2397124015_
                                               (gx#stx-e _tl2397024012_)))
                                          (let ((_tl2397324020_
                                                 (##cdr _e2397124015_))
                                                (_hd2397224018_
                                                 (##car _e2397124015_)))
                                            (if (gx#stx-null? _tl2397324020_)
                                                (if (gx#stx-pair?
                                                     _tl2396724004_)
                                                    (let ((_e2397424023_
                                                           (gx#stx-e
                                                            _tl2396724004_)))
                                                      (let ((_tl2397624028_
                                                             (##cdr _e2397424023_))
                                                            (_hd2397524026_
                                                             (##car _e2397424023_)))
                                                        (if (gx#stx-pair?
                                                             _hd2397524026_)
                                                            (let ((_e2397724031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2397524026_)))
                      (let ((_tl2397924036_ (##cdr _e2397724031_))
                            (_hd2397824034_ (##car _e2397724031_)))
                        (if (gx#identifier? _hd2397824034_)
                            (if (gx#stx-eq? '%#quote _hd2397824034_)
                                (if (gx#stx-pair? _tl2397924036_)
                                    (let ((_e2398024039_
                                           (gx#stx-e _tl2397924036_)))
                                      (let ((_tl2398224044_
                                             (##cdr _e2398024039_))
                                            (_hd2398124042_
                                             (##car _e2398024039_)))
                                        (if (gx#stx-null? _tl2398224044_)
                                            (if (gx#stx-null? _tl2397624028_)
                                                (___kont2869728698_
                                                 _hd2398124042_
                                                 _hd2397224018_)
                                                (___kont2869928700_))
                                            (___kont2869928700_))))
                                    (___kont2869928700_))
                                (___kont2869928700_))
                            (___kont2869928700_))))
                    (___kont2869928700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2869928700_))
                                                (___kont2869928700_))))
                                        (___kont2869928700_))
                                    (___kont2869928700_))
                                (___kont2869928700_))))
                        (___kont2869928700_))))
                (___kont2869928700_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx24076_ _args24077_)
          (let ((_unchecked?24079_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx24076_
             _args24077_
             _unchecked?24079_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g30069_
          (let ((_g30068_ (length _g30069_)))
            (cond ((##fx= _g30068_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g30069_))
                  ((##fx= _g30068_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g30069_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g30069_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx23952_ _args23953_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx23952_
       _args23953_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx23949_ _args23950_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx23949_
       _args23950_
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
    (lambda (_stx23898_)
      (let* ((_g2390023913_
              (lambda (_g2390123910_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2390123910_)))
             (_g2389923946_
              (lambda (_g2390123916_)
                (if (gx#stx-pair? _g2390123916_)
                    (let ((_e2390323918_ (gx#stx-e _g2390123916_)))
                      (let ((_hd2390423921_ (##car _e2390323918_))
                            (_tl2390523923_ (##cdr _e2390323918_)))
                        (if (gx#stx-pair? _tl2390523923_)
                            (let ((_e2390623926_ (gx#stx-e _tl2390523923_)))
                              (let ((_hd2390723929_ (##car _e2390623926_))
                                    (_tl2390823931_ (##cdr _e2390623926_)))
                                (if (gx#stx-null? _tl2390823931_)
                                    ((lambda (_L23934_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L23934_)))
                                     _hd2390723929_)
                                    (_g2390023913_ _g2390123916_))))
                            (_g2390023913_ _g2390123916_))))
                    (_g2390023913_ _g2390123916_)))))
        (_g2389923946_ _stx23898_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form23132_)
      (let* ((___stx2875328754_ _form23132_)
             (_g2313723294_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2875328754_))))
        (let ((___kont2875528756_ (lambda (_L23818_ _L23819_ _L23820_) '#t))
              (___kont2876128762_
               (lambda (_L23606_ _L23607_ _L23608_ _L23609_ _L23610_ _L23611_)
                 '#t))
              (___kont2876728768_
               (lambda (_L23402_ _L23403_ _L23404_ _L23405_) '#t))
              (___kont2876928770_ (lambda () '#f)))
          (let* ((___match2889428895_
                  (lambda (_e2325423306_
                           _hd2325523309_
                           _tl2325623311_
                           _e2325723314_
                           _hd2325823317_
                           _tl2325923319_
                           _e2326023322_
                           _hd2326123325_
                           _tl2326223327_
                           _e2326323330_
                           _hd2326423333_
                           _tl2326523335_
                           _e2326623338_
                           _hd2326723341_
                           _tl2326823343_
                           _e2326923346_
                           _hd2327023349_
                           _tl2327123351_
                           _e2327223354_
                           _hd2327323357_
                           _tl2327423359_
                           _e2327523362_
                           _hd2327623365_
                           _tl2327723367_
                           _e2327823370_
                           _hd2327923373_
                           _tl2328023375_
                           _e2328123378_
                           _hd2328223381_
                           _tl2328323383_
                           _e2328423386_
                           _hd2328523389_
                           _tl2328623391_
                           _e2328723394_
                           _hd2328823397_
                           _tl2328923399_)
                    (let ((_L23402_ _hd2328823397_)
                          (_L23403_ _hd2327923373_)
                          (_L23404_ _hd2327023349_)
                          (_L23405_ _hd2325523309_))
                      (if (if (gx#identifier? _L23405_)
                              (if (gxc#runtime-identifier=? _L23404_ 'apply)
                                  (if (gx#free-identifier=? _L23405_ _L23402_)
                                      (not (gx#free-identifier=?
                                            _L23403_
                                            _L23405_))
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2876728768_
                           _L23402_
                           _L23403_
                           _L23404_
                           _L23405_)
                          (___kont2876928770_)))))
                 (___match2886628867_
                  (lambda (_e2325423306_
                           _hd2325523309_
                           _tl2325623311_
                           _e2325723314_
                           _hd2325823317_
                           _tl2325923319_
                           _e2326023322_
                           _hd2326123325_
                           _tl2326223327_
                           _e2326323330_
                           _hd2326423333_
                           _tl2326523335_
                           _e2326623338_
                           _hd2326723341_
                           _tl2326823343_
                           _e2326923346_
                           _hd2327023349_
                           _tl2327123351_
                           _e2327223354_
                           _hd2327323357_
                           _tl2327423359_
                           _e2327523362_
                           _hd2327623365_
                           _tl2327723367_
                           _e2327823370_
                           _hd2327923373_
                           _tl2328023375_)
                    (if (gx#stx-pair? _tl2327423359_)
                        (let ((_e2328123378_ (gx#stx-e _tl2327423359_)))
                          (let ((_tl2328323383_ (##cdr _e2328123378_))
                                (_hd2328223381_ (##car _e2328123378_)))
                            (if (gx#stx-pair? _hd2328223381_)
                                (let ((_e2328423386_
                                       (gx#stx-e _hd2328223381_)))
                                  (let ((_tl2328623391_ (##cdr _e2328423386_))
                                        (_hd2328523389_ (##car _e2328423386_)))
                                    (if (gx#identifier? _hd2328523389_)
                                        (if (gx#stx-eq? '%#ref _hd2328523389_)
                                            (if (gx#stx-pair? _tl2328623391_)
                                                (let ((_e2328723394_
                                                       (gx#stx-e
                                                        _tl2328623391_)))
                                                  (let ((_tl2328923399_
                                                         (##cdr _e2328723394_))
                                                        (_hd2328823397_
                                                         (##car _e2328723394_)))
                                                    (if (gx#stx-null?
                                                         _tl2328923399_)
                                                        (if (gx#stx-null?
                                                             _tl2328323383_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2325923319_)
                        (___match2889428895_
                         _e2325423306_
                         _hd2325523309_
                         _tl2325623311_
                         _e2325723314_
                         _hd2325823317_
                         _tl2325923319_
                         _e2326023322_
                         _hd2326123325_
                         _tl2326223327_
                         _e2326323330_
                         _hd2326423333_
                         _tl2326523335_
                         _e2326623338_
                         _hd2326723341_
                         _tl2326823343_
                         _e2326923346_
                         _hd2327023349_
                         _tl2327123351_
                         _e2327223354_
                         _hd2327323357_
                         _tl2327423359_
                         _e2327523362_
                         _hd2327623365_
                         _tl2327723367_
                         _e2327823370_
                         _hd2327923373_
                         _tl2328023375_
                         _e2328123378_
                         _hd2328223381_
                         _tl2328323383_
                         _e2328423386_
                         _hd2328523389_
                         _tl2328623391_
                         _e2328723394_
                         _hd2328823397_
                         _tl2328923399_)
                        (___kont2876928770_))
                    (___kont2876928770_))
                (___kont2876928770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2876928770_))
                                            (___kont2876928770_))
                                        (___kont2876928770_))))
                                (___kont2876928770_))))
                        (___kont2876928770_))))
                 (___match2879628797_
                  (lambda (_e2319023446_
                           _hd2319123449_
                           _tl2319223451_
                           ___splice2876328764_
                           _target2319323454_
                           _tl2319523456_)
                    (letrec ((_loop2319623459_
                              (lambda (_hd2319423462_ _arg2320023464_)
                                (if (gx#stx-pair? _hd2319423462_)
                                    (let ((_e2319723467_
                                           (gx#stx-e _hd2319423462_)))
                                      (let ((_lp-tl2319923472_
                                             (##cdr _e2319723467_))
                                            (_lp-hd2319823470_
                                             (##car _e2319723467_)))
                                        (_loop2319623459_
                                         _lp-tl2319923472_
                                         (cons _lp-hd2319823470_
                                               _arg2320023464_))))
                                    (let ((_arg2320123475_
                                           (reverse _arg2320023464_)))
                                      (if (gx#stx-pair? _tl2319223451_)
                                          (let ((_e2320223478_
                                                 (gx#stx-e _tl2319223451_)))
                                            (let ((_tl2320423483_
                                                   (##cdr _e2320223478_))
                                                  (_hd2320323481_
                                                   (##car _e2320223478_)))
                                              (if (gx#stx-pair? _hd2320323481_)
                                                  (let ((_e2320523486_
                                                         (gx#stx-e
                                                          _hd2320323481_)))
                                                    (let ((_tl2320723491_
                                                           (##cdr _e2320523486_))
                                                          (_hd2320623489_
                                                           (##car _e2320523486_)))
                                                      (if (gx#identifier?
                                                           _hd2320623489_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2320623489_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2320723491_)
                          (let ((_e2320823494_ (gx#stx-e _tl2320723491_)))
                            (let ((_tl2321023499_ (##cdr _e2320823494_))
                                  (_hd2320923497_ (##car _e2320823494_)))
                              (if (gx#stx-pair? _hd2320923497_)
                                  (let ((_e2321123502_
                                         (gx#stx-e _hd2320923497_)))
                                    (let ((_tl2321323507_
                                           (##cdr _e2321123502_))
                                          (_hd2321223505_
                                           (##car _e2321123502_)))
                                      (if (gx#identifier? _hd2321223505_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2321223505_)
                                              (if (gx#stx-pair? _tl2321323507_)
                                                  (let ((_e2321423510_
                                                         (gx#stx-e
                                                          _tl2321323507_)))
                                                    (let ((_tl2321623515_
                                                           (##cdr _e2321423510_))
                                                          (_hd2321523513_
                                                           (##car _e2321423510_)))
                                                      (if (gx#stx-null?
                                                           _tl2321623515_)
                                                          (if (gx#stx-pair?
                                                               _tl2321023499_)
                                                              (let ((_e2321723518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2321023499_)))
                        (let ((_tl2321923523_ (##cdr _e2321723518_))
                              (_hd2321823521_ (##car _e2321723518_)))
                          (if (gx#stx-pair? _hd2321823521_)
                              (let ((_e2322023526_ (gx#stx-e _hd2321823521_)))
                                (let ((_tl2322223531_ (##cdr _e2322023526_))
                                      (_hd2322123529_ (##car _e2322023526_)))
                                  (if (gx#identifier? _hd2322123529_)
                                      (if (gx#stx-eq? '%#ref _hd2322123529_)
                                          (if (gx#stx-pair? _tl2322223531_)
                                              (let ((_e2322323534_
                                                     (gx#stx-e
                                                      _tl2322223531_)))
                                                (let ((_tl2322523539_
                                                       (##cdr _e2322323534_))
                                                      (_hd2322423537_
                                                       (##car _e2322323534_)))
                                                  (if (gx#stx-null?
                                                       _tl2322523539_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2321923523_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2321923523_)
                            '1)
                      (let ((___splice2876528766_
                             (gx#syntax-split-splice _tl2321923523_ '1)))
                        (let ((_tl2322823544_
                               (##vector-ref ___splice2876528766_ '1))
                              (_target2322623542_
                               (##vector-ref ___splice2876528766_ '0)))
                          (if (gx#stx-pair? _tl2322823544_)
                              (let ((_e2323523547_ (gx#stx-e _tl2322823544_)))
                                (let ((_tl2323723552_ (##cdr _e2323523547_))
                                      (_hd2323623550_ (##car _e2323523547_)))
                                  (if (gx#stx-pair? _hd2323623550_)
                                      (let ((_e2323823555_
                                             (gx#stx-e _hd2323623550_)))
                                        (let ((_tl2324023560_
                                               (##cdr _e2323823555_))
                                              (_hd2323923558_
                                               (##car _e2323823555_)))
                                          (if (gx#identifier? _hd2323923558_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2323923558_)
                                                  (if (gx#stx-pair?
                                                       _tl2324023560_)
                                                      (let ((_e2324123563_
                                                             (gx#stx-e
                                                              _tl2324023560_)))
                                                        (let ((_tl2324323568_
                                                               (##cdr _e2324123563_))
                                                              (_hd2324223566_
                                                               (##car _e2324123563_)))
                                                          (if (gx#stx-null?
                                                               _tl2324323568_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2323723552_)
                          (letrec ((_loop2322923571_
                                    (lambda (_hd2322723574_ _xarg2323323576_)
                                      (if (gx#stx-pair? _hd2322723574_)
                                          (let ((_e2323023579_
                                                 (gx#stx-e _hd2322723574_)))
                                            (let ((_lp-tl2323223584_
                                                   (##cdr _e2323023579_))
                                                  (_lp-hd2323123582_
                                                   (##car _e2323023579_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2323123582_)
                                                  (let ((_e2324423587_
                                                         (gx#stx-e
                                                          _lp-hd2323123582_)))
                                                    (let ((_tl2324623592_
                                                           (##cdr _e2324423587_))
                                                          (_hd2324523590_
                                                           (##car _e2324423587_)))
                                                      (if (gx#identifier?
                                                           _hd2324523590_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2324523590_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2324623592_)
                          (let ((_e2324723595_ (gx#stx-e _tl2324623592_)))
                            (let ((_tl2324923600_ (##cdr _e2324723595_))
                                  (_hd2324823598_ (##car _e2324723595_)))
                              (if (gx#stx-null? _tl2324923600_)
                                  (_loop2322923571_
                                   _lp-tl2323223584_
                                   (cons _hd2324823598_ _xarg2323323576_))
                                  (___match2886628867_
                                   _e2319023446_
                                   _hd2319123449_
                                   _tl2319223451_
                                   _e2320223478_
                                   _hd2320323481_
                                   _tl2320423483_
                                   _e2320523486_
                                   _hd2320623489_
                                   _tl2320723491_
                                   _e2320823494_
                                   _hd2320923497_
                                   _tl2321023499_
                                   _e2321123502_
                                   _hd2321223505_
                                   _tl2321323507_
                                   _e2321423510_
                                   _hd2321523513_
                                   _tl2321623515_
                                   _e2321723518_
                                   _hd2321823521_
                                   _tl2321923523_
                                   _e2322023526_
                                   _hd2322123529_
                                   _tl2322223531_
                                   _e2322323534_
                                   _hd2322423537_
                                   _tl2322523539_))))
                          (___match2886628867_
                           _e2319023446_
                           _hd2319123449_
                           _tl2319223451_
                           _e2320223478_
                           _hd2320323481_
                           _tl2320423483_
                           _e2320523486_
                           _hd2320623489_
                           _tl2320723491_
                           _e2320823494_
                           _hd2320923497_
                           _tl2321023499_
                           _e2321123502_
                           _hd2321223505_
                           _tl2321323507_
                           _e2321423510_
                           _hd2321523513_
                           _tl2321623515_
                           _e2321723518_
                           _hd2321823521_
                           _tl2321923523_
                           _e2322023526_
                           _hd2322123529_
                           _tl2322223531_
                           _e2322323534_
                           _hd2322423537_
                           _tl2322523539_))
                      (___match2886628867_
                       _e2319023446_
                       _hd2319123449_
                       _tl2319223451_
                       _e2320223478_
                       _hd2320323481_
                       _tl2320423483_
                       _e2320523486_
                       _hd2320623489_
                       _tl2320723491_
                       _e2320823494_
                       _hd2320923497_
                       _tl2321023499_
                       _e2321123502_
                       _hd2321223505_
                       _tl2321323507_
                       _e2321423510_
                       _hd2321523513_
                       _tl2321623515_
                       _e2321723518_
                       _hd2321823521_
                       _tl2321923523_
                       _e2322023526_
                       _hd2322123529_
                       _tl2322223531_
                       _e2322323534_
                       _hd2322423537_
                       _tl2322523539_))
                  (___match2886628867_
                   _e2319023446_
                   _hd2319123449_
                   _tl2319223451_
                   _e2320223478_
                   _hd2320323481_
                   _tl2320423483_
                   _e2320523486_
                   _hd2320623489_
                   _tl2320723491_
                   _e2320823494_
                   _hd2320923497_
                   _tl2321023499_
                   _e2321123502_
                   _hd2321223505_
                   _tl2321323507_
                   _e2321423510_
                   _hd2321523513_
                   _tl2321623515_
                   _e2321723518_
                   _hd2321823521_
                   _tl2321923523_
                   _e2322023526_
                   _hd2322123529_
                   _tl2322223531_
                   _e2322323534_
                   _hd2322423537_
                   _tl2322523539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2886628867_
                                                   _e2319023446_
                                                   _hd2319123449_
                                                   _tl2319223451_
                                                   _e2320223478_
                                                   _hd2320323481_
                                                   _tl2320423483_
                                                   _e2320523486_
                                                   _hd2320623489_
                                                   _tl2320723491_
                                                   _e2320823494_
                                                   _hd2320923497_
                                                   _tl2321023499_
                                                   _e2321123502_
                                                   _hd2321223505_
                                                   _tl2321323507_
                                                   _e2321423510_
                                                   _hd2321523513_
                                                   _tl2321623515_
                                                   _e2321723518_
                                                   _hd2321823521_
                                                   _tl2321923523_
                                                   _e2322023526_
                                                   _hd2322123529_
                                                   _tl2322223531_
                                                   _e2322323534_
                                                   _hd2322423537_
                                                   _tl2322523539_))))
                                          (let ((_xarg2323423603_
                                                 (reverse _xarg2323323576_)))
                                            (if (gx#stx-null? _tl2320423483_)
                                                (let ((_L23606_ _hd2324223566_)
                                                      (_L23607_
                                                       _xarg2323423603_)
                                                      (_L23608_ _hd2322423537_)
                                                      (_L23609_ _hd2321523513_)
                                                      (_L23610_ _tl2319523456_)
                                                      (_L23611_
                                                       _arg2320123475_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2365423657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2365523659_)
                               (cons _g2365423657_ _g2365523659_))
                             '()
                             _L23611_)))
                  (if (gx#identifier? _L23610_)
                      (if (gxc#runtime-identifier=? _L23609_ 'apply)
                          (if (fx= (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2366123664_
                                                              _g2366223666_)
                                                       (cons _g2366123664_
                                                             _g2366223666_))
                                                     '()
                                                     _L23611_)))
                                   (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2366823671_
                                                              _g2366923673_)
                                                       (cons _g2366823671_
                                                             _g2366923673_))
                                                     '()
                                                     _L23607_))))
                              (if (andmap2 gx#free-identifier=?
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2367523678_
                                                              _g2367623680_)
                                                       (cons _g2367523678_
                                                             _g2367623680_))
                                                     '()
                                                     _L23611_))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2368223685_
                                                              _g2368323687_)
                                                       (cons _g2368223685_
                                                             _g2368323687_))
                                                     '()
                                                     _L23607_)))
                                  (if (gx#free-identifier=? _L23610_ _L23606_)
                                      (not (find (lambda (_g2368923691_)
                                                   (gx#free-identifier=?
                                                    _g2368923691_
                                                    _L23608_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2369323696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2369423698_)
                     (cons _g2369323696_ _g2369423698_))
                   (cons _L23610_ '())
                   _L23611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '#f)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  '#f)
              (___kont2876128762_
               _L23606_
               _L23607_
               _L23608_
               _L23609_
               _L23610_
               _L23611_)
              (___match2886628867_
               _e2319023446_
               _hd2319123449_
               _tl2319223451_
               _e2320223478_
               _hd2320323481_
               _tl2320423483_
               _e2320523486_
               _hd2320623489_
               _tl2320723491_
               _e2320823494_
               _hd2320923497_
               _tl2321023499_
               _e2321123502_
               _hd2321223505_
               _tl2321323507_
               _e2321423510_
               _hd2321523513_
               _tl2321623515_
               _e2321723518_
               _hd2321823521_
               _tl2321923523_
               _e2322023526_
               _hd2322123529_
               _tl2322223531_
               _e2322323534_
               _hd2322423537_
               _tl2322523539_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2886628867_
                                                 _e2319023446_
                                                 _hd2319123449_
                                                 _tl2319223451_
                                                 _e2320223478_
                                                 _hd2320323481_
                                                 _tl2320423483_
                                                 _e2320523486_
                                                 _hd2320623489_
                                                 _tl2320723491_
                                                 _e2320823494_
                                                 _hd2320923497_
                                                 _tl2321023499_
                                                 _e2321123502_
                                                 _hd2321223505_
                                                 _tl2321323507_
                                                 _e2321423510_
                                                 _hd2321523513_
                                                 _tl2321623515_
                                                 _e2321723518_
                                                 _hd2321823521_
                                                 _tl2321923523_
                                                 _e2322023526_
                                                 _hd2322123529_
                                                 _tl2322223531_
                                                 _e2322323534_
                                                 _hd2322423537_
                                                 _tl2322523539_)))))))
                            (_loop2322923571_ _target2322623542_ '()))
                          (___match2886628867_
                           _e2319023446_
                           _hd2319123449_
                           _tl2319223451_
                           _e2320223478_
                           _hd2320323481_
                           _tl2320423483_
                           _e2320523486_
                           _hd2320623489_
                           _tl2320723491_
                           _e2320823494_
                           _hd2320923497_
                           _tl2321023499_
                           _e2321123502_
                           _hd2321223505_
                           _tl2321323507_
                           _e2321423510_
                           _hd2321523513_
                           _tl2321623515_
                           _e2321723518_
                           _hd2321823521_
                           _tl2321923523_
                           _e2322023526_
                           _hd2322123529_
                           _tl2322223531_
                           _e2322323534_
                           _hd2322423537_
                           _tl2322523539_))
                      (___match2886628867_
                       _e2319023446_
                       _hd2319123449_
                       _tl2319223451_
                       _e2320223478_
                       _hd2320323481_
                       _tl2320423483_
                       _e2320523486_
                       _hd2320623489_
                       _tl2320723491_
                       _e2320823494_
                       _hd2320923497_
                       _tl2321023499_
                       _e2321123502_
                       _hd2321223505_
                       _tl2321323507_
                       _e2321423510_
                       _hd2321523513_
                       _tl2321623515_
                       _e2321723518_
                       _hd2321823521_
                       _tl2321923523_
                       _e2322023526_
                       _hd2322123529_
                       _tl2322223531_
                       _e2322323534_
                       _hd2322423537_
                       _tl2322523539_))))
              (___match2886628867_
               _e2319023446_
               _hd2319123449_
               _tl2319223451_
               _e2320223478_
               _hd2320323481_
               _tl2320423483_
               _e2320523486_
               _hd2320623489_
               _tl2320723491_
               _e2320823494_
               _hd2320923497_
               _tl2321023499_
               _e2321123502_
               _hd2321223505_
               _tl2321323507_
               _e2321423510_
               _hd2321523513_
               _tl2321623515_
               _e2321723518_
               _hd2321823521_
               _tl2321923523_
               _e2322023526_
               _hd2322123529_
               _tl2322223531_
               _e2322323534_
               _hd2322423537_
               _tl2322523539_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2886628867_
                                                   _e2319023446_
                                                   _hd2319123449_
                                                   _tl2319223451_
                                                   _e2320223478_
                                                   _hd2320323481_
                                                   _tl2320423483_
                                                   _e2320523486_
                                                   _hd2320623489_
                                                   _tl2320723491_
                                                   _e2320823494_
                                                   _hd2320923497_
                                                   _tl2321023499_
                                                   _e2321123502_
                                                   _hd2321223505_
                                                   _tl2321323507_
                                                   _e2321423510_
                                                   _hd2321523513_
                                                   _tl2321623515_
                                                   _e2321723518_
                                                   _hd2321823521_
                                                   _tl2321923523_
                                                   _e2322023526_
                                                   _hd2322123529_
                                                   _tl2322223531_
                                                   _e2322323534_
                                                   _hd2322423537_
                                                   _tl2322523539_))
                                              (___match2886628867_
                                               _e2319023446_
                                               _hd2319123449_
                                               _tl2319223451_
                                               _e2320223478_
                                               _hd2320323481_
                                               _tl2320423483_
                                               _e2320523486_
                                               _hd2320623489_
                                               _tl2320723491_
                                               _e2320823494_
                                               _hd2320923497_
                                               _tl2321023499_
                                               _e2321123502_
                                               _hd2321223505_
                                               _tl2321323507_
                                               _e2321423510_
                                               _hd2321523513_
                                               _tl2321623515_
                                               _e2321723518_
                                               _hd2321823521_
                                               _tl2321923523_
                                               _e2322023526_
                                               _hd2322123529_
                                               _tl2322223531_
                                               _e2322323534_
                                               _hd2322423537_
                                               _tl2322523539_))))
                                      (___match2886628867_
                                       _e2319023446_
                                       _hd2319123449_
                                       _tl2319223451_
                                       _e2320223478_
                                       _hd2320323481_
                                       _tl2320423483_
                                       _e2320523486_
                                       _hd2320623489_
                                       _tl2320723491_
                                       _e2320823494_
                                       _hd2320923497_
                                       _tl2321023499_
                                       _e2321123502_
                                       _hd2321223505_
                                       _tl2321323507_
                                       _e2321423510_
                                       _hd2321523513_
                                       _tl2321623515_
                                       _e2321723518_
                                       _hd2321823521_
                                       _tl2321923523_
                                       _e2322023526_
                                       _hd2322123529_
                                       _tl2322223531_
                                       _e2322323534_
                                       _hd2322423537_
                                       _tl2322523539_))))
                              (___match2886628867_
                               _e2319023446_
                               _hd2319123449_
                               _tl2319223451_
                               _e2320223478_
                               _hd2320323481_
                               _tl2320423483_
                               _e2320523486_
                               _hd2320623489_
                               _tl2320723491_
                               _e2320823494_
                               _hd2320923497_
                               _tl2321023499_
                               _e2321123502_
                               _hd2321223505_
                               _tl2321323507_
                               _e2321423510_
                               _hd2321523513_
                               _tl2321623515_
                               _e2321723518_
                               _hd2321823521_
                               _tl2321923523_
                               _e2322023526_
                               _hd2322123529_
                               _tl2322223531_
                               _e2322323534_
                               _hd2322423537_
                               _tl2322523539_))))
                      (___match2886628867_
                       _e2319023446_
                       _hd2319123449_
                       _tl2319223451_
                       _e2320223478_
                       _hd2320323481_
                       _tl2320423483_
                       _e2320523486_
                       _hd2320623489_
                       _tl2320723491_
                       _e2320823494_
                       _hd2320923497_
                       _tl2321023499_
                       _e2321123502_
                       _hd2321223505_
                       _tl2321323507_
                       _e2321423510_
                       _hd2321523513_
                       _tl2321623515_
                       _e2321723518_
                       _hd2321823521_
                       _tl2321923523_
                       _e2322023526_
                       _hd2322123529_
                       _tl2322223531_
                       _e2322323534_
                       _hd2322423537_
                       _tl2322523539_))
                  (___match2886628867_
                   _e2319023446_
                   _hd2319123449_
                   _tl2319223451_
                   _e2320223478_
                   _hd2320323481_
                   _tl2320423483_
                   _e2320523486_
                   _hd2320623489_
                   _tl2320723491_
                   _e2320823494_
                   _hd2320923497_
                   _tl2321023499_
                   _e2321123502_
                   _hd2321223505_
                   _tl2321323507_
                   _e2321423510_
                   _hd2321523513_
                   _tl2321623515_
                   _e2321723518_
                   _hd2321823521_
                   _tl2321923523_
                   _e2322023526_
                   _hd2322123529_
                   _tl2322223531_
                   _e2322323534_
                   _hd2322423537_
                   _tl2322523539_))
              (___kont2876928770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2876928770_))
                                          (___kont2876928770_))
                                      (___kont2876928770_))))
                              (___kont2876928770_))))
                      (___kont2876928770_))
                  (___kont2876928770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2876928770_))
                                              (___kont2876928770_))
                                          (___kont2876928770_))))
                                  (___kont2876928770_))))
                          (___kont2876928770_))
                      (___kont2876928770_))
                  (___kont2876928770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2876928770_))))
                                          (___kont2876928770_)))))))
                      (_loop2319623459_ _target2319323454_ '()))))
                 (___match2878428785_
                  (lambda (_e2314223706_
                           _hd2314323709_
                           _tl2314423711_
                           ___splice2875728758_
                           _target2314523714_
                           _tl2314723716_)
                    (letrec ((_loop2314823719_
                              (lambda (_hd2314623722_ _arg2315223724_)
                                (if (gx#stx-pair? _hd2314623722_)
                                    (let ((_e2314923727_
                                           (gx#stx-e _hd2314623722_)))
                                      (let ((_lp-tl2315123732_
                                             (##cdr _e2314923727_))
                                            (_lp-hd2315023730_
                                             (##car _e2314923727_)))
                                        (_loop2314823719_
                                         _lp-tl2315123732_
                                         (cons _lp-hd2315023730_
                                               _arg2315223724_))))
                                    (let ((_arg2315323735_
                                           (reverse _arg2315223724_)))
                                      (if (gx#stx-pair? _tl2314423711_)
                                          (let ((_e2315423738_
                                                 (gx#stx-e _tl2314423711_)))
                                            (let ((_tl2315623743_
                                                   (##cdr _e2315423738_))
                                                  (_hd2315523741_
                                                   (##car _e2315423738_)))
                                              (if (gx#stx-pair? _hd2315523741_)
                                                  (let ((_e2315723746_
                                                         (gx#stx-e
                                                          _hd2315523741_)))
                                                    (let ((_tl2315923751_
                                                           (##cdr _e2315723746_))
                                                          (_hd2315823749_
                                                           (##car _e2315723746_)))
                                                      (if (gx#identifier?
                                                           _hd2315823749_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2315823749_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2315923751_)
                          (let ((_e2316023754_ (gx#stx-e _tl2315923751_)))
                            (let ((_tl2316223759_ (##cdr _e2316023754_))
                                  (_hd2316123757_ (##car _e2316023754_)))
                              (if (gx#stx-pair? _hd2316123757_)
                                  (let ((_e2316323762_
                                         (gx#stx-e _hd2316123757_)))
                                    (let ((_tl2316523767_
                                           (##cdr _e2316323762_))
                                          (_hd2316423765_
                                           (##car _e2316323762_)))
                                      (if (gx#identifier? _hd2316423765_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2316423765_)
                                              (if (gx#stx-pair? _tl2316523767_)
                                                  (let ((_e2316623770_
                                                         (gx#stx-e
                                                          _tl2316523767_)))
                                                    (let ((_tl2316823775_
                                                           (##cdr _e2316623770_))
                                                          (_hd2316723773_
                                                           (##car _e2316623770_)))
                                                      (if (gx#stx-null?
                                                           _tl2316823775_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2316223759_)
                                                              (let ((___splice2875928760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2316223759_ '0)))
                        (let ((_tl2317123780_
                               (##vector-ref ___splice2875928760_ '1))
                              (_target2316923778_
                               (##vector-ref ___splice2875928760_ '0)))
                          (if (gx#stx-null? _tl2317123780_)
                              (letrec ((_loop2317223783_
                                        (lambda (_hd2317023786_
                                                 _xarg2317623788_)
                                          (if (gx#stx-pair? _hd2317023786_)
                                              (let ((_e2317323791_
                                                     (gx#stx-e
                                                      _hd2317023786_)))
                                                (let ((_lp-tl2317523796_
                                                       (##cdr _e2317323791_))
                                                      (_lp-hd2317423794_
                                                       (##car _e2317323791_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2317423794_)
                                                      (let ((_e2317823799_
                                                             (gx#stx-e
                                                              _lp-hd2317423794_)))
                                                        (let ((_tl2318023804_
                                                               (##cdr _e2317823799_))
                                                              (_hd2317923802_
                                                               (##car _e2317823799_)))
                                                          (if (gx#identifier?
                                                               _hd2317923802_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2317923802_)
                          (if (gx#stx-pair? _tl2318023804_)
                              (let ((_e2318123807_ (gx#stx-e _tl2318023804_)))
                                (let ((_tl2318323812_ (##cdr _e2318123807_))
                                      (_hd2318223810_ (##car _e2318123807_)))
                                  (if (gx#stx-null? _tl2318323812_)
                                      (_loop2317223783_
                                       _lp-tl2317523796_
                                       (cons _hd2318223810_ _xarg2317623788_))
                                      (___match2879628797_
                                       _e2314223706_
                                       _hd2314323709_
                                       _tl2314423711_
                                       ___splice2875728758_
                                       _target2314523714_
                                       _tl2314723716_))))
                              (___match2879628797_
                               _e2314223706_
                               _hd2314323709_
                               _tl2314423711_
                               ___splice2875728758_
                               _target2314523714_
                               _tl2314723716_))
                          (___match2879628797_
                           _e2314223706_
                           _hd2314323709_
                           _tl2314423711_
                           ___splice2875728758_
                           _target2314523714_
                           _tl2314723716_))
                      (___match2879628797_
                       _e2314223706_
                       _hd2314323709_
                       _tl2314423711_
                       ___splice2875728758_
                       _target2314523714_
                       _tl2314723716_))))
              (___match2879628797_
               _e2314223706_
               _hd2314323709_
               _tl2314423711_
               ___splice2875728758_
               _target2314523714_
               _tl2314723716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2317723815_
                                                     (reverse _xarg2317623788_)))
                                                (if (gx#stx-null?
                                                     _tl2315623743_)
                                                    (let ((_L23818_
                                                           _xarg2317723815_)
                                                          (_L23819_
                                                           _hd2316723773_)
                                                          (_L23820_
                                                           _arg2315323735_))
                                                      (if (if (gx#identifier-list?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2384823851_ _g2384923853_)
                                   (cons _g2384823851_ _g2384923853_))
                                 '()
                                 _L23820_)))
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2385523858_
                                                          _g2385623860_)
                                                   (cons _g2385523858_
                                                         _g2385623860_))
                                                 '()
                                                 _L23820_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2386223865_
                                                          _g2386323867_)
                                                   (cons _g2386223865_
                                                         _g2386323867_))
                                                 '()
                                                 _L23818_))))
                          (if (andmap2 gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2386923872_
                                                          _g2387023874_)
                                                   (cons _g2386923872_
                                                         _g2387023874_))
                                                 '()
                                                 _L23820_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2387623879_
                                                          _g2387723881_)
                                                   (cons _g2387623879_
                                                         _g2387723881_))
                                                 '()
                                                 _L23818_)))
                              (not (find (lambda (_g2388323885_)
                                           (gx#free-identifier=?
                                            _g2388323885_
                                            _L23819_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2388723890_
                                                            _g2388823892_)
                                                     (cons _g2388723890_
                                                           _g2388823892_))
                                                   '()
                                                   _L23820_))))
                              '#f)
                          '#f)
                      '#f)
                  (___kont2875528756_ _L23818_ _L23819_ _L23820_)
                  (___match2879628797_
                   _e2314223706_
                   _hd2314323709_
                   _tl2314423711_
                   ___splice2875728758_
                   _target2314523714_
                   _tl2314723716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2879628797_
                                                     _e2314223706_
                                                     _hd2314323709_
                                                     _tl2314423711_
                                                     ___splice2875728758_
                                                     _target2314523714_
                                                     _tl2314723716_)))))))
                                (_loop2317223783_ _target2316923778_ '()))
                              (___match2879628797_
                               _e2314223706_
                               _hd2314323709_
                               _tl2314423711_
                               ___splice2875728758_
                               _target2314523714_
                               _tl2314723716_))))
                      (___match2879628797_
                       _e2314223706_
                       _hd2314323709_
                       _tl2314423711_
                       ___splice2875728758_
                       _target2314523714_
                       _tl2314723716_))
                  (___match2879628797_
                   _e2314223706_
                   _hd2314323709_
                   _tl2314423711_
                   ___splice2875728758_
                   _target2314523714_
                   _tl2314723716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2879628797_
                                                   _e2314223706_
                                                   _hd2314323709_
                                                   _tl2314423711_
                                                   ___splice2875728758_
                                                   _target2314523714_
                                                   _tl2314723716_))
                                              (___match2879628797_
                                               _e2314223706_
                                               _hd2314323709_
                                               _tl2314423711_
                                               ___splice2875728758_
                                               _target2314523714_
                                               _tl2314723716_))
                                          (___match2879628797_
                                           _e2314223706_
                                           _hd2314323709_
                                           _tl2314423711_
                                           ___splice2875728758_
                                           _target2314523714_
                                           _tl2314723716_))))
                                  (___match2879628797_
                                   _e2314223706_
                                   _hd2314323709_
                                   _tl2314423711_
                                   ___splice2875728758_
                                   _target2314523714_
                                   _tl2314723716_))))
                          (___match2879628797_
                           _e2314223706_
                           _hd2314323709_
                           _tl2314423711_
                           ___splice2875728758_
                           _target2314523714_
                           _tl2314723716_))
                      (___match2879628797_
                       _e2314223706_
                       _hd2314323709_
                       _tl2314423711_
                       ___splice2875728758_
                       _target2314523714_
                       _tl2314723716_))
                  (___match2879628797_
                   _e2314223706_
                   _hd2314323709_
                   _tl2314423711_
                   ___splice2875728758_
                   _target2314523714_
                   _tl2314723716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2879628797_
                                                   _e2314223706_
                                                   _hd2314323709_
                                                   _tl2314423711_
                                                   ___splice2875728758_
                                                   _target2314523714_
                                                   _tl2314723716_))))
                                          (___match2879628797_
                                           _e2314223706_
                                           _hd2314323709_
                                           _tl2314423711_
                                           ___splice2875728758_
                                           _target2314523714_
                                           _tl2314723716_)))))))
                      (_loop2314823719_ _target2314523714_ '())))))
            (if (gx#stx-pair? ___stx2875328754_)
                (let ((_e2314223706_ (gx#stx-e ___stx2875328754_)))
                  (let ((_tl2314423711_ (##cdr _e2314223706_))
                        (_hd2314323709_ (##car _e2314223706_)))
                    (if (gx#stx-pair/null? _hd2314323709_)
                        (let ((___splice2875728758_
                               (gx#syntax-split-splice _hd2314323709_ '0)))
                          (let ((_tl2314723716_
                                 (##vector-ref ___splice2875728758_ '1))
                                (_target2314523714_
                                 (##vector-ref ___splice2875728758_ '0)))
                            (if (gx#stx-null? _tl2314723716_)
                                (___match2878428785_
                                 _e2314223706_
                                 _hd2314323709_
                                 _tl2314423711_
                                 ___splice2875728758_
                                 _target2314523714_
                                 _tl2314723716_)
                                (___match2879628797_
                                 _e2314223706_
                                 _hd2314323709_
                                 _tl2314423711_
                                 ___splice2875728758_
                                 _target2314523714_
                                 _tl2314723716_))))
                        (if (gx#stx-pair? _tl2314423711_)
                            (let ((_e2325723314_ (gx#stx-e _tl2314423711_)))
                              (let ((_tl2325923319_ (##cdr _e2325723314_))
                                    (_hd2325823317_ (##car _e2325723314_)))
                                (if (gx#stx-pair? _hd2325823317_)
                                    (let ((_e2326023322_
                                           (gx#stx-e _hd2325823317_)))
                                      (let ((_tl2326223327_
                                             (##cdr _e2326023322_))
                                            (_hd2326123325_
                                             (##car _e2326023322_)))
                                        (if (gx#identifier? _hd2326123325_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2326123325_)
                                                (if (gx#stx-pair?
                                                     _tl2326223327_)
                                                    (let ((_e2326323330_
                                                           (gx#stx-e
                                                            _tl2326223327_)))
                                                      (let ((_tl2326523335_
                                                             (##cdr _e2326323330_))
                                                            (_hd2326423333_
                                                             (##car _e2326323330_)))
                                                        (if (gx#stx-pair?
                                                             _hd2326423333_)
                                                            (let ((_e2326623338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2326423333_)))
                      (let ((_tl2326823343_ (##cdr _e2326623338_))
                            (_hd2326723341_ (##car _e2326623338_)))
                        (if (gx#identifier? _hd2326723341_)
                            (if (gx#stx-eq? '%#ref _hd2326723341_)
                                (if (gx#stx-pair? _tl2326823343_)
                                    (let ((_e2326923346_
                                           (gx#stx-e _tl2326823343_)))
                                      (let ((_tl2327123351_
                                             (##cdr _e2326923346_))
                                            (_hd2327023349_
                                             (##car _e2326923346_)))
                                        (if (gx#stx-null? _tl2327123351_)
                                            (if (gx#stx-pair? _tl2326523335_)
                                                (let ((_e2327223354_
                                                       (gx#stx-e
                                                        _tl2326523335_)))
                                                  (let ((_tl2327423359_
                                                         (##cdr _e2327223354_))
                                                        (_hd2327323357_
                                                         (##car _e2327223354_)))
                                                    (if (gx#stx-pair?
                                                         _hd2327323357_)
                                                        (let ((_e2327523362_
                                                               (gx#stx-e
                                                                _hd2327323357_)))
                                                          (let ((_tl2327723367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2327523362_))
                        (_hd2327623365_ (##car _e2327523362_)))
                    (if (gx#identifier? _hd2327623365_)
                        (if (gx#stx-eq? '%#ref _hd2327623365_)
                            (if (gx#stx-pair? _tl2327723367_)
                                (let ((_e2327823370_
                                       (gx#stx-e _tl2327723367_)))
                                  (let ((_tl2328023375_ (##cdr _e2327823370_))
                                        (_hd2327923373_ (##car _e2327823370_)))
                                    (if (gx#stx-null? _tl2328023375_)
                                        (if (gx#stx-pair? _tl2327423359_)
                                            (let ((_e2328123378_
                                                   (gx#stx-e _tl2327423359_)))
                                              (let ((_tl2328323383_
                                                     (##cdr _e2328123378_))
                                                    (_hd2328223381_
                                                     (##car _e2328123378_)))
                                                (if (gx#stx-pair?
                                                     _hd2328223381_)
                                                    (let ((_e2328423386_
                                                           (gx#stx-e
                                                            _hd2328223381_)))
                                                      (let ((_tl2328623391_
                                                             (##cdr _e2328423386_))
                                                            (_hd2328523389_
                                                             (##car _e2328423386_)))
                                                        (if (gx#identifier?
                                                             _hd2328523389_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2328523389_)
                        (if (gx#stx-pair? _tl2328623391_)
                            (let ((_e2328723394_ (gx#stx-e _tl2328623391_)))
                              (let ((_tl2328923399_ (##cdr _e2328723394_))
                                    (_hd2328823397_ (##car _e2328723394_)))
                                (if (gx#stx-null? _tl2328923399_)
                                    (if (gx#stx-null? _tl2328323383_)
                                        (if (gx#stx-null? _tl2325923319_)
                                            (___match2889428895_
                                             _e2314223706_
                                             _hd2314323709_
                                             _tl2314423711_
                                             _e2325723314_
                                             _hd2325823317_
                                             _tl2325923319_
                                             _e2326023322_
                                             _hd2326123325_
                                             _tl2326223327_
                                             _e2326323330_
                                             _hd2326423333_
                                             _tl2326523335_
                                             _e2326623338_
                                             _hd2326723341_
                                             _tl2326823343_
                                             _e2326923346_
                                             _hd2327023349_
                                             _tl2327123351_
                                             _e2327223354_
                                             _hd2327323357_
                                             _tl2327423359_
                                             _e2327523362_
                                             _hd2327623365_
                                             _tl2327723367_
                                             _e2327823370_
                                             _hd2327923373_
                                             _tl2328023375_
                                             _e2328123378_
                                             _hd2328223381_
                                             _tl2328323383_
                                             _e2328423386_
                                             _hd2328523389_
                                             _tl2328623391_
                                             _e2328723394_
                                             _hd2328823397_
                                             _tl2328923399_)
                                            (___kont2876928770_))
                                        (___kont2876928770_))
                                    (___kont2876928770_))))
                            (___kont2876928770_))
                        (___kont2876928770_))
                    (___kont2876928770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2876928770_))))
                                            (___kont2876928770_))
                                        (___kont2876928770_))))
                                (___kont2876928770_))
                            (___kont2876928770_))
                        (___kont2876928770_))))
                (___kont2876928770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2876928770_))
                                            (___kont2876928770_))))
                                    (___kont2876928770_))
                                (___kont2876928770_))
                            (___kont2876928770_))))
                    (___kont2876928770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2876928770_))
                                                (___kont2876928770_))
                                            (___kont2876928770_))))
                                    (___kont2876928770_))))
                            (___kont2876928770_)))))
                (___kont2876928770_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form22600_)
      (let* ((___stx2889728898_ _form22600_)
             (_g2260422728_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2889728898_))))
        (let ((___kont2889928900_
               (lambda (_L23098_ _L23099_ _L23100_)
                 (gxc#identifier-symbol _L23099_)))
              (___kont2890528906_
               (lambda (_L22946_ _L22947_ _L22948_ _L22949_)
                 (gxc#identifier-symbol _L22946_)))
              (___kont2890928910_
               (lambda (_L22813_ _L22814_ _L22815_)
                 (gxc#identifier-symbol _L22813_))))
          (let* ((___match2900629007_
                  (lambda (_e2269422733_
                           _hd2269522736_
                           _tl2269622738_
                           _e2269722741_
                           _hd2269822744_
                           _tl2269922746_
                           _e2270022749_
                           _hd2270122752_
                           _tl2270222754_
                           _e2270322757_
                           _hd2270422760_
                           _tl2270522762_
                           _e2270622765_
                           _hd2270722768_
                           _tl2270822770_
                           _e2270922773_
                           _hd2271022776_
                           _tl2271122778_
                           _e2271222781_
                           _hd2271322784_
                           _tl2271422786_
                           _e2271522789_
                           _hd2271622792_
                           _tl2271722794_
                           _e2271822797_
                           _hd2271922800_
                           _tl2272022802_)
                    (if (gx#stx-pair? _tl2271422786_)
                        (let ((_e2272122805_ (gx#stx-e _tl2271422786_)))
                          (let ((_tl2272322810_ (##cdr _e2272122805_))
                                (_hd2272222808_ (##car _e2272122805_)))
                            (if (gx#stx-null? _tl2272322810_)
                                (if (gx#stx-null? _tl2269922746_)
                                    (___kont2890928910_
                                     _hd2271922800_
                                     _hd2271022776_
                                     _hd2269522736_)
                                    (_g2260422728_))
                                (_g2260422728_))))
                        (_g2260422728_))))
                 (___match2893628937_
                  (lambda (_e2265522850_
                           _hd2265622853_
                           _tl2265722855_
                           ___splice2890728908_
                           _target2265822858_
                           _tl2266022860_)
                    (letrec ((_loop2266122863_
                              (lambda (_hd2265922866_ _arg2266522868_)
                                (if (gx#stx-pair? _hd2265922866_)
                                    (let ((_e2266222871_
                                           (gx#stx-e _hd2265922866_)))
                                      (let ((_lp-tl2266422876_
                                             (##cdr _e2266222871_))
                                            (_lp-hd2266322874_
                                             (##car _e2266222871_)))
                                        (_loop2266122863_
                                         _lp-tl2266422876_
                                         (cons _lp-hd2266322874_
                                               _arg2266522868_))))
                                    (let ((_arg2266622879_
                                           (reverse _arg2266522868_)))
                                      (if (gx#stx-pair? _tl2265722855_)
                                          (let ((_e2266722882_
                                                 (gx#stx-e _tl2265722855_)))
                                            (let ((_tl2266922887_
                                                   (##cdr _e2266722882_))
                                                  (_hd2266822885_
                                                   (##car _e2266722882_)))
                                              (if (gx#stx-pair? _hd2266822885_)
                                                  (let ((_e2267022890_
                                                         (gx#stx-e
                                                          _hd2266822885_)))
                                                    (let ((_tl2267222895_
                                                           (##cdr _e2267022890_))
                                                          (_hd2267122893_
                                                           (##car _e2267022890_)))
                                                      (if (gx#identifier?
                                                           _hd2267122893_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2267122893_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2267222895_)
                          (let ((_e2267322898_ (gx#stx-e _tl2267222895_)))
                            (let ((_tl2267522903_ (##cdr _e2267322898_))
                                  (_hd2267422901_ (##car _e2267322898_)))
                              (if (gx#stx-pair? _hd2267422901_)
                                  (let ((_e2267622906_
                                         (gx#stx-e _hd2267422901_)))
                                    (let ((_tl2267822911_
                                           (##cdr _e2267622906_))
                                          (_hd2267722909_
                                           (##car _e2267622906_)))
                                      (if (gx#identifier? _hd2267722909_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2267722909_)
                                              (if (gx#stx-pair? _tl2267822911_)
                                                  (let ((_e2267922914_
                                                         (gx#stx-e
                                                          _tl2267822911_)))
                                                    (let ((_tl2268122919_
                                                           (##cdr _e2267922914_))
                                                          (_hd2268022917_
                                                           (##car _e2267922914_)))
                                                      (if (gx#stx-null?
                                                           _tl2268122919_)
                                                          (if (gx#stx-pair?
                                                               _tl2267522903_)
                                                              (let ((_e2268222922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2267522903_)))
                        (let ((_tl2268422927_ (##cdr _e2268222922_))
                              (_hd2268322925_ (##car _e2268222922_)))
                          (if (gx#stx-pair? _hd2268322925_)
                              (let ((_e2268522930_ (gx#stx-e _hd2268322925_)))
                                (let ((_tl2268722935_ (##cdr _e2268522930_))
                                      (_hd2268622933_ (##car _e2268522930_)))
                                  (if (gx#identifier? _hd2268622933_)
                                      (if (gx#stx-eq? '%#ref _hd2268622933_)
                                          (if (gx#stx-pair? _tl2268722935_)
                                              (let ((_e2268822938_
                                                     (gx#stx-e
                                                      _tl2268722935_)))
                                                (let ((_tl2269022943_
                                                       (##cdr _e2268822938_))
                                                      (_hd2268922941_
                                                       (##car _e2268822938_)))
                                                  (if (gx#stx-null?
                                                       _tl2269022943_)
                                                      (if (gx#stx-null?
                                                           _tl2266922887_)
                                                          (___kont2890528906_
                                                           _hd2268922941_
                                                           _hd2268022917_
                                                           _tl2266022860_
                                                           _arg2266622879_)
                                                          (___match2900629007_
                                                           _e2265522850_
                                                           _hd2265622853_
                                                           _tl2265722855_
                                                           _e2266722882_
                                                           _hd2266822885_
                                                           _tl2266922887_
                                                           _e2267022890_
                                                           _hd2267122893_
                                                           _tl2267222895_
                                                           _e2267322898_
                                                           _hd2267422901_
                                                           _tl2267522903_
                                                           _e2267622906_
                                                           _hd2267722909_
                                                           _tl2267822911_
                                                           _e2267922914_
                                                           _hd2268022917_
                                                           _tl2268122919_
                                                           _e2268222922_
                                                           _hd2268322925_
                                                           _tl2268422927_
                                                           _e2268522930_
                                                           _hd2268622933_
                                                           _tl2268722935_
                                                           _e2268822938_
                                                           _hd2268922941_
                                                           _tl2269022943_))
                                                      (_g2260422728_))))
                                              (_g2260422728_))
                                          (_g2260422728_))
                                      (_g2260422728_))))
                              (_g2260422728_))))
                      (_g2260422728_))
                  (_g2260422728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2260422728_))
                                              (_g2260422728_))
                                          (_g2260422728_))))
                                  (_g2260422728_))))
                          (_g2260422728_))
                      (_g2260422728_))
                  (_g2260422728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2260422728_))))
                                          (_g2260422728_)))))))
                      (_loop2266122863_ _target2265822858_ '()))))
                 (___match2892428925_
                  (lambda (_e2260922986_
                           _hd2261022989_
                           _tl2261122991_
                           ___splice2890128902_
                           _target2261222994_
                           _tl2261422996_)
                    (letrec ((_loop2261522999_
                              (lambda (_hd2261323002_ _arg2261923004_)
                                (if (gx#stx-pair? _hd2261323002_)
                                    (let ((_e2261623007_
                                           (gx#stx-e _hd2261323002_)))
                                      (let ((_lp-tl2261823012_
                                             (##cdr _e2261623007_))
                                            (_lp-hd2261723010_
                                             (##car _e2261623007_)))
                                        (_loop2261522999_
                                         _lp-tl2261823012_
                                         (cons _lp-hd2261723010_
                                               _arg2261923004_))))
                                    (let ((_arg2262023015_
                                           (reverse _arg2261923004_)))
                                      (if (gx#stx-pair? _tl2261122991_)
                                          (let ((_e2262123018_
                                                 (gx#stx-e _tl2261122991_)))
                                            (let ((_tl2262323023_
                                                   (##cdr _e2262123018_))
                                                  (_hd2262223021_
                                                   (##car _e2262123018_)))
                                              (if (gx#stx-pair? _hd2262223021_)
                                                  (let ((_e2262423026_
                                                         (gx#stx-e
                                                          _hd2262223021_)))
                                                    (let ((_tl2262623031_
                                                           (##cdr _e2262423026_))
                                                          (_hd2262523029_
                                                           (##car _e2262423026_)))
                                                      (if (gx#identifier?
                                                           _hd2262523029_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2262523029_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2262623031_)
                          (let ((_e2262723034_ (gx#stx-e _tl2262623031_)))
                            (let ((_tl2262923039_ (##cdr _e2262723034_))
                                  (_hd2262823037_ (##car _e2262723034_)))
                              (if (gx#stx-pair? _hd2262823037_)
                                  (let ((_e2263023042_
                                         (gx#stx-e _hd2262823037_)))
                                    (let ((_tl2263223047_
                                           (##cdr _e2263023042_))
                                          (_hd2263123045_
                                           (##car _e2263023042_)))
                                      (if (gx#identifier? _hd2263123045_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2263123045_)
                                              (if (gx#stx-pair? _tl2263223047_)
                                                  (let ((_e2263323050_
                                                         (gx#stx-e
                                                          _tl2263223047_)))
                                                    (let ((_tl2263523055_
                                                           (##cdr _e2263323050_))
                                                          (_hd2263423053_
                                                           (##car _e2263323050_)))
                                                      (if (gx#stx-null?
                                                           _tl2263523055_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2262923039_)
                                                              (let ((___splice2890328904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2262923039_ '0)))
                        (let ((_tl2263823060_
                               (##vector-ref ___splice2890328904_ '1))
                              (_target2263623058_
                               (##vector-ref ___splice2890328904_ '0)))
                          (if (gx#stx-null? _tl2263823060_)
                              (letrec ((_loop2263923063_
                                        (lambda (_hd2263723066_
                                                 _xarg2264323068_)
                                          (if (gx#stx-pair? _hd2263723066_)
                                              (let ((_e2264023071_
                                                     (gx#stx-e
                                                      _hd2263723066_)))
                                                (let ((_lp-tl2264223076_
                                                       (##cdr _e2264023071_))
                                                      (_lp-hd2264123074_
                                                       (##car _e2264023071_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2264123074_)
                                                      (let ((_e2264523079_
                                                             (gx#stx-e
                                                              _lp-hd2264123074_)))
                                                        (let ((_tl2264723084_
                                                               (##cdr _e2264523079_))
                                                              (_hd2264623082_
                                                               (##car _e2264523079_)))
                                                          (if (gx#identifier?
                                                               _hd2264623082_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2264623082_)
                          (if (gx#stx-pair? _tl2264723084_)
                              (let ((_e2264823087_ (gx#stx-e _tl2264723084_)))
                                (let ((_tl2265023092_ (##cdr _e2264823087_))
                                      (_hd2264923090_ (##car _e2264823087_)))
                                  (if (gx#stx-null? _tl2265023092_)
                                      (_loop2263923063_
                                       _lp-tl2264223076_
                                       (cons _hd2264923090_ _xarg2264323068_))
                                      (___match2893628937_
                                       _e2260922986_
                                       _hd2261022989_
                                       _tl2261122991_
                                       ___splice2890128902_
                                       _target2261222994_
                                       _tl2261422996_))))
                              (___match2893628937_
                               _e2260922986_
                               _hd2261022989_
                               _tl2261122991_
                               ___splice2890128902_
                               _target2261222994_
                               _tl2261422996_))
                          (___match2893628937_
                           _e2260922986_
                           _hd2261022989_
                           _tl2261122991_
                           ___splice2890128902_
                           _target2261222994_
                           _tl2261422996_))
                      (___match2893628937_
                       _e2260922986_
                       _hd2261022989_
                       _tl2261122991_
                       ___splice2890128902_
                       _target2261222994_
                       _tl2261422996_))))
              (___match2893628937_
               _e2260922986_
               _hd2261022989_
               _tl2261122991_
               ___splice2890128902_
               _target2261222994_
               _tl2261422996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2264423095_
                                                     (reverse _xarg2264323068_)))
                                                (if (gx#stx-null?
                                                     _tl2262323023_)
                                                    (___kont2889928900_
                                                     _xarg2264423095_
                                                     _hd2263423053_
                                                     _arg2262023015_)
                                                    (___match2893628937_
                                                     _e2260922986_
                                                     _hd2261022989_
                                                     _tl2261122991_
                                                     ___splice2890128902_
                                                     _target2261222994_
                                                     _tl2261422996_)))))))
                                (_loop2263923063_ _target2263623058_ '()))
                              (___match2893628937_
                               _e2260922986_
                               _hd2261022989_
                               _tl2261122991_
                               ___splice2890128902_
                               _target2261222994_
                               _tl2261422996_))))
                      (___match2893628937_
                       _e2260922986_
                       _hd2261022989_
                       _tl2261122991_
                       ___splice2890128902_
                       _target2261222994_
                       _tl2261422996_))
                  (___match2893628937_
                   _e2260922986_
                   _hd2261022989_
                   _tl2261122991_
                   ___splice2890128902_
                   _target2261222994_
                   _tl2261422996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2893628937_
                                                   _e2260922986_
                                                   _hd2261022989_
                                                   _tl2261122991_
                                                   ___splice2890128902_
                                                   _target2261222994_
                                                   _tl2261422996_))
                                              (___match2893628937_
                                               _e2260922986_
                                               _hd2261022989_
                                               _tl2261122991_
                                               ___splice2890128902_
                                               _target2261222994_
                                               _tl2261422996_))
                                          (___match2893628937_
                                           _e2260922986_
                                           _hd2261022989_
                                           _tl2261122991_
                                           ___splice2890128902_
                                           _target2261222994_
                                           _tl2261422996_))))
                                  (___match2893628937_
                                   _e2260922986_
                                   _hd2261022989_
                                   _tl2261122991_
                                   ___splice2890128902_
                                   _target2261222994_
                                   _tl2261422996_))))
                          (___match2893628937_
                           _e2260922986_
                           _hd2261022989_
                           _tl2261122991_
                           ___splice2890128902_
                           _target2261222994_
                           _tl2261422996_))
                      (___match2893628937_
                       _e2260922986_
                       _hd2261022989_
                       _tl2261122991_
                       ___splice2890128902_
                       _target2261222994_
                       _tl2261422996_))
                  (___match2893628937_
                   _e2260922986_
                   _hd2261022989_
                   _tl2261122991_
                   ___splice2890128902_
                   _target2261222994_
                   _tl2261422996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2893628937_
                                                   _e2260922986_
                                                   _hd2261022989_
                                                   _tl2261122991_
                                                   ___splice2890128902_
                                                   _target2261222994_
                                                   _tl2261422996_))))
                                          (___match2893628937_
                                           _e2260922986_
                                           _hd2261022989_
                                           _tl2261122991_
                                           ___splice2890128902_
                                           _target2261222994_
                                           _tl2261422996_)))))))
                      (_loop2261522999_ _target2261222994_ '())))))
            (if (gx#stx-pair? ___stx2889728898_)
                (let ((_e2260922986_ (gx#stx-e ___stx2889728898_)))
                  (let ((_tl2261122991_ (##cdr _e2260922986_))
                        (_hd2261022989_ (##car _e2260922986_)))
                    (if (gx#stx-pair/null? _hd2261022989_)
                        (let ((___splice2890128902_
                               (gx#syntax-split-splice _hd2261022989_ '0)))
                          (let ((_tl2261422996_
                                 (##vector-ref ___splice2890128902_ '1))
                                (_target2261222994_
                                 (##vector-ref ___splice2890128902_ '0)))
                            (if (gx#stx-null? _tl2261422996_)
                                (___match2892428925_
                                 _e2260922986_
                                 _hd2261022989_
                                 _tl2261122991_
                                 ___splice2890128902_
                                 _target2261222994_
                                 _tl2261422996_)
                                (___match2893628937_
                                 _e2260922986_
                                 _hd2261022989_
                                 _tl2261122991_
                                 ___splice2890128902_
                                 _target2261222994_
                                 _tl2261422996_))))
                        (if (gx#stx-pair? _tl2261122991_)
                            (let ((_e2269722741_ (gx#stx-e _tl2261122991_)))
                              (let ((_tl2269922746_ (##cdr _e2269722741_))
                                    (_hd2269822744_ (##car _e2269722741_)))
                                (if (gx#stx-pair? _hd2269822744_)
                                    (let ((_e2270022749_
                                           (gx#stx-e _hd2269822744_)))
                                      (let ((_tl2270222754_
                                             (##cdr _e2270022749_))
                                            (_hd2270122752_
                                             (##car _e2270022749_)))
                                        (if (gx#identifier? _hd2270122752_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2270122752_)
                                                (if (gx#stx-pair?
                                                     _tl2270222754_)
                                                    (let ((_e2270322757_
                                                           (gx#stx-e
                                                            _tl2270222754_)))
                                                      (let ((_tl2270522762_
                                                             (##cdr _e2270322757_))
                                                            (_hd2270422760_
                                                             (##car _e2270322757_)))
                                                        (if (gx#stx-pair?
                                                             _hd2270422760_)
                                                            (let ((_e2270622765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2270422760_)))
                      (let ((_tl2270822770_ (##cdr _e2270622765_))
                            (_hd2270722768_ (##car _e2270622765_)))
                        (if (gx#identifier? _hd2270722768_)
                            (if (gx#stx-eq? '%#ref _hd2270722768_)
                                (if (gx#stx-pair? _tl2270822770_)
                                    (let ((_e2270922773_
                                           (gx#stx-e _tl2270822770_)))
                                      (let ((_tl2271122778_
                                             (##cdr _e2270922773_))
                                            (_hd2271022776_
                                             (##car _e2270922773_)))
                                        (if (gx#stx-null? _tl2271122778_)
                                            (if (gx#stx-pair? _tl2270522762_)
                                                (let ((_e2271222781_
                                                       (gx#stx-e
                                                        _tl2270522762_)))
                                                  (let ((_tl2271422786_
                                                         (##cdr _e2271222781_))
                                                        (_hd2271322784_
                                                         (##car _e2271222781_)))
                                                    (if (gx#stx-pair?
                                                         _hd2271322784_)
                                                        (let ((_e2271522789_
                                                               (gx#stx-e
                                                                _hd2271322784_)))
                                                          (let ((_tl2271722794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2271522789_))
                        (_hd2271622792_ (##car _e2271522789_)))
                    (if (gx#identifier? _hd2271622792_)
                        (if (gx#stx-eq? '%#ref _hd2271622792_)
                            (if (gx#stx-pair? _tl2271722794_)
                                (let ((_e2271822797_
                                       (gx#stx-e _tl2271722794_)))
                                  (let ((_tl2272022802_ (##cdr _e2271822797_))
                                        (_hd2271922800_ (##car _e2271822797_)))
                                    (if (gx#stx-null? _tl2272022802_)
                                        (if (gx#stx-pair? _tl2271422786_)
                                            (let ((_e2272122805_
                                                   (gx#stx-e _tl2271422786_)))
                                              (let ((_tl2272322810_
                                                     (##cdr _e2272122805_))
                                                    (_hd2272222808_
                                                     (##car _e2272122805_)))
                                                (if (gx#stx-null?
                                                     _tl2272322810_)
                                                    (if (gx#stx-null?
                                                         _tl2269922746_)
                                                        (___kont2890928910_
                                                         _hd2271922800_
                                                         _hd2271022776_
                                                         _hd2261022989_)
                                                        (_g2260422728_))
                                                    (_g2260422728_))))
                                            (_g2260422728_))
                                        (_g2260422728_))))
                                (_g2260422728_))
                            (_g2260422728_))
                        (_g2260422728_))))
                (_g2260422728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2260422728_))
                                            (_g2260422728_))))
                                    (_g2260422728_))
                                (_g2260422728_))
                            (_g2260422728_))))
                    (_g2260422728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2260422728_))
                                                (_g2260422728_))
                                            (_g2260422728_))))
                                    (_g2260422728_))))
                            (_g2260422728_)))))
                (_g2260422728_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form22404_)
      (let* ((_g2240622420_
              (lambda (_g2240722417_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2240722417_)))
             (_g2240522597_
              (lambda (_g2240722423_)
                (if (gx#stx-pair? _g2240722423_)
                    (let ((_e2241022425_ (gx#stx-e _g2240722423_)))
                      (let ((_hd2241122428_ (##car _e2241022425_))
                            (_tl2241222430_ (##cdr _e2241022425_)))
                        (if (gx#stx-pair? _tl2241222430_)
                            (let ((_e2241322433_ (gx#stx-e _tl2241222430_)))
                              (let ((_hd2241422436_ (##car _e2241322433_))
                                    (_tl2241522438_ (##cdr _e2241322433_)))
                                (if (gx#stx-null? _tl2241522438_)
                                    ((lambda (_L22441_ _L22442_)
                                       (let* ((___stx2901929020_ _L22442_)
                                              (_g2245722485_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2901929020_))))
                                         (let ((___kont2902129022_
                                                (lambda (_L22576_)
                                                  (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2258622589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2258722591_)
                              (cons _g2258622589_ _g2258722591_))
                            '()
                            _L22576_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2902529026_
                                                (lambda (_L22527_ _L22528_)
                                                  (cons (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2253922542_ _g2254022544_)
                                    (cons _g2253922542_ _g2254022544_))
                                  '()
                                  _L22528_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2902929030_
                                                (lambda (_L22490_)
                                                  (cons '0 '()))))
                                           (let* ((___match2904429045_
                                                   (lambda (___splice2902729028_
                                                            _target2247122503_
                                                            _tl2247322505_)
                                                     (letrec ((_loop2247422508_
                                                               (lambda (_hd2247222511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2247822513_)
                         (if (gx#stx-pair? _hd2247222511_)
                             (let ((_e2247522516_ (gx#stx-e _hd2247222511_)))
                               (let ((_lp-tl2247722521_ (##cdr _e2247522516_))
                                     (_lp-hd2247622519_ (##car _e2247522516_)))
                                 (_loop2247422508_
                                  _lp-tl2247722521_
                                  (cons _lp-hd2247622519_ _arg2247822513_))))
                             (let ((_arg2247922524_ (reverse _arg2247822513_)))
                               (___kont2902529026_
                                _tl2247322505_
                                _arg2247922524_))))))
               (_loop2247422508_ _target2247122503_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2903829039_
                                                   (lambda (___splice2902329024_
                                                            _target2246022552_
                                                            _tl2246222554_)
                                                     (letrec ((_loop2246322557_
                                                               (lambda (_hd2246122560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2246722562_)
                         (if (gx#stx-pair? _hd2246122560_)
                             (let ((_e2246422565_ (gx#stx-e _hd2246122560_)))
                               (let ((_lp-tl2246622570_ (##cdr _e2246422565_))
                                     (_lp-hd2246522568_ (##car _e2246422565_)))
                                 (_loop2246322557_
                                  _lp-tl2246622570_
                                  (cons _lp-hd2246522568_ _arg2246722562_))))
                             (let ((_arg2246822573_ (reverse _arg2246722562_)))
                               (___kont2902129022_ _arg2246822573_))))))
               (_loop2246322557_ _target2246022552_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2901929020_)
                                                 (let ((___splice2902329024_
                                                        (gx#syntax-split-splice
                                                         ___stx2901929020_
                                                         '0)))
                                                   (let ((_tl2246222554_
                                                          (##vector-ref
                                                           ___splice2902329024_
                                                           '1))
                                                         (_target2246022552_
                                                          (##vector-ref
                                                           ___splice2902329024_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2246222554_)
                                                         (___match2903829039_
                                                          ___splice2902329024_
                                                          _target2246022552_
                                                          _tl2246222554_)
                                                         (___match2904429045_
                                                          ___splice2902329024_
                                                          _target2246022552_
                                                          _tl2246222554_))))
                                                 (___kont2902929030_
                                                  ___stx2901929020_))))))
                                     _hd2241422436_
                                     _hd2241122428_)
                                    (_g2240622420_ _g2240722423_))))
                            (_g2240622420_ _g2240722423_))))
                    (_g2240622420_ _g2240722423_)))))
        (_g2240522597_ _form22404_))))
  (define gxc#lambda-expr?
    (lambda (_expr22357_)
      (let* ((___stx2904729048_ _expr22357_)
             (_g2236022370_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2904729048_))))
        (let ((___kont2904929050_ (lambda (_L22390_) '#t))
              (___kont2905129052_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2904729048_)
              (let ((_e2236322382_ (gx#stx-e ___stx2904729048_)))
                (let ((_tl2236522387_ (##cdr _e2236322382_))
                      (_hd2236422385_ (##car _e2236322382_)))
                  (if (gx#identifier? _hd2236422385_)
                      (if (gx#stx-eq? '%#lambda _hd2236422385_)
                          (___kont2904929050_ _tl2236522387_)
                          (___kont2905129052_))
                      (___kont2905129052_))))
              (___kont2905129052_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr22310_)
      (let* ((___stx2906529066_ _expr22310_)
             (_g2231322323_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2906529066_))))
        (let ((___kont2906729068_ (lambda (_L22343_) '#t))
              (___kont2906929070_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2906529066_)
              (let ((_e2231622335_ (gx#stx-e ___stx2906529066_)))
                (let ((_tl2231822340_ (##cdr _e2231622335_))
                      (_hd2231722338_ (##car _e2231622335_)))
                  (if (gx#identifier? _hd2231722338_)
                      (if (gx#stx-eq? '%#case-lambda _hd2231722338_)
                          (___kont2906729068_ _tl2231822340_)
                          (___kont2906929070_))
                      (___kont2906929070_))))
              (___kont2906929070_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr22179_)
      (let* ((___stx2908329084_ _expr22179_)
             (_g2218222212_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2908329084_))))
        (let ((___kont2908529086_
               (lambda (_L22280_ _L22281_ _L22282_)
                 (if (gx#identifier? _L22282_)
                     (if (gxc#lambda-expr? _L22281_)
                         (gxc#case-lambda-expr? _L22280_)
                         '#f)
                     '#f)))
              (___kont2908729088_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2908329084_)
              (let ((_e2218722224_ (gx#stx-e ___stx2908329084_)))
                (let ((_tl2218922229_ (##cdr _e2218722224_))
                      (_hd2218822227_ (##car _e2218722224_)))
                  (if (gx#identifier? _hd2218822227_)
                      (if (gx#stx-eq? '%#let-values _hd2218822227_)
                          (if (gx#stx-pair? _tl2218922229_)
                              (let ((_e2219022232_ (gx#stx-e _tl2218922229_)))
                                (let ((_tl2219222237_ (##cdr _e2219022232_))
                                      (_hd2219122235_ (##car _e2219022232_)))
                                  (if (gx#stx-pair? _hd2219122235_)
                                      (let ((_e2219322240_
                                             (gx#stx-e _hd2219122235_)))
                                        (let ((_tl2219522245_
                                               (##cdr _e2219322240_))
                                              (_hd2219422243_
                                               (##car _e2219322240_)))
                                          (if (gx#stx-pair? _hd2219422243_)
                                              (let ((_e2219622248_
                                                     (gx#stx-e
                                                      _hd2219422243_)))
                                                (let ((_tl2219822253_
                                                       (##cdr _e2219622248_))
                                                      (_hd2219722251_
                                                       (##car _e2219622248_)))
                                                  (if (gx#stx-pair?
                                                       _hd2219722251_)
                                                      (let ((_e2219922256_
                                                             (gx#stx-e
                                                              _hd2219722251_)))
                                                        (let ((_tl2220122261_
                                                               (##cdr _e2219922256_))
                                                              (_hd2220022259_
                                                               (##car _e2219922256_)))
                                                          (if (gx#stx-null?
                                                               _tl2220122261_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2219822253_)
                          (let ((_e2220222264_ (gx#stx-e _tl2219822253_)))
                            (let ((_tl2220422269_ (##cdr _e2220222264_))
                                  (_hd2220322267_ (##car _e2220222264_)))
                              (if (gx#stx-null? _tl2220422269_)
                                  (if (gx#stx-null? _tl2219522245_)
                                      (if (gx#stx-pair? _tl2219222237_)
                                          (let ((_e2220522272_
                                                 (gx#stx-e _tl2219222237_)))
                                            (let ((_tl2220722277_
                                                   (##cdr _e2220522272_))
                                                  (_hd2220622275_
                                                   (##car _e2220522272_)))
                                              (if (gx#stx-null? _tl2220722277_)
                                                  (___kont2908529086_
                                                   _hd2220622275_
                                                   _hd2220322267_
                                                   _hd2220022259_)
                                                  (___kont2908729088_))))
                                          (___kont2908729088_))
                                      (___kont2908729088_))
                                  (___kont2908729088_))))
                          (___kont2908729088_))
                      (___kont2908729088_))))
              (___kont2908729088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2908729088_))))
                                      (___kont2908729088_))))
                              (___kont2908729088_))
                          (___kont2908729088_))
                      (___kont2908729088_))))
              (___kont2908729088_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr21504_)
      (let* ((___stx2914529146_ _expr21504_)
             (_g2150721665_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2914529146_))))
        (let ((___kont2914729148_
               (lambda (_L22053_
                        _L22054_
                        _L22055_
                        _L22056_
                        _L22057_
                        _L22058_
                        _L22059_
                        _L22060_
                        _L22061_
                        _L22062_
                        _L22063_)
                 (if (gxc#runtime-identifier=? _L22060_ 'apply)
                     (if (gxc#runtime-identifier=? _L22056_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L22055_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L22063_ _L22054_)
                                 (if (gx#free-identifier=? _L22062_ _L22059_)
                                     (if (gx#free-identifier=?
                                          _L22057_
                                          _L22053_)
                                         (gx#free-identifier=?
                                          _L22061_
                                          _L22058_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2914929150_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2914529146_)
              (let ((_e2152021677_ (gx#stx-e ___stx2914529146_)))
                (let ((_tl2152221682_ (##cdr _e2152021677_))
                      (_hd2152121680_ (##car _e2152021677_)))
                  (if (gx#identifier? _hd2152121680_)
                      (if (gx#stx-eq? '%#let-values _hd2152121680_)
                          (if (gx#stx-pair? _tl2152221682_)
                              (let ((_e2152321685_ (gx#stx-e _tl2152221682_)))
                                (let ((_tl2152521690_ (##cdr _e2152321685_))
                                      (_hd2152421688_ (##car _e2152321685_)))
                                  (if (gx#stx-pair? _hd2152421688_)
                                      (let ((_e2152621693_
                                             (gx#stx-e _hd2152421688_)))
                                        (let ((_tl2152821698_
                                               (##cdr _e2152621693_))
                                              (_hd2152721696_
                                               (##car _e2152621693_)))
                                          (if (gx#stx-pair? _hd2152721696_)
                                              (let ((_e2152921701_
                                                     (gx#stx-e
                                                      _hd2152721696_)))
                                                (let ((_tl2153121706_
                                                       (##cdr _e2152921701_))
                                                      (_hd2153021704_
                                                       (##car _e2152921701_)))
                                                  (if (gx#stx-pair?
                                                       _hd2153021704_)
                                                      (let ((_e2153221709_
                                                             (gx#stx-e
                                                              _hd2153021704_)))
                                                        (let ((_tl2153421714_
                                                               (##cdr _e2153221709_))
                                                              (_hd2153321712_
                                                               (##car _e2153221709_)))
                                                          (if (gx#stx-null?
                                                               _tl2153421714_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2153121706_)
                          (let ((_e2153521717_ (gx#stx-e _tl2153121706_)))
                            (let ((_tl2153721722_ (##cdr _e2153521717_))
                                  (_hd2153621720_ (##car _e2153521717_)))
                              (if (gx#stx-pair? _hd2153621720_)
                                  (let ((_e2153821725_
                                         (gx#stx-e _hd2153621720_)))
                                    (let ((_tl2154021730_
                                           (##cdr _e2153821725_))
                                          (_hd2153921728_
                                           (##car _e2153821725_)))
                                      (if (gx#identifier? _hd2153921728_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2153921728_)
                                              (if (gx#stx-pair? _tl2154021730_)
                                                  (let ((_e2154121733_
                                                         (gx#stx-e
                                                          _tl2154021730_)))
                                                    (let ((_tl2154321738_
                                                           (##cdr _e2154121733_))
                                                          (_hd2154221736_
                                                           (##car _e2154121733_)))
                                                      (if (gx#stx-pair?
                                                           _hd2154221736_)
                                                          (let ((_e2154421741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2154221736_)))
                    (let ((_tl2154621746_ (##cdr _e2154421741_))
                          (_hd2154521744_ (##car _e2154421741_)))
                      (if (gx#stx-pair? _hd2154521744_)
                          (let ((_e2154721749_ (gx#stx-e _hd2154521744_)))
                            (let ((_tl2154921754_ (##cdr _e2154721749_))
                                  (_hd2154821752_ (##car _e2154721749_)))
                              (if (gx#stx-pair? _hd2154821752_)
                                  (let ((_e2155021757_
                                         (gx#stx-e _hd2154821752_)))
                                    (let ((_tl2155221762_
                                           (##cdr _e2155021757_))
                                          (_hd2155121760_
                                           (##car _e2155021757_)))
                                      (if (gx#stx-null? _tl2155221762_)
                                          (if (gx#stx-pair? _tl2154921754_)
                                              (let ((_e2155321765_
                                                     (gx#stx-e
                                                      _tl2154921754_)))
                                                (let ((_tl2155521770_
                                                       (##cdr _e2155321765_))
                                                      (_hd2155421768_
                                                       (##car _e2155321765_)))
                                                  (if (gx#stx-null?
                                                       _tl2155521770_)
                                                      (if (gx#stx-null?
                                                           _tl2154621746_)
                                                          (if (gx#stx-pair?
                                                               _tl2154321738_)
                                                              (let ((_e2155621773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2154321738_)))
                        (let ((_tl2155821778_ (##cdr _e2155621773_))
                              (_hd2155721776_ (##car _e2155621773_)))
                          (if (gx#stx-pair? _hd2155721776_)
                              (let ((_e2155921781_ (gx#stx-e _hd2155721776_)))
                                (let ((_tl2156121786_ (##cdr _e2155921781_))
                                      (_hd2156021784_ (##car _e2155921781_)))
                                  (if (gx#identifier? _hd2156021784_)
                                      (if (gx#stx-eq? '%#lambda _hd2156021784_)
                                          (if (gx#stx-pair? _tl2156121786_)
                                              (let ((_e2156221789_
                                                     (gx#stx-e
                                                      _tl2156121786_)))
                                                (let ((_tl2156421794_
                                                       (##cdr _e2156221789_))
                                                      (_hd2156321792_
                                                       (##car _e2156221789_)))
                                                  (if (gx#stx-pair?
                                                       _hd2156321792_)
                                                      (let ((_e2156521797_
                                                             (gx#stx-e
                                                              _hd2156321792_)))
                                                        (let ((_tl2156721802_
                                                               (##cdr _e2156521797_))
                                                              (_hd2156621800_
                                                               (##car _e2156521797_)))
                                                          (if (gx#stx-pair?
                                                               _tl2156421794_)
                                                              (let ((_e2156821805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2156421794_)))
                        (let ((_tl2157021810_ (##cdr _e2156821805_))
                              (_hd2156921808_ (##car _e2156821805_)))
                          (if (gx#stx-pair? _hd2156921808_)
                              (let ((_e2157121813_ (gx#stx-e _hd2156921808_)))
                                (let ((_tl2157321818_ (##cdr _e2157121813_))
                                      (_hd2157221816_ (##car _e2157121813_)))
                                  (if (gx#identifier? _hd2157221816_)
                                      (if (gx#stx-eq? '%#call _hd2157221816_)
                                          (if (gx#stx-pair? _tl2157321818_)
                                              (let ((_e2157421821_
                                                     (gx#stx-e
                                                      _tl2157321818_)))
                                                (let ((_tl2157621826_
                                                       (##cdr _e2157421821_))
                                                      (_hd2157521824_
                                                       (##car _e2157421821_)))
                                                  (if (gx#stx-pair?
                                                       _hd2157521824_)
                                                      (let ((_e2157721829_
                                                             (gx#stx-e
                                                              _hd2157521824_)))
                                                        (let ((_tl2157921834_
                                                               (##cdr _e2157721829_))
                                                              (_hd2157821832_
                                                               (##car _e2157721829_)))
                                                          (if (gx#identifier?
                                                               _hd2157821832_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2157821832_)
                          (if (gx#stx-pair? _tl2157921834_)
                              (let ((_e2158021837_ (gx#stx-e _tl2157921834_)))
                                (let ((_tl2158221842_ (##cdr _e2158021837_))
                                      (_hd2158121840_ (##car _e2158021837_)))
                                  (if (gx#stx-null? _tl2158221842_)
                                      (if (gx#stx-pair? _tl2157621826_)
                                          (let ((_e2158321845_
                                                 (gx#stx-e _tl2157621826_)))
                                            (let ((_tl2158521850_
                                                   (##cdr _e2158321845_))
                                                  (_hd2158421848_
                                                   (##car _e2158321845_)))
                                              (if (gx#stx-pair? _hd2158421848_)
                                                  (let ((_e2158621853_
                                                         (gx#stx-e
                                                          _hd2158421848_)))
                                                    (let ((_tl2158821858_
                                                           (##cdr _e2158621853_))
                                                          (_hd2158721856_
                                                           (##car _e2158621853_)))
                                                      (if (gx#identifier?
                                                           _hd2158721856_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2158721856_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2158821858_)
                          (let ((_e2158921861_ (gx#stx-e _tl2158821858_)))
                            (let ((_tl2159121866_ (##cdr _e2158921861_))
                                  (_hd2159021864_ (##car _e2158921861_)))
                              (if (gx#stx-null? _tl2159121866_)
                                  (if (gx#stx-pair? _tl2158521850_)
                                      (let ((_e2159221869_
                                             (gx#stx-e _tl2158521850_)))
                                        (let ((_tl2159421874_
                                               (##cdr _e2159221869_))
                                              (_hd2159321872_
                                               (##car _e2159221869_)))
                                          (if (gx#stx-pair? _hd2159321872_)
                                              (let ((_e2159521877_
                                                     (gx#stx-e
                                                      _hd2159321872_)))
                                                (let ((_tl2159721882_
                                                       (##cdr _e2159521877_))
                                                      (_hd2159621880_
                                                       (##car _e2159521877_)))
                                                  (if (gx#identifier?
                                                       _hd2159621880_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2159621880_)
                                                          (if (gx#stx-pair?
                                                               _tl2159721882_)
                                                              (let ((_e2159821885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2159721882_)))
                        (let ((_tl2160021890_ (##cdr _e2159821885_))
                              (_hd2159921888_ (##car _e2159821885_)))
                          (if (gx#stx-null? _tl2160021890_)
                              (if (gx#stx-null? _tl2157021810_)
                                  (if (gx#stx-null? _tl2155821778_)
                                      (if (gx#stx-null? _tl2153721722_)
                                          (if (gx#stx-null? _tl2152821698_)
                                              (if (gx#stx-pair? _tl2152521690_)
                                                  (let ((_e2160121893_
                                                         (gx#stx-e
                                                          _tl2152521690_)))
                                                    (let ((_tl2160321898_
                                                           (##cdr _e2160121893_))
                                                          (_hd2160221896_
                                                           (##car _e2160121893_)))
                                                      (if (gx#stx-pair?
                                                           _hd2160221896_)
                                                          (let ((_e2160421901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2160221896_)))
                    (let ((_tl2160621906_ (##cdr _e2160421901_))
                          (_hd2160521904_ (##car _e2160421901_)))
                      (if (gx#identifier? _hd2160521904_)
                          (if (gx#stx-eq? '%#lambda _hd2160521904_)
                              (if (gx#stx-pair? _tl2160621906_)
                                  (let ((_e2160721909_
                                         (gx#stx-e _tl2160621906_)))
                                    (let ((_tl2160921914_
                                           (##cdr _e2160721909_))
                                          (_hd2160821912_
                                           (##car _e2160721909_)))
                                      (if (gx#stx-pair? _tl2160921914_)
                                          (let ((_e2161021917_
                                                 (gx#stx-e _tl2160921914_)))
                                            (let ((_tl2161221922_
                                                   (##cdr _e2161021917_))
                                                  (_hd2161121920_
                                                   (##car _e2161021917_)))
                                              (if (gx#stx-pair? _hd2161121920_)
                                                  (let ((_e2161321925_
                                                         (gx#stx-e
                                                          _hd2161121920_)))
                                                    (let ((_tl2161521930_
                                                           (##cdr _e2161321925_))
                                                          (_hd2161421928_
                                                           (##car _e2161321925_)))
                                                      (if (gx#identifier?
                                                           _hd2161421928_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2161421928_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2161521930_)
                          (let ((_e2161621933_ (gx#stx-e _tl2161521930_)))
                            (let ((_tl2161821938_ (##cdr _e2161621933_))
                                  (_hd2161721936_ (##car _e2161621933_)))
                              (if (gx#stx-pair? _hd2161721936_)
                                  (let ((_e2161921941_
                                         (gx#stx-e _hd2161721936_)))
                                    (let ((_tl2162121946_
                                           (##cdr _e2161921941_))
                                          (_hd2162021944_
                                           (##car _e2161921941_)))
                                      (if (gx#identifier? _hd2162021944_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2162021944_)
                                              (if (gx#stx-pair? _tl2162121946_)
                                                  (let ((_e2162221949_
                                                         (gx#stx-e
                                                          _tl2162121946_)))
                                                    (let ((_tl2162421954_
                                                           (##cdr _e2162221949_))
                                                          (_hd2162321952_
                                                           (##car _e2162221949_)))
                                                      (if (gx#stx-null?
                                                           _tl2162421954_)
                                                          (if (gx#stx-pair?
                                                               _tl2161821938_)
                                                              (let ((_e2162521957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2161821938_)))
                        (let ((_tl2162721962_ (##cdr _e2162521957_))
                              (_hd2162621960_ (##car _e2162521957_)))
                          (if (gx#stx-pair? _hd2162621960_)
                              (let ((_e2162821965_ (gx#stx-e _hd2162621960_)))
                                (let ((_tl2163021970_ (##cdr _e2162821965_))
                                      (_hd2162921968_ (##car _e2162821965_)))
                                  (if (gx#identifier? _hd2162921968_)
                                      (if (gx#stx-eq? '%#ref _hd2162921968_)
                                          (if (gx#stx-pair? _tl2163021970_)
                                              (let ((_e2163121973_
                                                     (gx#stx-e
                                                      _tl2163021970_)))
                                                (let ((_tl2163321978_
                                                       (##cdr _e2163121973_))
                                                      (_hd2163221976_
                                                       (##car _e2163121973_)))
                                                  (if (gx#stx-null?
                                                       _tl2163321978_)
                                                      (if (gx#stx-pair?
                                                           _tl2162721962_)
                                                          (let ((_e2163421981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2162721962_)))
                    (let ((_tl2163621986_ (##cdr _e2163421981_))
                          (_hd2163521984_ (##car _e2163421981_)))
                      (if (gx#stx-pair? _hd2163521984_)
                          (let ((_e2163721989_ (gx#stx-e _hd2163521984_)))
                            (let ((_tl2163921994_ (##cdr _e2163721989_))
                                  (_hd2163821992_ (##car _e2163721989_)))
                              (if (gx#identifier? _hd2163821992_)
                                  (if (gx#stx-eq? '%#quote _hd2163821992_)
                                      (if (gx#stx-pair? _tl2163921994_)
                                          (let ((_e2164021997_
                                                 (gx#stx-e _tl2163921994_)))
                                            (let ((_tl2164222002_
                                                   (##cdr _e2164021997_))
                                                  (_hd2164122000_
                                                   (##car _e2164021997_)))
                                              (if (gx#stx-null? _tl2164222002_)
                                                  (if (gx#stx-pair?
                                                       _tl2163621986_)
                                                      (let ((_e2164322005_
                                                             (gx#stx-e
                                                              _tl2163621986_)))
                                                        (let ((_tl2164522010_
                                                               (##cdr _e2164322005_))
                                                              (_hd2164422008_
                                                               (##car _e2164322005_)))
                                                          (if (gx#stx-pair?
                                                               _hd2164422008_)
                                                              (let ((_e2164622013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2164422008_)))
                        (let ((_tl2164822018_ (##cdr _e2164622013_))
                              (_hd2164722016_ (##car _e2164622013_)))
                          (if (gx#identifier? _hd2164722016_)
                              (if (gx#stx-eq? '%#ref _hd2164722016_)
                                  (if (gx#stx-pair? _tl2164822018_)
                                      (let ((_e2164922021_
                                             (gx#stx-e _tl2164822018_)))
                                        (let ((_tl2165122026_
                                               (##cdr _e2164922021_))
                                              (_hd2165022024_
                                               (##car _e2164922021_)))
                                          (if (gx#stx-null? _tl2165122026_)
                                              (if (gx#stx-pair? _tl2164522010_)
                                                  (let ((_e2165222029_
                                                         (gx#stx-e
                                                          _tl2164522010_)))
                                                    (let ((_tl2165422034_
                                                           (##cdr _e2165222029_))
                                                          (_hd2165322032_
                                                           (##car _e2165222029_)))
                                                      (if (gx#stx-pair?
                                                           _hd2165322032_)
                                                          (let ((_e2165522037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2165322032_)))
                    (let ((_tl2165722042_ (##cdr _e2165522037_))
                          (_hd2165622040_ (##car _e2165522037_)))
                      (if (gx#identifier? _hd2165622040_)
                          (if (gx#stx-eq? '%#ref _hd2165622040_)
                              (if (gx#stx-pair? _tl2165722042_)
                                  (let ((_e2165822045_
                                         (gx#stx-e _tl2165722042_)))
                                    (let ((_tl2166022050_
                                           (##cdr _e2165822045_))
                                          (_hd2165922048_
                                           (##car _e2165822045_)))
                                      (if (gx#stx-null? _tl2166022050_)
                                          (if (gx#stx-null? _tl2165422034_)
                                              (if (gx#stx-null? _tl2161221922_)
                                                  (if (gx#stx-null?
                                                       _tl2160321898_)
                                                      (___kont2914729148_
                                                       _hd2165922048_
                                                       _hd2165022024_
                                                       _hd2163221976_
                                                       _hd2162321952_
                                                       _hd2160821912_
                                                       _hd2159921888_
                                                       _hd2159021864_
                                                       _hd2158121840_
                                                       _hd2156621800_
                                                       _hd2155121760_
                                                       _hd2153321712_)
                                                      (___kont2914929150_))
                                                  (___kont2914929150_))
                                              (___kont2914929150_))
                                          (___kont2914929150_))))
                                  (___kont2914929150_))
                              (___kont2914929150_))
                          (___kont2914929150_))))
                  (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914929150_))
                                              (___kont2914929150_))))
                                      (___kont2914929150_))
                                  (___kont2914929150_))
                              (___kont2914929150_))))
                      (___kont2914929150_))))
              (___kont2914929150_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914929150_))))
                                          (___kont2914929150_))
                                      (___kont2914929150_))
                                  (___kont2914929150_))))
                          (___kont2914929150_))))
                  (___kont2914929150_))
              (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914929150_))
                                          (___kont2914929150_))
                                      (___kont2914929150_))))
                              (___kont2914929150_))))
                      (___kont2914929150_))
                  (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914929150_))
                                              (___kont2914929150_))
                                          (___kont2914929150_))))
                                  (___kont2914929150_))))
                          (___kont2914929150_))
                      (___kont2914929150_))
                  (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914929150_))))
                                          (___kont2914929150_))))
                                  (___kont2914929150_))
                              (___kont2914929150_))
                          (___kont2914929150_))))
                  (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914929150_))
                                              (___kont2914929150_))
                                          (___kont2914929150_))
                                      (___kont2914929150_))
                                  (___kont2914929150_))
                              (___kont2914929150_))))
                      (___kont2914929150_))
                  (___kont2914929150_))
              (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914929150_))))
                                      (___kont2914929150_))
                                  (___kont2914929150_))))
                          (___kont2914929150_))
                      (___kont2914929150_))
                  (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914929150_))))
                                          (___kont2914929150_))
                                      (___kont2914929150_))))
                              (___kont2914929150_))
                          (___kont2914929150_))
                      (___kont2914929150_))))
              (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914929150_))
                                          (___kont2914929150_))
                                      (___kont2914929150_))))
                              (___kont2914929150_))))
                      (___kont2914929150_))))
              (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914929150_))
                                          (___kont2914929150_))
                                      (___kont2914929150_))))
                              (___kont2914929150_))))
                      (___kont2914929150_))
                  (___kont2914929150_))
              (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914929150_))
                                          (___kont2914929150_))))
                                  (___kont2914929150_))))
                          (___kont2914929150_))))
                  (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914929150_))
                                              (___kont2914929150_))
                                          (___kont2914929150_))))
                                  (___kont2914929150_))))
                          (___kont2914929150_))
                      (___kont2914929150_))))
              (___kont2914929150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914929150_))))
                                      (___kont2914929150_))))
                              (___kont2914929150_))
                          (___kont2914929150_))
                      (___kont2914929150_))))
              (___kont2914929150_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx21246_ _id21247_ _clauses21248_ _gensym?21249_)
        (let _lp21251_ ((_rest21253_ _clauses21248_)
                        (_ids21254_ '())
                        (_impls21255_ '())
                        (_clauses21256_ '()))
          (let* ((_rest2125721265_ _rest21253_)
                 (_else2125921273_
                  (lambda ()
                    (values (reverse _ids21254_)
                            (reverse _impls21255_)
                            (reverse _clauses21256_))))
                 (_K2126121478_
                  (lambda (_rest21276_ _clause21277_)
                    (if (gxc#dispatch-lambda-form? _clause21277_)
                        (_lp21251_
                         _rest21276_
                         _ids21254_
                         _impls21255_
                         (cons _clause21277_ _clauses21256_))
                        (let* ((_g2127921290_
                                (lambda (_g2128021287_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2128021287_)))
                               (_g2127821475_
                                (lambda (_g2128021293_)
                                  (if (gx#stx-pair? _g2128021293_)
                                      (let ((_e2128321295_
                                             (gx#stx-e _g2128021293_)))
                                        (let ((_hd2128421298_
                                               (##car _e2128321295_))
                                              (_tl2128521300_
                                               (##cdr _e2128321295_)))
                                          ((lambda (_L21303_ _L21304_)
                                             (let* ((_id21321_
                                                     (make-symbol
                                                      (gx#stx-e _id21247_)
                                                      '"__"
                                                      (length _clauses21256_)
                                                      (if _gensym?21249_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id21323_
                                                     (gx#core-quote-syntax__1
                                                      _id21321_
                                                      (gx#stx-source
                                                       _stx21246_)))
                                                    (_impl21325_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L21304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L21303_))
              _stx21246_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause21472_
                                                     (let* ((___stx2952929530_
                                                             _L21304_)
                                                            (_g2132921357_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx2952929530_))))
                                                       (let ((___kont2953129532_
                                                              (lambda (_L21451_)
                                                                (cons _L21304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id21323_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2146121464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2146221466_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g2146121464_ '()))
                           _g2146221466_))
                   '()
                   _L21451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx21246_)
                                    '()))))
                     (___kont2953529536_
                      (lambda (_L21402_ _L21403_)
                        (cons _L21304_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id21323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L21402_ '()))
                             '())
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2141421417_ _g2141521419_)
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _g2141421417_ '()))
                                         _g2141521419_))
                                 '()
                                 _L21403_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx21246_)
                                    '()))))
                     (___kont2953929540_
                      (lambda (_L21362_)
                        (cons _L21304_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id21323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L21362_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx21246_)
                                    '())))))
                 (let* ((___match2955429555_
                         (lambda (___splice2953729538_
                                  _target2134321378_
                                  _tl2134521380_)
                           (letrec ((_loop2134621383_
                                     (lambda (_hd2134421386_ _arg2135021388_)
                                       (if (gx#stx-pair? _hd2134421386_)
                                           (let ((_e2134721391_
                                                  (gx#stx-e _hd2134421386_)))
                                             (let ((_lp-tl2134921396_
                                                    (##cdr _e2134721391_))
                                                   (_lp-hd2134821394_
                                                    (##car _e2134721391_)))
                                               (_loop2134621383_
                                                _lp-tl2134921396_
                                                (cons _lp-hd2134821394_
                                                      _arg2135021388_))))
                                           (let ((_arg2135121399_
                                                  (reverse _arg2135021388_)))
                                             (___kont2953529536_
                                              _tl2134521380_
                                              _arg2135121399_))))))
                             (_loop2134621383_ _target2134321378_ '()))))
                        (___match2954829549_
                         (lambda (___splice2953329534_
                                  _target2133221427_
                                  _tl2133421429_)
                           (letrec ((_loop2133521432_
                                     (lambda (_hd2133321435_ _arg2133921437_)
                                       (if (gx#stx-pair? _hd2133321435_)
                                           (let ((_e2133621440_
                                                  (gx#stx-e _hd2133321435_)))
                                             (let ((_lp-tl2133821445_
                                                    (##cdr _e2133621440_))
                                                   (_lp-hd2133721443_
                                                    (##car _e2133621440_)))
                                               (_loop2133521432_
                                                _lp-tl2133821445_
                                                (cons _lp-hd2133721443_
                                                      _arg2133921437_))))
                                           (let ((_arg2134021448_
                                                  (reverse _arg2133921437_)))
                                             (___kont2953129532_
                                              _arg2134021448_))))))
                             (_loop2133521432_ _target2133221427_ '())))))
                   (if (gx#stx-pair/null? ___stx2952929530_)
                       (let ((___splice2953329534_
                              (gx#syntax-split-splice ___stx2952929530_ '0)))
                         (let ((_tl2133421429_
                                (##vector-ref ___splice2953329534_ '1))
                               (_target2133221427_
                                (##vector-ref ___splice2953329534_ '0)))
                           (if (gx#stx-null? _tl2133421429_)
                               (___match2954829549_
                                ___splice2953329534_
                                _target2133221427_
                                _tl2133421429_)
                               (___match2955429555_
                                ___splice2953329534_
                                _target2133221427_
                                _tl2133421429_))))
                       (___kont2953929540_ ___stx2952929530_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp21251_
                                                _rest21276_
                                                (cons _id21323_ _ids21254_)
                                                (cons _impl21325_ _impls21255_)
                                                (cons _clause21472_
                                                      _clauses21256_))))
                                           _tl2128521300_
                                           _hd2128421298_)))
                                      (_g2127921290_ _g2128021293_)))))
                          (_g2127821475_ _clause21277_))))))
            (if (##pair? _rest2125721265_)
                (let ((_hd2126221481_ (##car _rest2125721265_))
                      (_tl2126321483_ (##cdr _rest2125721265_)))
                  (let* ((_clause21486_ _hd2126221481_)
                         (_rest21488_ _tl2126321483_))
                    (_K2126121478_ _rest21488_ _clause21486_)))
                (_else2125921273_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx21493_ _id21494_ _clauses21495_)
          (let ((_gensym?21497_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx21493_
             _id21494_
             _clauses21495_
             _gensym?21497_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g30071_
          (let ((_g30070_ (length _g30071_)))
            (cond ((##fx= _g30070_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g30071_))
                  ((##fx= _g30070_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g30071_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g30071_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx20523_)
      (letrec ((_case-lambda-clause-def20525_
                (lambda (_id21242_ _impl21243_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id21242_ '())
                               (cons (gxc#compile-e _impl21243_) '())))
                   _stx20523_)))
               (_opt-lambda-dispatch-name20526_
                (lambda (_id21238_)
                  (if (uninterned-symbol? _id21238_)
                      (let ((_str21240_ (symbol->string _id21238_)))
                        (if (string-prefix? _str21240_ '"opt-lambda")
                            '"%"
                            _id21238_))
                      _id21238_)))
               (_kw-lambda-dispatch-name20527_
                (lambda (_id21233_ _name21234_)
                  (if (uninterned-symbol? _id21233_)
                      (let ((_str21236_ (symbol->string _id21233_)))
                        (if (string-prefix? _str21236_ '"kw-lambda")
                            _name21234_
                            _id21233_))
                      _id21233_))))
        (let* ((___stx2957729578_ _stx20523_)
               (_g2053220591_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2957729578_))))
          (let ((___kont2957929580_
                 (lambda (_L21142_ _L21143_)
                   (let* ((___stx2955729558_ _L21142_)
                          (_g2116021174_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2955729558_))))
                     (let ((___kont2955929560_ (lambda (_L21218_) _stx20523_))
                           (___kont2956129562_
                            (lambda (_L21187_)
                              (let ((_g30072_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx20523_
                                      _L21143_
                                      _L21187_)))
                                (begin
                                  (let ((_g30073_
                                         (if (##values? _g30072_)
                                             (##vector-length _g30072_)
                                             1)))
                                    (if (not (##fx= _g30073_ 3))
                                        (error "Context expects 3 values"
                                               _g30073_)))
                                  (let ((_ids21197_ (##vector-ref _g30072_ 0))
                                        (_impls21198_
                                         (##vector-ref _g30072_ 1))
                                        (_clauses21199_
                                         (##vector-ref _g30072_ 2)))
                                    (let* ((_g30074_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids21197_))
                                           (_defs21202_
                                            (map _case-lambda-clause-def20525_
                                                 _ids21197_
                                                 _impls21198_)))
                                      (begin
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L21143_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids21197_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L21143_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses21199_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx20523_)
                     '())
               _defs21202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx20523_)))))))))
                       (let ((___match2956829569_
                              (lambda (_e2116321210_
                                       _hd2116421213_
                                       _tl2116521215_)
                                (let ((_L21218_ _tl2116521215_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L21218_)
                                      (___kont2955929560_ _L21218_)
                                      (___kont2956129562_ _tl2116521215_))))))
                         (if (gx#stx-pair? ___stx2955729558_)
                             (let ((_e2116321210_
                                    (gx#stx-e ___stx2955729558_)))
                               (let ((_tl2116521215_ (##cdr _e2116321210_))
                                     (_hd2116421213_ (##car _e2116321210_)))
                                 (___match2956829569_
                                  _e2116321210_
                                  _hd2116421213_
                                  _tl2116521215_)))
                             (_g2116021174_)))))))
                (___kont2958129582_
                 (lambda (_L20960_ _L20961_)
                   (let* ((_g2097721007_
                           (lambda (_g2097821004_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2097821004_)))
                          (_g2097621102_
                           (lambda (_g2097821010_)
                             (if (gx#stx-pair? _g2097821010_)
                                 (let ((_e2098221012_
                                        (gx#stx-e _g2097821010_)))
                                   (let ((_hd2098321015_ (##car _e2098221012_))
                                         (_tl2098421017_
                                          (##cdr _e2098221012_)))
                                     (if (gx#stx-pair? _tl2098421017_)
                                         (let ((_e2098521020_
                                                (gx#stx-e _tl2098421017_)))
                                           (let ((_hd2098621023_
                                                  (##car _e2098521020_))
                                                 (_tl2098721025_
                                                  (##cdr _e2098521020_)))
                                             (if (gx#stx-pair? _hd2098621023_)
                                                 (let ((_e2098821028_
                                                        (gx#stx-e
                                                         _hd2098621023_)))
                                                   (let ((_hd2098921031_
                                                          (##car _e2098821028_))
                                                         (_tl2099021033_
                                                          (##cdr _e2098821028_)))
                                                     (if (gx#stx-pair?
                                                          _hd2098921031_)
                                                         (let ((_e2099121036_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2098921031_)))
                   (let ((_hd2099221039_ (##car _e2099121036_))
                         (_tl2099321041_ (##cdr _e2099121036_)))
                     (if (gx#stx-pair? _hd2099221039_)
                         (let ((_e2099421044_ (gx#stx-e _hd2099221039_)))
                           (let ((_hd2099521047_ (##car _e2099421044_))
                                 (_tl2099621049_ (##cdr _e2099421044_)))
                             (if (gx#stx-null? _tl2099621049_)
                                 (if (gx#stx-pair? _tl2099321041_)
                                     (let ((_e2099721052_
                                            (gx#stx-e _tl2099321041_)))
                                       (let ((_hd2099821055_
                                              (##car _e2099721052_))
                                             (_tl2099921057_
                                              (##cdr _e2099721052_)))
                                         (if (gx#stx-null? _tl2099921057_)
                                             (if (gx#stx-null? _tl2099021033_)
                                                 (if (gx#stx-pair?
                                                      _tl2098721025_)
                                                     (let ((_e2100021060_
                                                            (gx#stx-e
                                                             _tl2098721025_)))
                                                       (let ((_hd2100121063_
                                                              (##car _e2100021060_))
                                                             (_tl2100221065_
                                                              (##cdr _e2100021060_)))
                                                         (if (gx#stx-null?
                                                              _tl2100221065_)
                                                             ((lambda (_L21068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21069_
                               _L21070_)
                        (let* ((_lambda-id21094_
                                (make-symbol
                                 (gx#stx-e _L20961_)
                                 '"__"
                                 (_opt-lambda-dispatch-name20526_
                                  (gx#stx-e _L21070_))))
                               (_lambda-id21096_
                                (gx#core-quote-syntax__1
                                 _lambda-id21094_
                                 (gx#stx-source _stx20523_)))
                               (_g30075_
                                (gx#core-bind-runtime!__0 _lambda-id21096_))
                               (_new-case-lambda-expr21099_
                                (gxc#apply-expression-subst
                                 _L21068_
                                 _L21070_
                                 _lambda-id21096_)))
                          (begin
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L20961_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id21096_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id21096_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L21069_)
                                                            '())))
                                          _stx20523_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L20961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr21099_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx20523_))
                                               '())))
                             _stx20523_))))
                      _hd2100121063_
                      _hd2099821055_
                      _hd2099521047_)
                     (_g2097721007_ _g2097821010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2097721007_
                                                      _g2097821010_))
                                                 (_g2097721007_ _g2097821010_))
                                             (_g2097721007_ _g2097821010_))))
                                     (_g2097721007_ _g2097821010_))
                                 (_g2097721007_ _g2097821010_))))
                         (_g2097721007_ _g2097821010_))))
                 (_g2097721007_ _g2097821010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2097721007_
                                                  _g2097821010_))))
                                         (_g2097721007_ _g2097821010_))))
                                 (_g2097721007_ _g2097821010_)))))
                     (_g2097621102_ _L20960_))))
                (___kont2958329584_
                 (lambda (_L20674_ _L20675_)
                   (let* ((_g2069120744_
                           (lambda (_g2069220741_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2069220741_)))
                          (_g2069020920_
                           (lambda (_g2069220747_)
                             (if (gx#stx-pair? _g2069220747_)
                                 (let ((_e2069820749_
                                        (gx#stx-e _g2069220747_)))
                                   (let ((_hd2069920752_ (##car _e2069820749_))
                                         (_tl2070020754_
                                          (##cdr _e2069820749_)))
                                     (if (gx#stx-pair? _tl2070020754_)
                                         (let ((_e2070120757_
                                                (gx#stx-e _tl2070020754_)))
                                           (let ((_hd2070220760_
                                                  (##car _e2070120757_))
                                                 (_tl2070320762_
                                                  (##cdr _e2070120757_)))
                                             (if (gx#stx-pair? _hd2070220760_)
                                                 (let ((_e2070420765_
                                                        (gx#stx-e
                                                         _hd2070220760_)))
                                                   (let ((_hd2070520768_
                                                          (##car _e2070420765_))
                                                         (_tl2070620770_
                                                          (##cdr _e2070420765_)))
                                                     (if (gx#stx-pair?
                                                          _hd2070520768_)
                                                         (let ((_e2070720773_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2070520768_)))
                   (let ((_hd2070820776_ (##car _e2070720773_))
                         (_tl2070920778_ (##cdr _e2070720773_)))
                     (if (gx#stx-pair? _hd2070820776_)
                         (let ((_e2071020781_ (gx#stx-e _hd2070820776_)))
                           (let ((_hd2071120784_ (##car _e2071020781_))
                                 (_tl2071220786_ (##cdr _e2071020781_)))
                             (if (gx#stx-null? _tl2071220786_)
                                 (if (gx#stx-pair? _tl2070920778_)
                                     (let ((_e2071320789_
                                            (gx#stx-e _tl2070920778_)))
                                       (let ((_hd2071420792_
                                              (##car _e2071320789_))
                                             (_tl2071520794_
                                              (##cdr _e2071320789_)))
                                         (if (gx#stx-pair? _hd2071420792_)
                                             (let ((_e2071620797_
                                                    (gx#stx-e _hd2071420792_)))
                                               (let ((_hd2071720800_
                                                      (##car _e2071620797_))
                                                     (_tl2071820802_
                                                      (##cdr _e2071620797_)))
                                                 (if (gx#stx-pair?
                                                      _tl2071820802_)
                                                     (let ((_e2071920805_
                                                            (gx#stx-e
                                                             _tl2071820802_)))
                                                       (let ((_hd2072020808_
                                                              (##car _e2071920805_))
                                                             (_tl2072120810_
                                                              (##cdr _e2071920805_)))
                                                         (if (gx#stx-pair?
                                                              _hd2072020808_)
                                                             (let ((_e2072220813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd2072020808_)))
                       (let ((_hd2072320816_ (##car _e2072220813_))
                             (_tl2072420818_ (##cdr _e2072220813_)))
                         (if (gx#stx-pair? _hd2072320816_)
                             (let ((_e2072520821_ (gx#stx-e _hd2072320816_)))
                               (let ((_hd2072620824_ (##car _e2072520821_))
                                     (_tl2072720826_ (##cdr _e2072520821_)))
                                 (if (gx#stx-pair? _hd2072620824_)
                                     (let ((_e2072820829_
                                            (gx#stx-e _hd2072620824_)))
                                       (let ((_hd2072920832_
                                              (##car _e2072820829_))
                                             (_tl2073020834_
                                              (##cdr _e2072820829_)))
                                         (if (gx#stx-null? _tl2073020834_)
                                             (if (gx#stx-pair? _tl2072720826_)
                                                 (let ((_e2073120837_
                                                        (gx#stx-e
                                                         _tl2072720826_)))
                                                   (let ((_hd2073220840_
                                                          (##car _e2073120837_))
                                                         (_tl2073320842_
                                                          (##cdr _e2073120837_)))
                                                     (if (gx#stx-null?
                                                          _tl2073320842_)
                                                         (if (gx#stx-null?
                                                              _tl2072420818_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2072120810_)
                         (let ((_e2073420845_ (gx#stx-e _tl2072120810_)))
                           (let ((_hd2073520848_ (##car _e2073420845_))
                                 (_tl2073620850_ (##cdr _e2073420845_)))
                             (if (gx#stx-null? _tl2073620850_)
                                 (if (gx#stx-null? _tl2071520794_)
                                     (if (gx#stx-null? _tl2070620770_)
                                         (if (gx#stx-pair? _tl2070320762_)
                                             (let ((_e2073720853_
                                                    (gx#stx-e _tl2070320762_)))
                                               (let ((_hd2073820856_
                                                      (##car _e2073720853_))
                                                     (_tl2073920858_
                                                      (##cdr _e2073720853_)))
                                                 (if (gx#stx-null?
                                                      _tl2073920858_)
                                                     ((lambda (_L20861_
                                                               _L20862_
                                                               _L20863_
                                                               _L20864_
                                                               _L20865_)
                                                        (let* ((_get-kws-id20905_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L20675_)
                         '"__"
                         (_kw-lambda-dispatch-name20527_
                          (gx#stx-e _L20865_)
                          '"@")))
                       (_get-kws-id20907_
                        (gx#core-quote-syntax__1
                         _get-kws-id20905_
                         (gx#stx-source _stx20523_)))
                       (_main-id20909_
                        (make-symbol
                         (gx#stx-e _L20675_)
                         '"__"
                         (_kw-lambda-dispatch-name20527_
                          (gx#stx-e _L20864_)
                          '"%")))
                       (_main-id20911_
                        (gx#core-quote-syntax__1
                         _main-id20909_
                         (gx#stx-source _stx20523_)))
                       (_g30076_ (gx#core-bind-runtime!__0 _get-kws-id20907_))
                       (_g30077_ (gx#core-bind-runtime!__0 _main-id20911_))
                       (_new-kw-dispatch20915_
                        (gxc#apply-expression-subst
                         _L20861_
                         _L20865_
                         _get-kws-id20907_))
                       (_new-get-kws20917_
                        (gxc#apply-expression-subst
                         _L20862_
                         _L20864_
                         _main-id20911_)))
                  (begin
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L20675_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id20907_)
                     '" => "
                     (gxc#identifier-symbol _main-id20911_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id20911_ '())
                                               (cons _L20863_ '())))
                                   _stx20523_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id20907_
                                                          '())
                                                    (cons _new-get-kws20917_
                                                          '())))
                                        _stx20523_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L20675_ '())
                                                          (cons _new-kw-dispatch20915_
                                                                '())))
                                              _stx20523_)
                                             '()))))
                     _stx20523_))))
              _hd2073820856_
              _hd2073520848_
              _hd2073220840_
              _hd2072920832_
              _hd2071120784_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069120744_
                                                      _g2069220747_))))
                                             (_g2069120744_ _g2069220747_))
                                         (_g2069120744_ _g2069220747_))
                                     (_g2069120744_ _g2069220747_))
                                 (_g2069120744_ _g2069220747_))))
                         (_g2069120744_ _g2069220747_))
                     (_g2069120744_ _g2069220747_))
                 (_g2069120744_ _g2069220747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2069120744_ _g2069220747_))
                                             (_g2069120744_ _g2069220747_))))
                                     (_g2069120744_ _g2069220747_))))
                             (_g2069120744_ _g2069220747_))))
                     (_g2069120744_ _g2069220747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069120744_
                                                      _g2069220747_))))
                                             (_g2069120744_ _g2069220747_))))
                                     (_g2069120744_ _g2069220747_))
                                 (_g2069120744_ _g2069220747_))))
                         (_g2069120744_ _g2069220747_))))
                 (_g2069120744_ _g2069220747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2069120744_
                                                  _g2069220747_))))
                                         (_g2069120744_ _g2069220747_))))
                                 (_g2069120744_ _g2069220747_)))))
                     (_g2069020920_ _L20674_))))
                (___kont2958529586_
                 (lambda (_L20620_ _L20621_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L20621_ (cons (gxc#compile-e _L20620_) '())))
                    _stx20523_))))
            (let* ((___match2967029671_
                    (lambda (_e2056420642_
                             _hd2056520645_
                             _tl2056620647_
                             _e2056720650_
                             _hd2056820653_
                             _tl2056920655_
                             _e2057020658_
                             _hd2057120661_
                             _tl2057220663_
                             _e2057320666_
                             _hd2057420669_
                             _tl2057520671_)
                      (let ((_L20674_ _hd2057420669_)
                            (_L20675_ _hd2057120661_))
                        (if (if (gx#identifier? _L20675_)
                                (gxc#kw-lambda-expr? _L20674_)
                                '#f)
                            (___kont2958329584_ _L20674_ _L20675_)
                            (___kont2958529586_
                             _hd2057420669_
                             _hd2056820653_)))))
                   (___match2964229643_
                    (lambda (_e2055020928_
                             _hd2055120931_
                             _tl2055220933_
                             _e2055320936_
                             _hd2055420939_
                             _tl2055520941_
                             _e2055620944_
                             _hd2055720947_
                             _tl2055820949_
                             _e2055920952_
                             _hd2056020955_
                             _tl2056120957_)
                      (let ((_L20960_ _hd2056020955_)
                            (_L20961_ _hd2055720947_))
                        (if (if (gx#identifier? _L20961_)
                                (gxc#opt-lambda-expr? _L20960_)
                                '#f)
                            (___kont2958129582_ _L20960_ _L20961_)
                            (___match2967029671_
                             _e2055020928_
                             _hd2055120931_
                             _tl2055220933_
                             _e2055320936_
                             _hd2055420939_
                             _tl2055520941_
                             _e2055620944_
                             _hd2055720947_
                             _tl2055820949_
                             _e2055920952_
                             _hd2056020955_
                             _tl2056120957_)))))
                   (___match2961429615_
                    (lambda (_e2053621110_
                             _hd2053721113_
                             _tl2053821115_
                             _e2053921118_
                             _hd2054021121_
                             _tl2054121123_
                             _e2054221126_
                             _hd2054321129_
                             _tl2054421131_
                             _e2054521134_
                             _hd2054621137_
                             _tl2054721139_)
                      (let ((_L21142_ _hd2054621137_)
                            (_L21143_ _hd2054321129_))
                        (if (if (gx#identifier? _L21143_)
                                (gxc#case-lambda-expr? _L21142_)
                                '#f)
                            (___kont2957929580_ _L21142_ _L21143_)
                            (___match2964229643_
                             _e2053621110_
                             _hd2053721113_
                             _tl2053821115_
                             _e2053921118_
                             _hd2054021121_
                             _tl2054121123_
                             _e2054221126_
                             _hd2054321129_
                             _tl2054421131_
                             _e2054521134_
                             _hd2054621137_
                             _tl2054721139_))))))
              (if (gx#stx-pair? ___stx2957729578_)
                  (let ((_e2053621110_ (gx#stx-e ___stx2957729578_)))
                    (let ((_tl2053821115_ (##cdr _e2053621110_))
                          (_hd2053721113_ (##car _e2053621110_)))
                      (if (gx#stx-pair? _tl2053821115_)
                          (let ((_e2053921118_ (gx#stx-e _tl2053821115_)))
                            (let ((_tl2054121123_ (##cdr _e2053921118_))
                                  (_hd2054021121_ (##car _e2053921118_)))
                              (if (gx#stx-pair? _hd2054021121_)
                                  (let ((_e2054221126_
                                         (gx#stx-e _hd2054021121_)))
                                    (let ((_tl2054421131_
                                           (##cdr _e2054221126_))
                                          (_hd2054321129_
                                           (##car _e2054221126_)))
                                      (if (gx#stx-null? _tl2054421131_)
                                          (if (gx#stx-pair? _tl2054121123_)
                                              (let ((_e2054521134_
                                                     (gx#stx-e
                                                      _tl2054121123_)))
                                                (let ((_tl2054721139_
                                                       (##cdr _e2054521134_))
                                                      (_hd2054621137_
                                                       (##car _e2054521134_)))
                                                  (if (gx#stx-null?
                                                       _tl2054721139_)
                                                      (___match2961429615_
                                                       _e2053621110_
                                                       _hd2053721113_
                                                       _tl2053821115_
                                                       _e2053921118_
                                                       _hd2054021121_
                                                       _tl2054121123_
                                                       _e2054221126_
                                                       _hd2054321129_
                                                       _tl2054421131_
                                                       _e2054521134_
                                                       _hd2054621137_
                                                       _tl2054721139_)
                                                      (_g2053220591_))))
                                              (_g2053220591_))
                                          (if (gx#stx-pair? _tl2054121123_)
                                              (let ((_e2058420612_
                                                     (gx#stx-e
                                                      _tl2054121123_)))
                                                (let ((_tl2058620617_
                                                       (##cdr _e2058420612_))
                                                      (_hd2058520615_
                                                       (##car _e2058420612_)))
                                                  (if (gx#stx-null?
                                                       _tl2058620617_)
                                                      (___kont2958529586_
                                                       _hd2058520615_
                                                       _hd2054021121_)
                                                      (_g2053220591_))))
                                              (_g2053220591_)))))
                                  (if (gx#stx-pair? _tl2054121123_)
                                      (let ((_e2058420612_
                                             (gx#stx-e _tl2054121123_)))
                                        (let ((_tl2058620617_
                                               (##cdr _e2058420612_))
                                              (_hd2058520615_
                                               (##car _e2058420612_)))
                                          (if (gx#stx-null? _tl2058620617_)
                                              (___kont2958529586_
                                               _hd2058520615_
                                               _hd2054021121_)
                                              (_g2053220591_))))
                                      (_g2053220591_)))))
                          (_g2053220591_))))
                  (_g2053220591_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19455_)
      (letrec* ((_bind-e__2744927450_
                 (lambda (_id20507_ _expr20508_ _compile?20509_)
                   (cons (cons _id20507_ '())
                         (cons (if _compile?20509_
                                   (gxc#compile-e _expr20508_)
                                   _expr20508_)
                               '()))))
                (_bind-e__0__2745127452_
                 (lambda (_id20514_ _expr20515_)
                   (let ((_compile?20517_ '#t))
                     (_bind-e__2744927450_
                      _id20514_
                      _expr20515_
                      _compile?20517_))))
                (_bind-e19457_
                 (lambda _g30079_
                   (let ((_g30078_ (length _g30079_)))
                     (cond ((##fx= _g30078_ 2)
                            (apply _bind-e__0__2745127452_ _g30079_))
                           ((##fx= _g30078_ 3)
                            (apply _bind-e__2744927450_ _g30079_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g30079_))))))
                (_compile-bindings19458_
                 (lambda (_bindings20091_)
                   (let _lp20093_ ((_rest20095_ _bindings20091_)
                                   (_lift120096_ '())
                                   (_lift220097_ '())
                                   (_bind20098_ '()))
                     (let* ((_rest2009920107_ _rest20095_)
                            (_else2010120115_
                             (lambda ()
                               (values (reverse _lift120096_)
                                       (reverse _lift220097_)
                                       (reverse _bind20098_))))
                            (_K2010320494_
                             (lambda (_rest20118_ _hd20119_)
                               (let* ((___stx2971329714_ _hd20119_)
                                      (_g2012320159_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2971329714_))))
                                 (let ((___kont2971529716_
                                        (lambda (_L20401_ _L20402_)
                                          (let* ((___stx2969329694_ _L20401_)
                                                 (_g2041720431_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2969329694_))))
                                            (let ((___kont2969529696_
                                                   (lambda (_L20479_)
                                                     (_lp20093_
                                                      _rest20118_
                                                      _lift120096_
                                                      _lift220097_
                                                      (cons (_bind-e__2744927450_
                                                             _L20402_
                                                             _L20401_
                                                             '#f)
                                                            _bind20098_))))
                                                  (___kont2969729698_
                                                   (lambda (_L20444_)
                                                     (let ((_g30080_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx19455_
                                                             _L20402_
                                                             _L20444_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g30081_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30080_)
                            (##vector-length _g30080_)
                            1)))
                   (if (not (##fx= _g30081_ 3))
                       (error "Context expects 3 values" _g30081_)))
                 (let ((_ids20454_ (##vector-ref _g30080_ 0))
                       (_impls20455_ (##vector-ref _g30080_ 1))
                       (_clauses20456_ (##vector-ref _g30080_ 2)))
                   (let* ((_g30082_
                           (for-each gx#core-bind-runtime! _ids20454_))
                          (_xbind20459_
                           (map _bind-e19457_ _ids20454_ _impls20455_))
                          (_expr*20461_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses20456_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*20463_
                           (_bind-e__2744927450_ _L20402_ _expr*20461_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L20402_)
                        '" => "
                        (map gxc#identifier-symbol _ids20454_))
                       (_lp20093_
                        _rest20118_
                        _lift120096_
                        (foldl1 cons _lift220097_ _xbind20459_)
                        (cons _bind*20463_ _bind20098_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2970429705_
                                                     (lambda (_e2042020471_
                                                              _hd2042120474_
                                                              _tl2042220476_)
                                                       (let ((_L20479_
                                                              _tl2042220476_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L20479_)
                     (___kont2969529696_ _L20479_)
                     (___kont2969729698_ _tl2042220476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2969329694_)
                                                    (let ((_e2042020471_
                                                           (gx#stx-e
                                                            ___stx2969329694_)))
                                                      (let ((_tl2042220476_
                                                             (##cdr _e2042020471_))
                                                            (_hd2042120474_
                                                             (##car _e2042020471_)))
                                                        (___match2970429705_
                                                         _e2042020471_
                                                         _hd2042120474_
                                                         _tl2042220476_)))
                                                    (_g2041720431_)))))))
                                       (___kont2971729718_
                                        (lambda (_L20229_ _L20230_)
                                          (let* ((_g2024420274_
                                                  (lambda (_g2024520271_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2024520271_)))
                                                 (_g2024320369_
                                                  (lambda (_g2024520277_)
                                                    (if (gx#stx-pair?
                                                         _g2024520277_)
                                                        (let ((_e2024920279_
                                                               (gx#stx-e
                                                                _g2024520277_)))
                                                          (let ((_hd2025020282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2024920279_))
                        (_tl2025120284_ (##cdr _e2024920279_)))
                    (if (gx#stx-pair? _tl2025120284_)
                        (let ((_e2025220287_ (gx#stx-e _tl2025120284_)))
                          (let ((_hd2025320290_ (##car _e2025220287_))
                                (_tl2025420292_ (##cdr _e2025220287_)))
                            (if (gx#stx-pair? _hd2025320290_)
                                (let ((_e2025520295_
                                       (gx#stx-e _hd2025320290_)))
                                  (let ((_hd2025620298_ (##car _e2025520295_))
                                        (_tl2025720300_ (##cdr _e2025520295_)))
                                    (if (gx#stx-pair? _hd2025620298_)
                                        (let ((_e2025820303_
                                               (gx#stx-e _hd2025620298_)))
                                          (let ((_hd2025920306_
                                                 (##car _e2025820303_))
                                                (_tl2026020308_
                                                 (##cdr _e2025820303_)))
                                            (if (gx#stx-pair? _hd2025920306_)
                                                (let ((_e2026120311_
                                                       (gx#stx-e
                                                        _hd2025920306_)))
                                                  (let ((_hd2026220314_
                                                         (##car _e2026120311_))
                                                        (_tl2026320316_
                                                         (##cdr _e2026120311_)))
                                                    (if (gx#stx-null?
                                                         _tl2026320316_)
                                                        (if (gx#stx-pair?
                                                             _tl2026020308_)
                                                            (let ((_e2026420319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2026020308_)))
                      (let ((_hd2026520322_ (##car _e2026420319_))
                            (_tl2026620324_ (##cdr _e2026420319_)))
                        (if (gx#stx-null? _tl2026620324_)
                            (if (gx#stx-null? _tl2025720300_)
                                (if (gx#stx-pair? _tl2025420292_)
                                    (let ((_e2026720327_
                                           (gx#stx-e _tl2025420292_)))
                                      (let ((_hd2026820330_
                                             (##car _e2026720327_))
                                            (_tl2026920332_
                                             (##cdr _e2026720327_)))
                                        (if (gx#stx-null? _tl2026920332_)
                                            ((lambda (_L20335_
                                                      _L20336_
                                                      _L20337_)
                                               (let* ((_lambda-id20361_
                                                       (make-symbol
                                                        (gx#stx-e _L20230_)
                                                        (gensym '__)))
                                                      (_lambda-id20363_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id20361_
                                                        (gx#stx-source
                                                         _stx19455_)))
                                                      (_g30083_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id20363_))
                                                      (_new-case-lambda-expr20366_
                                                       (gxc#apply-expression-subst
                                                        _L20335_
                                                        _L20337_
                                                        _lambda-id20363_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L20230_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id20363_))
                                                   (_lp20093_
                                                    (cons (_bind-e__2744927450_
                                                           _L20230_
                                                           _new-case-lambda-expr20366_
                                                           '#f)
                                                          _rest20118_)
                                                    (cons (_bind-e__0__2745127452_
                                                           _lambda-id20363_
                                                           _L20336_)
                                                          _lift120096_)
                                                    _lift220097_
                                                    _bind20098_))))
                                             _hd2026820330_
                                             _hd2026520322_
                                             _hd2026220314_)
                                            (_g2024420274_ _g2024520277_))))
                                    (_g2024420274_ _g2024520277_))
                                (_g2024420274_ _g2024520277_))
                            (_g2024420274_ _g2024520277_))))
                    (_g2024420274_ _g2024520277_))
                (_g2024420274_ _g2024520277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2024420274_
                                                 _g2024520277_))))
                                        (_g2024420274_ _g2024520277_))))
                                (_g2024420274_ _g2024520277_))))
                        (_g2024420274_ _g2024520277_))))
                (_g2024420274_ _g2024520277_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2024320369_ _L20229_))))
                                       (___kont2971929720_
                                        (lambda (_L20180_ _L20181_)
                                          (_lp20093_
                                           _rest20118_
                                           _lift120096_
                                           _lift220097_
                                           (cons (cons _L20181_
                                                       (cons (gxc#compile-e
                                                              _L20180_)
                                                             '()))
                                                 _bind20098_)))))
                                   (let* ((___match2976429765_
                                           (lambda (_e2013820205_
                                                    _hd2013920208_
                                                    _tl2014020210_
                                                    _e2014120213_
                                                    _hd2014220216_
                                                    _tl2014320218_
                                                    _e2014420221_
                                                    _hd2014520224_
                                                    _tl2014620226_)
                                             (let ((_L20229_ _hd2014520224_)
                                                   (_L20230_ _hd2014220216_))
                                               (if (if (gx#identifier?
                                                        _L20230_)
                                                       (gxc#opt-lambda-expr?
                                                        _L20229_)
                                                       '#f)
                                                   (___kont2971729718_
                                                    _L20229_
                                                    _L20230_)
                                                   (___kont2971929720_
                                                    _hd2014520224_
                                                    _hd2013920208_)))))
                                          (___match2974229743_
                                           (lambda (_e2012720377_
                                                    _hd2012820380_
                                                    _tl2012920382_
                                                    _e2013020385_
                                                    _hd2013120388_
                                                    _tl2013220390_
                                                    _e2013320393_
                                                    _hd2013420396_
                                                    _tl2013520398_)
                                             (let ((_L20401_ _hd2013420396_)
                                                   (_L20402_ _hd2013120388_))
                                               (if (if (gx#identifier?
                                                        _L20402_)
                                                       (gxc#case-lambda-expr?
                                                        _L20401_)
                                                       '#f)
                                                   (___kont2971529716_
                                                    _L20401_
                                                    _L20402_)
                                                   (___match2976429765_
                                                    _e2012720377_
                                                    _hd2012820380_
                                                    _tl2012920382_
                                                    _e2013020385_
                                                    _hd2013120388_
                                                    _tl2013220390_
                                                    _e2013320393_
                                                    _hd2013420396_
                                                    _tl2013520398_))))))
                                     (if (gx#stx-pair? ___stx2971329714_)
                                         (let ((_e2012720377_
                                                (gx#stx-e ___stx2971329714_)))
                                           (let ((_tl2012920382_
                                                  (##cdr _e2012720377_))
                                                 (_hd2012820380_
                                                  (##car _e2012720377_)))
                                             (if (gx#stx-pair? _hd2012820380_)
                                                 (let ((_e2013020385_
                                                        (gx#stx-e
                                                         _hd2012820380_)))
                                                   (let ((_tl2013220390_
                                                          (##cdr _e2013020385_))
                                                         (_hd2013120388_
                                                          (##car _e2013020385_)))
                                                     (if (gx#stx-null?
                                                          _tl2013220390_)
                                                         (if (gx#stx-pair?
                                                              _tl2012920382_)
                                                             (let ((_e2013320393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl2012920382_)))
                       (let ((_tl2013520398_ (##cdr _e2013320393_))
                             (_hd2013420396_ (##car _e2013320393_)))
                         (if (gx#stx-null? _tl2013520398_)
                             (___match2974229743_
                              _e2012720377_
                              _hd2012820380_
                              _tl2012920382_
                              _e2013020385_
                              _hd2013120388_
                              _tl2013220390_
                              _e2013320393_
                              _hd2013420396_
                              _tl2013520398_)
                             (_g2012320159_))))
                     (_g2012320159_))
                 (if (gx#stx-pair? _tl2012920382_)
                     (let ((_e2015220172_ (gx#stx-e _tl2012920382_)))
                       (let ((_tl2015420177_ (##cdr _e2015220172_))
                             (_hd2015320175_ (##car _e2015220172_)))
                         (if (gx#stx-null? _tl2015420177_)
                             (___kont2971929720_ _hd2015320175_ _hd2012820380_)
                             (_g2012320159_))))
                     (_g2012320159_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl2012920382_)
                                                     (let ((_e2015220172_
                                                            (gx#stx-e
                                                             _tl2012920382_)))
                                                       (let ((_tl2015420177_
                                                              (##cdr _e2015220172_))
                                                             (_hd2015320175_
                                                              (##car _e2015220172_)))
                                                         (if (gx#stx-null?
                                                              _tl2015420177_)
                                                             (___kont2971929720_
                                                              _hd2015320175_
                                                              _hd2012820380_)
                                                             (_g2012320159_))))
                                                     (_g2012320159_)))))
                                         (_g2012320159_))))))))
                       (if (##pair? _rest2009920107_)
                           (let ((_hd2010420497_ (##car _rest2009920107_))
                                 (_tl2010520499_ (##cdr _rest2009920107_)))
                             (let* ((_hd20502_ _hd2010420497_)
                                    (_rest20504_ _tl2010520499_))
                               (_K2010320494_ _rest20504_ _hd20502_)))
                           (_else2010120115_))))))
                (_lift-kw-lambda?19459_
                 (lambda (_bind20015_)
                   (let* ((___stx2978129782_ _bind20015_)
                          (_g2001820035_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2978129782_))))
                     (let ((___kont2978329784_
                            (lambda (_L20071_ _L20072_)
                              (if (gx#identifier? _L20072_)
                                  (gxc#kw-lambda-expr? _L20071_)
                                  '#f)))
                           (___kont2978529786_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx2978129782_)
                           (let ((_e2002220047_ (gx#stx-e ___stx2978129782_)))
                             (let ((_tl2002420052_ (##cdr _e2002220047_))
                                   (_hd2002320050_ (##car _e2002220047_)))
                               (if (gx#stx-pair? _hd2002320050_)
                                   (let ((_e2002520055_
                                          (gx#stx-e _hd2002320050_)))
                                     (let ((_tl2002720060_
                                            (##cdr _e2002520055_))
                                           (_hd2002620058_
                                            (##car _e2002520055_)))
                                       (if (gx#stx-null? _tl2002720060_)
                                           (if (gx#stx-pair? _tl2002420052_)
                                               (let ((_e2002820063_
                                                      (gx#stx-e
                                                       _tl2002420052_)))
                                                 (let ((_tl2003020068_
                                                        (##cdr _e2002820063_))
                                                       (_hd2002920066_
                                                        (##car _e2002820063_)))
                                                   (if (gx#stx-null?
                                                        _tl2003020068_)
                                                       (___kont2978329784_
                                                        _hd2002920066_
                                                        _hd2002620058_)
                                                       (___kont2978529786_))))
                                               (___kont2978529786_))
                                           (___kont2978529786_))))
                                   (___kont2978529786_))))
                           (___kont2978529786_))))))
                (_lift-kw-lambda-bindings19460_
                 (lambda (_bindings19627_)
                   (let _lp19629_ ((_rest19631_ _bindings19627_)
                                   (_lift119632_ '())
                                   (_lift219633_ '())
                                   (_bind19634_ '()))
                     (let* ((_rest1963519643_ _rest19631_)
                            (_else1963719651_
                             (lambda ()
                               (values (reverse _lift119632_)
                                       (reverse _lift219633_)
                                       (reverse _bind19634_))))
                            (_K1963920003_
                             (lambda (_rest19654_ _hd19655_)
                               (let* ((___stx2981129812_ _hd19655_)
                                      (_g1965819683_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2981129812_))))
                                 (let ((___kont2981329814_
                                        (lambda (_L19753_ _L19754_)
                                          (let* ((_g1976819821_
                                                  (lambda (_g1976919818_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1976919818_)))
                                                 (_g1976719997_
                                                  (lambda (_g1976919824_)
                                                    (if (gx#stx-pair?
                                                         _g1976919824_)
                                                        (let ((_e1977519826_
                                                               (gx#stx-e
                                                                _g1976919824_)))
                                                          (let ((_hd1977619829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1977519826_))
                        (_tl1977719831_ (##cdr _e1977519826_)))
                    (if (gx#stx-pair? _tl1977719831_)
                        (let ((_e1977819834_ (gx#stx-e _tl1977719831_)))
                          (let ((_hd1977919837_ (##car _e1977819834_))
                                (_tl1978019839_ (##cdr _e1977819834_)))
                            (if (gx#stx-pair? _hd1977919837_)
                                (let ((_e1978119842_
                                       (gx#stx-e _hd1977919837_)))
                                  (let ((_hd1978219845_ (##car _e1978119842_))
                                        (_tl1978319847_ (##cdr _e1978119842_)))
                                    (if (gx#stx-pair? _hd1978219845_)
                                        (let ((_e1978419850_
                                               (gx#stx-e _hd1978219845_)))
                                          (let ((_hd1978519853_
                                                 (##car _e1978419850_))
                                                (_tl1978619855_
                                                 (##cdr _e1978419850_)))
                                            (if (gx#stx-pair? _hd1978519853_)
                                                (let ((_e1978719858_
                                                       (gx#stx-e
                                                        _hd1978519853_)))
                                                  (let ((_hd1978819861_
                                                         (##car _e1978719858_))
                                                        (_tl1978919863_
                                                         (##cdr _e1978719858_)))
                                                    (if (gx#stx-null?
                                                         _tl1978919863_)
                                                        (if (gx#stx-pair?
                                                             _tl1978619855_)
                                                            (let ((_e1979019866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1978619855_)))
                      (let ((_hd1979119869_ (##car _e1979019866_))
                            (_tl1979219871_ (##cdr _e1979019866_)))
                        (if (gx#stx-pair? _hd1979119869_)
                            (let ((_e1979319874_ (gx#stx-e _hd1979119869_)))
                              (let ((_hd1979419877_ (##car _e1979319874_))
                                    (_tl1979519879_ (##cdr _e1979319874_)))
                                (if (gx#stx-pair? _tl1979519879_)
                                    (let ((_e1979619882_
                                           (gx#stx-e _tl1979519879_)))
                                      (let ((_hd1979719885_
                                             (##car _e1979619882_))
                                            (_tl1979819887_
                                             (##cdr _e1979619882_)))
                                        (if (gx#stx-pair? _hd1979719885_)
                                            (let ((_e1979919890_
                                                   (gx#stx-e _hd1979719885_)))
                                              (let ((_hd1980019893_
                                                     (##car _e1979919890_))
                                                    (_tl1980119895_
                                                     (##cdr _e1979919890_)))
                                                (if (gx#stx-pair?
                                                     _hd1980019893_)
                                                    (let ((_e1980219898_
                                                           (gx#stx-e
                                                            _hd1980019893_)))
                                                      (let ((_hd1980319901_
                                                             (##car _e1980219898_))
                                                            (_tl1980419903_
                                                             (##cdr _e1980219898_)))
                                                        (if (gx#stx-pair?
                                                             _hd1980319901_)
                                                            (let ((_e1980519906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1980319901_)))
                      (let ((_hd1980619909_ (##car _e1980519906_))
                            (_tl1980719911_ (##cdr _e1980519906_)))
                        (if (gx#stx-null? _tl1980719911_)
                            (if (gx#stx-pair? _tl1980419903_)
                                (let ((_e1980819914_
                                       (gx#stx-e _tl1980419903_)))
                                  (let ((_hd1980919917_ (##car _e1980819914_))
                                        (_tl1981019919_ (##cdr _e1980819914_)))
                                    (if (gx#stx-null? _tl1981019919_)
                                        (if (gx#stx-null? _tl1980119895_)
                                            (if (gx#stx-pair? _tl1979819887_)
                                                (let ((_e1981119922_
                                                       (gx#stx-e
                                                        _tl1979819887_)))
                                                  (let ((_hd1981219925_
                                                         (##car _e1981119922_))
                                                        (_tl1981319927_
                                                         (##cdr _e1981119922_)))
                                                    (if (gx#stx-null?
                                                         _tl1981319927_)
                                                        (if (gx#stx-null?
                                                             _tl1979219871_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1978319847_)
                        (if (gx#stx-pair? _tl1978019839_)
                            (let ((_e1981419930_ (gx#stx-e _tl1978019839_)))
                              (let ((_hd1981519933_ (##car _e1981419930_))
                                    (_tl1981619935_ (##cdr _e1981419930_)))
                                (if (gx#stx-null? _tl1981619935_)
                                    ((lambda (_L19938_
                                              _L19939_
                                              _L19940_
                                              _L19941_
                                              _L19942_)
                                       (let* ((_get-kws-id19982_
                                               (make-symbol
                                                (gx#stx-e _L19754_)
                                                (gensym '__)))
                                              (_get-kws-id19984_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id19982_
                                                (gx#stx-source _stx19455_)))
                                              (_main-id19986_
                                               (make-symbol
                                                (gx#stx-e _L19754_)
                                                (gensym '__)))
                                              (_main-id19988_
                                               (gx#core-quote-syntax__1
                                                _main-id19986_
                                                (gx#stx-source _stx19455_)))
                                              (_g30084_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id19984_))
                                              (_g30085_
                                               (gx#core-bind-runtime!__0
                                                _main-id19988_))
                                              (_new-kw-dispatch19992_
                                               (gxc#apply-expression-subst
                                                _L19938_
                                                _L19942_
                                                _get-kws-id19984_))
                                              (_new-get-kws19994_
                                               (gxc#apply-expression-subst
                                                _L19939_
                                                _L19941_
                                                _main-id19988_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L19754_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id19984_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id19988_))
                                           (_lp19629_
                                            _rest19654_
                                            (cons (_bind-e__2744927450_
                                                   _main-id19988_
                                                   _L19940_
                                                   '#f)
                                                  _lift119632_)
                                            (cons (_bind-e__2744927450_
                                                   _get-kws-id19984_
                                                   _new-get-kws19994_
                                                   '#f)
                                                  _lift219633_)
                                            (cons (_bind-e__2744927450_
                                                   _L19754_
                                                   _new-kw-dispatch19992_
                                                   '#f)
                                                  _bind19634_)))))
                                     _hd1981519933_
                                     _hd1981219925_
                                     _hd1980919917_
                                     _hd1980619909_
                                     _hd1978819861_)
                                    (_g1976819821_ _g1976919824_))))
                            (_g1976819821_ _g1976919824_))
                        (_g1976819821_ _g1976919824_))
                    (_g1976819821_ _g1976919824_))
                (_g1976819821_ _g1976919824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1976819821_ _g1976919824_))
                                            (_g1976819821_ _g1976919824_))
                                        (_g1976819821_ _g1976919824_))))
                                (_g1976819821_ _g1976919824_))
                            (_g1976819821_ _g1976919824_))))
                    (_g1976819821_ _g1976919824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1976819821_
                                                     _g1976919824_))))
                                            (_g1976819821_ _g1976919824_))))
                                    (_g1976819821_ _g1976919824_))))
                            (_g1976819821_ _g1976919824_))))
                    (_g1976819821_ _g1976919824_))
                (_g1976819821_ _g1976919824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1976819821_
                                                 _g1976919824_))))
                                        (_g1976819821_ _g1976919824_))))
                                (_g1976819821_ _g1976919824_))))
                        (_g1976819821_ _g1976919824_))))
                (_g1976819821_ _g1976919824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1976719997_ _L19753_))))
                                       (___kont2981529816_
                                        (lambda (_L19704_ _L19705_)
                                          (_lp19629_
                                           _rest19654_
                                           _lift119632_
                                           _lift219633_
                                           (cons (cons _L19705_
                                                       (cons _L19704_ '()))
                                                 _bind19634_)))))
                                   (let ((___match2983829839_
                                          (lambda (_e1966219729_
                                                   _hd1966319732_
                                                   _tl1966419734_
                                                   _e1966519737_
                                                   _hd1966619740_
                                                   _tl1966719742_
                                                   _e1966819745_
                                                   _hd1966919748_
                                                   _tl1967019750_)
                                            (let ((_L19753_ _hd1966919748_)
                                                  (_L19754_ _hd1966619740_))
                                              (if (if (gx#identifier? _L19754_)
                                                      (gxc#kw-lambda-expr?
                                                       _L19753_)
                                                      '#f)
                                                  (___kont2981329814_
                                                   _L19753_
                                                   _L19754_)
                                                  (___kont2981529816_
                                                   _hd1966919748_
                                                   _hd1966319732_))))))
                                     (if (gx#stx-pair? ___stx2981129812_)
                                         (let ((_e1966219729_
                                                (gx#stx-e ___stx2981129812_)))
                                           (let ((_tl1966419734_
                                                  (##cdr _e1966219729_))
                                                 (_hd1966319732_
                                                  (##car _e1966219729_)))
                                             (if (gx#stx-pair? _hd1966319732_)
                                                 (let ((_e1966519737_
                                                        (gx#stx-e
                                                         _hd1966319732_)))
                                                   (let ((_tl1966719742_
                                                          (##cdr _e1966519737_))
                                                         (_hd1966619740_
                                                          (##car _e1966519737_)))
                                                     (if (gx#stx-null?
                                                          _tl1966719742_)
                                                         (if (gx#stx-pair?
                                                              _tl1966419734_)
                                                             (let ((_e1966819745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1966419734_)))
                       (let ((_tl1967019750_ (##cdr _e1966819745_))
                             (_hd1966919748_ (##car _e1966819745_)))
                         (if (gx#stx-null? _tl1967019750_)
                             (___match2983829839_
                              _e1966219729_
                              _hd1966319732_
                              _tl1966419734_
                              _e1966519737_
                              _hd1966619740_
                              _tl1966719742_
                              _e1966819745_
                              _hd1966919748_
                              _tl1967019750_)
                             (_g1965819683_))))
                     (_g1965819683_))
                 (if (gx#stx-pair? _tl1966419734_)
                     (let ((_e1967619696_ (gx#stx-e _tl1966419734_)))
                       (let ((_tl1967819701_ (##cdr _e1967619696_))
                             (_hd1967719699_ (##car _e1967619696_)))
                         (if (gx#stx-null? _tl1967819701_)
                             (___kont2981529816_ _hd1967719699_ _hd1966319732_)
                             (_g1965819683_))))
                     (_g1965819683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1966419734_)
                                                     (let ((_e1967619696_
                                                            (gx#stx-e
                                                             _tl1966419734_)))
                                                       (let ((_tl1967819701_
                                                              (##cdr _e1967619696_))
                                                             (_hd1967719699_
                                                              (##car _e1967619696_)))
                                                         (if (gx#stx-null?
                                                              _tl1967819701_)
                                                             (___kont2981529816_
                                                              _hd1967719699_
                                                              _hd1966319732_)
                                                             (_g1965819683_))))
                                                     (_g1965819683_)))))
                                         (_g1965819683_))))))))
                       (if (##pair? _rest1963519643_)
                           (let ((_hd1964020006_ (##car _rest1963519643_))
                                 (_tl1964120008_ (##cdr _rest1963519643_)))
                             (let* ((_hd20011_ _hd1964020006_)
                                    (_rest20013_ _tl1964120008_))
                               (_K1963920003_ _rest20013_ _hd20011_)))
                           (_else1963719651_)))))))
        (let* ((___stx2985529856_ _stx19455_)
               (_g1946319489_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2985529856_))))
          (let ((___kont2985729858_
                 (lambda (_L19549_ _L19550_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?19459_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1957819581_
                                                     _g1957919583_)
                                              (cons _g1957819581_
                                                    _g1957919583_))
                                            '()
                                            _L19550_)))
                          (let ((_g30086_
                                 (_lift-kw-lambda-bindings19460_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1958519588_
                                                     _g1958619590_)
                                              (cons _g1958519588_
                                                    _g1958619590_))
                                            '()
                                            _L19550_)))))
                            (begin
                              (let ((_g30087_
                                     (if (##values? _g30086_)
                                         (##vector-length _g30086_)
                                         1)))
                                (if (not (##fx= _g30087_ 3))
                                    (error "Context expects 3 values"
                                           _g30087_)))
                              (let ((_lift119593_ (##vector-ref _g30086_ 0))
                                    (_lift219594_ (##vector-ref _g30086_ 1))
                                    (_hd19595_ (##vector-ref _g30086_ 2)))
                                (let* ((_expr19597_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd19595_
                                                     (cons _L19549_ '())))
                                         _stx19455_))
                                       (_expr19599_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift219594_
                                                     (cons _expr19597_ '())))
                                         _stx19455_))
                                       (_expr19601_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift119593_
                                                     (cons _expr19599_ '())))
                                         _stx19455_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr19601_)))))
                          (let ((_g30088_
                                 (_compile-bindings19458_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1960319606_
                                                     _g1960419608_)
                                              (cons _g1960319606_
                                                    _g1960419608_))
                                            '()
                                            _L19550_)))))
                            (begin
                              (let ((_g30089_
                                     (if (##values? _g30088_)
                                         (##vector-length _g30088_)
                                         1)))
                                (if (not (##fx= _g30089_ 3))
                                    (error "Context expects 3 values"
                                           _g30089_)))
                              (let ((_lift119611_ (##vector-ref _g30088_ 0))
                                    (_lift219612_ (##vector-ref _g30088_ 1))
                                    (_hd19613_ (##vector-ref _g30088_ 2)))
                                (let* ((_body19615_ (gxc#compile-e _L19549_))
                                       (_expr19617_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd19613_
                                                     (cons _body19615_ '())))
                                         _stx19455_))
                                       (_expr19619_
                                        (if (null? _lift219612_)
                                            _expr19617_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift219612_
                                                         (cons _expr19617_
                                                               '())))
                                             _stx19455_)))
                                       (_expr19621_
                                        (if (null? _lift119611_)
                                            _expr19619_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift119611_
                                                         (cons _expr19619_
                                                               '())))
                                             _stx19455_))))
                                  _expr19621_))))))
                    gx#current-expander-context
                    (let ((__obj30062 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj30062)
                        __obj30062)))))
                (___kont2986129862_
                 (lambda () (gxc#xform-let-values% _stx19455_))))
            (let ((___match2988229883_
                   (lambda (_e1946719501_
                            _hd1946819504_
                            _tl1946919506_
                            _e1947019509_
                            _hd1947119512_
                            _tl1947219514_
                            ___splice2985929860_
                            _target1947319517_
                            _tl1947519519_)
                     (letrec ((_loop1947619522_
                               (lambda (_hd1947419525_ _bind1948019527_)
                                 (if (gx#stx-pair? _hd1947419525_)
                                     (let ((_e1947719530_
                                            (gx#stx-e _hd1947419525_)))
                                       (let ((_lp-tl1947919535_
                                              (##cdr _e1947719530_))
                                             (_lp-hd1947819533_
                                              (##car _e1947719530_)))
                                         (_loop1947619522_
                                          _lp-tl1947919535_
                                          (cons _lp-hd1947819533_
                                                _bind1948019527_))))
                                     (let ((_bind1948119538_
                                            (reverse _bind1948019527_)))
                                       (if (gx#stx-pair? _tl1947219514_)
                                           (let ((_e1948219541_
                                                  (gx#stx-e _tl1947219514_)))
                                             (let ((_tl1948419546_
                                                    (##cdr _e1948219541_))
                                                   (_hd1948319544_
                                                    (##car _e1948219541_)))
                                               (if (gx#stx-null?
                                                    _tl1948419546_)
                                                   (let ((_L19549_
                                                          _hd1948319544_)
                                                         (_L19550_
                                                          _bind1948119538_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1957019573_ _g1957119575_)
                                     (cons _g1957019573_ _g1957119575_))
                                   '()
                                   _L19550_)))
                 (___kont2985729858_ _L19549_ _L19550_)
                 (___kont2986129862_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2986129862_))))
                                           (___kont2986129862_)))))))
                       (_loop1947619522_ _target1947319517_ '())))))
              (if (gx#stx-pair? ___stx2985529856_)
                  (let ((_e1946719501_ (gx#stx-e ___stx2985529856_)))
                    (let ((_tl1946919506_ (##cdr _e1946719501_))
                          (_hd1946819504_ (##car _e1946719501_)))
                      (if (gx#stx-pair? _tl1946919506_)
                          (let ((_e1947019509_ (gx#stx-e _tl1946919506_)))
                            (let ((_tl1947219514_ (##cdr _e1947019509_))
                                  (_hd1947119512_ (##car _e1947019509_)))
                              (if (gx#stx-pair/null? _hd1947119512_)
                                  (let ((___splice2985929860_
                                         (gx#syntax-split-splice
                                          _hd1947119512_
                                          '0)))
                                    (let ((_tl1947519519_
                                           (##vector-ref
                                            ___splice2985929860_
                                            '1))
                                          (_target1947319517_
                                           (##vector-ref
                                            ___splice2985929860_
                                            '0)))
                                      (if (gx#stx-null? _tl1947519519_)
                                          (___match2988229883_
                                           _e1946719501_
                                           _hd1946819504_
                                           _tl1946919506_
                                           _e1947019509_
                                           _hd1947119512_
                                           _tl1947219514_
                                           ___splice2985929860_
                                           _target1947319517_
                                           _tl1947519519_)
                                          (___kont2986129862_))))
                                  (___kont2986129862_))))
                          (___kont2986129862_))))
                  (___kont2986129862_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx18599_)
      (letrec* ((_bind-e__2745427455_
                 (lambda (_id19439_ _expr19440_ _compile?19441_)
                   (cons (cons _id19439_ '())
                         (cons (if _compile?19441_
                                   (gxc#compile-e _expr19440_)
                                   _expr19440_)
                               '()))))
                (_bind-e__0__2745627457_
                 (lambda (_id19446_ _expr19447_)
                   (let ((_compile?19449_ '#t))
                     (_bind-e__2745427455_
                      _id19446_
                      _expr19447_
                      _compile?19449_))))
                (_bind-e18601_
                 (lambda _g30091_
                   (let ((_g30090_ (length _g30091_)))
                     (cond ((##fx= _g30090_ 2)
                            (apply _bind-e__0__2745627457_ _g30091_))
                           ((##fx= _g30090_ 3)
                            (apply _bind-e__2745427455_ _g30091_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g30091_))))))
                (_compile-bindings18602_
                 (lambda (_rest18737_)
                   (let _lp18739_ ((_rest18741_ _rest18737_) (_bind18742_ '()))
                     (let* ((_rest1874318751_ _rest18741_)
                            (_else1874518759_
                             (lambda () (reverse _bind18742_)))
                            (_K1874719426_
                             (lambda (_rest18762_ _hd18763_)
                               (let* ((___stx2990529906_ _hd18763_)
                                      (_g1876818815_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2990529906_))))
                                 (let ((___kont2990729908_
                                        (lambda (_L19333_ _L19334_)
                                          (let* ((___stx2988529886_ _L19333_)
                                                 (_g1934919363_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2988529886_))))
                                            (let ((___kont2988729888_
                                                   (lambda (_L19411_)
                                                     (_lp18739_
                                                      _rest18762_
                                                      (cons (_bind-e__2745427455_
                                                             _L19334_
                                                             _L19333_
                                                             '#f)
                                                            _bind18742_))))
                                                  (___kont2988929890_
                                                   (lambda (_L19376_)
                                                     (let ((_g30092_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx18599_
                                                             _L19334_
                                                             _L19376_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g30093_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30092_)
                            (##vector-length _g30092_)
                            1)))
                   (if (not (##fx= _g30093_ 3))
                       (error "Context expects 3 values" _g30093_)))
                 (let ((_ids19386_ (##vector-ref _g30092_ 0))
                       (_impls19387_ (##vector-ref _g30092_ 1))
                       (_clauses19388_ (##vector-ref _g30092_ 2)))
                   (let* ((_g30094_
                           (for-each gx#core-bind-runtime! _ids19386_))
                          (_xbind19391_
                           (map _bind-e18601_ _ids19386_ _impls19387_))
                          (_expr*19393_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses19388_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*19395_
                           (_bind-e__2745427455_ _L19334_ _expr*19393_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L19334_)
                        '" => "
                        (map gxc#identifier-symbol _ids19386_))
                       (_lp18739_
                        _rest18762_
                        (cons _bind*19395_
                              (foldl1 cons _bind18742_ _xbind19391_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2989629897_
                                                     (lambda (_e1935219403_
                                                              _hd1935319406_
                                                              _tl1935419408_)
                                                       (let ((_L19411_
                                                              _tl1935419408_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19411_)
                     (___kont2988729888_ _L19411_)
                     (___kont2988929890_ _tl1935419408_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2988529886_)
                                                    (let ((_e1935219403_
                                                           (gx#stx-e
                                                            ___stx2988529886_)))
                                                      (let ((_tl1935419408_
                                                             (##cdr _e1935219403_))
                                                            (_hd1935319406_
                                                             (##car _e1935219403_)))
                                                        (___match2989629897_
                                                         _e1935219403_
                                                         _hd1935319406_
                                                         _tl1935419408_)))
                                                    (_g1934919363_)))))))
                                       (___kont2990929910_
                                        (lambda (_L19161_ _L19162_)
                                          (let* ((_g1917619206_
                                                  (lambda (_g1917719203_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1917719203_)))
                                                 (_g1917519301_
                                                  (lambda (_g1917719209_)
                                                    (if (gx#stx-pair?
                                                         _g1917719209_)
                                                        (let ((_e1918119211_
                                                               (gx#stx-e
                                                                _g1917719209_)))
                                                          (let ((_hd1918219214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1918119211_))
                        (_tl1918319216_ (##cdr _e1918119211_)))
                    (if (gx#stx-pair? _tl1918319216_)
                        (let ((_e1918419219_ (gx#stx-e _tl1918319216_)))
                          (let ((_hd1918519222_ (##car _e1918419219_))
                                (_tl1918619224_ (##cdr _e1918419219_)))
                            (if (gx#stx-pair? _hd1918519222_)
                                (let ((_e1918719227_
                                       (gx#stx-e _hd1918519222_)))
                                  (let ((_hd1918819230_ (##car _e1918719227_))
                                        (_tl1918919232_ (##cdr _e1918719227_)))
                                    (if (gx#stx-pair? _hd1918819230_)
                                        (let ((_e1919019235_
                                               (gx#stx-e _hd1918819230_)))
                                          (let ((_hd1919119238_
                                                 (##car _e1919019235_))
                                                (_tl1919219240_
                                                 (##cdr _e1919019235_)))
                                            (if (gx#stx-pair? _hd1919119238_)
                                                (let ((_e1919319243_
                                                       (gx#stx-e
                                                        _hd1919119238_)))
                                                  (let ((_hd1919419246_
                                                         (##car _e1919319243_))
                                                        (_tl1919519248_
                                                         (##cdr _e1919319243_)))
                                                    (if (gx#stx-null?
                                                         _tl1919519248_)
                                                        (if (gx#stx-pair?
                                                             _tl1919219240_)
                                                            (let ((_e1919619251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1919219240_)))
                      (let ((_hd1919719254_ (##car _e1919619251_))
                            (_tl1919819256_ (##cdr _e1919619251_)))
                        (if (gx#stx-null? _tl1919819256_)
                            (if (gx#stx-null? _tl1918919232_)
                                (if (gx#stx-pair? _tl1918619224_)
                                    (let ((_e1919919259_
                                           (gx#stx-e _tl1918619224_)))
                                      (let ((_hd1920019262_
                                             (##car _e1919919259_))
                                            (_tl1920119264_
                                             (##cdr _e1919919259_)))
                                        (if (gx#stx-null? _tl1920119264_)
                                            ((lambda (_L19267_
                                                      _L19268_
                                                      _L19269_)
                                               (let* ((_lambda-id19293_
                                                       (make-symbol
                                                        (gx#stx-e _L19162_)
                                                        (gensym '__)))
                                                      (_lambda-id19295_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id19293_
                                                        (gx#stx-source
                                                         _stx18599_)))
                                                      (_g30095_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id19295_))
                                                      (_new-case-lambda-expr19298_
                                                       (gxc#apply-expression-subst
                                                        _L19267_
                                                        _L19269_
                                                        _lambda-id19295_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L19162_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id19295_))
                                                   (_lp18739_
                                                    (cons (_bind-e__2745427455_
                                                           _L19162_
                                                           _new-case-lambda-expr19298_
                                                           '#f)
                                                          _rest18762_)
                                                    (cons (_bind-e__0__2745627457_
                                                           _lambda-id19295_
                                                           _L19268_)
                                                          _bind18742_)))))
                                             _hd1920019262_
                                             _hd1919719254_
                                             _hd1919419246_)
                                            (_g1917619206_ _g1917719209_))))
                                    (_g1917619206_ _g1917719209_))
                                (_g1917619206_ _g1917719209_))
                            (_g1917619206_ _g1917719209_))))
                    (_g1917619206_ _g1917719209_))
                (_g1917619206_ _g1917719209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1917619206_
                                                 _g1917719209_))))
                                        (_g1917619206_ _g1917719209_))))
                                (_g1917619206_ _g1917719209_))))
                        (_g1917619206_ _g1917719209_))))
                (_g1917619206_ _g1917719209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1917519301_ _L19161_))))
                                       (___kont2991129912_
                                        (lambda (_L18885_ _L18886_)
                                          (let* ((_g1890018953_
                                                  (lambda (_g1890118950_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1890118950_)))
                                                 (_g1889919129_
                                                  (lambda (_g1890118956_)
                                                    (if (gx#stx-pair?
                                                         _g1890118956_)
                                                        (let ((_e1890718958_
                                                               (gx#stx-e
                                                                _g1890118956_)))
                                                          (let ((_hd1890818961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1890718958_))
                        (_tl1890918963_ (##cdr _e1890718958_)))
                    (if (gx#stx-pair? _tl1890918963_)
                        (let ((_e1891018966_ (gx#stx-e _tl1890918963_)))
                          (let ((_hd1891118969_ (##car _e1891018966_))
                                (_tl1891218971_ (##cdr _e1891018966_)))
                            (if (gx#stx-pair? _hd1891118969_)
                                (let ((_e1891318974_
                                       (gx#stx-e _hd1891118969_)))
                                  (let ((_hd1891418977_ (##car _e1891318974_))
                                        (_tl1891518979_ (##cdr _e1891318974_)))
                                    (if (gx#stx-pair? _hd1891418977_)
                                        (let ((_e1891618982_
                                               (gx#stx-e _hd1891418977_)))
                                          (let ((_hd1891718985_
                                                 (##car _e1891618982_))
                                                (_tl1891818987_
                                                 (##cdr _e1891618982_)))
                                            (if (gx#stx-pair? _hd1891718985_)
                                                (let ((_e1891918990_
                                                       (gx#stx-e
                                                        _hd1891718985_)))
                                                  (let ((_hd1892018993_
                                                         (##car _e1891918990_))
                                                        (_tl1892118995_
                                                         (##cdr _e1891918990_)))
                                                    (if (gx#stx-null?
                                                         _tl1892118995_)
                                                        (if (gx#stx-pair?
                                                             _tl1891818987_)
                                                            (let ((_e1892218998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1891818987_)))
                      (let ((_hd1892319001_ (##car _e1892218998_))
                            (_tl1892419003_ (##cdr _e1892218998_)))
                        (if (gx#stx-pair? _hd1892319001_)
                            (let ((_e1892519006_ (gx#stx-e _hd1892319001_)))
                              (let ((_hd1892619009_ (##car _e1892519006_))
                                    (_tl1892719011_ (##cdr _e1892519006_)))
                                (if (gx#stx-pair? _tl1892719011_)
                                    (let ((_e1892819014_
                                           (gx#stx-e _tl1892719011_)))
                                      (let ((_hd1892919017_
                                             (##car _e1892819014_))
                                            (_tl1893019019_
                                             (##cdr _e1892819014_)))
                                        (if (gx#stx-pair? _hd1892919017_)
                                            (let ((_e1893119022_
                                                   (gx#stx-e _hd1892919017_)))
                                              (let ((_hd1893219025_
                                                     (##car _e1893119022_))
                                                    (_tl1893319027_
                                                     (##cdr _e1893119022_)))
                                                (if (gx#stx-pair?
                                                     _hd1893219025_)
                                                    (let ((_e1893419030_
                                                           (gx#stx-e
                                                            _hd1893219025_)))
                                                      (let ((_hd1893519033_
                                                             (##car _e1893419030_))
                                                            (_tl1893619035_
                                                             (##cdr _e1893419030_)))
                                                        (if (gx#stx-pair?
                                                             _hd1893519033_)
                                                            (let ((_e1893719038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1893519033_)))
                      (let ((_hd1893819041_ (##car _e1893719038_))
                            (_tl1893919043_ (##cdr _e1893719038_)))
                        (if (gx#stx-null? _tl1893919043_)
                            (if (gx#stx-pair? _tl1893619035_)
                                (let ((_e1894019046_
                                       (gx#stx-e _tl1893619035_)))
                                  (let ((_hd1894119049_ (##car _e1894019046_))
                                        (_tl1894219051_ (##cdr _e1894019046_)))
                                    (if (gx#stx-null? _tl1894219051_)
                                        (if (gx#stx-null? _tl1893319027_)
                                            (if (gx#stx-pair? _tl1893019019_)
                                                (let ((_e1894319054_
                                                       (gx#stx-e
                                                        _tl1893019019_)))
                                                  (let ((_hd1894419057_
                                                         (##car _e1894319054_))
                                                        (_tl1894519059_
                                                         (##cdr _e1894319054_)))
                                                    (if (gx#stx-null?
                                                         _tl1894519059_)
                                                        (if (gx#stx-null?
                                                             _tl1892419003_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1891518979_)
                        (if (gx#stx-pair? _tl1891218971_)
                            (let ((_e1894619062_ (gx#stx-e _tl1891218971_)))
                              (let ((_hd1894719065_ (##car _e1894619062_))
                                    (_tl1894819067_ (##cdr _e1894619062_)))
                                (if (gx#stx-null? _tl1894819067_)
                                    ((lambda (_L19070_
                                              _L19071_
                                              _L19072_
                                              _L19073_
                                              _L19074_)
                                       (let* ((_get-kws-id19114_
                                               (make-symbol
                                                (gx#stx-e _L18886_)
                                                (gensym '__)))
                                              (_get-kws-id19116_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id19114_
                                                (gx#stx-source _stx18599_)))
                                              (_main-id19118_
                                               (make-symbol
                                                (gx#stx-e _L18886_)
                                                (gensym '__)))
                                              (_main-id19120_
                                               (gx#core-quote-syntax__1
                                                _main-id19118_
                                                (gx#stx-source _stx18599_)))
                                              (_g30096_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id19116_))
                                              (_g30097_
                                               (gx#core-bind-runtime!__0
                                                _main-id19120_))
                                              (_new-kw-dispatch19124_
                                               (gxc#apply-expression-subst
                                                _L19070_
                                                _L19074_
                                                _get-kws-id19116_))
                                              (_new-get-kws19126_
                                               (gxc#apply-expression-subst
                                                _L19071_
                                                _L19073_
                                                _main-id19120_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L18886_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id19116_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id19120_))
                                           (_lp18739_
                                            (cons (_bind-e__2745427455_
                                                   _main-id19120_
                                                   _L19072_
                                                   '#f)
                                                  (cons (_bind-e__2745427455_
                                                         _get-kws-id19116_
                                                         _new-get-kws19126_
                                                         '#f)
                                                        (cons (_bind-e__2745427455_
                                                               _L18886_
                                                               _new-kw-dispatch19124_
                                                               '#f)
                                                              _rest18762_)))
                                            _bind18742_))))
                                     _hd1894719065_
                                     _hd1894419057_
                                     _hd1894119049_
                                     _hd1893819041_
                                     _hd1892018993_)
                                    (_g1890018953_ _g1890118956_))))
                            (_g1890018953_ _g1890118956_))
                        (_g1890018953_ _g1890118956_))
                    (_g1890018953_ _g1890118956_))
                (_g1890018953_ _g1890118956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1890018953_ _g1890118956_))
                                            (_g1890018953_ _g1890118956_))
                                        (_g1890018953_ _g1890118956_))))
                                (_g1890018953_ _g1890118956_))
                            (_g1890018953_ _g1890118956_))))
                    (_g1890018953_ _g1890118956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1890018953_
                                                     _g1890118956_))))
                                            (_g1890018953_ _g1890118956_))))
                                    (_g1890018953_ _g1890118956_))))
                            (_g1890018953_ _g1890118956_))))
                    (_g1890018953_ _g1890118956_))
                (_g1890018953_ _g1890118956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1890018953_
                                                 _g1890118956_))))
                                        (_g1890018953_ _g1890118956_))))
                                (_g1890018953_ _g1890118956_))))
                        (_g1890018953_ _g1890118956_))))
                (_g1890018953_ _g1890118956_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1889919129_ _L18885_))))
                                       (___kont2991329914_
                                        (lambda (_L18836_ _L18837_)
                                          (_lp18739_
                                           _rest18762_
                                           (cons (cons _L18837_
                                                       (cons (gxc#compile-e
                                                              _L18836_)
                                                             '()))
                                                 _bind18742_)))))
                                   (let* ((___match2998029981_
                                           (lambda (_e1879418861_
                                                    _hd1879518864_
                                                    _tl1879618866_
                                                    _e1879718869_
                                                    _hd1879818872_
                                                    _tl1879918874_
                                                    _e1880018877_
                                                    _hd1880118880_
                                                    _tl1880218882_)
                                             (let ((_L18885_ _hd1880118880_)
                                                   (_L18886_ _hd1879818872_))
                                               (if (if (gx#identifier?
                                                        _L18886_)
                                                       (gxc#kw-lambda-expr?
                                                        _L18885_)
                                                       '#f)
                                                   (___kont2991129912_
                                                    _L18885_
                                                    _L18886_)
                                                   (___kont2991329914_
                                                    _hd1880118880_
                                                    _hd1879518864_)))))
                                          (___match2995829959_
                                           (lambda (_e1878319137_
                                                    _hd1878419140_
                                                    _tl1878519142_
                                                    _e1878619145_
                                                    _hd1878719148_
                                                    _tl1878819150_
                                                    _e1878919153_
                                                    _hd1879019156_
                                                    _tl1879119158_)
                                             (let ((_L19161_ _hd1879019156_)
                                                   (_L19162_ _hd1878719148_))
                                               (if (if (gx#identifier?
                                                        _L19162_)
                                                       (gxc#opt-lambda-expr?
                                                        _L19161_)
                                                       '#f)
                                                   (___kont2990929910_
                                                    _L19161_
                                                    _L19162_)
                                                   (___match2998029981_
                                                    _e1878319137_
                                                    _hd1878419140_
                                                    _tl1878519142_
                                                    _e1878619145_
                                                    _hd1878719148_
                                                    _tl1878819150_
                                                    _e1878919153_
                                                    _hd1879019156_
                                                    _tl1879119158_)))))
                                          (___match2993629937_
                                           (lambda (_e1877219309_
                                                    _hd1877319312_
                                                    _tl1877419314_
                                                    _e1877519317_
                                                    _hd1877619320_
                                                    _tl1877719322_
                                                    _e1877819325_
                                                    _hd1877919328_
                                                    _tl1878019330_)
                                             (let ((_L19333_ _hd1877919328_)
                                                   (_L19334_ _hd1877619320_))
                                               (if (if (gx#identifier?
                                                        _L19334_)
                                                       (gxc#case-lambda-expr?
                                                        _L19333_)
                                                       '#f)
                                                   (___kont2990729908_
                                                    _L19333_
                                                    _L19334_)
                                                   (___match2995829959_
                                                    _e1877219309_
                                                    _hd1877319312_
                                                    _tl1877419314_
                                                    _e1877519317_
                                                    _hd1877619320_
                                                    _tl1877719322_
                                                    _e1877819325_
                                                    _hd1877919328_
                                                    _tl1878019330_))))))
                                     (if (gx#stx-pair? ___stx2990529906_)
                                         (let ((_e1877219309_
                                                (gx#stx-e ___stx2990529906_)))
                                           (let ((_tl1877419314_
                                                  (##cdr _e1877219309_))
                                                 (_hd1877319312_
                                                  (##car _e1877219309_)))
                                             (if (gx#stx-pair? _hd1877319312_)
                                                 (let ((_e1877519317_
                                                        (gx#stx-e
                                                         _hd1877319312_)))
                                                   (let ((_tl1877719322_
                                                          (##cdr _e1877519317_))
                                                         (_hd1877619320_
                                                          (##car _e1877519317_)))
                                                     (if (gx#stx-null?
                                                          _tl1877719322_)
                                                         (if (gx#stx-pair?
                                                              _tl1877419314_)
                                                             (let ((_e1877819325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1877419314_)))
                       (let ((_tl1878019330_ (##cdr _e1877819325_))
                             (_hd1877919328_ (##car _e1877819325_)))
                         (if (gx#stx-null? _tl1878019330_)
                             (___match2993629937_
                              _e1877219309_
                              _hd1877319312_
                              _tl1877419314_
                              _e1877519317_
                              _hd1877619320_
                              _tl1877719322_
                              _e1877819325_
                              _hd1877919328_
                              _tl1878019330_)
                             (_g1876818815_))))
                     (_g1876818815_))
                 (if (gx#stx-pair? _tl1877419314_)
                     (let ((_e1880818828_ (gx#stx-e _tl1877419314_)))
                       (let ((_tl1881018833_ (##cdr _e1880818828_))
                             (_hd1880918831_ (##car _e1880818828_)))
                         (if (gx#stx-null? _tl1881018833_)
                             (___kont2991329914_ _hd1880918831_ _hd1877319312_)
                             (_g1876818815_))))
                     (_g1876818815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1877419314_)
                                                     (let ((_e1880818828_
                                                            (gx#stx-e
                                                             _tl1877419314_)))
                                                       (let ((_tl1881018833_
                                                              (##cdr _e1880818828_))
                                                             (_hd1880918831_
                                                              (##car _e1880818828_)))
                                                         (if (gx#stx-null?
                                                              _tl1881018833_)
                                                             (___kont2991329914_
                                                              _hd1880918831_
                                                              _hd1877319312_)
                                                             (_g1876818815_))))
                                                     (_g1876818815_)))))
                                         (_g1876818815_))))))))
                       (if (##pair? _rest1874318751_)
                           (let ((_hd1874819429_ (##car _rest1874318751_))
                                 (_tl1874919431_ (##cdr _rest1874318751_)))
                             (let* ((_hd19434_ _hd1874819429_)
                                    (_rest19436_ _tl1874919431_))
                               (_K1874719426_ _rest19436_ _hd19434_)))
                           (_else1874518759_)))))))
        (let* ((___stx2999729998_ _stx18599_)
               (_g1860518632_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2999729998_))))
          (let ((___kont2999930000_
                 (lambda (_L18692_ _L18693_ _L18694_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd18731_
                             (_compile-bindings18602_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1872318726_ _g1872418728_)
                                          (cons _g1872318726_ _g1872418728_))
                                        '()
                                        _L18693_))))
                            (_body18732_ (gxc#compile-e _L18692_)))
                        (gxc#xform-wrap-source
                         (cons _L18694_
                               (cons _hd18731_ (cons _body18732_ '())))
                         _stx18599_)))
                    gx#current-expander-context
                    (let ((__obj30063 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj30063)
                        __obj30063)))))
                (___kont3000330004_
                 (lambda () (gxc#xform-let-values% _stx18599_))))
            (let ((___match3002430025_
                   (lambda (_e1861018644_
                            _hd1861118647_
                            _tl1861218649_
                            _e1861318652_
                            _hd1861418655_
                            _tl1861518657_
                            ___splice3000130002_
                            _target1861618660_
                            _tl1861818662_)
                     (letrec ((_loop1861918665_
                               (lambda (_hd1861718668_ _bind1862318670_)
                                 (if (gx#stx-pair? _hd1861718668_)
                                     (let ((_e1862018673_
                                            (gx#stx-e _hd1861718668_)))
                                       (let ((_lp-tl1862218678_
                                              (##cdr _e1862018673_))
                                             (_lp-hd1862118676_
                                              (##car _e1862018673_)))
                                         (_loop1861918665_
                                          _lp-tl1862218678_
                                          (cons _lp-hd1862118676_
                                                _bind1862318670_))))
                                     (let ((_bind1862418681_
                                            (reverse _bind1862318670_)))
                                       (if (gx#stx-pair? _tl1861518657_)
                                           (let ((_e1862518684_
                                                  (gx#stx-e _tl1861518657_)))
                                             (let ((_tl1862718689_
                                                    (##cdr _e1862518684_))
                                                   (_hd1862618687_
                                                    (##car _e1862518684_)))
                                               (if (gx#stx-null?
                                                    _tl1862718689_)
                                                   (let ((_L18692_
                                                          _hd1862618687_)
                                                         (_L18693_
                                                          _bind1862418681_)
                                                         (_L18694_
                                                          _hd1861118647_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1871518718_ _g1871618720_)
                                     (cons _g1871518718_ _g1871618720_))
                                   '()
                                   _L18693_)))
                 (___kont2999930000_ _L18692_ _L18693_ _L18694_)
                 (___kont3000330004_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3000330004_))))
                                           (___kont3000330004_)))))))
                       (_loop1861918665_ _target1861618660_ '())))))
              (if (gx#stx-pair? ___stx2999729998_)
                  (let ((_e1861018644_ (gx#stx-e ___stx2999729998_)))
                    (let ((_tl1861218649_ (##cdr _e1861018644_))
                          (_hd1861118647_ (##car _e1861018644_)))
                      (if (gx#stx-pair? _tl1861218649_)
                          (let ((_e1861318652_ (gx#stx-e _tl1861218649_)))
                            (let ((_tl1861518657_ (##cdr _e1861318652_))
                                  (_hd1861418655_ (##car _e1861318652_)))
                              (if (gx#stx-pair/null? _hd1861418655_)
                                  (let ((___splice3000130002_
                                         (gx#syntax-split-splice
                                          _hd1861418655_
                                          '0)))
                                    (let ((_tl1861818662_
                                           (##vector-ref
                                            ___splice3000130002_
                                            '1))
                                          (_target1861618660_
                                           (##vector-ref
                                            ___splice3000130002_
                                            '0)))
                                      (if (gx#stx-null? _tl1861818662_)
                                          (___match3002430025_
                                           _e1861018644_
                                           _hd1861118647_
                                           _tl1861218649_
                                           _e1861318652_
                                           _hd1861418655_
                                           _tl1861518657_
                                           ___splice3000130002_
                                           _target1861618660_
                                           _tl1861818662_)
                                          (___kont3000330004_))))
                                  (___kont3000330004_))))
                          (___kont3000330004_))))
                  (___kont3000330004_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind18517_)
      (let* ((___stx3002730028_ _bind18517_)
             (_g1852018537_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx3002730028_))))
        (let ((___kont3002930030_
               (lambda (_L18573_ _L18574_)
                 (if (gx#identifier? _L18574_)
                     (let ((_$e18590_ (gxc#case-lambda-expr? _L18573_)))
                       (if _$e18590_
                           _$e18590_
                           (let ((_$e18593_ (gxc#opt-lambda-expr? _L18573_)))
                             (if _$e18593_
                                 _$e18593_
                                 (gxc#kw-lambda-expr? _L18573_)))))
                     '#f)))
              (___kont3003130032_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx3002730028_)
              (let ((_e1852418549_ (gx#stx-e ___stx3002730028_)))
                (let ((_tl1852618554_ (##cdr _e1852418549_))
                      (_hd1852518552_ (##car _e1852418549_)))
                  (if (gx#stx-pair? _hd1852518552_)
                      (let ((_e1852718557_ (gx#stx-e _hd1852518552_)))
                        (let ((_tl1852918562_ (##cdr _e1852718557_))
                              (_hd1852818560_ (##car _e1852718557_)))
                          (if (gx#stx-null? _tl1852918562_)
                              (if (gx#stx-pair? _tl1852618554_)
                                  (let ((_e1853018565_
                                         (gx#stx-e _tl1852618554_)))
                                    (let ((_tl1853218570_
                                           (##cdr _e1853018565_))
                                          (_hd1853118568_
                                           (##car _e1853018565_)))
                                      (if (gx#stx-null? _tl1853218570_)
                                          (___kont3002930030_
                                           _hd1853118568_
                                           _hd1852818560_)
                                          (___kont3003130032_))))
                                  (___kont3003130032_))
                              (___kont3003130032_))))
                      (___kont3003130032_))))
              (___kont3003130032_)))))))
