(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (##make-promise
     (lambda ()
       (let ((_tbl27444_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl27444_ (force gxc#&void))
           (table-set! _tbl27444_ '%#begin gxc#collect-begin%)
           (table-set! _tbl27444_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl27444_ '%#module gxc#collect-module%)
           (table-set!
            _tbl27444_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl27444_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl27444_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl27444_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl27444_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl27444_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl27444_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl27444_ '%#call gxc#collect-type-call%)
           (table-set! _tbl27444_ '%#if gxc#collect-operands)
           (table-set! _tbl27444_ '%#set! gxc#collect-body-setq%)
           _tbl27444_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx27437_ . _args27439_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27437_ _args27439_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (##make-promise
     (lambda ()
       (let ((_tbl27434_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl27434_ (force gxc#&false))
           (table-set! _tbl27434_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl27434_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl27434_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl27434_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set!
            _tbl27434_
            '%#let-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl27434_
            '%#letrec-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl27434_
            '%#letrec*-values
            gxc#basic-expression-type-let-values%)
           (table-set! _tbl27434_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl27434_ '%#ref gxc#basic-expression-type-ref%)
           _tbl27434_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx27427_ . _args27429_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27427_ _args27429_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (##make-promise
     (lambda ()
       (let ((_tbl27424_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl27424_ (force gxc#&basic-xform))
           (table-set!
            _tbl27424_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl27424_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl27424_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl27424_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl27424_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx27417_ . _args27419_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27417_ _args27419_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx27273_)
      (let* ((___stx2745727458_ _stx27273_)
             (_g2727627307_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2745727458_))))
        (let ((___kont2745927460_
               (lambda (_L27389_ _L27390_)
                 (let ((_sym27406_ (gxc#identifier-symbol _L27390_)))
                   (begin
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym27406_
                          '#f)
                         (gxc#verbose
                          '"skipping type declaration for mutable binding "
                          _sym27406_)
                         (let ((_type2740727409_
                                (gxc#apply-basic-expression-type _L27389_)))
                           (if _type2740727409_
                               (let ((_type27412_ _type2740727409_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym27406_
                                  _type27412_))
                               '#f)))
                     (gxc#compile-e _L27389_)))))
              (___kont2746127462_
               (lambda (_L27336_ _L27337_) (gxc#compile-e _L27336_))))
          (let ((___match2749027491_
                 (lambda (_e2728027357_
                          _hd2728127360_
                          _tl2728227362_
                          _e2728327365_
                          _hd2728427368_
                          _tl2728527370_
                          _e2728627373_
                          _hd2728727376_
                          _tl2728827378_
                          _e2728927381_
                          _hd2729027384_
                          _tl2729127386_)
                   (let ((_L27389_ _hd2729027384_) (_L27390_ _hd2728727376_))
                     (if (gx#identifier? _L27390_)
                         (___kont2745927460_ _L27389_ _L27390_)
                         (___kont2746127462_
                          _hd2729027384_
                          _hd2728427368_))))))
            (if (gx#stx-pair? ___stx2745727458_)
                (let ((_e2728027357_ (gx#stx-e ___stx2745727458_)))
                  (let ((_tl2728227362_ (##cdr _e2728027357_))
                        (_hd2728127360_ (##car _e2728027357_)))
                    (if (gx#stx-pair? _tl2728227362_)
                        (let ((_e2728327365_ (gx#stx-e _tl2728227362_)))
                          (let ((_tl2728527370_ (##cdr _e2728327365_))
                                (_hd2728427368_ (##car _e2728327365_)))
                            (if (gx#stx-pair? _hd2728427368_)
                                (let ((_e2728627373_
                                       (gx#stx-e _hd2728427368_)))
                                  (let ((_tl2728827378_ (##cdr _e2728627373_))
                                        (_hd2728727376_ (##car _e2728627373_)))
                                    (if (gx#stx-null? _tl2728827378_)
                                        (if (gx#stx-pair? _tl2728527370_)
                                            (let ((_e2728927381_
                                                   (gx#stx-e _tl2728527370_)))
                                              (let ((_tl2729127386_
                                                     (##cdr _e2728927381_))
                                                    (_hd2729027384_
                                                     (##car _e2728927381_)))
                                                (if (gx#stx-null?
                                                     _tl2729127386_)
                                                    (___match2749027491_
                                                     _e2728027357_
                                                     _hd2728127360_
                                                     _tl2728227362_
                                                     _e2728327365_
                                                     _hd2728427368_
                                                     _tl2728527370_
                                                     _e2728627373_
                                                     _hd2728727376_
                                                     _tl2728827378_
                                                     _e2728927381_
                                                     _hd2729027384_
                                                     _tl2729127386_)
                                                    (_g2727627307_))))
                                            (_g2727627307_))
                                        (if (gx#stx-pair? _tl2728527370_)
                                            (let ((_e2730027328_
                                                   (gx#stx-e _tl2728527370_)))
                                              (let ((_tl2730227333_
                                                     (##cdr _e2730027328_))
                                                    (_hd2730127331_
                                                     (##car _e2730027328_)))
                                                (if (gx#stx-null?
                                                     _tl2730227333_)
                                                    (___kont2746127462_
                                                     _hd2730127331_
                                                     _hd2728427368_)
                                                    (_g2727627307_))))
                                            (_g2727627307_)))))
                                (if (gx#stx-pair? _tl2728527370_)
                                    (let ((_e2730027328_
                                           (gx#stx-e _tl2728527370_)))
                                      (let ((_tl2730227333_
                                             (##cdr _e2730027328_))
                                            (_hd2730127331_
                                             (##car _e2730027328_)))
                                        (if (gx#stx-null? _tl2730227333_)
                                            (___kont2746127462_
                                             _hd2730127331_
                                             _hd2728427368_)
                                            (_g2727627307_))))
                                    (_g2727627307_)))))
                        (_g2727627307_))))
                (_g2727627307_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx27058_)
      (letrec ((_collect-e27060_
                (lambda (_hd27217_ _expr27218_)
                  (let* ((___stx2751327514_ _hd27217_)
                         (_g2722127231_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2751327514_))))
                    (let ((___kont2751527516_
                           (lambda (_L27251_)
                             (let ((_sym27262_
                                    (gxc#identifier-symbol _L27251_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym27262_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym27262_)
                                   (let ((_type2726327265_
                                          (gxc#apply-basic-expression-type
                                           _expr27218_)))
                                     (if _type2726327265_
                                         (let ((_type27268_ _type2726327265_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym27262_
                                            _type27268_
                                            '#t))
                                         '#f))))))
                          (___kont2751727518_ (lambda () '#!void)))
                      (let ((___match2752627527_
                             (lambda (_e2722427243_
                                      _hd2722527246_
                                      _tl2722627248_)
                               (let ((_L27251_ _hd2722527246_))
                                 (if (gx#identifier? _L27251_)
                                     (___kont2751527516_ _L27251_)
                                     (___kont2751727518_))))))
                        (if (gx#stx-pair? ___stx2751327514_)
                            (let ((_e2722427243_ (gx#stx-e ___stx2751327514_)))
                              (let ((_tl2722627248_ (##cdr _e2722427243_))
                                    (_hd2722527246_ (##car _e2722427243_)))
                                (if (gx#stx-null? _tl2722627248_)
                                    (___match2752627527_
                                     _e2722427243_
                                     _hd2722527246_
                                     _tl2722627248_)
                                    (___kont2751727518_))))
                            (___kont2751727518_))))))))
        (let* ((_g2706227097_
                (lambda (_g2706327094_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2706327094_)))
               (_g2706127214_
                (lambda (_g2706327100_)
                  (if (gx#stx-pair? _g2706327100_)
                      (let ((_e2706727102_ (gx#stx-e _g2706327100_)))
                        (let ((_hd2706827105_ (##car _e2706727102_))
                              (_tl2706927107_ (##cdr _e2706727102_)))
                          (if (gx#stx-pair? _tl2706927107_)
                              (let ((_e2707027110_ (gx#stx-e _tl2706927107_)))
                                (let ((_hd2707127113_ (##car _e2707027110_))
                                      (_tl2707227115_ (##cdr _e2707027110_)))
                                  (if (gx#stx-pair/null? _hd2707127113_)
                                      (let ((_g30062_
                                             (gx#syntax-split-splice
                                              _hd2707127113_
                                              '0)))
                                        (begin
                                          (let ((_g30063_
                                                 (if (##values? _g30062_)
                                                     (##vector-length _g30062_)
                                                     1)))
                                            (if (not (##fx= _g30063_ 2))
                                                (error "Context expects 2 values"
                                                       _g30063_)))
                                          (let ((_target2707327118_
                                                 (##vector-ref _g30062_ 0))
                                                (_tl2707527120_
                                                 (##vector-ref _g30062_ 1)))
                                            (if (gx#stx-null? _tl2707527120_)
                                                (letrec ((_loop2707627123_
                                                          (lambda (_hd2707427126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2708027128_
                           _hd2708127130_)
                    (if (gx#stx-pair? _hd2707427126_)
                        (let ((_e2707727133_ (gx#stx-e _hd2707427126_)))
                          (let ((_lp-hd2707827136_ (##car _e2707727133_))
                                (_lp-tl2707927138_ (##cdr _e2707727133_)))
                            (if (gx#stx-pair? _lp-hd2707827136_)
                                (let ((_e2708427141_
                                       (gx#stx-e _lp-hd2707827136_)))
                                  (let ((_hd2708527144_ (##car _e2708427141_))
                                        (_tl2708627146_ (##cdr _e2708427141_)))
                                    (if (gx#stx-pair? _tl2708627146_)
                                        (let ((_e2708727149_
                                               (gx#stx-e _tl2708627146_)))
                                          (let ((_hd2708827152_
                                                 (##car _e2708727149_))
                                                (_tl2708927154_
                                                 (##cdr _e2708727149_)))
                                            (if (gx#stx-null? _tl2708927154_)
                                                (_loop2707627123_
                                                 _lp-tl2707927138_
                                                 (cons _hd2708827152_
                                                       _expr2708027128_)
                                                 (cons _hd2708527144_
                                                       _hd2708127130_))
                                                (_g2706227097_
                                                 _g2706327100_))))
                                        (_g2706227097_ _g2706327100_))))
                                (_g2706227097_ _g2706327100_))))
                        (let ((_expr2708227157_ (reverse _expr2708027128_))
                              (_hd2708327159_ (reverse _hd2708127130_)))
                          (if (gx#stx-pair? _tl2707227115_)
                              (let ((_e2709027162_ (gx#stx-e _tl2707227115_)))
                                (let ((_hd2709127165_ (##car _e2709027162_))
                                      (_tl2709227167_ (##cdr _e2709027162_)))
                                  (if (gx#stx-null? _tl2709227167_)
                                      ((lambda (_L27170_ _L27171_ _L27172_)
                                         (begin
                                           (for-each
                                            _collect-e27060_
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2719227195_
                                                               _g2719327197_)
                                                        (cons _g2719227195_
                                                              _g2719327197_))
                                                      '()
                                                      _L27172_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2719927202_
                                                               _g2720027204_)
                                                        (cons _g2719927202_
                                                              _g2720027204_))
                                                      '()
                                                      _L27171_)))
                                           (for-each
                                            gxc#compile-e
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2720627209_
                                                               _g2720727211_)
                                                        (cons _g2720627209_
                                                              _g2720727211_))
                                                      '()
                                                      _L27171_)))
                                           (gxc#compile-e _L27170_)))
                                       _hd2709127165_
                                       _expr2708227157_
                                       _hd2708327159_)
                                      (_g2706227097_ _g2706327100_))))
                              (_g2706227097_ _g2706327100_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2707627123_
                                                   _target2707327118_
                                                   '()
                                                   '()))
                                                (_g2706227097_
                                                 _g2706327100_)))))
                                      (_g2706227097_ _g2706327100_))))
                              (_g2706227097_ _g2706327100_))))
                      (_g2706227097_ _g2706327100_)))))
          (_g2706127214_ _stx27058_)))))
  (define gxc#collect-type-call%
    (lambda (_stx26550_)
      (let* ((___stx2752927530_ _stx26550_)
             (_g2655426669_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2752927530_))))
        (let ((___kont2753127532_
               (lambda (_L27008_ _L27009_ _L27010_ _L27011_ _L27012_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L27011_)
                  (gx#stx-e _L27010_)
                  (gxc#identifier-symbol _L27009_)
                  (gx#stx-e _L27008_))))
              (___kont2753327534_
               (lambda (_L26836_ _L26837_ _L26838_ _L26839_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L26838_)
                  (gx#stx-e _L26837_)
                  (gxc#identifier-symbol _L26836_)
                  '#f)))
              (___kont2753527536_
               (lambda (_L26706_)
                 (for-each
                  gxc#compile-e
                  (begin
                    '#!void
                    (foldr1 (lambda (_g2671926722_ _g2672026724_)
                              (cons _g2671926722_ _g2672026724_))
                            '()
                            _L26706_))))))
          (let* ((___match2778627787_
                  (lambda (_e2665326674_
                           _hd2665426677_
                           _tl2665526679_
                           ___splice2753727538_
                           _target2665626682_
                           _tl2665826684_)
                    (letrec ((_loop2665926687_
                              (lambda (_hd2665726690_ _expr2666326692_)
                                (if (gx#stx-pair? _hd2665726690_)
                                    (let ((_e2666026695_
                                           (gx#stx-e _hd2665726690_)))
                                      (let ((_lp-tl2666226700_
                                             (##cdr _e2666026695_))
                                            (_lp-hd2666126698_
                                             (##car _e2666026695_)))
                                        (_loop2665926687_
                                         _lp-tl2666226700_
                                         (cons _lp-hd2666126698_
                                               _expr2666326692_))))
                                    (let ((_expr2666426703_
                                           (reverse _expr2666326692_)))
                                      (___kont2753527536_
                                       _expr2666426703_))))))
                      (_loop2665926687_ _target2665626682_ '()))))
                 (___match2766627667_
                  (lambda (_e2656126880_
                           _hd2656226883_
                           _tl2656326885_
                           _e2656426888_
                           _hd2656526891_
                           _tl2656626893_
                           _e2656726896_
                           _hd2656826899_
                           _tl2656926901_
                           _e2657026904_
                           _hd2657126907_
                           _tl2657226909_
                           _e2657326912_
                           _hd2657426915_
                           _tl2657526917_
                           _e2657626920_
                           _hd2657726923_
                           _tl2657826925_
                           _e2657926928_
                           _hd2658026931_
                           _tl2658126933_
                           _e2658226936_
                           _hd2658326939_
                           _tl2658426941_
                           _e2658526944_
                           _hd2658626947_
                           _tl2658726949_
                           _e2658826952_
                           _hd2658926955_
                           _tl2659026957_
                           _e2659126960_
                           _hd2659226963_
                           _tl2659326965_
                           _e2659426968_
                           _hd2659526971_
                           _tl2659626973_
                           _e2659726976_
                           _hd2659826979_
                           _tl2659926981_
                           _e2660026984_
                           _hd2660126987_
                           _tl2660226989_
                           _e2660326992_
                           _hd2660426995_
                           _tl2660526997_
                           _e2660627000_
                           _hd2660727003_
                           _tl2660827005_)
                    (let ((_L27008_ _hd2660727003_)
                          (_L27009_ _hd2659826979_)
                          (_L27010_ _hd2658926955_)
                          (_L27011_ _hd2658026931_)
                          (_L27012_ _hd2657126907_))
                      (if (gxc#runtime-identifier=? _L27012_ 'bind-method!)
                          (___kont2753127532_
                           _L27008_
                           _L27009_
                           _L27010_
                           _L27011_
                           _L27012_)
                          (if (gx#stx-pair/null? _tl2656326885_)
                              (let ((___splice2753727538_
                                     (gx#syntax-split-splice
                                      _tl2656326885_
                                      '0)))
                                (let ((_tl2665826684_
                                       (##vector-ref ___splice2753727538_ '1))
                                      (_target2665626682_
                                       (##vector-ref ___splice2753727538_ '0)))
                                  (if (gx#stx-null? _tl2665826684_)
                                      (___match2778627787_
                                       _e2656126880_
                                       _hd2656226883_
                                       _tl2656326885_
                                       ___splice2753727538_
                                       _target2665626682_
                                       _tl2665826684_)
                                      (_g2655426669_))))
                              (_g2655426669_)))))))
            (if (gx#stx-pair? ___stx2752927530_)
                (let ((_e2656126880_ (gx#stx-e ___stx2752927530_)))
                  (let ((_tl2656326885_ (##cdr _e2656126880_))
                        (_hd2656226883_ (##car _e2656126880_)))
                    (if (gx#stx-pair? _tl2656326885_)
                        (let ((_e2656426888_ (gx#stx-e _tl2656326885_)))
                          (let ((_tl2656626893_ (##cdr _e2656426888_))
                                (_hd2656526891_ (##car _e2656426888_)))
                            (if (gx#stx-pair? _hd2656526891_)
                                (let ((_e2656726896_
                                       (gx#stx-e _hd2656526891_)))
                                  (let ((_tl2656926901_ (##cdr _e2656726896_))
                                        (_hd2656826899_ (##car _e2656726896_)))
                                    (if (gx#identifier? _hd2656826899_)
                                        (if (gx#stx-eq? '%#ref _hd2656826899_)
                                            (if (gx#stx-pair? _tl2656926901_)
                                                (let ((_e2657026904_
                                                       (gx#stx-e
                                                        _tl2656926901_)))
                                                  (let ((_tl2657226909_
                                                         (##cdr _e2657026904_))
                                                        (_hd2657126907_
                                                         (##car _e2657026904_)))
                                                    (if (gx#stx-null?
                                                         _tl2657226909_)
                                                        (if (gx#stx-pair?
                                                             _tl2656626893_)
                                                            (let ((_e2657326912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2656626893_)))
                      (let ((_tl2657526917_ (##cdr _e2657326912_))
                            (_hd2657426915_ (##car _e2657326912_)))
                        (if (gx#stx-pair? _hd2657426915_)
                            (let ((_e2657626920_ (gx#stx-e _hd2657426915_)))
                              (let ((_tl2657826925_ (##cdr _e2657626920_))
                                    (_hd2657726923_ (##car _e2657626920_)))
                                (if (gx#identifier? _hd2657726923_)
                                    (if (gx#stx-eq? '%#ref _hd2657726923_)
                                        (if (gx#stx-pair? _tl2657826925_)
                                            (let ((_e2657926928_
                                                   (gx#stx-e _tl2657826925_)))
                                              (let ((_tl2658126933_
                                                     (##cdr _e2657926928_))
                                                    (_hd2658026931_
                                                     (##car _e2657926928_)))
                                                (if (gx#stx-null?
                                                     _tl2658126933_)
                                                    (if (gx#stx-pair?
                                                         _tl2657526917_)
                                                        (let ((_e2658226936_
                                                               (gx#stx-e
                                                                _tl2657526917_)))
                                                          (let ((_tl2658426941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2658226936_))
                        (_hd2658326939_ (##car _e2658226936_)))
                    (if (gx#stx-pair? _hd2658326939_)
                        (let ((_e2658526944_ (gx#stx-e _hd2658326939_)))
                          (let ((_tl2658726949_ (##cdr _e2658526944_))
                                (_hd2658626947_ (##car _e2658526944_)))
                            (if (gx#identifier? _hd2658626947_)
                                (if (gx#stx-eq? '%#quote _hd2658626947_)
                                    (if (gx#stx-pair? _tl2658726949_)
                                        (let ((_e2658826952_
                                               (gx#stx-e _tl2658726949_)))
                                          (let ((_tl2659026957_
                                                 (##cdr _e2658826952_))
                                                (_hd2658926955_
                                                 (##car _e2658826952_)))
                                            (if (gx#stx-null? _tl2659026957_)
                                                (if (gx#stx-pair?
                                                     _tl2658426941_)
                                                    (let ((_e2659126960_
                                                           (gx#stx-e
                                                            _tl2658426941_)))
                                                      (let ((_tl2659326965_
                                                             (##cdr _e2659126960_))
                                                            (_hd2659226963_
                                                             (##car _e2659126960_)))
                                                        (if (gx#stx-pair?
                                                             _hd2659226963_)
                                                            (let ((_e2659426968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2659226963_)))
                      (let ((_tl2659626973_ (##cdr _e2659426968_))
                            (_hd2659526971_ (##car _e2659426968_)))
                        (if (gx#identifier? _hd2659526971_)
                            (if (gx#stx-eq? '%#ref _hd2659526971_)
                                (if (gx#stx-pair? _tl2659626973_)
                                    (let ((_e2659726976_
                                           (gx#stx-e _tl2659626973_)))
                                      (let ((_tl2659926981_
                                             (##cdr _e2659726976_))
                                            (_hd2659826979_
                                             (##car _e2659726976_)))
                                        (if (gx#stx-null? _tl2659926981_)
                                            (if (gx#stx-pair? _tl2659326965_)
                                                (let ((_e2660026984_
                                                       (gx#stx-e
                                                        _tl2659326965_)))
                                                  (let ((_tl2660226989_
                                                         (##cdr _e2660026984_))
                                                        (_hd2660126987_
                                                         (##car _e2660026984_)))
                                                    (if (gx#stx-pair?
                                                         _hd2660126987_)
                                                        (let ((_e2660326992_
                                                               (gx#stx-e
                                                                _hd2660126987_)))
                                                          (let ((_tl2660526997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2660326992_))
                        (_hd2660426995_ (##car _e2660326992_)))
                    (if (gx#identifier? _hd2660426995_)
                        (if (gx#stx-eq? '%#quote _hd2660426995_)
                            (if (gx#stx-pair? _tl2660526997_)
                                (let ((_e2660627000_
                                       (gx#stx-e _tl2660526997_)))
                                  (let ((_tl2660827005_ (##cdr _e2660627000_))
                                        (_hd2660727003_ (##car _e2660627000_)))
                                    (if (gx#stx-null? _tl2660827005_)
                                        (if (gx#stx-null? _tl2660226989_)
                                            (___match2766627667_
                                             _e2656126880_
                                             _hd2656226883_
                                             _tl2656326885_
                                             _e2656426888_
                                             _hd2656526891_
                                             _tl2656626893_
                                             _e2656726896_
                                             _hd2656826899_
                                             _tl2656926901_
                                             _e2657026904_
                                             _hd2657126907_
                                             _tl2657226909_
                                             _e2657326912_
                                             _hd2657426915_
                                             _tl2657526917_
                                             _e2657626920_
                                             _hd2657726923_
                                             _tl2657826925_
                                             _e2657926928_
                                             _hd2658026931_
                                             _tl2658126933_
                                             _e2658226936_
                                             _hd2658326939_
                                             _tl2658426941_
                                             _e2658526944_
                                             _hd2658626947_
                                             _tl2658726949_
                                             _e2658826952_
                                             _hd2658926955_
                                             _tl2659026957_
                                             _e2659126960_
                                             _hd2659226963_
                                             _tl2659326965_
                                             _e2659426968_
                                             _hd2659526971_
                                             _tl2659626973_
                                             _e2659726976_
                                             _hd2659826979_
                                             _tl2659926981_
                                             _e2660026984_
                                             _hd2660126987_
                                             _tl2660226989_
                                             _e2660326992_
                                             _hd2660426995_
                                             _tl2660526997_
                                             _e2660627000_
                                             _hd2660727003_
                                             _tl2660827005_)
                                            (if (gx#stx-pair/null?
                                                 _tl2656326885_)
                                                (let ((___splice2753727538_
                                                       (gx#syntax-split-splice
                                                        _tl2656326885_
                                                        '0)))
                                                  (let ((_tl2665826684_
                                                         (##vector-ref
                                                          ___splice2753727538_
                                                          '1))
                                                        (_target2665626682_
                                                         (##vector-ref
                                                          ___splice2753727538_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2665826684_)
                                                        (___match2778627787_
                                                         _e2656126880_
                                                         _hd2656226883_
                                                         _tl2656326885_
                                                         ___splice2753727538_
                                                         _target2665626682_
                                                         _tl2665826684_)
                                                        (_g2655426669_))))
                                                (_g2655426669_)))
                                        (if (gx#stx-pair/null? _tl2656326885_)
                                            (let ((___splice2753727538_
                                                   (gx#syntax-split-splice
                                                    _tl2656326885_
                                                    '0)))
                                              (let ((_tl2665826684_
                                                     (##vector-ref
                                                      ___splice2753727538_
                                                      '1))
                                                    (_target2665626682_
                                                     (##vector-ref
                                                      ___splice2753727538_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2665826684_)
                                                    (___match2778627787_
                                                     _e2656126880_
                                                     _hd2656226883_
                                                     _tl2656326885_
                                                     ___splice2753727538_
                                                     _target2665626682_
                                                     _tl2665826684_)
                                                    (_g2655426669_))))
                                            (_g2655426669_)))))
                                (if (gx#stx-pair/null? _tl2656326885_)
                                    (let ((___splice2753727538_
                                           (gx#syntax-split-splice
                                            _tl2656326885_
                                            '0)))
                                      (let ((_tl2665826684_
                                             (##vector-ref
                                              ___splice2753727538_
                                              '1))
                                            (_target2665626682_
                                             (##vector-ref
                                              ___splice2753727538_
                                              '0)))
                                        (if (gx#stx-null? _tl2665826684_)
                                            (___match2778627787_
                                             _e2656126880_
                                             _hd2656226883_
                                             _tl2656326885_
                                             ___splice2753727538_
                                             _target2665626682_
                                             _tl2665826684_)
                                            (_g2655426669_))))
                                    (_g2655426669_)))
                            (if (gx#stx-pair/null? _tl2656326885_)
                                (let ((___splice2753727538_
                                       (gx#syntax-split-splice
                                        _tl2656326885_
                                        '0)))
                                  (let ((_tl2665826684_
                                         (##vector-ref
                                          ___splice2753727538_
                                          '1))
                                        (_target2665626682_
                                         (##vector-ref
                                          ___splice2753727538_
                                          '0)))
                                    (if (gx#stx-null? _tl2665826684_)
                                        (___match2778627787_
                                         _e2656126880_
                                         _hd2656226883_
                                         _tl2656326885_
                                         ___splice2753727538_
                                         _target2665626682_
                                         _tl2665826684_)
                                        (_g2655426669_))))
                                (_g2655426669_)))
                        (if (gx#stx-pair/null? _tl2656326885_)
                            (let ((___splice2753727538_
                                   (gx#syntax-split-splice _tl2656326885_ '0)))
                              (let ((_tl2665826684_
                                     (##vector-ref ___splice2753727538_ '1))
                                    (_target2665626682_
                                     (##vector-ref ___splice2753727538_ '0)))
                                (if (gx#stx-null? _tl2665826684_)
                                    (___match2778627787_
                                     _e2656126880_
                                     _hd2656226883_
                                     _tl2656326885_
                                     ___splice2753727538_
                                     _target2665626682_
                                     _tl2665826684_)
                                    (_g2655426669_))))
                            (_g2655426669_)))))
                (if (gx#stx-pair/null? _tl2656326885_)
                    (let ((___splice2753727538_
                           (gx#syntax-split-splice _tl2656326885_ '0)))
                      (let ((_tl2665826684_
                             (##vector-ref ___splice2753727538_ '1))
                            (_target2665626682_
                             (##vector-ref ___splice2753727538_ '0)))
                        (if (gx#stx-null? _tl2665826684_)
                            (___match2778627787_
                             _e2656126880_
                             _hd2656226883_
                             _tl2656326885_
                             ___splice2753727538_
                             _target2665626682_
                             _tl2665826684_)
                            (_g2655426669_))))
                    (_g2655426669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2659326965_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L26836_
                                                               _hd2659826979_)
                                                              (_L26837_
                                                               _hd2658926955_)
                                                              (_L26838_
                                                               _hd2658026931_)
                                                              (_L26839_
                                                               _hd2657126907_))
                                                          (___kont2753327534_
                                                           _L26836_
                                                           _L26837_
                                                           _L26838_
                                                           _L26839_))
                                                        (if (gx#stx-pair/null?
                                                             _tl2656326885_)
                                                            (let ((___splice2753727538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl2656326885_ '0)))
                      (let ((_tl2665826684_
                             (##vector-ref ___splice2753727538_ '1))
                            (_target2665626682_
                             (##vector-ref ___splice2753727538_ '0)))
                        (if (gx#stx-null? _tl2665826684_)
                            (___match2778627787_
                             _e2656126880_
                             _hd2656226883_
                             _tl2656326885_
                             ___splice2753727538_
                             _target2665626682_
                             _tl2665826684_)
                            (_g2655426669_))))
                    (_g2655426669_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2656326885_)
                                                        (let ((___splice2753727538_
                                                               (gx#syntax-split-splice
                                                                _tl2656326885_
                                                                '0)))
                                                          (let ((_tl2665826684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2753727538_ '1))
                        (_target2665626682_
                         (##vector-ref ___splice2753727538_ '0)))
                    (if (gx#stx-null? _tl2665826684_)
                        (___match2778627787_
                         _e2656126880_
                         _hd2656226883_
                         _tl2656326885_
                         ___splice2753727538_
                         _target2665626682_
                         _tl2665826684_)
                        (_g2655426669_))))
                (_g2655426669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2656326885_)
                                                (let ((___splice2753727538_
                                                       (gx#syntax-split-splice
                                                        _tl2656326885_
                                                        '0)))
                                                  (let ((_tl2665826684_
                                                         (##vector-ref
                                                          ___splice2753727538_
                                                          '1))
                                                        (_target2665626682_
                                                         (##vector-ref
                                                          ___splice2753727538_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2665826684_)
                                                        (___match2778627787_
                                                         _e2656126880_
                                                         _hd2656226883_
                                                         _tl2656326885_
                                                         ___splice2753727538_
                                                         _target2665626682_
                                                         _tl2665826684_)
                                                        (_g2655426669_))))
                                                (_g2655426669_)))))
                                    (if (gx#stx-pair/null? _tl2656326885_)
                                        (let ((___splice2753727538_
                                               (gx#syntax-split-splice
                                                _tl2656326885_
                                                '0)))
                                          (let ((_tl2665826684_
                                                 (##vector-ref
                                                  ___splice2753727538_
                                                  '1))
                                                (_target2665626682_
                                                 (##vector-ref
                                                  ___splice2753727538_
                                                  '0)))
                                            (if (gx#stx-null? _tl2665826684_)
                                                (___match2778627787_
                                                 _e2656126880_
                                                 _hd2656226883_
                                                 _tl2656326885_
                                                 ___splice2753727538_
                                                 _target2665626682_
                                                 _tl2665826684_)
                                                (_g2655426669_))))
                                        (_g2655426669_)))
                                (if (gx#stx-pair/null? _tl2656326885_)
                                    (let ((___splice2753727538_
                                           (gx#syntax-split-splice
                                            _tl2656326885_
                                            '0)))
                                      (let ((_tl2665826684_
                                             (##vector-ref
                                              ___splice2753727538_
                                              '1))
                                            (_target2665626682_
                                             (##vector-ref
                                              ___splice2753727538_
                                              '0)))
                                        (if (gx#stx-null? _tl2665826684_)
                                            (___match2778627787_
                                             _e2656126880_
                                             _hd2656226883_
                                             _tl2656326885_
                                             ___splice2753727538_
                                             _target2665626682_
                                             _tl2665826684_)
                                            (_g2655426669_))))
                                    (_g2655426669_)))
                            (if (gx#stx-pair/null? _tl2656326885_)
                                (let ((___splice2753727538_
                                       (gx#syntax-split-splice
                                        _tl2656326885_
                                        '0)))
                                  (let ((_tl2665826684_
                                         (##vector-ref
                                          ___splice2753727538_
                                          '1))
                                        (_target2665626682_
                                         (##vector-ref
                                          ___splice2753727538_
                                          '0)))
                                    (if (gx#stx-null? _tl2665826684_)
                                        (___match2778627787_
                                         _e2656126880_
                                         _hd2656226883_
                                         _tl2656326885_
                                         ___splice2753727538_
                                         _target2665626682_
                                         _tl2665826684_)
                                        (_g2655426669_))))
                                (_g2655426669_)))))
                    (if (gx#stx-pair/null? _tl2656326885_)
                        (let ((___splice2753727538_
                               (gx#syntax-split-splice _tl2656326885_ '0)))
                          (let ((_tl2665826684_
                                 (##vector-ref ___splice2753727538_ '1))
                                (_target2665626682_
                                 (##vector-ref ___splice2753727538_ '0)))
                            (if (gx#stx-null? _tl2665826684_)
                                (___match2778627787_
                                 _e2656126880_
                                 _hd2656226883_
                                 _tl2656326885_
                                 ___splice2753727538_
                                 _target2665626682_
                                 _tl2665826684_)
                                (_g2655426669_))))
                        (_g2655426669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2656326885_)
                                                        (let ((___splice2753727538_
                                                               (gx#syntax-split-splice
                                                                _tl2656326885_
                                                                '0)))
                                                          (let ((_tl2665826684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2753727538_ '1))
                        (_target2665626682_
                         (##vector-ref ___splice2753727538_ '0)))
                    (if (gx#stx-null? _tl2665826684_)
                        (___match2778627787_
                         _e2656126880_
                         _hd2656226883_
                         _tl2656326885_
                         ___splice2753727538_
                         _target2665626682_
                         _tl2665826684_)
                        (_g2655426669_))))
                (_g2655426669_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2656326885_)
                                                    (let ((___splice2753727538_
                                                           (gx#syntax-split-splice
                                                            _tl2656326885_
                                                            '0)))
                                                      (let ((_tl2665826684_
                                                             (##vector-ref
                                                              ___splice2753727538_
                                                              '1))
                                                            (_target2665626682_
                                                             (##vector-ref
                                                              ___splice2753727538_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2665826684_)
                                                            (___match2778627787_
                                                             _e2656126880_
                                                             _hd2656226883_
                                                             _tl2656326885_
                                                             ___splice2753727538_
                                                             _target2665626682_
                                                             _tl2665826684_)
                                                            (_g2655426669_))))
                                                    (_g2655426669_)))))
                                        (if (gx#stx-pair/null? _tl2656326885_)
                                            (let ((___splice2753727538_
                                                   (gx#syntax-split-splice
                                                    _tl2656326885_
                                                    '0)))
                                              (let ((_tl2665826684_
                                                     (##vector-ref
                                                      ___splice2753727538_
                                                      '1))
                                                    (_target2665626682_
                                                     (##vector-ref
                                                      ___splice2753727538_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2665826684_)
                                                    (___match2778627787_
                                                     _e2656126880_
                                                     _hd2656226883_
                                                     _tl2656326885_
                                                     ___splice2753727538_
                                                     _target2665626682_
                                                     _tl2665826684_)
                                                    (_g2655426669_))))
                                            (_g2655426669_)))
                                    (if (gx#stx-pair/null? _tl2656326885_)
                                        (let ((___splice2753727538_
                                               (gx#syntax-split-splice
                                                _tl2656326885_
                                                '0)))
                                          (let ((_tl2665826684_
                                                 (##vector-ref
                                                  ___splice2753727538_
                                                  '1))
                                                (_target2665626682_
                                                 (##vector-ref
                                                  ___splice2753727538_
                                                  '0)))
                                            (if (gx#stx-null? _tl2665826684_)
                                                (___match2778627787_
                                                 _e2656126880_
                                                 _hd2656226883_
                                                 _tl2656326885_
                                                 ___splice2753727538_
                                                 _target2665626682_
                                                 _tl2665826684_)
                                                (_g2655426669_))))
                                        (_g2655426669_)))
                                (if (gx#stx-pair/null? _tl2656326885_)
                                    (let ((___splice2753727538_
                                           (gx#syntax-split-splice
                                            _tl2656326885_
                                            '0)))
                                      (let ((_tl2665826684_
                                             (##vector-ref
                                              ___splice2753727538_
                                              '1))
                                            (_target2665626682_
                                             (##vector-ref
                                              ___splice2753727538_
                                              '0)))
                                        (if (gx#stx-null? _tl2665826684_)
                                            (___match2778627787_
                                             _e2656126880_
                                             _hd2656226883_
                                             _tl2656326885_
                                             ___splice2753727538_
                                             _target2665626682_
                                             _tl2665826684_)
                                            (_g2655426669_))))
                                    (_g2655426669_)))))
                        (if (gx#stx-pair/null? _tl2656326885_)
                            (let ((___splice2753727538_
                                   (gx#syntax-split-splice _tl2656326885_ '0)))
                              (let ((_tl2665826684_
                                     (##vector-ref ___splice2753727538_ '1))
                                    (_target2665626682_
                                     (##vector-ref ___splice2753727538_ '0)))
                                (if (gx#stx-null? _tl2665826684_)
                                    (___match2778627787_
                                     _e2656126880_
                                     _hd2656226883_
                                     _tl2656326885_
                                     ___splice2753727538_
                                     _target2665626682_
                                     _tl2665826684_)
                                    (_g2655426669_))))
                            (_g2655426669_)))))
                (if (gx#stx-pair/null? _tl2656326885_)
                    (let ((___splice2753727538_
                           (gx#syntax-split-splice _tl2656326885_ '0)))
                      (let ((_tl2665826684_
                             (##vector-ref ___splice2753727538_ '1))
                            (_target2665626682_
                             (##vector-ref ___splice2753727538_ '0)))
                        (if (gx#stx-null? _tl2665826684_)
                            (___match2778627787_
                             _e2656126880_
                             _hd2656226883_
                             _tl2656326885_
                             ___splice2753727538_
                             _target2665626682_
                             _tl2665826684_)
                            (_g2655426669_))))
                    (_g2655426669_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2656326885_)
                                                        (let ((___splice2753727538_
                                                               (gx#syntax-split-splice
                                                                _tl2656326885_
                                                                '0)))
                                                          (let ((_tl2665826684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2753727538_ '1))
                        (_target2665626682_
                         (##vector-ref ___splice2753727538_ '0)))
                    (if (gx#stx-null? _tl2665826684_)
                        (___match2778627787_
                         _e2656126880_
                         _hd2656226883_
                         _tl2656326885_
                         ___splice2753727538_
                         _target2665626682_
                         _tl2665826684_)
                        (_g2655426669_))))
                (_g2655426669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2656326885_)
                                                (let ((___splice2753727538_
                                                       (gx#syntax-split-splice
                                                        _tl2656326885_
                                                        '0)))
                                                  (let ((_tl2665826684_
                                                         (##vector-ref
                                                          ___splice2753727538_
                                                          '1))
                                                        (_target2665626682_
                                                         (##vector-ref
                                                          ___splice2753727538_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2665826684_)
                                                        (___match2778627787_
                                                         _e2656126880_
                                                         _hd2656226883_
                                                         _tl2656326885_
                                                         ___splice2753727538_
                                                         _target2665626682_
                                                         _tl2665826684_)
                                                        (_g2655426669_))))
                                                (_g2655426669_)))
                                        (if (gx#stx-pair/null? _tl2656326885_)
                                            (let ((___splice2753727538_
                                                   (gx#syntax-split-splice
                                                    _tl2656326885_
                                                    '0)))
                                              (let ((_tl2665826684_
                                                     (##vector-ref
                                                      ___splice2753727538_
                                                      '1))
                                                    (_target2665626682_
                                                     (##vector-ref
                                                      ___splice2753727538_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2665826684_)
                                                    (___match2778627787_
                                                     _e2656126880_
                                                     _hd2656226883_
                                                     _tl2656326885_
                                                     ___splice2753727538_
                                                     _target2665626682_
                                                     _tl2665826684_)
                                                    (_g2655426669_))))
                                            (_g2655426669_)))
                                    (if (gx#stx-pair/null? _tl2656326885_)
                                        (let ((___splice2753727538_
                                               (gx#syntax-split-splice
                                                _tl2656326885_
                                                '0)))
                                          (let ((_tl2665826684_
                                                 (##vector-ref
                                                  ___splice2753727538_
                                                  '1))
                                                (_target2665626682_
                                                 (##vector-ref
                                                  ___splice2753727538_
                                                  '0)))
                                            (if (gx#stx-null? _tl2665826684_)
                                                (___match2778627787_
                                                 _e2656126880_
                                                 _hd2656226883_
                                                 _tl2656326885_
                                                 ___splice2753727538_
                                                 _target2665626682_
                                                 _tl2665826684_)
                                                (_g2655426669_))))
                                        (_g2655426669_)))))
                            (if (gx#stx-pair/null? _tl2656326885_)
                                (let ((___splice2753727538_
                                       (gx#syntax-split-splice
                                        _tl2656326885_
                                        '0)))
                                  (let ((_tl2665826684_
                                         (##vector-ref
                                          ___splice2753727538_
                                          '1))
                                        (_target2665626682_
                                         (##vector-ref
                                          ___splice2753727538_
                                          '0)))
                                    (if (gx#stx-null? _tl2665826684_)
                                        (___match2778627787_
                                         _e2656126880_
                                         _hd2656226883_
                                         _tl2656326885_
                                         ___splice2753727538_
                                         _target2665626682_
                                         _tl2665826684_)
                                        (_g2655426669_))))
                                (_g2655426669_)))))
                    (if (gx#stx-pair/null? _tl2656326885_)
                        (let ((___splice2753727538_
                               (gx#syntax-split-splice _tl2656326885_ '0)))
                          (let ((_tl2665826684_
                                 (##vector-ref ___splice2753727538_ '1))
                                (_target2665626682_
                                 (##vector-ref ___splice2753727538_ '0)))
                            (if (gx#stx-null? _tl2665826684_)
                                (___match2778627787_
                                 _e2656126880_
                                 _hd2656226883_
                                 _tl2656326885_
                                 ___splice2753727538_
                                 _target2665626682_
                                 _tl2665826684_)
                                (_g2655426669_))))
                        (_g2655426669_)))
                (if (gx#stx-pair/null? _tl2656326885_)
                    (let ((___splice2753727538_
                           (gx#syntax-split-splice _tl2656326885_ '0)))
                      (let ((_tl2665826684_
                             (##vector-ref ___splice2753727538_ '1))
                            (_target2665626682_
                             (##vector-ref ___splice2753727538_ '0)))
                        (if (gx#stx-null? _tl2665826684_)
                            (___match2778627787_
                             _e2656126880_
                             _hd2656226883_
                             _tl2656326885_
                             ___splice2753727538_
                             _target2665626682_
                             _tl2665826684_)
                            (_g2655426669_))))
                    (_g2655426669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2656326885_)
                                                    (let ((___splice2753727538_
                                                           (gx#syntax-split-splice
                                                            _tl2656326885_
                                                            '0)))
                                                      (let ((_tl2665826684_
                                                             (##vector-ref
                                                              ___splice2753727538_
                                                              '1))
                                                            (_target2665626682_
                                                             (##vector-ref
                                                              ___splice2753727538_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2665826684_)
                                                            (___match2778627787_
                                                             _e2656126880_
                                                             _hd2656226883_
                                                             _tl2656326885_
                                                             ___splice2753727538_
                                                             _target2665626682_
                                                             _tl2665826684_)
                                                            (_g2655426669_))))
                                                    (_g2655426669_)))
                                            (if (gx#stx-pair/null?
                                                 _tl2656326885_)
                                                (let ((___splice2753727538_
                                                       (gx#syntax-split-splice
                                                        _tl2656326885_
                                                        '0)))
                                                  (let ((_tl2665826684_
                                                         (##vector-ref
                                                          ___splice2753727538_
                                                          '1))
                                                        (_target2665626682_
                                                         (##vector-ref
                                                          ___splice2753727538_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2665826684_)
                                                        (___match2778627787_
                                                         _e2656126880_
                                                         _hd2656226883_
                                                         _tl2656326885_
                                                         ___splice2753727538_
                                                         _target2665626682_
                                                         _tl2665826684_)
                                                        (_g2655426669_))))
                                                (_g2655426669_)))
                                        (if (gx#stx-pair/null? _tl2656326885_)
                                            (let ((___splice2753727538_
                                                   (gx#syntax-split-splice
                                                    _tl2656326885_
                                                    '0)))
                                              (let ((_tl2665826684_
                                                     (##vector-ref
                                                      ___splice2753727538_
                                                      '1))
                                                    (_target2665626682_
                                                     (##vector-ref
                                                      ___splice2753727538_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2665826684_)
                                                    (___match2778627787_
                                                     _e2656126880_
                                                     _hd2656226883_
                                                     _tl2656326885_
                                                     ___splice2753727538_
                                                     _target2665626682_
                                                     _tl2665826684_)
                                                    (_g2655426669_))))
                                            (_g2655426669_)))))
                                (if (gx#stx-pair/null? _tl2656326885_)
                                    (let ((___splice2753727538_
                                           (gx#syntax-split-splice
                                            _tl2656326885_
                                            '0)))
                                      (let ((_tl2665826684_
                                             (##vector-ref
                                              ___splice2753727538_
                                              '1))
                                            (_target2665626682_
                                             (##vector-ref
                                              ___splice2753727538_
                                              '0)))
                                        (if (gx#stx-null? _tl2665826684_)
                                            (___match2778627787_
                                             _e2656126880_
                                             _hd2656226883_
                                             _tl2656326885_
                                             ___splice2753727538_
                                             _target2665626682_
                                             _tl2665826684_)
                                            (_g2655426669_))))
                                    (_g2655426669_)))))
                        (if (gx#stx-pair/null? _tl2656326885_)
                            (let ((___splice2753727538_
                                   (gx#syntax-split-splice _tl2656326885_ '0)))
                              (let ((_tl2665826684_
                                     (##vector-ref ___splice2753727538_ '1))
                                    (_target2665626682_
                                     (##vector-ref ___splice2753727538_ '0)))
                                (if (gx#stx-null? _tl2665826684_)
                                    (___match2778627787_
                                     _e2656126880_
                                     _hd2656226883_
                                     _tl2656326885_
                                     ___splice2753727538_
                                     _target2665626682_
                                     _tl2665826684_)
                                    (_g2655426669_))))
                            (_g2655426669_)))))
                (_g2655426669_)))))))
  (define gxc#current-compile-type-closure (make-parameter '#f))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx26490_)
      (let* ((___stx2778927790_ _stx26490_)
             (_g2649326506_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2778927790_))))
        (let ((___kont2779127792_ (lambda (_L26534_) (gxc#compile-e _L26534_)))
              (___kont2779327794_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2778927790_)
              (let ((_e2649626518_ (gx#stx-e ___stx2778927790_)))
                (let ((_tl2649826523_ (##cdr _e2649626518_))
                      (_hd2649726521_ (##car _e2649626518_)))
                  (if (gx#stx-pair? _tl2649826523_)
                      (let ((_e2649926526_ (gx#stx-e _tl2649826523_)))
                        (let ((_tl2650126531_ (##cdr _e2649926526_))
                              (_hd2650026529_ (##car _e2649926526_)))
                          (if (gx#stx-null? _tl2650126531_)
                              (___kont2779127792_ _hd2650026529_)
                              (___kont2779327794_))))
                      (___kont2779327794_))))
              (___kont2779327794_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx26423_)
      (let* ((_g2642526442_
              (lambda (_g2642626439_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2642626439_)))
             (_g2642426487_
              (lambda (_g2642626445_)
                (if (gx#stx-pair? _g2642626445_)
                    (let ((_e2642926447_ (gx#stx-e _g2642626445_)))
                      (let ((_hd2643026450_ (##car _e2642926447_))
                            (_tl2643126452_ (##cdr _e2642926447_)))
                        (if (gx#stx-pair? _tl2643126452_)
                            (let ((_e2643226455_ (gx#stx-e _tl2643126452_)))
                              (let ((_hd2643326458_ (##car _e2643226455_))
                                    (_tl2643426460_ (##cdr _e2643226455_)))
                                (if (gx#stx-pair? _tl2643426460_)
                                    (let ((_e2643526463_
                                           (gx#stx-e _tl2643426460_)))
                                      (let ((_hd2643626466_
                                             (##car _e2643526463_))
                                            (_tl2643726468_
                                             (##cdr _e2643526463_)))
                                        (if (gx#stx-null? _tl2643726468_)
                                            ((lambda (_L26471_ _L26472_)
                                               (gxc#compile-e _L26471_))
                                             _hd2643626466_
                                             _hd2643326458_)
                                            (_g2642526442_ _g2642626445_))))
                                    (_g2642526442_ _g2642626445_))))
                            (_g2642526442_ _g2642626445_))))
                    (_g2642526442_ _g2642626445_)))))
        (_g2642426487_ _stx26423_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx25015_)
      (let* ((___stx2781127812_ _stx25015_)
             (_g2502325330_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2781127812_))))
        (let ((___kont2781327814_
               (lambda (_L26411_)
                 (let ((__obj30054 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj30054
                      'lambda
                      (gxc#lambda-form-arity _L26411_)
                      '#f)
                     __obj30054))))
              (___kont2781527816_
               (lambda (_L26346_ _L26347_ _L26348_ _L26349_ _L26350_)
                 (let* ((_type-t26393_ (gxc#identifier-symbol _L26347_))
                        (_type26395_
                         (gxc#optimizer-resolve-type _type-t26393_)))
                   (if (##structure-instance-of?
                        _type26395_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t26393_)
                       '#f))))
              (___kont2781727818_
               (lambda (_L26132_ _L26133_ _L26134_ _L26135_)
                 (let* ((_type-t26208_ (gxc#identifier-symbol _L26133_))
                        (_type26210_
                         (gxc#optimizer-resolve-type _type-t26208_)))
                   (if (##structure-instance-of?
                        _type26210_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t26208_)
                       '#f))))
              (___kont2782327824_
               (lambda (_L25923_ _L25924_ _L25925_ _L25926_ _L25927_ _L25928_)
                 (let* ((_tab25978_ (gx#stx-e _L25925_))
                        (_keys25980_
                         (if _tab25978_
                             (filter values (vector->list _tab25978_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys25980_
                    (gxc#identifier-symbol _L25924_)))))
              (___kont2782527826_
               (lambda (_L25656_
                        _L25657_
                        _L25658_
                        _L25659_
                        _L25660_
                        _L25661_
                        _L25662_
                        _L25663_
                        _L25664_
                        _L25665_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2575825761_ _g2575925763_)
                                   (cons _g2575825761_ _g2575925763_))
                                 '()
                                 _L25658_)))
                  (gxc#identifier-symbol _L25662_))))
              (___kont2782927830_
               (lambda (_L25366_)
                 (let ((__obj30055 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj30055
                      'lambda
                      (gxc#lambda-form-arity _L25366_)
                      (gxc#dispatch-lambda-form-delegate _L25366_))
                     __obj30055))))
              (___kont2783127832_
               (lambda (_L25343_)
                 (let ((__obj30056 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj30056
                      'lambda
                      (gxc#lambda-form-arity _L25343_)
                      '#f)
                     __obj30056)))))
          (let* ((___match2828628287_
                  (lambda (_e2531925358_ _hd2532025361_ _tl2532125363_)
                    (let ((_L25366_ _tl2532125363_))
                      (if (gxc#dispatch-lambda-form? _L25366_)
                          (___kont2782927830_ _L25366_)
                          (___kont2783127832_ _tl2532125363_)))))
                 (___match2828028281_
                  (lambda (_e2521325380_
                           _hd2521425383_
                           _tl2521525385_
                           _e2521625388_
                           _hd2521725391_
                           _tl2521825393_
                           _e2521925396_
                           _hd2522025399_
                           _tl2522125401_
                           _e2522225404_
                           _hd2522325407_
                           _tl2522425409_
                           _e2522525412_
                           _hd2522625415_
                           _tl2522725417_
                           _e2522825420_
                           _hd2522925423_
                           _tl2523025425_
                           _e2523125428_
                           _hd2523225431_
                           _tl2523325433_
                           _e2523425436_
                           _hd2523525439_
                           _tl2523625441_
                           _e2523725444_
                           _hd2523825447_
                           _tl2523925449_
                           _e2524025452_
                           _hd2524125455_
                           _tl2524225457_
                           _e2524325460_
                           _hd2524425463_
                           _tl2524525465_
                           _e2524625468_
                           _hd2524725471_
                           _tl2524825473_
                           _e2524925476_
                           _hd2525025479_
                           _tl2525125481_
                           _e2525225484_
                           _hd2525325487_
                           _tl2525425489_
                           ___splice2782727828_
                           _target2525525492_
                           _tl2525725494_
                           _e2527025497_
                           _hd2527125500_
                           _tl2527225502_
                           _e2527325505_
                           _hd2527425508_
                           _tl2527525510_
                           _e2527625513_
                           _hd2527725516_
                           _tl2527825518_)
                    (letrec ((_loop2525825521_
                              (lambda (_hd2525625524_
                                       _-absent-value2526225526_
                                       _key2526325528_
                                       _-xkwvar2526425530_
                                       _-hash-ref2526525532_)
                                (if (gx#stx-pair? _hd2525625524_)
                                    (let ((_e2525925535_
                                           (gx#stx-e _hd2525625524_)))
                                      (let ((_lp-tl2526125540_
                                             (##cdr _e2525925535_))
                                            (_lp-hd2526025538_
                                             (##car _e2525925535_)))
                                        (if (gx#stx-pair? _lp-hd2526025538_)
                                            (let ((_e2527925543_
                                                   (gx#stx-e
                                                    _lp-hd2526025538_)))
                                              (let ((_tl2528125548_
                                                     (##cdr _e2527925543_))
                                                    (_hd2528025546_
                                                     (##car _e2527925543_)))
                                                (if (gx#identifier?
                                                     _hd2528025546_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2528025546_)
                                                        (if (gx#stx-pair?
                                                             _tl2528125548_)
                                                            (let ((_e2528225551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2528125548_)))
                      (let ((_tl2528425556_ (##cdr _e2528225551_))
                            (_hd2528325554_ (##car _e2528225551_)))
                        (if (gx#stx-pair? _hd2528325554_)
                            (let ((_e2528525559_ (gx#stx-e _hd2528325554_)))
                              (let ((_tl2528725564_ (##cdr _e2528525559_))
                                    (_hd2528625562_ (##car _e2528525559_)))
                                (if (gx#identifier? _hd2528625562_)
                                    (if (gx#stx-eq? '%#ref _hd2528625562_)
                                        (if (gx#stx-pair? _tl2528725564_)
                                            (let ((_e2528825567_
                                                   (gx#stx-e _tl2528725564_)))
                                              (let ((_tl2529025572_
                                                     (##cdr _e2528825567_))
                                                    (_hd2528925570_
                                                     (##car _e2528825567_)))
                                                (if (gx#stx-null?
                                                     _tl2529025572_)
                                                    (if (gx#stx-pair?
                                                         _tl2528425556_)
                                                        (let ((_e2529125575_
                                                               (gx#stx-e
                                                                _tl2528425556_)))
                                                          (let ((_tl2529325580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2529125575_))
                        (_hd2529225578_ (##car _e2529125575_)))
                    (if (gx#stx-pair? _hd2529225578_)
                        (let ((_e2529425583_ (gx#stx-e _hd2529225578_)))
                          (let ((_tl2529625588_ (##cdr _e2529425583_))
                                (_hd2529525586_ (##car _e2529425583_)))
                            (if (gx#identifier? _hd2529525586_)
                                (if (gx#stx-eq? '%#ref _hd2529525586_)
                                    (if (gx#stx-pair? _tl2529625588_)
                                        (let ((_e2529725591_
                                               (gx#stx-e _tl2529625588_)))
                                          (let ((_tl2529925596_
                                                 (##cdr _e2529725591_))
                                                (_hd2529825594_
                                                 (##car _e2529725591_)))
                                            (if (gx#stx-null? _tl2529925596_)
                                                (if (gx#stx-pair?
                                                     _tl2529325580_)
                                                    (let ((_e2530025599_
                                                           (gx#stx-e
                                                            _tl2529325580_)))
                                                      (let ((_tl2530225604_
                                                             (##cdr _e2530025599_))
                                                            (_hd2530125602_
                                                             (##car _e2530025599_)))
                                                        (if (gx#stx-pair?
                                                             _hd2530125602_)
                                                            (let ((_e2530325607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2530125602_)))
                      (let ((_tl2530525612_ (##cdr _e2530325607_))
                            (_hd2530425610_ (##car _e2530325607_)))
                        (if (gx#identifier? _hd2530425610_)
                            (if (gx#stx-eq? '%#quote _hd2530425610_)
                                (if (gx#stx-pair? _tl2530525612_)
                                    (let ((_e2530625615_
                                           (gx#stx-e _tl2530525612_)))
                                      (let ((_tl2530825620_
                                             (##cdr _e2530625615_))
                                            (_hd2530725618_
                                             (##car _e2530625615_)))
                                        (if (gx#stx-null? _tl2530825620_)
                                            (if (gx#stx-pair? _tl2530225604_)
                                                (let ((_e2530925623_
                                                       (gx#stx-e
                                                        _tl2530225604_)))
                                                  (let ((_tl2531125628_
                                                         (##cdr _e2530925623_))
                                                        (_hd2531025626_
                                                         (##car _e2530925623_)))
                                                    (if (gx#stx-pair?
                                                         _hd2531025626_)
                                                        (let ((_e2531225631_
                                                               (gx#stx-e
                                                                _hd2531025626_)))
                                                          (let ((_tl2531425636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2531225631_))
                        (_hd2531325634_ (##car _e2531225631_)))
                    (if (gx#identifier? _hd2531325634_)
                        (if (gx#stx-eq? '%#ref _hd2531325634_)
                            (if (gx#stx-pair? _tl2531425636_)
                                (let ((_e2531525639_
                                       (gx#stx-e _tl2531425636_)))
                                  (let ((_tl2531725644_ (##cdr _e2531525639_))
                                        (_hd2531625642_ (##car _e2531525639_)))
                                    (if (gx#stx-null? _tl2531725644_)
                                        (if (gx#stx-null? _tl2531125628_)
                                            (_loop2525825521_
                                             _lp-tl2526125540_
                                             (cons _hd2531625642_
                                                   _-absent-value2526225526_)
                                             (cons _hd2530725618_
                                                   _key2526325528_)
                                             (cons _hd2529825594_
                                                   _-xkwvar2526425530_)
                                             (cons _hd2528925570_
                                                   _-hash-ref2526525532_))
                                            (___match2828628287_
                                             _e2521325380_
                                             _hd2521425383_
                                             _tl2521525385_))
                                        (___match2828628287_
                                         _e2521325380_
                                         _hd2521425383_
                                         _tl2521525385_))))
                                (___match2828628287_
                                 _e2521325380_
                                 _hd2521425383_
                                 _tl2521525385_))
                            (___match2828628287_
                             _e2521325380_
                             _hd2521425383_
                             _tl2521525385_))
                        (___match2828628287_
                         _e2521325380_
                         _hd2521425383_
                         _tl2521525385_))))
                (___match2828628287_
                 _e2521325380_
                 _hd2521425383_
                 _tl2521525385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2828628287_
                                                 _e2521325380_
                                                 _hd2521425383_
                                                 _tl2521525385_))
                                            (___match2828628287_
                                             _e2521325380_
                                             _hd2521425383_
                                             _tl2521525385_))))
                                    (___match2828628287_
                                     _e2521325380_
                                     _hd2521425383_
                                     _tl2521525385_))
                                (___match2828628287_
                                 _e2521325380_
                                 _hd2521425383_
                                 _tl2521525385_))
                            (___match2828628287_
                             _e2521325380_
                             _hd2521425383_
                             _tl2521525385_))))
                    (___match2828628287_
                     _e2521325380_
                     _hd2521425383_
                     _tl2521525385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828628287_
                                                     _e2521325380_
                                                     _hd2521425383_
                                                     _tl2521525385_))
                                                (___match2828628287_
                                                 _e2521325380_
                                                 _hd2521425383_
                                                 _tl2521525385_))))
                                        (___match2828628287_
                                         _e2521325380_
                                         _hd2521425383_
                                         _tl2521525385_))
                                    (___match2828628287_
                                     _e2521325380_
                                     _hd2521425383_
                                     _tl2521525385_))
                                (___match2828628287_
                                 _e2521325380_
                                 _hd2521425383_
                                 _tl2521525385_))))
                        (___match2828628287_
                         _e2521325380_
                         _hd2521425383_
                         _tl2521525385_))))
                (___match2828628287_
                 _e2521325380_
                 _hd2521425383_
                 _tl2521525385_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828628287_
                                                     _e2521325380_
                                                     _hd2521425383_
                                                     _tl2521525385_))))
                                            (___match2828628287_
                                             _e2521325380_
                                             _hd2521425383_
                                             _tl2521525385_))
                                        (___match2828628287_
                                         _e2521325380_
                                         _hd2521425383_
                                         _tl2521525385_))
                                    (___match2828628287_
                                     _e2521325380_
                                     _hd2521425383_
                                     _tl2521525385_))))
                            (___match2828628287_
                             _e2521325380_
                             _hd2521425383_
                             _tl2521525385_))))
                    (___match2828628287_
                     _e2521325380_
                     _hd2521425383_
                     _tl2521525385_))
                (___match2828628287_
                 _e2521325380_
                 _hd2521425383_
                 _tl2521525385_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828628287_
                                                     _e2521325380_
                                                     _hd2521425383_
                                                     _tl2521525385_))))
                                            (___match2828628287_
                                             _e2521325380_
                                             _hd2521425383_
                                             _tl2521525385_))))
                                    (let ((_-hash-ref2526925653_
                                           (reverse _-hash-ref2526525532_))
                                          (_-xkwvar2526825651_
                                           (reverse _-xkwvar2526425530_))
                                          (_key2526725649_
                                           (reverse _key2526325528_))
                                          (_-absent-value2526625647_
                                           (reverse _-absent-value2526225526_)))
                                      (if (gx#stx-null? _tl2522425409_)
                                          (let ((_L25656_ _hd2527725516_)
                                                (_L25657_
                                                 _-absent-value2526625647_)
                                                (_L25658_ _key2526725649_)
                                                (_L25659_ _-xkwvar2526825651_)
                                                (_L25660_
                                                 _-hash-ref2526925653_)
                                                (_L25661_ _hd2525325487_)
                                                (_L25662_ _hd2524425463_)
                                                (_L25663_ _hd2523525439_)
                                                (_L25664_ _tl2522125401_)
                                                (_L25665_ _hd2522025399_))
                                            (if (if (gx#identifier? _L25665_)
                                                    (if (gx#identifier?
                                                         _L25664_)
                                                        (if (gxc#runtime-identifier=?
                                                             _L25663_
                                                             'apply)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25665_
                         _L25661_)
                        (if (andmap1 gx#stx-keyword?
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g2571825721_
                                                        _g2571925723_)
                                                 (cons _g2571825721_
                                                       _g2571925723_))
                                               '()
                                               _L25658_)))
                            (if (andmap1 (lambda (_g2572525727_)
                                           (gxc#runtime-identifier=?
                                            _g2572525727_
                                            'hash-ref))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2572925732_
                                                            _g2573025734_)
                                                     (cons _g2572925732_
                                                           _g2573025734_))
                                                   '()
                                                   _L25660_)))
                                (if (andmap1 (lambda (_g2573625738_)
                                               (gxc#runtime-identifier=?
                                                _g2573625738_
                                                'absent-value))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2574025743_
                                                                _g2574125745_)
                                                         (cons _g2574025743_
                                                               _g2574125745_))
                                                       '()
                                                       _L25657_)))
                                    (andmap1 (lambda (_g2574725749_)
                                               (gx#free-identifier=?
                                                _g2574725749_
                                                _L25665_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2575125754_
                                                                _g2575225756_)
                                                         (cons _g2575125754_
                                                               _g2575225756_))
                                                       '()
                                                       _L25659_)))
                                    '#f)
                                '#f)
                            '#f)
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (___kont2782527826_
                                                 _L25656_
                                                 _L25657_
                                                 _L25658_
                                                 _L25659_
                                                 _L25660_
                                                 _L25661_
                                                 _L25662_
                                                 _L25663_
                                                 _L25664_
                                                 _L25665_)
                                                (___match2828628287_
                                                 _e2521325380_
                                                 _hd2521425383_
                                                 _tl2521525385_)))
                                          (___match2828628287_
                                           _e2521325380_
                                           _hd2521425383_
                                           _tl2521525385_)))))))
                      (_loop2525825521_ _target2525525492_ '() '() '() '()))))
                 (___match2815228153_
                  (lambda (_e2521325380_
                           _hd2521425383_
                           _tl2521525385_
                           _e2521625388_
                           _hd2521725391_
                           _tl2521825393_)
                    (if (gx#stx-pair? _hd2521725391_)
                        (let ((_e2521925396_ (gx#stx-e _hd2521725391_)))
                          (let ((_tl2522125401_ (##cdr _e2521925396_))
                                (_hd2522025399_ (##car _e2521925396_)))
                            (if (gx#stx-pair? _tl2521825393_)
                                (let ((_e2522225404_
                                       (gx#stx-e _tl2521825393_)))
                                  (let ((_tl2522425409_ (##cdr _e2522225404_))
                                        (_hd2522325407_ (##car _e2522225404_)))
                                    (if (gx#stx-pair? _hd2522325407_)
                                        (let ((_e2522525412_
                                               (gx#stx-e _hd2522325407_)))
                                          (let ((_tl2522725417_
                                                 (##cdr _e2522525412_))
                                                (_hd2522625415_
                                                 (##car _e2522525412_)))
                                            (if (gx#identifier? _hd2522625415_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2522625415_)
                                                    (if (gx#stx-pair?
                                                         _tl2522725417_)
                                                        (let ((_e2522825420_
                                                               (gx#stx-e
                                                                _tl2522725417_)))
                                                          (let ((_tl2523025425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2522825420_))
                        (_hd2522925423_ (##car _e2522825420_)))
                    (if (gx#stx-pair? _hd2522925423_)
                        (let ((_e2523125428_ (gx#stx-e _hd2522925423_)))
                          (let ((_tl2523325433_ (##cdr _e2523125428_))
                                (_hd2523225431_ (##car _e2523125428_)))
                            (if (gx#identifier? _hd2523225431_)
                                (if (gx#stx-eq? '%#ref _hd2523225431_)
                                    (if (gx#stx-pair? _tl2523325433_)
                                        (let ((_e2523425436_
                                               (gx#stx-e _tl2523325433_)))
                                          (let ((_tl2523625441_
                                                 (##cdr _e2523425436_))
                                                (_hd2523525439_
                                                 (##car _e2523425436_)))
                                            (if (gx#stx-null? _tl2523625441_)
                                                (if (gx#stx-pair?
                                                     _tl2523025425_)
                                                    (let ((_e2523725444_
                                                           (gx#stx-e
                                                            _tl2523025425_)))
                                                      (let ((_tl2523925449_
                                                             (##cdr _e2523725444_))
                                                            (_hd2523825447_
                                                             (##car _e2523725444_)))
                                                        (if (gx#stx-pair?
                                                             _hd2523825447_)
                                                            (let ((_e2524025452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2523825447_)))
                      (let ((_tl2524225457_ (##cdr _e2524025452_))
                            (_hd2524125455_ (##car _e2524025452_)))
                        (if (gx#identifier? _hd2524125455_)
                            (if (gx#stx-eq? '%#ref _hd2524125455_)
                                (if (gx#stx-pair? _tl2524225457_)
                                    (let ((_e2524325460_
                                           (gx#stx-e _tl2524225457_)))
                                      (let ((_tl2524525465_
                                             (##cdr _e2524325460_))
                                            (_hd2524425463_
                                             (##car _e2524325460_)))
                                        (if (gx#stx-null? _tl2524525465_)
                                            (if (gx#stx-pair? _tl2523925449_)
                                                (let ((_e2524625468_
                                                       (gx#stx-e
                                                        _tl2523925449_)))
                                                  (let ((_tl2524825473_
                                                         (##cdr _e2524625468_))
                                                        (_hd2524725471_
                                                         (##car _e2524625468_)))
                                                    (if (gx#stx-pair?
                                                         _hd2524725471_)
                                                        (let ((_e2524925476_
                                                               (gx#stx-e
                                                                _hd2524725471_)))
                                                          (let ((_tl2525125481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2524925476_))
                        (_hd2525025479_ (##car _e2524925476_)))
                    (if (gx#identifier? _hd2525025479_)
                        (if (gx#stx-eq? '%#ref _hd2525025479_)
                            (if (gx#stx-pair? _tl2525125481_)
                                (let ((_e2525225484_
                                       (gx#stx-e _tl2525125481_)))
                                  (let ((_tl2525425489_ (##cdr _e2525225484_))
                                        (_hd2525325487_ (##car _e2525225484_)))
                                    (if (gx#stx-null? _tl2525425489_)
                                        (if (gx#stx-pair/null? _tl2524825473_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2524825473_)
                                                      '1)
                                                (let ((___splice2782727828_
                                                       (gx#syntax-split-splice
                                                        _tl2524825473_
                                                        '1)))
                                                  (let ((_tl2525725494_
                                                         (##vector-ref
                                                          ___splice2782727828_
                                                          '1))
                                                        (_target2525525492_
                                                         (##vector-ref
                                                          ___splice2782727828_
                                                          '0)))
                                                    (if (gx#stx-pair?
                                                         _tl2525725494_)
                                                        (let ((_e2527025497_
                                                               (gx#stx-e
                                                                _tl2525725494_)))
                                                          (let ((_tl2527225502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2527025497_))
                        (_hd2527125500_ (##car _e2527025497_)))
                    (if (gx#stx-pair? _hd2527125500_)
                        (let ((_e2527325505_ (gx#stx-e _hd2527125500_)))
                          (let ((_tl2527525510_ (##cdr _e2527325505_))
                                (_hd2527425508_ (##car _e2527325505_)))
                            (if (gx#identifier? _hd2527425508_)
                                (if (gx#stx-eq? '%#ref _hd2527425508_)
                                    (if (gx#stx-pair? _tl2527525510_)
                                        (let ((_e2527625513_
                                               (gx#stx-e _tl2527525510_)))
                                          (let ((_tl2527825518_
                                                 (##cdr _e2527625513_))
                                                (_hd2527725516_
                                                 (##car _e2527625513_)))
                                            (if (gx#stx-null? _tl2527825518_)
                                                (if (gx#stx-null?
                                                     _tl2527225502_)
                                                    (___match2828028281_
                                                     _e2521325380_
                                                     _hd2521425383_
                                                     _tl2521525385_
                                                     _e2521625388_
                                                     _hd2521725391_
                                                     _tl2521825393_
                                                     _e2521925396_
                                                     _hd2522025399_
                                                     _tl2522125401_
                                                     _e2522225404_
                                                     _hd2522325407_
                                                     _tl2522425409_
                                                     _e2522525412_
                                                     _hd2522625415_
                                                     _tl2522725417_
                                                     _e2522825420_
                                                     _hd2522925423_
                                                     _tl2523025425_
                                                     _e2523125428_
                                                     _hd2523225431_
                                                     _tl2523325433_
                                                     _e2523425436_
                                                     _hd2523525439_
                                                     _tl2523625441_
                                                     _e2523725444_
                                                     _hd2523825447_
                                                     _tl2523925449_
                                                     _e2524025452_
                                                     _hd2524125455_
                                                     _tl2524225457_
                                                     _e2524325460_
                                                     _hd2524425463_
                                                     _tl2524525465_
                                                     _e2524625468_
                                                     _hd2524725471_
                                                     _tl2524825473_
                                                     _e2524925476_
                                                     _hd2525025479_
                                                     _tl2525125481_
                                                     _e2525225484_
                                                     _hd2525325487_
                                                     _tl2525425489_
                                                     ___splice2782727828_
                                                     _target2525525492_
                                                     _tl2525725494_
                                                     _e2527025497_
                                                     _hd2527125500_
                                                     _tl2527225502_
                                                     _e2527325505_
                                                     _hd2527425508_
                                                     _tl2527525510_
                                                     _e2527625513_
                                                     _hd2527725516_
                                                     _tl2527825518_)
                                                    (___match2828628287_
                                                     _e2521325380_
                                                     _hd2521425383_
                                                     _tl2521525385_))
                                                (___match2828628287_
                                                 _e2521325380_
                                                 _hd2521425383_
                                                 _tl2521525385_))))
                                        (___match2828628287_
                                         _e2521325380_
                                         _hd2521425383_
                                         _tl2521525385_))
                                    (___match2828628287_
                                     _e2521325380_
                                     _hd2521425383_
                                     _tl2521525385_))
                                (___match2828628287_
                                 _e2521325380_
                                 _hd2521425383_
                                 _tl2521525385_))))
                        (___match2828628287_
                         _e2521325380_
                         _hd2521425383_
                         _tl2521525385_))))
                (___match2828628287_
                 _e2521325380_
                 _hd2521425383_
                 _tl2521525385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2828628287_
                                                 _e2521325380_
                                                 _hd2521425383_
                                                 _tl2521525385_))
                                            (___match2828628287_
                                             _e2521325380_
                                             _hd2521425383_
                                             _tl2521525385_))
                                        (___match2828628287_
                                         _e2521325380_
                                         _hd2521425383_
                                         _tl2521525385_))))
                                (___match2828628287_
                                 _e2521325380_
                                 _hd2521425383_
                                 _tl2521525385_))
                            (___match2828628287_
                             _e2521325380_
                             _hd2521425383_
                             _tl2521525385_))
                        (___match2828628287_
                         _e2521325380_
                         _hd2521425383_
                         _tl2521525385_))))
                (___match2828628287_
                 _e2521325380_
                 _hd2521425383_
                 _tl2521525385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2828628287_
                                                 _e2521325380_
                                                 _hd2521425383_
                                                 _tl2521525385_))
                                            (___match2828628287_
                                             _e2521325380_
                                             _hd2521425383_
                                             _tl2521525385_))))
                                    (___match2828628287_
                                     _e2521325380_
                                     _hd2521425383_
                                     _tl2521525385_))
                                (___match2828628287_
                                 _e2521325380_
                                 _hd2521425383_
                                 _tl2521525385_))
                            (___match2828628287_
                             _e2521325380_
                             _hd2521425383_
                             _tl2521525385_))))
                    (___match2828628287_
                     _e2521325380_
                     _hd2521425383_
                     _tl2521525385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828628287_
                                                     _e2521325380_
                                                     _hd2521425383_
                                                     _tl2521525385_))
                                                (___match2828628287_
                                                 _e2521325380_
                                                 _hd2521425383_
                                                 _tl2521525385_))))
                                        (___match2828628287_
                                         _e2521325380_
                                         _hd2521425383_
                                         _tl2521525385_))
                                    (___match2828628287_
                                     _e2521325380_
                                     _hd2521425383_
                                     _tl2521525385_))
                                (___match2828628287_
                                 _e2521325380_
                                 _hd2521425383_
                                 _tl2521525385_))))
                        (___match2828628287_
                         _e2521325380_
                         _hd2521425383_
                         _tl2521525385_))))
                (___match2828628287_
                 _e2521325380_
                 _hd2521425383_
                 _tl2521525385_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828628287_
                                                     _e2521325380_
                                                     _hd2521425383_
                                                     _tl2521525385_))
                                                (___match2828628287_
                                                 _e2521325380_
                                                 _hd2521425383_
                                                 _tl2521525385_))))
                                        (___match2828628287_
                                         _e2521325380_
                                         _hd2521425383_
                                         _tl2521525385_))))
                                (___match2828628287_
                                 _e2521325380_
                                 _hd2521425383_
                                 _tl2521525385_))))
                        (___match2828628287_
                         _e2521325380_
                         _hd2521425383_
                         _tl2521525385_))))
                 (___match2814028141_
                  (lambda (_e2514625771_
                           _hd2514725774_
                           _tl2514825776_
                           _e2514925779_
                           _hd2515025782_
                           _tl2515125784_
                           _e2515225787_
                           _hd2515325790_
                           _tl2515425792_
                           _e2515525795_
                           _hd2515625798_
                           _tl2515725800_
                           _e2515825803_
                           _hd2515925806_
                           _tl2516025808_
                           _e2516125811_
                           _hd2516225814_
                           _tl2516325816_
                           _e2516425819_
                           _hd2516525822_
                           _tl2516625824_
                           _e2516725827_
                           _hd2516825830_
                           _tl2516925832_
                           _e2517025835_
                           _hd2517125838_
                           _tl2517225840_
                           _e2517325843_
                           _hd2517425846_
                           _tl2517525848_
                           _e2517625851_
                           _hd2517725854_
                           _tl2517825856_
                           _e2517925859_
                           _hd2518025862_
                           _tl2518125864_
                           _e2518225867_
                           _hd2518325870_
                           _tl2518425872_
                           _e2518525875_
                           _hd2518625878_
                           _tl2518725880_
                           _e2518825883_
                           _hd2518925886_
                           _tl2519025888_
                           _e2519125891_
                           _hd2519225894_
                           _tl2519325896_
                           _e2519425899_
                           _hd2519525902_
                           _tl2519625904_
                           _e2519725907_
                           _hd2519825910_
                           _tl2519925912_
                           _e2520025915_
                           _hd2520125918_
                           _tl2520225920_)
                    (let ((_L25923_ _hd2520125918_)
                          (_L25924_ _hd2519225894_)
                          (_L25925_ _hd2518325870_)
                          (_L25926_ _hd2517425846_)
                          (_L25927_ _hd2516525822_)
                          (_L25928_ _hd2515025782_))
                      (if (if (gx#identifier? _L25928_)
                              (if (gxc#runtime-identifier=? _L25927_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L25926_
                                       'keyword-dispatch)
                                      (gx#free-identifier=? _L25928_ _L25923_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2782327824_
                           _L25923_
                           _L25924_
                           _L25925_
                           _L25926_
                           _L25927_
                           _L25928_)
                          (___match2815228153_
                           _e2514625771_
                           _hd2514725774_
                           _tl2514825776_
                           _e2514925779_
                           _hd2515025782_
                           _tl2515125784_)))))
                 (___match2806428065_
                  (lambda (_e2514625771_
                           _hd2514725774_
                           _tl2514825776_
                           _e2514925779_
                           _hd2515025782_
                           _tl2515125784_
                           _e2515225787_
                           _hd2515325790_
                           _tl2515425792_
                           _e2515525795_
                           _hd2515625798_
                           _tl2515725800_
                           _e2515825803_
                           _hd2515925806_
                           _tl2516025808_
                           _e2516125811_
                           _hd2516225814_
                           _tl2516325816_
                           _e2516425819_
                           _hd2516525822_
                           _tl2516625824_
                           _e2516725827_
                           _hd2516825830_
                           _tl2516925832_
                           _e2517025835_
                           _hd2517125838_
                           _tl2517225840_
                           _e2517325843_
                           _hd2517425846_
                           _tl2517525848_)
                    (if (gx#stx-pair? _tl2516925832_)
                        (let ((_e2517625851_ (gx#stx-e _tl2516925832_)))
                          (let ((_tl2517825856_ (##cdr _e2517625851_))
                                (_hd2517725854_ (##car _e2517625851_)))
                            (if (gx#stx-pair? _hd2517725854_)
                                (let ((_e2517925859_
                                       (gx#stx-e _hd2517725854_)))
                                  (let ((_tl2518125864_ (##cdr _e2517925859_))
                                        (_hd2518025862_ (##car _e2517925859_)))
                                    (if (gx#identifier? _hd2518025862_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2518025862_)
                                            (if (gx#stx-pair? _tl2518125864_)
                                                (let ((_e2518225867_
                                                       (gx#stx-e
                                                        _tl2518125864_)))
                                                  (let ((_tl2518425872_
                                                         (##cdr _e2518225867_))
                                                        (_hd2518325870_
                                                         (##car _e2518225867_)))
                                                    (if (gx#stx-null?
                                                         _tl2518425872_)
                                                        (if (gx#stx-pair?
                                                             _tl2517825856_)
                                                            (let ((_e2518525875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2517825856_)))
                      (let ((_tl2518725880_ (##cdr _e2518525875_))
                            (_hd2518625878_ (##car _e2518525875_)))
                        (if (gx#stx-pair? _hd2518625878_)
                            (let ((_e2518825883_ (gx#stx-e _hd2518625878_)))
                              (let ((_tl2519025888_ (##cdr _e2518825883_))
                                    (_hd2518925886_ (##car _e2518825883_)))
                                (if (gx#identifier? _hd2518925886_)
                                    (if (gx#stx-eq? '%#ref _hd2518925886_)
                                        (if (gx#stx-pair? _tl2519025888_)
                                            (let ((_e2519125891_
                                                   (gx#stx-e _tl2519025888_)))
                                              (let ((_tl2519325896_
                                                     (##cdr _e2519125891_))
                                                    (_hd2519225894_
                                                     (##car _e2519125891_)))
                                                (if (gx#stx-null?
                                                     _tl2519325896_)
                                                    (if (gx#stx-pair?
                                                         _tl2518725880_)
                                                        (let ((_e2519425899_
                                                               (gx#stx-e
                                                                _tl2518725880_)))
                                                          (let ((_tl2519625904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2519425899_))
                        (_hd2519525902_ (##car _e2519425899_)))
                    (if (gx#stx-pair? _hd2519525902_)
                        (let ((_e2519725907_ (gx#stx-e _hd2519525902_)))
                          (let ((_tl2519925912_ (##cdr _e2519725907_))
                                (_hd2519825910_ (##car _e2519725907_)))
                            (if (gx#identifier? _hd2519825910_)
                                (if (gx#stx-eq? '%#ref _hd2519825910_)
                                    (if (gx#stx-pair? _tl2519925912_)
                                        (let ((_e2520025915_
                                               (gx#stx-e _tl2519925912_)))
                                          (let ((_tl2520225920_
                                                 (##cdr _e2520025915_))
                                                (_hd2520125918_
                                                 (##car _e2520025915_)))
                                            (if (gx#stx-null? _tl2520225920_)
                                                (if (gx#stx-null?
                                                     _tl2519625904_)
                                                    (if (gx#stx-null?
                                                         _tl2515425792_)
                                                        (___match2814028141_
                                                         _e2514625771_
                                                         _hd2514725774_
                                                         _tl2514825776_
                                                         _e2514925779_
                                                         _hd2515025782_
                                                         _tl2515125784_
                                                         _e2515225787_
                                                         _hd2515325790_
                                                         _tl2515425792_
                                                         _e2515525795_
                                                         _hd2515625798_
                                                         _tl2515725800_
                                                         _e2515825803_
                                                         _hd2515925806_
                                                         _tl2516025808_
                                                         _e2516125811_
                                                         _hd2516225814_
                                                         _tl2516325816_
                                                         _e2516425819_
                                                         _hd2516525822_
                                                         _tl2516625824_
                                                         _e2516725827_
                                                         _hd2516825830_
                                                         _tl2516925832_
                                                         _e2517025835_
                                                         _hd2517125838_
                                                         _tl2517225840_
                                                         _e2517325843_
                                                         _hd2517425846_
                                                         _tl2517525848_
                                                         _e2517625851_
                                                         _hd2517725854_
                                                         _tl2517825856_
                                                         _e2517925859_
                                                         _hd2518025862_
                                                         _tl2518125864_
                                                         _e2518225867_
                                                         _hd2518325870_
                                                         _tl2518425872_
                                                         _e2518525875_
                                                         _hd2518625878_
                                                         _tl2518725880_
                                                         _e2518825883_
                                                         _hd2518925886_
                                                         _tl2519025888_
                                                         _e2519125891_
                                                         _hd2519225894_
                                                         _tl2519325896_
                                                         _e2519425899_
                                                         _hd2519525902_
                                                         _tl2519625904_
                                                         _e2519725907_
                                                         _hd2519825910_
                                                         _tl2519925912_
                                                         _e2520025915_
                                                         _hd2520125918_
                                                         _tl2520225920_)
                                                        (___match2815228153_
                                                         _e2514625771_
                                                         _hd2514725774_
                                                         _tl2514825776_
                                                         _e2514925779_
                                                         _hd2515025782_
                                                         _tl2515125784_))
                                                    (___match2815228153_
                                                     _e2514625771_
                                                     _hd2514725774_
                                                     _tl2514825776_
                                                     _e2514925779_
                                                     _hd2515025782_
                                                     _tl2515125784_))
                                                (___match2815228153_
                                                 _e2514625771_
                                                 _hd2514725774_
                                                 _tl2514825776_
                                                 _e2514925779_
                                                 _hd2515025782_
                                                 _tl2515125784_))))
                                        (___match2815228153_
                                         _e2514625771_
                                         _hd2514725774_
                                         _tl2514825776_
                                         _e2514925779_
                                         _hd2515025782_
                                         _tl2515125784_))
                                    (___match2815228153_
                                     _e2514625771_
                                     _hd2514725774_
                                     _tl2514825776_
                                     _e2514925779_
                                     _hd2515025782_
                                     _tl2515125784_))
                                (___match2815228153_
                                 _e2514625771_
                                 _hd2514725774_
                                 _tl2514825776_
                                 _e2514925779_
                                 _hd2515025782_
                                 _tl2515125784_))))
                        (___match2815228153_
                         _e2514625771_
                         _hd2514725774_
                         _tl2514825776_
                         _e2514925779_
                         _hd2515025782_
                         _tl2515125784_))))
                (___match2815228153_
                 _e2514625771_
                 _hd2514725774_
                 _tl2514825776_
                 _e2514925779_
                 _hd2515025782_
                 _tl2515125784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815228153_
                                                     _e2514625771_
                                                     _hd2514725774_
                                                     _tl2514825776_
                                                     _e2514925779_
                                                     _hd2515025782_
                                                     _tl2515125784_))))
                                            (___match2815228153_
                                             _e2514625771_
                                             _hd2514725774_
                                             _tl2514825776_
                                             _e2514925779_
                                             _hd2515025782_
                                             _tl2515125784_))
                                        (___match2815228153_
                                         _e2514625771_
                                         _hd2514725774_
                                         _tl2514825776_
                                         _e2514925779_
                                         _hd2515025782_
                                         _tl2515125784_))
                                    (___match2815228153_
                                     _e2514625771_
                                     _hd2514725774_
                                     _tl2514825776_
                                     _e2514925779_
                                     _hd2515025782_
                                     _tl2515125784_))))
                            (___match2815228153_
                             _e2514625771_
                             _hd2514725774_
                             _tl2514825776_
                             _e2514925779_
                             _hd2515025782_
                             _tl2515125784_))))
                    (___match2815228153_
                     _e2514625771_
                     _hd2514725774_
                     _tl2514825776_
                     _e2514925779_
                     _hd2515025782_
                     _tl2515125784_))
                (___match2815228153_
                 _e2514625771_
                 _hd2514725774_
                 _tl2514825776_
                 _e2514925779_
                 _hd2515025782_
                 _tl2515125784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2815228153_
                                                 _e2514625771_
                                                 _hd2514725774_
                                                 _tl2514825776_
                                                 _e2514925779_
                                                 _hd2515025782_
                                                 _tl2515125784_))
                                            (___match2815228153_
                                             _e2514625771_
                                             _hd2514725774_
                                             _tl2514825776_
                                             _e2514925779_
                                             _hd2515025782_
                                             _tl2515125784_))
                                        (___match2815228153_
                                         _e2514625771_
                                         _hd2514725774_
                                         _tl2514825776_
                                         _e2514925779_
                                         _hd2515025782_
                                         _tl2515125784_))))
                                (___match2815228153_
                                 _e2514625771_
                                 _hd2514725774_
                                 _tl2514825776_
                                 _e2514925779_
                                 _hd2515025782_
                                 _tl2515125784_))))
                        (___match2815228153_
                         _e2514625771_
                         _hd2514725774_
                         _tl2514825776_
                         _e2514925779_
                         _hd2515025782_
                         _tl2515125784_))))
                 (___match2800028001_
                  (lambda (_e2514625771_
                           _hd2514725774_
                           _tl2514825776_
                           _e2514925779_
                           _hd2515025782_
                           _tl2515125784_)
                    (if (gx#stx-pair? _tl2515125784_)
                        (let ((_e2515225787_ (gx#stx-e _tl2515125784_)))
                          (let ((_tl2515425792_ (##cdr _e2515225787_))
                                (_hd2515325790_ (##car _e2515225787_)))
                            (if (gx#stx-pair? _hd2515325790_)
                                (let ((_e2515525795_
                                       (gx#stx-e _hd2515325790_)))
                                  (let ((_tl2515725800_ (##cdr _e2515525795_))
                                        (_hd2515625798_ (##car _e2515525795_)))
                                    (if (gx#identifier? _hd2515625798_)
                                        (if (gx#stx-eq? '%#call _hd2515625798_)
                                            (if (gx#stx-pair? _tl2515725800_)
                                                (let ((_e2515825803_
                                                       (gx#stx-e
                                                        _tl2515725800_)))
                                                  (let ((_tl2516025808_
                                                         (##cdr _e2515825803_))
                                                        (_hd2515925806_
                                                         (##car _e2515825803_)))
                                                    (if (gx#stx-pair?
                                                         _hd2515925806_)
                                                        (let ((_e2516125811_
                                                               (gx#stx-e
                                                                _hd2515925806_)))
                                                          (let ((_tl2516325816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2516125811_))
                        (_hd2516225814_ (##car _e2516125811_)))
                    (if (gx#identifier? _hd2516225814_)
                        (if (gx#stx-eq? '%#ref _hd2516225814_)
                            (if (gx#stx-pair? _tl2516325816_)
                                (let ((_e2516425819_
                                       (gx#stx-e _tl2516325816_)))
                                  (let ((_tl2516625824_ (##cdr _e2516425819_))
                                        (_hd2516525822_ (##car _e2516425819_)))
                                    (if (gx#stx-null? _tl2516625824_)
                                        (if (gx#stx-pair? _tl2516025808_)
                                            (let ((_e2516725827_
                                                   (gx#stx-e _tl2516025808_)))
                                              (let ((_tl2516925832_
                                                     (##cdr _e2516725827_))
                                                    (_hd2516825830_
                                                     (##car _e2516725827_)))
                                                (if (gx#stx-pair?
                                                     _hd2516825830_)
                                                    (let ((_e2517025835_
                                                           (gx#stx-e
                                                            _hd2516825830_)))
                                                      (let ((_tl2517225840_
                                                             (##cdr _e2517025835_))
                                                            (_hd2517125838_
                                                             (##car _e2517025835_)))
                                                        (if (gx#identifier?
                                                             _hd2517125838_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2517125838_)
                        (if (gx#stx-pair? _tl2517225840_)
                            (let ((_e2517325843_ (gx#stx-e _tl2517225840_)))
                              (let ((_tl2517525848_ (##cdr _e2517325843_))
                                    (_hd2517425846_ (##car _e2517325843_)))
                                (if (gx#stx-null? _tl2517525848_)
                                    (if (gx#stx-pair? _tl2516925832_)
                                        (let ((_e2517625851_
                                               (gx#stx-e _tl2516925832_)))
                                          (let ((_tl2517825856_
                                                 (##cdr _e2517625851_))
                                                (_hd2517725854_
                                                 (##car _e2517625851_)))
                                            (if (gx#stx-pair? _hd2517725854_)
                                                (let ((_e2517925859_
                                                       (gx#stx-e
                                                        _hd2517725854_)))
                                                  (let ((_tl2518125864_
                                                         (##cdr _e2517925859_))
                                                        (_hd2518025862_
                                                         (##car _e2517925859_)))
                                                    (if (gx#identifier?
                                                         _hd2518025862_)
                                                        (if (gx#stx-eq?
                                                             '%#quote
                                                             _hd2518025862_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2518125864_)
                        (let ((_e2518225867_ (gx#stx-e _tl2518125864_)))
                          (let ((_tl2518425872_ (##cdr _e2518225867_))
                                (_hd2518325870_ (##car _e2518225867_)))
                            (if (gx#stx-null? _tl2518425872_)
                                (if (gx#stx-pair? _tl2517825856_)
                                    (let ((_e2518525875_
                                           (gx#stx-e _tl2517825856_)))
                                      (let ((_tl2518725880_
                                             (##cdr _e2518525875_))
                                            (_hd2518625878_
                                             (##car _e2518525875_)))
                                        (if (gx#stx-pair? _hd2518625878_)
                                            (let ((_e2518825883_
                                                   (gx#stx-e _hd2518625878_)))
                                              (let ((_tl2519025888_
                                                     (##cdr _e2518825883_))
                                                    (_hd2518925886_
                                                     (##car _e2518825883_)))
                                                (if (gx#identifier?
                                                     _hd2518925886_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd2518925886_)
                                                        (if (gx#stx-pair?
                                                             _tl2519025888_)
                                                            (let ((_e2519125891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2519025888_)))
                      (let ((_tl2519325896_ (##cdr _e2519125891_))
                            (_hd2519225894_ (##car _e2519125891_)))
                        (if (gx#stx-null? _tl2519325896_)
                            (if (gx#stx-pair? _tl2518725880_)
                                (let ((_e2519425899_
                                       (gx#stx-e _tl2518725880_)))
                                  (let ((_tl2519625904_ (##cdr _e2519425899_))
                                        (_hd2519525902_ (##car _e2519425899_)))
                                    (if (gx#stx-pair? _hd2519525902_)
                                        (let ((_e2519725907_
                                               (gx#stx-e _hd2519525902_)))
                                          (let ((_tl2519925912_
                                                 (##cdr _e2519725907_))
                                                (_hd2519825910_
                                                 (##car _e2519725907_)))
                                            (if (gx#identifier? _hd2519825910_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2519825910_)
                                                    (if (gx#stx-pair?
                                                         _tl2519925912_)
                                                        (let ((_e2520025915_
                                                               (gx#stx-e
                                                                _tl2519925912_)))
                                                          (let ((_tl2520225920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2520025915_))
                        (_hd2520125918_ (##car _e2520025915_)))
                    (if (gx#stx-null? _tl2520225920_)
                        (if (gx#stx-null? _tl2519625904_)
                            (if (gx#stx-null? _tl2515425792_)
                                (___match2814028141_
                                 _e2514625771_
                                 _hd2514725774_
                                 _tl2514825776_
                                 _e2514925779_
                                 _hd2515025782_
                                 _tl2515125784_
                                 _e2515225787_
                                 _hd2515325790_
                                 _tl2515425792_
                                 _e2515525795_
                                 _hd2515625798_
                                 _tl2515725800_
                                 _e2515825803_
                                 _hd2515925806_
                                 _tl2516025808_
                                 _e2516125811_
                                 _hd2516225814_
                                 _tl2516325816_
                                 _e2516425819_
                                 _hd2516525822_
                                 _tl2516625824_
                                 _e2516725827_
                                 _hd2516825830_
                                 _tl2516925832_
                                 _e2517025835_
                                 _hd2517125838_
                                 _tl2517225840_
                                 _e2517325843_
                                 _hd2517425846_
                                 _tl2517525848_
                                 _e2517625851_
                                 _hd2517725854_
                                 _tl2517825856_
                                 _e2517925859_
                                 _hd2518025862_
                                 _tl2518125864_
                                 _e2518225867_
                                 _hd2518325870_
                                 _tl2518425872_
                                 _e2518525875_
                                 _hd2518625878_
                                 _tl2518725880_
                                 _e2518825883_
                                 _hd2518925886_
                                 _tl2519025888_
                                 _e2519125891_
                                 _hd2519225894_
                                 _tl2519325896_
                                 _e2519425899_
                                 _hd2519525902_
                                 _tl2519625904_
                                 _e2519725907_
                                 _hd2519825910_
                                 _tl2519925912_
                                 _e2520025915_
                                 _hd2520125918_
                                 _tl2520225920_)
                                (___match2815228153_
                                 _e2514625771_
                                 _hd2514725774_
                                 _tl2514825776_
                                 _e2514925779_
                                 _hd2515025782_
                                 _tl2515125784_))
                            (___match2815228153_
                             _e2514625771_
                             _hd2514725774_
                             _tl2514825776_
                             _e2514925779_
                             _hd2515025782_
                             _tl2515125784_))
                        (___match2815228153_
                         _e2514625771_
                         _hd2514725774_
                         _tl2514825776_
                         _e2514925779_
                         _hd2515025782_
                         _tl2515125784_))))
                (___match2815228153_
                 _e2514625771_
                 _hd2514725774_
                 _tl2514825776_
                 _e2514925779_
                 _hd2515025782_
                 _tl2515125784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815228153_
                                                     _e2514625771_
                                                     _hd2514725774_
                                                     _tl2514825776_
                                                     _e2514925779_
                                                     _hd2515025782_
                                                     _tl2515125784_))
                                                (___match2815228153_
                                                 _e2514625771_
                                                 _hd2514725774_
                                                 _tl2514825776_
                                                 _e2514925779_
                                                 _hd2515025782_
                                                 _tl2515125784_))))
                                        (___match2815228153_
                                         _e2514625771_
                                         _hd2514725774_
                                         _tl2514825776_
                                         _e2514925779_
                                         _hd2515025782_
                                         _tl2515125784_))))
                                (___match2815228153_
                                 _e2514625771_
                                 _hd2514725774_
                                 _tl2514825776_
                                 _e2514925779_
                                 _hd2515025782_
                                 _tl2515125784_))
                            (___match2815228153_
                             _e2514625771_
                             _hd2514725774_
                             _tl2514825776_
                             _e2514925779_
                             _hd2515025782_
                             _tl2515125784_))))
                    (___match2815228153_
                     _e2514625771_
                     _hd2514725774_
                     _tl2514825776_
                     _e2514925779_
                     _hd2515025782_
                     _tl2515125784_))
                (___match2815228153_
                 _e2514625771_
                 _hd2514725774_
                 _tl2514825776_
                 _e2514925779_
                 _hd2515025782_
                 _tl2515125784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815228153_
                                                     _e2514625771_
                                                     _hd2514725774_
                                                     _tl2514825776_
                                                     _e2514925779_
                                                     _hd2515025782_
                                                     _tl2515125784_))))
                                            (___match2815228153_
                                             _e2514625771_
                                             _hd2514725774_
                                             _tl2514825776_
                                             _e2514925779_
                                             _hd2515025782_
                                             _tl2515125784_))))
                                    (___match2815228153_
                                     _e2514625771_
                                     _hd2514725774_
                                     _tl2514825776_
                                     _e2514925779_
                                     _hd2515025782_
                                     _tl2515125784_))
                                (___match2815228153_
                                 _e2514625771_
                                 _hd2514725774_
                                 _tl2514825776_
                                 _e2514925779_
                                 _hd2515025782_
                                 _tl2515125784_))))
                        (___match2815228153_
                         _e2514625771_
                         _hd2514725774_
                         _tl2514825776_
                         _e2514925779_
                         _hd2515025782_
                         _tl2515125784_))
                    (___match2815228153_
                     _e2514625771_
                     _hd2514725774_
                     _tl2514825776_
                     _e2514925779_
                     _hd2515025782_
                     _tl2515125784_))
                (___match2815228153_
                 _e2514625771_
                 _hd2514725774_
                 _tl2514825776_
                 _e2514925779_
                 _hd2515025782_
                 _tl2515125784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2815228153_
                                                 _e2514625771_
                                                 _hd2514725774_
                                                 _tl2514825776_
                                                 _e2514925779_
                                                 _hd2515025782_
                                                 _tl2515125784_))))
                                        (___match2815228153_
                                         _e2514625771_
                                         _hd2514725774_
                                         _tl2514825776_
                                         _e2514925779_
                                         _hd2515025782_
                                         _tl2515125784_))
                                    (___match2815228153_
                                     _e2514625771_
                                     _hd2514725774_
                                     _tl2514825776_
                                     _e2514925779_
                                     _hd2515025782_
                                     _tl2515125784_))))
                            (___match2815228153_
                             _e2514625771_
                             _hd2514725774_
                             _tl2514825776_
                             _e2514925779_
                             _hd2515025782_
                             _tl2515125784_))
                        (___match2815228153_
                         _e2514625771_
                         _hd2514725774_
                         _tl2514825776_
                         _e2514925779_
                         _hd2515025782_
                         _tl2515125784_))
                    (___match2815228153_
                     _e2514625771_
                     _hd2514725774_
                     _tl2514825776_
                     _e2514925779_
                     _hd2515025782_
                     _tl2515125784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815228153_
                                                     _e2514625771_
                                                     _hd2514725774_
                                                     _tl2514825776_
                                                     _e2514925779_
                                                     _hd2515025782_
                                                     _tl2515125784_))))
                                            (___match2815228153_
                                             _e2514625771_
                                             _hd2514725774_
                                             _tl2514825776_
                                             _e2514925779_
                                             _hd2515025782_
                                             _tl2515125784_))
                                        (___match2815228153_
                                         _e2514625771_
                                         _hd2514725774_
                                         _tl2514825776_
                                         _e2514925779_
                                         _hd2515025782_
                                         _tl2515125784_))))
                                (___match2815228153_
                                 _e2514625771_
                                 _hd2514725774_
                                 _tl2514825776_
                                 _e2514925779_
                                 _hd2515025782_
                                 _tl2515125784_))
                            (___match2815228153_
                             _e2514625771_
                             _hd2514725774_
                             _tl2514825776_
                             _e2514925779_
                             _hd2515025782_
                             _tl2515125784_))
                        (___match2815228153_
                         _e2514625771_
                         _hd2514725774_
                         _tl2514825776_
                         _e2514925779_
                         _hd2515025782_
                         _tl2515125784_))))
                (___match2815228153_
                 _e2514625771_
                 _hd2514725774_
                 _tl2514825776_
                 _e2514925779_
                 _hd2515025782_
                 _tl2515125784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2815228153_
                                                 _e2514625771_
                                                 _hd2514725774_
                                                 _tl2514825776_
                                                 _e2514925779_
                                                 _hd2515025782_
                                                 _tl2515125784_))
                                            (___match2815228153_
                                             _e2514625771_
                                             _hd2514725774_
                                             _tl2514825776_
                                             _e2514925779_
                                             _hd2515025782_
                                             _tl2515125784_))
                                        (___match2815228153_
                                         _e2514625771_
                                         _hd2514725774_
                                         _tl2514825776_
                                         _e2514925779_
                                         _hd2515025782_
                                         _tl2515125784_))))
                                (___match2815228153_
                                 _e2514625771_
                                 _hd2514725774_
                                 _tl2514825776_
                                 _e2514925779_
                                 _hd2515025782_
                                 _tl2515125784_))))
                        (___match2815228153_
                         _e2514625771_
                         _hd2514725774_
                         _tl2514825776_
                         _e2514925779_
                         _hd2515025782_
                         _tl2515125784_))))
                 (___match2798827989_
                  (lambda (_e2508625988_
                           _hd2508725991_
                           _tl2508825993_
                           _e2508925996_
                           _hd2509025999_
                           _tl2509126001_
                           ___splice2781927820_
                           _target2509226004_
                           _tl2509426006_)
                    (letrec ((_loop2509526009_
                              (lambda (_hd2509326012_ _arg2509926014_)
                                (if (gx#stx-pair? _hd2509326012_)
                                    (let ((_e2509626017_
                                           (gx#stx-e _hd2509326012_)))
                                      (let ((_lp-tl2509826022_
                                             (##cdr _e2509626017_))
                                            (_lp-hd2509726020_
                                             (##car _e2509626017_)))
                                        (_loop2509526009_
                                         _lp-tl2509826022_
                                         (cons _lp-hd2509726020_
                                               _arg2509926014_))))
                                    (let ((_arg2510026025_
                                           (reverse _arg2509926014_)))
                                      (if (gx#stx-pair? _tl2509126001_)
                                          (let ((_e2510126028_
                                                 (gx#stx-e _tl2509126001_)))
                                            (let ((_tl2510326033_
                                                   (##cdr _e2510126028_))
                                                  (_hd2510226031_
                                                   (##car _e2510126028_)))
                                              (if (gx#stx-pair? _hd2510226031_)
                                                  (let ((_e2510426036_
                                                         (gx#stx-e
                                                          _hd2510226031_)))
                                                    (let ((_tl2510626041_
                                                           (##cdr _e2510426036_))
                                                          (_hd2510526039_
                                                           (##car _e2510426036_)))
                                                      (if (gx#identifier?
                                                           _hd2510526039_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2510526039_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2510626041_)
                          (let ((_e2510726044_ (gx#stx-e _tl2510626041_)))
                            (let ((_tl2510926049_ (##cdr _e2510726044_))
                                  (_hd2510826047_ (##car _e2510726044_)))
                              (if (gx#stx-pair? _hd2510826047_)
                                  (let ((_e2511026052_
                                         (gx#stx-e _hd2510826047_)))
                                    (let ((_tl2511226057_
                                           (##cdr _e2511026052_))
                                          (_hd2511126055_
                                           (##car _e2511026052_)))
                                      (if (gx#identifier? _hd2511126055_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2511126055_)
                                              (if (gx#stx-pair? _tl2511226057_)
                                                  (let ((_e2511326060_
                                                         (gx#stx-e
                                                          _tl2511226057_)))
                                                    (let ((_tl2511526065_
                                                           (##cdr _e2511326060_))
                                                          (_hd2511426063_
                                                           (##car _e2511326060_)))
                                                      (if (gx#stx-null?
                                                           _tl2511526065_)
                                                          (if (gx#stx-pair?
                                                               _tl2510926049_)
                                                              (let ((_e2511626068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2510926049_)))
                        (let ((_tl2511826073_ (##cdr _e2511626068_))
                              (_hd2511726071_ (##car _e2511626068_)))
                          (if (gx#stx-pair? _hd2511726071_)
                              (let ((_e2511926076_ (gx#stx-e _hd2511726071_)))
                                (let ((_tl2512126081_ (##cdr _e2511926076_))
                                      (_hd2512026079_ (##car _e2511926076_)))
                                  (if (gx#identifier? _hd2512026079_)
                                      (if (gx#stx-eq? '%#ref _hd2512026079_)
                                          (if (gx#stx-pair? _tl2512126081_)
                                              (let ((_e2512226084_
                                                     (gx#stx-e
                                                      _tl2512126081_)))
                                                (let ((_tl2512426089_
                                                       (##cdr _e2512226084_))
                                                      (_hd2512326087_
                                                       (##car _e2512226084_)))
                                                  (if (gx#stx-null?
                                                       _tl2512426089_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2511826073_)
                                                          (let ((___splice2782127822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2511826073_ '0)))
                    (let ((_tl2512726094_
                           (##vector-ref ___splice2782127822_ '1))
                          (_target2512526092_
                           (##vector-ref ___splice2782127822_ '0)))
                      (if (gx#stx-null? _tl2512726094_)
                          (letrec ((_loop2512826097_
                                    (lambda (_hd2512626100_ _xarg2513226102_)
                                      (if (gx#stx-pair? _hd2512626100_)
                                          (let ((_e2512926105_
                                                 (gx#stx-e _hd2512626100_)))
                                            (let ((_lp-tl2513126110_
                                                   (##cdr _e2512926105_))
                                                  (_lp-hd2513026108_
                                                   (##car _e2512926105_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2513026108_)
                                                  (let ((_e2513426113_
                                                         (gx#stx-e
                                                          _lp-hd2513026108_)))
                                                    (let ((_tl2513626118_
                                                           (##cdr _e2513426113_))
                                                          (_hd2513526116_
                                                           (##car _e2513426113_)))
                                                      (if (gx#identifier?
                                                           _hd2513526116_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2513526116_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2513626118_)
                          (let ((_e2513726121_ (gx#stx-e _tl2513626118_)))
                            (let ((_tl2513926126_ (##cdr _e2513726121_))
                                  (_hd2513826124_ (##car _e2513726121_)))
                              (if (gx#stx-null? _tl2513926126_)
                                  (_loop2512826097_
                                   _lp-tl2513126110_
                                   (cons _hd2513826124_ _xarg2513226102_))
                                  (___match2806428065_
                                   _e2508625988_
                                   _hd2508725991_
                                   _tl2508825993_
                                   _e2508925996_
                                   _hd2509025999_
                                   _tl2509126001_
                                   _e2510126028_
                                   _hd2510226031_
                                   _tl2510326033_
                                   _e2510426036_
                                   _hd2510526039_
                                   _tl2510626041_
                                   _e2510726044_
                                   _hd2510826047_
                                   _tl2510926049_
                                   _e2511026052_
                                   _hd2511126055_
                                   _tl2511226057_
                                   _e2511326060_
                                   _hd2511426063_
                                   _tl2511526065_
                                   _e2511626068_
                                   _hd2511726071_
                                   _tl2511826073_
                                   _e2511926076_
                                   _hd2512026079_
                                   _tl2512126081_
                                   _e2512226084_
                                   _hd2512326087_
                                   _tl2512426089_))))
                          (___match2806428065_
                           _e2508625988_
                           _hd2508725991_
                           _tl2508825993_
                           _e2508925996_
                           _hd2509025999_
                           _tl2509126001_
                           _e2510126028_
                           _hd2510226031_
                           _tl2510326033_
                           _e2510426036_
                           _hd2510526039_
                           _tl2510626041_
                           _e2510726044_
                           _hd2510826047_
                           _tl2510926049_
                           _e2511026052_
                           _hd2511126055_
                           _tl2511226057_
                           _e2511326060_
                           _hd2511426063_
                           _tl2511526065_
                           _e2511626068_
                           _hd2511726071_
                           _tl2511826073_
                           _e2511926076_
                           _hd2512026079_
                           _tl2512126081_
                           _e2512226084_
                           _hd2512326087_
                           _tl2512426089_))
                      (___match2806428065_
                       _e2508625988_
                       _hd2508725991_
                       _tl2508825993_
                       _e2508925996_
                       _hd2509025999_
                       _tl2509126001_
                       _e2510126028_
                       _hd2510226031_
                       _tl2510326033_
                       _e2510426036_
                       _hd2510526039_
                       _tl2510626041_
                       _e2510726044_
                       _hd2510826047_
                       _tl2510926049_
                       _e2511026052_
                       _hd2511126055_
                       _tl2511226057_
                       _e2511326060_
                       _hd2511426063_
                       _tl2511526065_
                       _e2511626068_
                       _hd2511726071_
                       _tl2511826073_
                       _e2511926076_
                       _hd2512026079_
                       _tl2512126081_
                       _e2512226084_
                       _hd2512326087_
                       _tl2512426089_))
                  (___match2806428065_
                   _e2508625988_
                   _hd2508725991_
                   _tl2508825993_
                   _e2508925996_
                   _hd2509025999_
                   _tl2509126001_
                   _e2510126028_
                   _hd2510226031_
                   _tl2510326033_
                   _e2510426036_
                   _hd2510526039_
                   _tl2510626041_
                   _e2510726044_
                   _hd2510826047_
                   _tl2510926049_
                   _e2511026052_
                   _hd2511126055_
                   _tl2511226057_
                   _e2511326060_
                   _hd2511426063_
                   _tl2511526065_
                   _e2511626068_
                   _hd2511726071_
                   _tl2511826073_
                   _e2511926076_
                   _hd2512026079_
                   _tl2512126081_
                   _e2512226084_
                   _hd2512326087_
                   _tl2512426089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2806428065_
                                                   _e2508625988_
                                                   _hd2508725991_
                                                   _tl2508825993_
                                                   _e2508925996_
                                                   _hd2509025999_
                                                   _tl2509126001_
                                                   _e2510126028_
                                                   _hd2510226031_
                                                   _tl2510326033_
                                                   _e2510426036_
                                                   _hd2510526039_
                                                   _tl2510626041_
                                                   _e2510726044_
                                                   _hd2510826047_
                                                   _tl2510926049_
                                                   _e2511026052_
                                                   _hd2511126055_
                                                   _tl2511226057_
                                                   _e2511326060_
                                                   _hd2511426063_
                                                   _tl2511526065_
                                                   _e2511626068_
                                                   _hd2511726071_
                                                   _tl2511826073_
                                                   _e2511926076_
                                                   _hd2512026079_
                                                   _tl2512126081_
                                                   _e2512226084_
                                                   _hd2512326087_
                                                   _tl2512426089_))))
                                          (let ((_xarg2513326129_
                                                 (reverse _xarg2513226102_)))
                                            (if (gx#stx-null? _tl2510326033_)
                                                (let ((_L26132_
                                                       _xarg2513326129_)
                                                      (_L26133_ _hd2512326087_)
                                                      (_L26134_ _hd2511426063_)
                                                      (_L26135_
                                                       _arg2510026025_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2617226175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2617326177_)
                               (cons _g2617226175_ _g2617326177_))
                             '()
                             _L26135_)))
                  (if (gxc#runtime-identifier=? _L26134_ 'make-struct-instance)
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2617926182_
                                                          _g2618026184_)
                                                   (cons _g2617926182_
                                                         _g2618026184_))
                                                 '()
                                                 _L26135_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2618626189_
                                                          _g2618726191_)
                                                   (cons _g2618626189_
                                                         _g2618726191_))
                                                 '()
                                                 _L26132_))))
                          (andmap2 gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2619326196_
                                                      _g2619426198_)
                                               (cons _g2619326196_
                                                     _g2619426198_))
                                             '()
                                             _L26135_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2620026203_
                                                      _g2620126205_)
                                               (cons _g2620026203_
                                                     _g2620126205_))
                                             '()
                                             _L26132_)))
                          '#f)
                      '#f)
                  '#f)
              (___kont2781727818_ _L26132_ _L26133_ _L26134_ _L26135_)
              (___match2806428065_
               _e2508625988_
               _hd2508725991_
               _tl2508825993_
               _e2508925996_
               _hd2509025999_
               _tl2509126001_
               _e2510126028_
               _hd2510226031_
               _tl2510326033_
               _e2510426036_
               _hd2510526039_
               _tl2510626041_
               _e2510726044_
               _hd2510826047_
               _tl2510926049_
               _e2511026052_
               _hd2511126055_
               _tl2511226057_
               _e2511326060_
               _hd2511426063_
               _tl2511526065_
               _e2511626068_
               _hd2511726071_
               _tl2511826073_
               _e2511926076_
               _hd2512026079_
               _tl2512126081_
               _e2512226084_
               _hd2512326087_
               _tl2512426089_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2806428065_
                                                 _e2508625988_
                                                 _hd2508725991_
                                                 _tl2508825993_
                                                 _e2508925996_
                                                 _hd2509025999_
                                                 _tl2509126001_
                                                 _e2510126028_
                                                 _hd2510226031_
                                                 _tl2510326033_
                                                 _e2510426036_
                                                 _hd2510526039_
                                                 _tl2510626041_
                                                 _e2510726044_
                                                 _hd2510826047_
                                                 _tl2510926049_
                                                 _e2511026052_
                                                 _hd2511126055_
                                                 _tl2511226057_
                                                 _e2511326060_
                                                 _hd2511426063_
                                                 _tl2511526065_
                                                 _e2511626068_
                                                 _hd2511726071_
                                                 _tl2511826073_
                                                 _e2511926076_
                                                 _hd2512026079_
                                                 _tl2512126081_
                                                 _e2512226084_
                                                 _hd2512326087_
                                                 _tl2512426089_)))))))
                            (_loop2512826097_ _target2512526092_ '()))
                          (___match2806428065_
                           _e2508625988_
                           _hd2508725991_
                           _tl2508825993_
                           _e2508925996_
                           _hd2509025999_
                           _tl2509126001_
                           _e2510126028_
                           _hd2510226031_
                           _tl2510326033_
                           _e2510426036_
                           _hd2510526039_
                           _tl2510626041_
                           _e2510726044_
                           _hd2510826047_
                           _tl2510926049_
                           _e2511026052_
                           _hd2511126055_
                           _tl2511226057_
                           _e2511326060_
                           _hd2511426063_
                           _tl2511526065_
                           _e2511626068_
                           _hd2511726071_
                           _tl2511826073_
                           _e2511926076_
                           _hd2512026079_
                           _tl2512126081_
                           _e2512226084_
                           _hd2512326087_
                           _tl2512426089_))))
                  (___match2806428065_
                   _e2508625988_
                   _hd2508725991_
                   _tl2508825993_
                   _e2508925996_
                   _hd2509025999_
                   _tl2509126001_
                   _e2510126028_
                   _hd2510226031_
                   _tl2510326033_
                   _e2510426036_
                   _hd2510526039_
                   _tl2510626041_
                   _e2510726044_
                   _hd2510826047_
                   _tl2510926049_
                   _e2511026052_
                   _hd2511126055_
                   _tl2511226057_
                   _e2511326060_
                   _hd2511426063_
                   _tl2511526065_
                   _e2511626068_
                   _hd2511726071_
                   _tl2511826073_
                   _e2511926076_
                   _hd2512026079_
                   _tl2512126081_
                   _e2512226084_
                   _hd2512326087_
                   _tl2512426089_))
              (___match2815228153_
               _e2508625988_
               _hd2508725991_
               _tl2508825993_
               _e2508925996_
               _hd2509025999_
               _tl2509126001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2815228153_
                                               _e2508625988_
                                               _hd2508725991_
                                               _tl2508825993_
                                               _e2508925996_
                                               _hd2509025999_
                                               _tl2509126001_))
                                          (___match2815228153_
                                           _e2508625988_
                                           _hd2508725991_
                                           _tl2508825993_
                                           _e2508925996_
                                           _hd2509025999_
                                           _tl2509126001_))
                                      (___match2815228153_
                                       _e2508625988_
                                       _hd2508725991_
                                       _tl2508825993_
                                       _e2508925996_
                                       _hd2509025999_
                                       _tl2509126001_))))
                              (___match2815228153_
                               _e2508625988_
                               _hd2508725991_
                               _tl2508825993_
                               _e2508925996_
                               _hd2509025999_
                               _tl2509126001_))))
                      (___match2815228153_
                       _e2508625988_
                       _hd2508725991_
                       _tl2508825993_
                       _e2508925996_
                       _hd2509025999_
                       _tl2509126001_))
                  (___match2815228153_
                   _e2508625988_
                   _hd2508725991_
                   _tl2508825993_
                   _e2508925996_
                   _hd2509025999_
                   _tl2509126001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2815228153_
                                                   _e2508625988_
                                                   _hd2508725991_
                                                   _tl2508825993_
                                                   _e2508925996_
                                                   _hd2509025999_
                                                   _tl2509126001_))
                                              (___match2815228153_
                                               _e2508625988_
                                               _hd2508725991_
                                               _tl2508825993_
                                               _e2508925996_
                                               _hd2509025999_
                                               _tl2509126001_))
                                          (___match2815228153_
                                           _e2508625988_
                                           _hd2508725991_
                                           _tl2508825993_
                                           _e2508925996_
                                           _hd2509025999_
                                           _tl2509126001_))))
                                  (___match2815228153_
                                   _e2508625988_
                                   _hd2508725991_
                                   _tl2508825993_
                                   _e2508925996_
                                   _hd2509025999_
                                   _tl2509126001_))))
                          (___match2815228153_
                           _e2508625988_
                           _hd2508725991_
                           _tl2508825993_
                           _e2508925996_
                           _hd2509025999_
                           _tl2509126001_))
                      (___match2815228153_
                       _e2508625988_
                       _hd2508725991_
                       _tl2508825993_
                       _e2508925996_
                       _hd2509025999_
                       _tl2509126001_))
                  (___match2815228153_
                   _e2508625988_
                   _hd2508725991_
                   _tl2508825993_
                   _e2508925996_
                   _hd2509025999_
                   _tl2509126001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2815228153_
                                                   _e2508625988_
                                                   _hd2508725991_
                                                   _tl2508825993_
                                                   _e2508925996_
                                                   _hd2509025999_
                                                   _tl2509126001_))))
                                          (___match2815228153_
                                           _e2508625988_
                                           _hd2508725991_
                                           _tl2508825993_
                                           _e2508925996_
                                           _hd2509025999_
                                           _tl2509126001_)))))))
                      (_loop2509526009_ _target2509226004_ '()))))
                 (___match2798027981_
                  (lambda (_e2508625988_
                           _hd2508725991_
                           _tl2508825993_
                           _e2508925996_
                           _hd2509025999_
                           _tl2509126001_)
                    (if (gx#stx-pair/null? _hd2509025999_)
                        (let ((___splice2781927820_
                               (gx#syntax-split-splice _hd2509025999_ '0)))
                          (let ((_tl2509426006_
                                 (##vector-ref ___splice2781927820_ '1))
                                (_target2509226004_
                                 (##vector-ref ___splice2781927820_ '0)))
                            (if (gx#stx-null? _tl2509426006_)
                                (___match2798827989_
                                 _e2508625988_
                                 _hd2508725991_
                                 _tl2508825993_
                                 _e2508925996_
                                 _hd2509025999_
                                 _tl2509126001_
                                 ___splice2781927820_
                                 _target2509226004_
                                 _tl2509426006_)
                                (___match2800028001_
                                 _e2508625988_
                                 _hd2508725991_
                                 _tl2508825993_
                                 _e2508925996_
                                 _hd2509025999_
                                 _tl2509126001_))))
                        (___match2800028001_
                         _e2508625988_
                         _hd2508725991_
                         _tl2508825993_
                         _e2508925996_
                         _hd2509025999_
                         _tl2509126001_))))
                 (___match2796827969_
                  (lambda (_e2503426218_
                           _hd2503526221_
                           _tl2503626223_
                           _e2503726226_
                           _hd2503826229_
                           _tl2503926231_
                           _e2504026234_
                           _hd2504126237_
                           _tl2504226239_
                           _e2504326242_
                           _hd2504426245_
                           _tl2504526247_
                           _e2504626250_
                           _hd2504726253_
                           _tl2504826255_
                           _e2504926258_
                           _hd2505026261_
                           _tl2505126263_
                           _e2505226266_
                           _hd2505326269_
                           _tl2505426271_
                           _e2505526274_
                           _hd2505626277_
                           _tl2505726279_
                           _e2505826282_
                           _hd2505926285_
                           _tl2506026287_
                           _e2506126290_
                           _hd2506226293_
                           _tl2506326295_
                           _e2506426298_
                           _hd2506526301_
                           _tl2506626303_
                           _e2506726306_
                           _hd2506826309_
                           _tl2506926311_
                           _e2507026314_
                           _hd2507126317_
                           _tl2507226319_
                           _e2507326322_
                           _hd2507426325_
                           _tl2507526327_
                           _e2507626330_
                           _hd2507726333_
                           _tl2507826335_
                           _e2507926338_
                           _hd2508026341_
                           _tl2508126343_)
                    (let ((_L26346_ _hd2508026341_)
                          (_L26347_ _hd2507126317_)
                          (_L26348_ _hd2506226293_)
                          (_L26349_ _hd2505326269_)
                          (_L26350_ _hd2503826229_))
                      (if (if (gx#identifier? _L26350_)
                              (if (gxc#runtime-identifier=? _L26349_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L26348_
                                       'make-struct-instance)
                                      (gx#free-identifier=? _L26350_ _L26346_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2781527816_
                           _L26346_
                           _L26347_
                           _L26348_
                           _L26349_
                           _L26350_)
                          (___match2798027981_
                           _e2503426218_
                           _hd2503526221_
                           _tl2503626223_
                           _e2503726226_
                           _hd2503826229_
                           _tl2503926231_)))))
                 (___match2784627847_
                  (lambda (_e2503426218_ _hd2503526221_ _tl2503626223_)
                    (if (gx#stx-pair? _tl2503626223_)
                        (let ((_e2503726226_ (gx#stx-e _tl2503626223_)))
                          (let ((_tl2503926231_ (##cdr _e2503726226_))
                                (_hd2503826229_ (##car _e2503726226_)))
                            (if (gx#stx-pair? _tl2503926231_)
                                (let ((_e2504026234_
                                       (gx#stx-e _tl2503926231_)))
                                  (let ((_tl2504226239_ (##cdr _e2504026234_))
                                        (_hd2504126237_ (##car _e2504026234_)))
                                    (if (gx#stx-pair? _hd2504126237_)
                                        (let ((_e2504326242_
                                               (gx#stx-e _hd2504126237_)))
                                          (let ((_tl2504526247_
                                                 (##cdr _e2504326242_))
                                                (_hd2504426245_
                                                 (##car _e2504326242_)))
                                            (if (gx#identifier? _hd2504426245_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2504426245_)
                                                    (if (gx#stx-pair?
                                                         _tl2504526247_)
                                                        (let ((_e2504626250_
                                                               (gx#stx-e
                                                                _tl2504526247_)))
                                                          (let ((_tl2504826255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2504626250_))
                        (_hd2504726253_ (##car _e2504626250_)))
                    (if (gx#stx-pair? _hd2504726253_)
                        (let ((_e2504926258_ (gx#stx-e _hd2504726253_)))
                          (let ((_tl2505126263_ (##cdr _e2504926258_))
                                (_hd2505026261_ (##car _e2504926258_)))
                            (if (gx#identifier? _hd2505026261_)
                                (if (gx#stx-eq? '%#ref _hd2505026261_)
                                    (if (gx#stx-pair? _tl2505126263_)
                                        (let ((_e2505226266_
                                               (gx#stx-e _tl2505126263_)))
                                          (let ((_tl2505426271_
                                                 (##cdr _e2505226266_))
                                                (_hd2505326269_
                                                 (##car _e2505226266_)))
                                            (if (gx#stx-null? _tl2505426271_)
                                                (if (gx#stx-pair?
                                                     _tl2504826255_)
                                                    (let ((_e2505526274_
                                                           (gx#stx-e
                                                            _tl2504826255_)))
                                                      (let ((_tl2505726279_
                                                             (##cdr _e2505526274_))
                                                            (_hd2505626277_
                                                             (##car _e2505526274_)))
                                                        (if (gx#stx-pair?
                                                             _hd2505626277_)
                                                            (let ((_e2505826282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2505626277_)))
                      (let ((_tl2506026287_ (##cdr _e2505826282_))
                            (_hd2505926285_ (##car _e2505826282_)))
                        (if (gx#identifier? _hd2505926285_)
                            (if (gx#stx-eq? '%#ref _hd2505926285_)
                                (if (gx#stx-pair? _tl2506026287_)
                                    (let ((_e2506126290_
                                           (gx#stx-e _tl2506026287_)))
                                      (let ((_tl2506326295_
                                             (##cdr _e2506126290_))
                                            (_hd2506226293_
                                             (##car _e2506126290_)))
                                        (if (gx#stx-null? _tl2506326295_)
                                            (if (gx#stx-pair? _tl2505726279_)
                                                (let ((_e2506426298_
                                                       (gx#stx-e
                                                        _tl2505726279_)))
                                                  (let ((_tl2506626303_
                                                         (##cdr _e2506426298_))
                                                        (_hd2506526301_
                                                         (##car _e2506426298_)))
                                                    (if (gx#stx-pair?
                                                         _hd2506526301_)
                                                        (let ((_e2506726306_
                                                               (gx#stx-e
                                                                _hd2506526301_)))
                                                          (let ((_tl2506926311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2506726306_))
                        (_hd2506826309_ (##car _e2506726306_)))
                    (if (gx#identifier? _hd2506826309_)
                        (if (gx#stx-eq? '%#ref _hd2506826309_)
                            (if (gx#stx-pair? _tl2506926311_)
                                (let ((_e2507026314_
                                       (gx#stx-e _tl2506926311_)))
                                  (let ((_tl2507226319_ (##cdr _e2507026314_))
                                        (_hd2507126317_ (##car _e2507026314_)))
                                    (if (gx#stx-null? _tl2507226319_)
                                        (if (gx#stx-pair? _tl2506626303_)
                                            (let ((_e2507326322_
                                                   (gx#stx-e _tl2506626303_)))
                                              (let ((_tl2507526327_
                                                     (##cdr _e2507326322_))
                                                    (_hd2507426325_
                                                     (##car _e2507326322_)))
                                                (if (gx#stx-pair?
                                                     _hd2507426325_)
                                                    (let ((_e2507626330_
                                                           (gx#stx-e
                                                            _hd2507426325_)))
                                                      (let ((_tl2507826335_
                                                             (##cdr _e2507626330_))
                                                            (_hd2507726333_
                                                             (##car _e2507626330_)))
                                                        (if (gx#identifier?
                                                             _hd2507726333_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2507726333_)
                        (if (gx#stx-pair? _tl2507826335_)
                            (let ((_e2507926338_ (gx#stx-e _tl2507826335_)))
                              (let ((_tl2508126343_ (##cdr _e2507926338_))
                                    (_hd2508026341_ (##car _e2507926338_)))
                                (if (gx#stx-null? _tl2508126343_)
                                    (if (gx#stx-null? _tl2507526327_)
                                        (if (gx#stx-null? _tl2504226239_)
                                            (___match2796827969_
                                             _e2503426218_
                                             _hd2503526221_
                                             _tl2503626223_
                                             _e2503726226_
                                             _hd2503826229_
                                             _tl2503926231_
                                             _e2504026234_
                                             _hd2504126237_
                                             _tl2504226239_
                                             _e2504326242_
                                             _hd2504426245_
                                             _tl2504526247_
                                             _e2504626250_
                                             _hd2504726253_
                                             _tl2504826255_
                                             _e2504926258_
                                             _hd2505026261_
                                             _tl2505126263_
                                             _e2505226266_
                                             _hd2505326269_
                                             _tl2505426271_
                                             _e2505526274_
                                             _hd2505626277_
                                             _tl2505726279_
                                             _e2505826282_
                                             _hd2505926285_
                                             _tl2506026287_
                                             _e2506126290_
                                             _hd2506226293_
                                             _tl2506326295_
                                             _e2506426298_
                                             _hd2506526301_
                                             _tl2506626303_
                                             _e2506726306_
                                             _hd2506826309_
                                             _tl2506926311_
                                             _e2507026314_
                                             _hd2507126317_
                                             _tl2507226319_
                                             _e2507326322_
                                             _hd2507426325_
                                             _tl2507526327_
                                             _e2507626330_
                                             _hd2507726333_
                                             _tl2507826335_
                                             _e2507926338_
                                             _hd2508026341_
                                             _tl2508126343_)
                                            (___match2798027981_
                                             _e2503426218_
                                             _hd2503526221_
                                             _tl2503626223_
                                             _e2503726226_
                                             _hd2503826229_
                                             _tl2503926231_))
                                        (___match2798027981_
                                         _e2503426218_
                                         _hd2503526221_
                                         _tl2503626223_
                                         _e2503726226_
                                         _hd2503826229_
                                         _tl2503926231_))
                                    (___match2798027981_
                                     _e2503426218_
                                     _hd2503526221_
                                     _tl2503626223_
                                     _e2503726226_
                                     _hd2503826229_
                                     _tl2503926231_))))
                            (___match2798027981_
                             _e2503426218_
                             _hd2503526221_
                             _tl2503626223_
                             _e2503726226_
                             _hd2503826229_
                             _tl2503926231_))
                        (___match2798027981_
                         _e2503426218_
                         _hd2503526221_
                         _tl2503626223_
                         _e2503726226_
                         _hd2503826229_
                         _tl2503926231_))
                    (___match2798027981_
                     _e2503426218_
                     _hd2503526221_
                     _tl2503626223_
                     _e2503726226_
                     _hd2503826229_
                     _tl2503926231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2798027981_
                                                     _e2503426218_
                                                     _hd2503526221_
                                                     _tl2503626223_
                                                     _e2503726226_
                                                     _hd2503826229_
                                                     _tl2503926231_))))
                                            (___match2798027981_
                                             _e2503426218_
                                             _hd2503526221_
                                             _tl2503626223_
                                             _e2503726226_
                                             _hd2503826229_
                                             _tl2503926231_))
                                        (___match2798027981_
                                         _e2503426218_
                                         _hd2503526221_
                                         _tl2503626223_
                                         _e2503726226_
                                         _hd2503826229_
                                         _tl2503926231_))))
                                (___match2798027981_
                                 _e2503426218_
                                 _hd2503526221_
                                 _tl2503626223_
                                 _e2503726226_
                                 _hd2503826229_
                                 _tl2503926231_))
                            (___match2798027981_
                             _e2503426218_
                             _hd2503526221_
                             _tl2503626223_
                             _e2503726226_
                             _hd2503826229_
                             _tl2503926231_))
                        (___match2798027981_
                         _e2503426218_
                         _hd2503526221_
                         _tl2503626223_
                         _e2503726226_
                         _hd2503826229_
                         _tl2503926231_))))
                (___match2798027981_
                 _e2503426218_
                 _hd2503526221_
                 _tl2503626223_
                 _e2503726226_
                 _hd2503826229_
                 _tl2503926231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2798027981_
                                                 _e2503426218_
                                                 _hd2503526221_
                                                 _tl2503626223_
                                                 _e2503726226_
                                                 _hd2503826229_
                                                 _tl2503926231_))
                                            (___match2798027981_
                                             _e2503426218_
                                             _hd2503526221_
                                             _tl2503626223_
                                             _e2503726226_
                                             _hd2503826229_
                                             _tl2503926231_))))
                                    (___match2798027981_
                                     _e2503426218_
                                     _hd2503526221_
                                     _tl2503626223_
                                     _e2503726226_
                                     _hd2503826229_
                                     _tl2503926231_))
                                (___match2798027981_
                                 _e2503426218_
                                 _hd2503526221_
                                 _tl2503626223_
                                 _e2503726226_
                                 _hd2503826229_
                                 _tl2503926231_))
                            (___match2798027981_
                             _e2503426218_
                             _hd2503526221_
                             _tl2503626223_
                             _e2503726226_
                             _hd2503826229_
                             _tl2503926231_))))
                    (___match2798027981_
                     _e2503426218_
                     _hd2503526221_
                     _tl2503626223_
                     _e2503726226_
                     _hd2503826229_
                     _tl2503926231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2798027981_
                                                     _e2503426218_
                                                     _hd2503526221_
                                                     _tl2503626223_
                                                     _e2503726226_
                                                     _hd2503826229_
                                                     _tl2503926231_))
                                                (___match2798027981_
                                                 _e2503426218_
                                                 _hd2503526221_
                                                 _tl2503626223_
                                                 _e2503726226_
                                                 _hd2503826229_
                                                 _tl2503926231_))))
                                        (___match2798027981_
                                         _e2503426218_
                                         _hd2503526221_
                                         _tl2503626223_
                                         _e2503726226_
                                         _hd2503826229_
                                         _tl2503926231_))
                                    (___match2798027981_
                                     _e2503426218_
                                     _hd2503526221_
                                     _tl2503626223_
                                     _e2503726226_
                                     _hd2503826229_
                                     _tl2503926231_))
                                (___match2798027981_
                                 _e2503426218_
                                 _hd2503526221_
                                 _tl2503626223_
                                 _e2503726226_
                                 _hd2503826229_
                                 _tl2503926231_))))
                        (___match2798027981_
                         _e2503426218_
                         _hd2503526221_
                         _tl2503626223_
                         _e2503726226_
                         _hd2503826229_
                         _tl2503926231_))))
                (___match2798027981_
                 _e2503426218_
                 _hd2503526221_
                 _tl2503626223_
                 _e2503726226_
                 _hd2503826229_
                 _tl2503926231_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2798027981_
                                                     _e2503426218_
                                                     _hd2503526221_
                                                     _tl2503626223_
                                                     _e2503726226_
                                                     _hd2503826229_
                                                     _tl2503926231_))
                                                (___match2798027981_
                                                 _e2503426218_
                                                 _hd2503526221_
                                                 _tl2503626223_
                                                 _e2503726226_
                                                 _hd2503826229_
                                                 _tl2503926231_))))
                                        (___match2798027981_
                                         _e2503426218_
                                         _hd2503526221_
                                         _tl2503626223_
                                         _e2503726226_
                                         _hd2503826229_
                                         _tl2503926231_))))
                                (___match2798027981_
                                 _e2503426218_
                                 _hd2503526221_
                                 _tl2503626223_
                                 _e2503726226_
                                 _hd2503826229_
                                 _tl2503926231_))))
                        (___match2828628287_
                         _e2503426218_
                         _hd2503526221_
                         _tl2503626223_)))))
            (if (gx#stx-pair? ___stx2781127812_)
                (let ((_e2502626403_ (gx#stx-e ___stx2781127812_)))
                  (let ((_tl2502826408_ (##cdr _e2502626403_))
                        (_hd2502726406_ (##car _e2502626403_)))
                    (if (gxc#current-compile-type-closure)
                        (let ((_L26411_ _tl2502826408_))
                          (___kont2781327814_ _L26411_))
                        (___match2784627847_
                         _e2502626403_
                         _hd2502726406_
                         _tl2502826408_))))
                (_g2502325330_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx24970_)
      (letrec ((_clause-e24972_
                (lambda (_form25013_)
                  (let ((__obj30057 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj30057
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form25013_)
                       (if (not (gxc#current-compile-type-closure))
                           (if (gxc#dispatch-lambda-form? _form25013_)
                               (gxc#dispatch-lambda-form-delegate _form25013_)
                               '#f)
                           '#f))
                      __obj30057)))))
        (let* ((_g2497424984_
                (lambda (_g2497524981_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2497524981_)))
               (_g2497325010_
                (lambda (_g2497524987_)
                  (if (gx#stx-pair? _g2497524987_)
                      (let ((_e2497724989_ (gx#stx-e _g2497524987_)))
                        (let ((_hd2497824992_ (##car _e2497724989_))
                              (_tl2497924994_ (##cdr _e2497724989_)))
                          ((lambda (_L24997_)
                             (let ((_clauses25008_
                                    (map _clause-e24972_ _L24997_)))
                               (##structure
                                gxc#!case-lambda::t
                                'case-lambda
                                _clauses25008_)))
                           _tl2497924994_)))
                      (_g2497424984_ _g2497524987_)))))
          (_g2497325010_ _stx24970_)))))
  (define gxc#basic-expression-type-let-values%
    (lambda (_stx24902_)
      (let* ((_g2490424921_
              (lambda (_g2490524918_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2490524918_)))
             (_g2490324967_
              (lambda (_g2490524924_)
                (if (gx#stx-pair? _g2490524924_)
                    (let ((_e2490824926_ (gx#stx-e _g2490524924_)))
                      (let ((_hd2490924929_ (##car _e2490824926_))
                            (_tl2491024931_ (##cdr _e2490824926_)))
                        (if (gx#stx-pair? _tl2491024931_)
                            (let ((_e2491124934_ (gx#stx-e _tl2491024931_)))
                              (let ((_hd2491224937_ (##car _e2491124934_))
                                    (_tl2491324939_ (##cdr _e2491124934_)))
                                (if (gx#stx-pair? _tl2491324939_)
                                    (let ((_e2491424942_
                                           (gx#stx-e _tl2491324939_)))
                                      (let ((_hd2491524945_
                                             (##car _e2491424942_))
                                            (_tl2491624947_
                                             (##cdr _e2491424942_)))
                                        (if (gx#stx-null? _tl2491624947_)
                                            ((lambda (_L24950_ _L24951_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (gxc#compile-e _L24950_))
                                                gxc#current-compile-type-closure
                                                '#t))
                                             _hd2491524945_
                                             _hd2491224937_)
                                            (_g2490424921_ _g2490524924_))))
                                    (_g2490424921_ _g2490524924_))))
                            (_g2490424921_ _g2490524924_))))
                    (_g2490424921_ _g2490524924_)))))
        (_g2490324967_ _stx24902_))))
  (define gxc#basic-expression-type-builtin (make-table 'test: eq?))
  (define gxc#basic-expression-type-call%
    (lambda (_stx24807_)
      (let* ((___stx2829528296_ _stx24807_)
             (_g2481024830_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2829528296_))))
        (let ((___kont2829728298_
               (lambda (_L24874_ _L24875_)
                 (let ((_type-e2489224894_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L24875_)
                         '#f)))
                   (if _type-e2489224894_
                       (let ((_type-e24897_ _type-e2489224894_))
                         (_type-e24897_ _stx24807_ _L24874_))
                       '#f))))
              (___kont2829928300_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2829528296_)
              (let ((_e2481424842_ (gx#stx-e ___stx2829528296_)))
                (let ((_tl2481624847_ (##cdr _e2481424842_))
                      (_hd2481524845_ (##car _e2481424842_)))
                  (if (gx#stx-pair? _tl2481624847_)
                      (let ((_e2481724850_ (gx#stx-e _tl2481624847_)))
                        (let ((_tl2481924855_ (##cdr _e2481724850_))
                              (_hd2481824853_ (##car _e2481724850_)))
                          (if (gx#stx-pair? _hd2481824853_)
                              (let ((_e2482024858_ (gx#stx-e _hd2481824853_)))
                                (let ((_tl2482224863_ (##cdr _e2482024858_))
                                      (_hd2482124861_ (##car _e2482024858_)))
                                  (if (gx#identifier? _hd2482124861_)
                                      (if (gx#stx-eq? '%#ref _hd2482124861_)
                                          (if (gx#stx-pair? _tl2482224863_)
                                              (let ((_e2482324866_
                                                     (gx#stx-e
                                                      _tl2482224863_)))
                                                (let ((_tl2482524871_
                                                       (##cdr _e2482324866_))
                                                      (_hd2482424869_
                                                       (##car _e2482324866_)))
                                                  (if (gx#stx-null?
                                                       _tl2482524871_)
                                                      (___kont2829728298_
                                                       _tl2481924855_
                                                       _hd2482424869_)
                                                      (___kont2829928300_))))
                                              (___kont2829928300_))
                                          (___kont2829928300_))
                                      (___kont2829928300_))))
                              (___kont2829928300_))))
                      (___kont2829928300_))))
              (___kont2829928300_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx24287_ _args24288_)
      (let* ((___stx2833328334_ _args24288_)
             (_g2429224406_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2833328334_))))
        (let ((___kont2833528336_
               (lambda (_L24756_ _L24757_ _L24758_ _L24759_ _L24760_)
                 (let ((__obj30058 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj30058
                      (gx#stx-e _L24760_)
                      '#f
                      (gx#stx-e _L24759_)
                      '0
                      (gx#stx-e _L24756_)
                      (gx#stx-e _L24757_))
                     __obj30058))))
              (___kont2833728338_
               (lambda (_L24546_ _L24547_ _L24548_ _L24549_ _L24550_ _L24551_)
                 (let* ((_super-t24597_
                         (if (gx#stx-e _L24550_)
                             (gxc#identifier-symbol _L24550_)
                             '#f))
                        (_super-type24599_
                         (if _super-t24597_
                             (gxc#optimizer-resolve-type _super-t24597_)
                             '#f)))
                   (begin
                     (if (if _super-type24599_
                             (not (##structure-instance-of?
                                   _super-type24599_
                                   'gxc#!struct-type::t))
                             '#f)
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx24287_
                          _L24550_)
                         '#!void)
                     (let ((_fields24615_ (gx#stx-e _L24549_))
                           (_xfields24616_
                            (if _super-type24599_
                                (let ((_super-fields2460124604_
                                       (##structure-ref
                                        _super-type24599_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2460224606_
                                       (##structure-ref
                                        _super-type24599_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2460124604_
                                      (if _super-xfields2460224606_
                                          (let ((_super-fields24609_
                                                 _super-fields2460124604_)
                                                (_super-xfields24610_
                                                 _super-xfields2460224606_))
                                            (fx+ _super-fields24609_
                                                 _super-xfields24610_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist24617_ (gx#stx-e _L24547_))
                           (_ctor24618_
                            (let ((_$e24612_ (gx#stx-e _L24546_)))
                              (if _$e24612_
                                  (values _$e24612_)
                                  (if _super-type24599_
                                      (##structure-ref
                                       _super-type24599_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t24597_ '#!void '#f))))))
                       (let ((__obj30059 (make-object gxc#!struct-type::t '7)))
                         (begin
                           (gxc#!struct-type:::init!
                            __obj30059
                            (gx#stx-e _L24551_)
                            _super-t24597_
                            _fields24615_
                            _xfields24616_
                            _ctor24618_
                            _plist24617_)
                           __obj30059)))))))
              (___kont2833928340_
               (lambda ()
                 (begin
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx24287_))
                   '#f))))
          (if (gx#stx-pair? ___stx2833328334_)
              (let ((_e2429924625_ (gx#stx-e ___stx2833328334_)))
                (let ((_tl2430124630_ (##cdr _e2429924625_))
                      (_hd2430024628_ (##car _e2429924625_)))
                  (if (gx#stx-pair? _hd2430024628_)
                      (let ((_e2430224633_ (gx#stx-e _hd2430024628_)))
                        (let ((_tl2430424638_ (##cdr _e2430224633_))
                              (_hd2430324636_ (##car _e2430224633_)))
                          (if (gx#identifier? _hd2430324636_)
                              (if (gx#stx-eq? '%#quote _hd2430324636_)
                                  (if (gx#stx-pair? _tl2430424638_)
                                      (let ((_e2430524641_
                                             (gx#stx-e _tl2430424638_)))
                                        (let ((_tl2430724646_
                                               (##cdr _e2430524641_))
                                              (_hd2430624644_
                                               (##car _e2430524641_)))
                                          (if (gx#stx-null? _tl2430724646_)
                                              (if (gx#stx-pair? _tl2430124630_)
                                                  (let ((_e2430824649_
                                                         (gx#stx-e
                                                          _tl2430124630_)))
                                                    (let ((_tl2431024654_
                                                           (##cdr _e2430824649_))
                                                          (_hd2430924652_
                                                           (##car _e2430824649_)))
                                                      (if (gx#stx-pair?
                                                           _hd2430924652_)
                                                          (let ((_e2431124657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2430924652_)))
                    (let ((_tl2431324662_ (##cdr _e2431124657_))
                          (_hd2431224660_ (##car _e2431124657_)))
                      (if (gx#identifier? _hd2431224660_)
                          (if (gx#stx-eq? '%#quote _hd2431224660_)
                              (if (gx#stx-pair? _tl2431324662_)
                                  (let ((_e2431424665_
                                         (gx#stx-e _tl2431324662_)))
                                    (let ((_tl2431624670_
                                           (##cdr _e2431424665_))
                                          (_hd2431524668_
                                           (##car _e2431424665_)))
                                      (if (gx#stx-datum? _hd2431524668_)
                                          (let ((_e2431724673_
                                                 (gx#stx-e _hd2431524668_)))
                                            (if (equal? _e2431724673_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2431624670_)
                                                    (if (gx#stx-pair?
                                                         _tl2431024654_)
                                                        (let ((_e2431824676_
                                                               (gx#stx-e
                                                                _tl2431024654_)))
                                                          (let ((_tl2432024681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2431824676_))
                        (_hd2431924679_ (##car _e2431824676_)))
                    (if (gx#stx-pair? _hd2431924679_)
                        (let ((_e2432124684_ (gx#stx-e _hd2431924679_)))
                          (let ((_tl2432324689_ (##cdr _e2432124684_))
                                (_hd2432224687_ (##car _e2432124684_)))
                            (if (gx#identifier? _hd2432224687_)
                                (if (gx#stx-eq? '%#quote _hd2432224687_)
                                    (if (gx#stx-pair? _tl2432324689_)
                                        (let ((_e2432424692_
                                               (gx#stx-e _tl2432324689_)))
                                          (let ((_tl2432624697_
                                                 (##cdr _e2432424692_))
                                                (_hd2432524695_
                                                 (##car _e2432424692_)))
                                            (if (gx#stx-null? _tl2432624697_)
                                                (if (gx#stx-pair?
                                                     _tl2432024681_)
                                                    (let ((_e2432724700_
                                                           (gx#stx-e
                                                            _tl2432024681_)))
                                                      (let ((_tl2432924705_
                                                             (##cdr _e2432724700_))
                                                            (_hd2432824703_
                                                             (##car _e2432724700_)))
                                                        (if (gx#stx-pair?
                                                             _tl2432924705_)
                                                            (let ((_e2433024708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2432924705_)))
                      (let ((_tl2433224713_ (##cdr _e2433024708_))
                            (_hd2433124711_ (##car _e2433024708_)))
                        (if (gx#stx-pair? _hd2433124711_)
                            (let ((_e2433324716_ (gx#stx-e _hd2433124711_)))
                              (let ((_tl2433524721_ (##cdr _e2433324716_))
                                    (_hd2433424719_ (##car _e2433324716_)))
                                (if (gx#identifier? _hd2433424719_)
                                    (if (gx#stx-eq? '%#quote _hd2433424719_)
                                        (if (gx#stx-pair? _tl2433524721_)
                                            (let ((_e2433624724_
                                                   (gx#stx-e _tl2433524721_)))
                                              (let ((_tl2433824729_
                                                     (##cdr _e2433624724_))
                                                    (_hd2433724727_
                                                     (##car _e2433624724_)))
                                                (if (gx#stx-null?
                                                     _tl2433824729_)
                                                    (if (gx#stx-pair?
                                                         _tl2433224713_)
                                                        (let ((_e2433924732_
                                                               (gx#stx-e
                                                                _tl2433224713_)))
                                                          (let ((_tl2434124737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2433924732_))
                        (_hd2434024735_ (##car _e2433924732_)))
                    (if (gx#stx-pair? _hd2434024735_)
                        (let ((_e2434224740_ (gx#stx-e _hd2434024735_)))
                          (let ((_tl2434424745_ (##cdr _e2434224740_))
                                (_hd2434324743_ (##car _e2434224740_)))
                            (if (gx#identifier? _hd2434324743_)
                                (if (gx#stx-eq? '%#quote _hd2434324743_)
                                    (if (gx#stx-pair? _tl2434424745_)
                                        (let ((_e2434524748_
                                               (gx#stx-e _tl2434424745_)))
                                          (let ((_tl2434724753_
                                                 (##cdr _e2434524748_))
                                                (_hd2434624751_
                                                 (##car _e2434524748_)))
                                            (if (gx#stx-null? _tl2434724753_)
                                                (___kont2833528336_
                                                 _hd2434624751_
                                                 _hd2433724727_
                                                 _hd2432824703_
                                                 _hd2432524695_
                                                 _hd2430624644_)
                                                (___kont2833928340_))))
                                        (___kont2833928340_))
                                    (___kont2833928340_))
                                (___kont2833928340_))))
                        (___kont2833928340_))))
                (___kont2833928340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2833928340_))))
                                            (___kont2833928340_))
                                        (___kont2833928340_))
                                    (___kont2833928340_))))
                            (___kont2833928340_))))
                    (___kont2833928340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2833928340_))
                                                (___kont2833928340_))))
                                        (___kont2833928340_))
                                    (___kont2833928340_))
                                (___kont2833928340_))))
                        (___kont2833928340_))))
                (___kont2833928340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2833928340_))
                                                (___kont2833928340_)))
                                          (___kont2833928340_))))
                                  (___kont2833928340_))
                              (if (gx#stx-eq? '%#ref _hd2431224660_)
                                  (if (gx#stx-pair? _tl2431324662_)
                                      (let ((_e2436924458_
                                             (gx#stx-e _tl2431324662_)))
                                        (let ((_tl2437124463_
                                               (##cdr _e2436924458_))
                                              (_hd2437024461_
                                               (##car _e2436924458_)))
                                          (if (gx#stx-null? _tl2437124463_)
                                              (if (gx#stx-pair? _tl2431024654_)
                                                  (let ((_e2437224466_
                                                         (gx#stx-e
                                                          _tl2431024654_)))
                                                    (let ((_tl2437424471_
                                                           (##cdr _e2437224466_))
                                                          (_hd2437324469_
                                                           (##car _e2437224466_)))
                                                      (if (gx#stx-pair?
                                                           _hd2437324469_)
                                                          (let ((_e2437524474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2437324469_)))
                    (let ((_tl2437724479_ (##cdr _e2437524474_))
                          (_hd2437624477_ (##car _e2437524474_)))
                      (if (gx#identifier? _hd2437624477_)
                          (if (gx#stx-eq? '%#quote _hd2437624477_)
                              (if (gx#stx-pair? _tl2437724479_)
                                  (let ((_e2437824482_
                                         (gx#stx-e _tl2437724479_)))
                                    (let ((_tl2438024487_
                                           (##cdr _e2437824482_))
                                          (_hd2437924485_
                                           (##car _e2437824482_)))
                                      (if (gx#stx-null? _tl2438024487_)
                                          (if (gx#stx-pair? _tl2437424471_)
                                              (let ((_e2438124490_
                                                     (gx#stx-e
                                                      _tl2437424471_)))
                                                (let ((_tl2438324495_
                                                       (##cdr _e2438124490_))
                                                      (_hd2438224493_
                                                       (##car _e2438124490_)))
                                                  (if (gx#stx-pair?
                                                       _tl2438324495_)
                                                      (let ((_e2438424498_
                                                             (gx#stx-e
                                                              _tl2438324495_)))
                                                        (let ((_tl2438624503_
                                                               (##cdr _e2438424498_))
                                                              (_hd2438524501_
                                                               (##car _e2438424498_)))
                                                          (if (gx#stx-pair?
                                                               _hd2438524501_)
                                                              (let ((_e2438724506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2438524501_)))
                        (let ((_tl2438924511_ (##cdr _e2438724506_))
                              (_hd2438824509_ (##car _e2438724506_)))
                          (if (gx#identifier? _hd2438824509_)
                              (if (gx#stx-eq? '%#quote _hd2438824509_)
                                  (if (gx#stx-pair? _tl2438924511_)
                                      (let ((_e2439024514_
                                             (gx#stx-e _tl2438924511_)))
                                        (let ((_tl2439224519_
                                               (##cdr _e2439024514_))
                                              (_hd2439124517_
                                               (##car _e2439024514_)))
                                          (if (gx#stx-null? _tl2439224519_)
                                              (if (gx#stx-pair? _tl2438624503_)
                                                  (let ((_e2439324522_
                                                         (gx#stx-e
                                                          _tl2438624503_)))
                                                    (let ((_tl2439524527_
                                                           (##cdr _e2439324522_))
                                                          (_hd2439424525_
                                                           (##car _e2439324522_)))
                                                      (if (gx#stx-pair?
                                                           _hd2439424525_)
                                                          (let ((_e2439624530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2439424525_)))
                    (let ((_tl2439824535_ (##cdr _e2439624530_))
                          (_hd2439724533_ (##car _e2439624530_)))
                      (if (gx#identifier? _hd2439724533_)
                          (if (gx#stx-eq? '%#quote _hd2439724533_)
                              (if (gx#stx-pair? _tl2439824535_)
                                  (let ((_e2439924538_
                                         (gx#stx-e _tl2439824535_)))
                                    (let ((_tl2440124543_
                                           (##cdr _e2439924538_))
                                          (_hd2440024541_
                                           (##car _e2439924538_)))
                                      (if (gx#stx-null? _tl2440124543_)
                                          (___kont2833728338_
                                           _hd2440024541_
                                           _hd2439124517_
                                           _hd2438224493_
                                           _hd2437924485_
                                           _hd2437024461_
                                           _hd2430624644_)
                                          (___kont2833928340_))))
                                  (___kont2833928340_))
                              (___kont2833928340_))
                          (___kont2833928340_))))
                  (___kont2833928340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2833928340_))
                                              (___kont2833928340_))))
                                      (___kont2833928340_))
                                  (___kont2833928340_))
                              (___kont2833928340_))))
                      (___kont2833928340_))))
              (___kont2833928340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2833928340_))
                                          (___kont2833928340_))))
                                  (___kont2833928340_))
                              (___kont2833928340_))
                          (___kont2833928340_))))
                  (___kont2833928340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2833928340_))
                                              (___kont2833928340_))))
                                      (___kont2833928340_))
                                  (___kont2833928340_)))
                          (___kont2833928340_))))
                  (___kont2833928340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2833928340_))
                                              (___kont2833928340_))))
                                      (___kont2833928340_))
                                  (___kont2833928340_))
                              (___kont2833928340_))))
                      (___kont2833928340_))))
              (___kont2833928340_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx24213_ _args24214_)
      (let* ((___stx2860128602_ _args24214_)
             (_g2421724233_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2860128602_))))
        (let ((___kont2860328604_
               (lambda (_L24269_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L24269_))))
              (___kont2860528606_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2860128602_)
              (let ((_e2422024245_ (gx#stx-e ___stx2860128602_)))
                (let ((_tl2422224250_ (##cdr _e2422024245_))
                      (_hd2422124248_ (##car _e2422024245_)))
                  (if (gx#stx-pair? _hd2422124248_)
                      (let ((_e2422324253_ (gx#stx-e _hd2422124248_)))
                        (let ((_tl2422524258_ (##cdr _e2422324253_))
                              (_hd2422424256_ (##car _e2422324253_)))
                          (if (gx#identifier? _hd2422424256_)
                              (if (gx#stx-eq? '%#ref _hd2422424256_)
                                  (if (gx#stx-pair? _tl2422524258_)
                                      (let ((_e2422624261_
                                             (gx#stx-e _tl2422524258_)))
                                        (let ((_tl2422824266_
                                               (##cdr _e2422624261_))
                                              (_hd2422724264_
                                               (##car _e2422624261_)))
                                          (if (gx#stx-null? _tl2422824266_)
                                              (if (gx#stx-null? _tl2422224250_)
                                                  (___kont2860328604_
                                                   _hd2422724264_)
                                                  (___kont2860528606_))
                                              (___kont2860528606_))))
                                      (___kont2860528606_))
                                  (___kont2860528606_))
                              (___kont2860528606_))))
                      (___kont2860528606_))))
              (___kont2860528606_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx24084_ _args24085_ _unchecked?24086_)
        (let* ((___stx2863528636_ _args24085_)
               (_g2408924115_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2863528636_))))
          (let ((___kont2863728638_
                 (lambda (_L24175_ _L24176_)
                   (##structure
                    gxc#!struct-getf::t
                    (gxc#identifier-symbol _L24176_)
                    (gx#stx-e _L24175_)
                    _unchecked?24086_)))
                (___kont2863928640_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2863528636_)
                (let ((_e2409324127_ (gx#stx-e ___stx2863528636_)))
                  (let ((_tl2409524132_ (##cdr _e2409324127_))
                        (_hd2409424130_ (##car _e2409324127_)))
                    (if (gx#stx-pair? _hd2409424130_)
                        (let ((_e2409624135_ (gx#stx-e _hd2409424130_)))
                          (let ((_tl2409824140_ (##cdr _e2409624135_))
                                (_hd2409724138_ (##car _e2409624135_)))
                            (if (gx#identifier? _hd2409724138_)
                                (if (gx#stx-eq? '%#ref _hd2409724138_)
                                    (if (gx#stx-pair? _tl2409824140_)
                                        (let ((_e2409924143_
                                               (gx#stx-e _tl2409824140_)))
                                          (let ((_tl2410124148_
                                                 (##cdr _e2409924143_))
                                                (_hd2410024146_
                                                 (##car _e2409924143_)))
                                            (if (gx#stx-null? _tl2410124148_)
                                                (if (gx#stx-pair?
                                                     _tl2409524132_)
                                                    (let ((_e2410224151_
                                                           (gx#stx-e
                                                            _tl2409524132_)))
                                                      (let ((_tl2410424156_
                                                             (##cdr _e2410224151_))
                                                            (_hd2410324154_
                                                             (##car _e2410224151_)))
                                                        (if (gx#stx-pair?
                                                             _hd2410324154_)
                                                            (let ((_e2410524159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2410324154_)))
                      (let ((_tl2410724164_ (##cdr _e2410524159_))
                            (_hd2410624162_ (##car _e2410524159_)))
                        (if (gx#identifier? _hd2410624162_)
                            (if (gx#stx-eq? '%#quote _hd2410624162_)
                                (if (gx#stx-pair? _tl2410724164_)
                                    (let ((_e2410824167_
                                           (gx#stx-e _tl2410724164_)))
                                      (let ((_tl2411024172_
                                             (##cdr _e2410824167_))
                                            (_hd2410924170_
                                             (##car _e2410824167_)))
                                        (if (gx#stx-null? _tl2411024172_)
                                            (if (gx#stx-null? _tl2410424156_)
                                                (___kont2863728638_
                                                 _hd2410924170_
                                                 _hd2410024146_)
                                                (___kont2863928640_))
                                            (___kont2863928640_))))
                                    (___kont2863928640_))
                                (___kont2863928640_))
                            (___kont2863928640_))))
                    (___kont2863928640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2863928640_))
                                                (___kont2863928640_))))
                                        (___kont2863928640_))
                                    (___kont2863928640_))
                                (___kont2863928640_))))
                        (___kont2863928640_))))
                (___kont2863928640_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx24204_ _args24205_)
          (let ((_unchecked?24207_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx24204_
             _args24205_
             _unchecked?24207_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g30065_
          (let ((_g30064_ (length _g30065_)))
            (cond ((##fx= _g30064_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g30065_))
                  ((##fx= _g30064_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g30065_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g30065_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx23954_ _args23955_ _unchecked?23956_)
        (let* ((___stx2869328694_ _args23955_)
               (_g2395923985_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2869328694_))))
          (let ((___kont2869528696_
                 (lambda (_L24045_ _L24046_)
                   (##structure
                    gxc#!struct-setf::t
                    (gxc#identifier-symbol _L24046_)
                    (gx#stx-e _L24045_)
                    _unchecked?23956_)))
                (___kont2869728698_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2869328694_)
                (let ((_e2396323997_ (gx#stx-e ___stx2869328694_)))
                  (let ((_tl2396524002_ (##cdr _e2396323997_))
                        (_hd2396424000_ (##car _e2396323997_)))
                    (if (gx#stx-pair? _hd2396424000_)
                        (let ((_e2396624005_ (gx#stx-e _hd2396424000_)))
                          (let ((_tl2396824010_ (##cdr _e2396624005_))
                                (_hd2396724008_ (##car _e2396624005_)))
                            (if (gx#identifier? _hd2396724008_)
                                (if (gx#stx-eq? '%#ref _hd2396724008_)
                                    (if (gx#stx-pair? _tl2396824010_)
                                        (let ((_e2396924013_
                                               (gx#stx-e _tl2396824010_)))
                                          (let ((_tl2397124018_
                                                 (##cdr _e2396924013_))
                                                (_hd2397024016_
                                                 (##car _e2396924013_)))
                                            (if (gx#stx-null? _tl2397124018_)
                                                (if (gx#stx-pair?
                                                     _tl2396524002_)
                                                    (let ((_e2397224021_
                                                           (gx#stx-e
                                                            _tl2396524002_)))
                                                      (let ((_tl2397424026_
                                                             (##cdr _e2397224021_))
                                                            (_hd2397324024_
                                                             (##car _e2397224021_)))
                                                        (if (gx#stx-pair?
                                                             _hd2397324024_)
                                                            (let ((_e2397524029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2397324024_)))
                      (let ((_tl2397724034_ (##cdr _e2397524029_))
                            (_hd2397624032_ (##car _e2397524029_)))
                        (if (gx#identifier? _hd2397624032_)
                            (if (gx#stx-eq? '%#quote _hd2397624032_)
                                (if (gx#stx-pair? _tl2397724034_)
                                    (let ((_e2397824037_
                                           (gx#stx-e _tl2397724034_)))
                                      (let ((_tl2398024042_
                                             (##cdr _e2397824037_))
                                            (_hd2397924040_
                                             (##car _e2397824037_)))
                                        (if (gx#stx-null? _tl2398024042_)
                                            (if (gx#stx-null? _tl2397424026_)
                                                (___kont2869528696_
                                                 _hd2397924040_
                                                 _hd2397024016_)
                                                (___kont2869728698_))
                                            (___kont2869728698_))))
                                    (___kont2869728698_))
                                (___kont2869728698_))
                            (___kont2869728698_))))
                    (___kont2869728698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2869728698_))
                                                (___kont2869728698_))))
                                        (___kont2869728698_))
                                    (___kont2869728698_))
                                (___kont2869728698_))))
                        (___kont2869728698_))))
                (___kont2869728698_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx24074_ _args24075_)
          (let ((_unchecked?24077_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx24074_
             _args24075_
             _unchecked?24077_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g30067_
          (let ((_g30066_ (length _g30067_)))
            (cond ((##fx= _g30066_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g30067_))
                  ((##fx= _g30066_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g30067_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g30067_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx23950_ _args23951_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx23950_
       _args23951_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx23947_ _args23948_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx23947_
       _args23948_
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
    (lambda (_stx23896_)
      (let* ((_g2389823911_
              (lambda (_g2389923908_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2389923908_)))
             (_g2389723944_
              (lambda (_g2389923914_)
                (if (gx#stx-pair? _g2389923914_)
                    (let ((_e2390123916_ (gx#stx-e _g2389923914_)))
                      (let ((_hd2390223919_ (##car _e2390123916_))
                            (_tl2390323921_ (##cdr _e2390123916_)))
                        (if (gx#stx-pair? _tl2390323921_)
                            (let ((_e2390423924_ (gx#stx-e _tl2390323921_)))
                              (let ((_hd2390523927_ (##car _e2390423924_))
                                    (_tl2390623929_ (##cdr _e2390423924_)))
                                (if (gx#stx-null? _tl2390623929_)
                                    ((lambda (_L23932_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L23932_)))
                                     _hd2390523927_)
                                    (_g2389823911_ _g2389923914_))))
                            (_g2389823911_ _g2389923914_))))
                    (_g2389823911_ _g2389923914_)))))
        (_g2389723944_ _stx23896_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form23130_)
      (let* ((___stx2875128752_ _form23130_)
             (_g2313523292_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2875128752_))))
        (let ((___kont2875328754_ (lambda (_L23816_ _L23817_ _L23818_) '#t))
              (___kont2875928760_
               (lambda (_L23604_ _L23605_ _L23606_ _L23607_ _L23608_ _L23609_)
                 '#t))
              (___kont2876528766_
               (lambda (_L23400_ _L23401_ _L23402_ _L23403_) '#t))
              (___kont2876728768_ (lambda () '#f)))
          (let* ((___match2889228893_
                  (lambda (_e2325223304_
                           _hd2325323307_
                           _tl2325423309_
                           _e2325523312_
                           _hd2325623315_
                           _tl2325723317_
                           _e2325823320_
                           _hd2325923323_
                           _tl2326023325_
                           _e2326123328_
                           _hd2326223331_
                           _tl2326323333_
                           _e2326423336_
                           _hd2326523339_
                           _tl2326623341_
                           _e2326723344_
                           _hd2326823347_
                           _tl2326923349_
                           _e2327023352_
                           _hd2327123355_
                           _tl2327223357_
                           _e2327323360_
                           _hd2327423363_
                           _tl2327523365_
                           _e2327623368_
                           _hd2327723371_
                           _tl2327823373_
                           _e2327923376_
                           _hd2328023379_
                           _tl2328123381_
                           _e2328223384_
                           _hd2328323387_
                           _tl2328423389_
                           _e2328523392_
                           _hd2328623395_
                           _tl2328723397_)
                    (let ((_L23400_ _hd2328623395_)
                          (_L23401_ _hd2327723371_)
                          (_L23402_ _hd2326823347_)
                          (_L23403_ _hd2325323307_))
                      (if (if (gx#identifier? _L23403_)
                              (if (gxc#runtime-identifier=? _L23402_ 'apply)
                                  (if (gx#free-identifier=? _L23403_ _L23400_)
                                      (not (gx#free-identifier=?
                                            _L23401_
                                            _L23403_))
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2876528766_
                           _L23400_
                           _L23401_
                           _L23402_
                           _L23403_)
                          (___kont2876728768_)))))
                 (___match2886428865_
                  (lambda (_e2325223304_
                           _hd2325323307_
                           _tl2325423309_
                           _e2325523312_
                           _hd2325623315_
                           _tl2325723317_
                           _e2325823320_
                           _hd2325923323_
                           _tl2326023325_
                           _e2326123328_
                           _hd2326223331_
                           _tl2326323333_
                           _e2326423336_
                           _hd2326523339_
                           _tl2326623341_
                           _e2326723344_
                           _hd2326823347_
                           _tl2326923349_
                           _e2327023352_
                           _hd2327123355_
                           _tl2327223357_
                           _e2327323360_
                           _hd2327423363_
                           _tl2327523365_
                           _e2327623368_
                           _hd2327723371_
                           _tl2327823373_)
                    (if (gx#stx-pair? _tl2327223357_)
                        (let ((_e2327923376_ (gx#stx-e _tl2327223357_)))
                          (let ((_tl2328123381_ (##cdr _e2327923376_))
                                (_hd2328023379_ (##car _e2327923376_)))
                            (if (gx#stx-pair? _hd2328023379_)
                                (let ((_e2328223384_
                                       (gx#stx-e _hd2328023379_)))
                                  (let ((_tl2328423389_ (##cdr _e2328223384_))
                                        (_hd2328323387_ (##car _e2328223384_)))
                                    (if (gx#identifier? _hd2328323387_)
                                        (if (gx#stx-eq? '%#ref _hd2328323387_)
                                            (if (gx#stx-pair? _tl2328423389_)
                                                (let ((_e2328523392_
                                                       (gx#stx-e
                                                        _tl2328423389_)))
                                                  (let ((_tl2328723397_
                                                         (##cdr _e2328523392_))
                                                        (_hd2328623395_
                                                         (##car _e2328523392_)))
                                                    (if (gx#stx-null?
                                                         _tl2328723397_)
                                                        (if (gx#stx-null?
                                                             _tl2328123381_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2325723317_)
                        (___match2889228893_
                         _e2325223304_
                         _hd2325323307_
                         _tl2325423309_
                         _e2325523312_
                         _hd2325623315_
                         _tl2325723317_
                         _e2325823320_
                         _hd2325923323_
                         _tl2326023325_
                         _e2326123328_
                         _hd2326223331_
                         _tl2326323333_
                         _e2326423336_
                         _hd2326523339_
                         _tl2326623341_
                         _e2326723344_
                         _hd2326823347_
                         _tl2326923349_
                         _e2327023352_
                         _hd2327123355_
                         _tl2327223357_
                         _e2327323360_
                         _hd2327423363_
                         _tl2327523365_
                         _e2327623368_
                         _hd2327723371_
                         _tl2327823373_
                         _e2327923376_
                         _hd2328023379_
                         _tl2328123381_
                         _e2328223384_
                         _hd2328323387_
                         _tl2328423389_
                         _e2328523392_
                         _hd2328623395_
                         _tl2328723397_)
                        (___kont2876728768_))
                    (___kont2876728768_))
                (___kont2876728768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2876728768_))
                                            (___kont2876728768_))
                                        (___kont2876728768_))))
                                (___kont2876728768_))))
                        (___kont2876728768_))))
                 (___match2879428795_
                  (lambda (_e2318823444_
                           _hd2318923447_
                           _tl2319023449_
                           ___splice2876128762_
                           _target2319123452_
                           _tl2319323454_)
                    (letrec ((_loop2319423457_
                              (lambda (_hd2319223460_ _arg2319823462_)
                                (if (gx#stx-pair? _hd2319223460_)
                                    (let ((_e2319523465_
                                           (gx#stx-e _hd2319223460_)))
                                      (let ((_lp-tl2319723470_
                                             (##cdr _e2319523465_))
                                            (_lp-hd2319623468_
                                             (##car _e2319523465_)))
                                        (_loop2319423457_
                                         _lp-tl2319723470_
                                         (cons _lp-hd2319623468_
                                               _arg2319823462_))))
                                    (let ((_arg2319923473_
                                           (reverse _arg2319823462_)))
                                      (if (gx#stx-pair? _tl2319023449_)
                                          (let ((_e2320023476_
                                                 (gx#stx-e _tl2319023449_)))
                                            (let ((_tl2320223481_
                                                   (##cdr _e2320023476_))
                                                  (_hd2320123479_
                                                   (##car _e2320023476_)))
                                              (if (gx#stx-pair? _hd2320123479_)
                                                  (let ((_e2320323484_
                                                         (gx#stx-e
                                                          _hd2320123479_)))
                                                    (let ((_tl2320523489_
                                                           (##cdr _e2320323484_))
                                                          (_hd2320423487_
                                                           (##car _e2320323484_)))
                                                      (if (gx#identifier?
                                                           _hd2320423487_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2320423487_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2320523489_)
                          (let ((_e2320623492_ (gx#stx-e _tl2320523489_)))
                            (let ((_tl2320823497_ (##cdr _e2320623492_))
                                  (_hd2320723495_ (##car _e2320623492_)))
                              (if (gx#stx-pair? _hd2320723495_)
                                  (let ((_e2320923500_
                                         (gx#stx-e _hd2320723495_)))
                                    (let ((_tl2321123505_
                                           (##cdr _e2320923500_))
                                          (_hd2321023503_
                                           (##car _e2320923500_)))
                                      (if (gx#identifier? _hd2321023503_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2321023503_)
                                              (if (gx#stx-pair? _tl2321123505_)
                                                  (let ((_e2321223508_
                                                         (gx#stx-e
                                                          _tl2321123505_)))
                                                    (let ((_tl2321423513_
                                                           (##cdr _e2321223508_))
                                                          (_hd2321323511_
                                                           (##car _e2321223508_)))
                                                      (if (gx#stx-null?
                                                           _tl2321423513_)
                                                          (if (gx#stx-pair?
                                                               _tl2320823497_)
                                                              (let ((_e2321523516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2320823497_)))
                        (let ((_tl2321723521_ (##cdr _e2321523516_))
                              (_hd2321623519_ (##car _e2321523516_)))
                          (if (gx#stx-pair? _hd2321623519_)
                              (let ((_e2321823524_ (gx#stx-e _hd2321623519_)))
                                (let ((_tl2322023529_ (##cdr _e2321823524_))
                                      (_hd2321923527_ (##car _e2321823524_)))
                                  (if (gx#identifier? _hd2321923527_)
                                      (if (gx#stx-eq? '%#ref _hd2321923527_)
                                          (if (gx#stx-pair? _tl2322023529_)
                                              (let ((_e2322123532_
                                                     (gx#stx-e
                                                      _tl2322023529_)))
                                                (let ((_tl2322323537_
                                                       (##cdr _e2322123532_))
                                                      (_hd2322223535_
                                                       (##car _e2322123532_)))
                                                  (if (gx#stx-null?
                                                       _tl2322323537_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2321723521_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2321723521_)
                            '1)
                      (let ((___splice2876328764_
                             (gx#syntax-split-splice _tl2321723521_ '1)))
                        (let ((_tl2322623542_
                               (##vector-ref ___splice2876328764_ '1))
                              (_target2322423540_
                               (##vector-ref ___splice2876328764_ '0)))
                          (if (gx#stx-pair? _tl2322623542_)
                              (let ((_e2323323545_ (gx#stx-e _tl2322623542_)))
                                (let ((_tl2323523550_ (##cdr _e2323323545_))
                                      (_hd2323423548_ (##car _e2323323545_)))
                                  (if (gx#stx-pair? _hd2323423548_)
                                      (let ((_e2323623553_
                                             (gx#stx-e _hd2323423548_)))
                                        (let ((_tl2323823558_
                                               (##cdr _e2323623553_))
                                              (_hd2323723556_
                                               (##car _e2323623553_)))
                                          (if (gx#identifier? _hd2323723556_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2323723556_)
                                                  (if (gx#stx-pair?
                                                       _tl2323823558_)
                                                      (let ((_e2323923561_
                                                             (gx#stx-e
                                                              _tl2323823558_)))
                                                        (let ((_tl2324123566_
                                                               (##cdr _e2323923561_))
                                                              (_hd2324023564_
                                                               (##car _e2323923561_)))
                                                          (if (gx#stx-null?
                                                               _tl2324123566_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2323523550_)
                          (letrec ((_loop2322723569_
                                    (lambda (_hd2322523572_ _xarg2323123574_)
                                      (if (gx#stx-pair? _hd2322523572_)
                                          (let ((_e2322823577_
                                                 (gx#stx-e _hd2322523572_)))
                                            (let ((_lp-tl2323023582_
                                                   (##cdr _e2322823577_))
                                                  (_lp-hd2322923580_
                                                   (##car _e2322823577_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2322923580_)
                                                  (let ((_e2324223585_
                                                         (gx#stx-e
                                                          _lp-hd2322923580_)))
                                                    (let ((_tl2324423590_
                                                           (##cdr _e2324223585_))
                                                          (_hd2324323588_
                                                           (##car _e2324223585_)))
                                                      (if (gx#identifier?
                                                           _hd2324323588_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2324323588_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2324423590_)
                          (let ((_e2324523593_ (gx#stx-e _tl2324423590_)))
                            (let ((_tl2324723598_ (##cdr _e2324523593_))
                                  (_hd2324623596_ (##car _e2324523593_)))
                              (if (gx#stx-null? _tl2324723598_)
                                  (_loop2322723569_
                                   _lp-tl2323023582_
                                   (cons _hd2324623596_ _xarg2323123574_))
                                  (___match2886428865_
                                   _e2318823444_
                                   _hd2318923447_
                                   _tl2319023449_
                                   _e2320023476_
                                   _hd2320123479_
                                   _tl2320223481_
                                   _e2320323484_
                                   _hd2320423487_
                                   _tl2320523489_
                                   _e2320623492_
                                   _hd2320723495_
                                   _tl2320823497_
                                   _e2320923500_
                                   _hd2321023503_
                                   _tl2321123505_
                                   _e2321223508_
                                   _hd2321323511_
                                   _tl2321423513_
                                   _e2321523516_
                                   _hd2321623519_
                                   _tl2321723521_
                                   _e2321823524_
                                   _hd2321923527_
                                   _tl2322023529_
                                   _e2322123532_
                                   _hd2322223535_
                                   _tl2322323537_))))
                          (___match2886428865_
                           _e2318823444_
                           _hd2318923447_
                           _tl2319023449_
                           _e2320023476_
                           _hd2320123479_
                           _tl2320223481_
                           _e2320323484_
                           _hd2320423487_
                           _tl2320523489_
                           _e2320623492_
                           _hd2320723495_
                           _tl2320823497_
                           _e2320923500_
                           _hd2321023503_
                           _tl2321123505_
                           _e2321223508_
                           _hd2321323511_
                           _tl2321423513_
                           _e2321523516_
                           _hd2321623519_
                           _tl2321723521_
                           _e2321823524_
                           _hd2321923527_
                           _tl2322023529_
                           _e2322123532_
                           _hd2322223535_
                           _tl2322323537_))
                      (___match2886428865_
                       _e2318823444_
                       _hd2318923447_
                       _tl2319023449_
                       _e2320023476_
                       _hd2320123479_
                       _tl2320223481_
                       _e2320323484_
                       _hd2320423487_
                       _tl2320523489_
                       _e2320623492_
                       _hd2320723495_
                       _tl2320823497_
                       _e2320923500_
                       _hd2321023503_
                       _tl2321123505_
                       _e2321223508_
                       _hd2321323511_
                       _tl2321423513_
                       _e2321523516_
                       _hd2321623519_
                       _tl2321723521_
                       _e2321823524_
                       _hd2321923527_
                       _tl2322023529_
                       _e2322123532_
                       _hd2322223535_
                       _tl2322323537_))
                  (___match2886428865_
                   _e2318823444_
                   _hd2318923447_
                   _tl2319023449_
                   _e2320023476_
                   _hd2320123479_
                   _tl2320223481_
                   _e2320323484_
                   _hd2320423487_
                   _tl2320523489_
                   _e2320623492_
                   _hd2320723495_
                   _tl2320823497_
                   _e2320923500_
                   _hd2321023503_
                   _tl2321123505_
                   _e2321223508_
                   _hd2321323511_
                   _tl2321423513_
                   _e2321523516_
                   _hd2321623519_
                   _tl2321723521_
                   _e2321823524_
                   _hd2321923527_
                   _tl2322023529_
                   _e2322123532_
                   _hd2322223535_
                   _tl2322323537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2886428865_
                                                   _e2318823444_
                                                   _hd2318923447_
                                                   _tl2319023449_
                                                   _e2320023476_
                                                   _hd2320123479_
                                                   _tl2320223481_
                                                   _e2320323484_
                                                   _hd2320423487_
                                                   _tl2320523489_
                                                   _e2320623492_
                                                   _hd2320723495_
                                                   _tl2320823497_
                                                   _e2320923500_
                                                   _hd2321023503_
                                                   _tl2321123505_
                                                   _e2321223508_
                                                   _hd2321323511_
                                                   _tl2321423513_
                                                   _e2321523516_
                                                   _hd2321623519_
                                                   _tl2321723521_
                                                   _e2321823524_
                                                   _hd2321923527_
                                                   _tl2322023529_
                                                   _e2322123532_
                                                   _hd2322223535_
                                                   _tl2322323537_))))
                                          (let ((_xarg2323223601_
                                                 (reverse _xarg2323123574_)))
                                            (if (gx#stx-null? _tl2320223481_)
                                                (let ((_L23604_ _hd2324023564_)
                                                      (_L23605_
                                                       _xarg2323223601_)
                                                      (_L23606_ _hd2322223535_)
                                                      (_L23607_ _hd2321323511_)
                                                      (_L23608_ _tl2319323454_)
                                                      (_L23609_
                                                       _arg2319923473_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2365223655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2365323657_)
                               (cons _g2365223655_ _g2365323657_))
                             '()
                             _L23609_)))
                  (if (gx#identifier? _L23608_)
                      (if (gxc#runtime-identifier=? _L23607_ 'apply)
                          (if (fx= (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2365923662_
                                                              _g2366023664_)
                                                       (cons _g2365923662_
                                                             _g2366023664_))
                                                     '()
                                                     _L23609_)))
                                   (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2366623669_
                                                              _g2366723671_)
                                                       (cons _g2366623669_
                                                             _g2366723671_))
                                                     '()
                                                     _L23605_))))
                              (if (andmap2 gx#free-identifier=?
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2367323676_
                                                              _g2367423678_)
                                                       (cons _g2367323676_
                                                             _g2367423678_))
                                                     '()
                                                     _L23609_))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2368023683_
                                                              _g2368123685_)
                                                       (cons _g2368023683_
                                                             _g2368123685_))
                                                     '()
                                                     _L23605_)))
                                  (if (gx#free-identifier=? _L23608_ _L23604_)
                                      (not (find (lambda (_g2368723689_)
                                                   (gx#free-identifier=?
                                                    _g2368723689_
                                                    _L23606_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2369123694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2369223696_)
                     (cons _g2369123694_ _g2369223696_))
                   (cons _L23608_ '())
                   _L23609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '#f)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  '#f)
              (___kont2875928760_
               _L23604_
               _L23605_
               _L23606_
               _L23607_
               _L23608_
               _L23609_)
              (___match2886428865_
               _e2318823444_
               _hd2318923447_
               _tl2319023449_
               _e2320023476_
               _hd2320123479_
               _tl2320223481_
               _e2320323484_
               _hd2320423487_
               _tl2320523489_
               _e2320623492_
               _hd2320723495_
               _tl2320823497_
               _e2320923500_
               _hd2321023503_
               _tl2321123505_
               _e2321223508_
               _hd2321323511_
               _tl2321423513_
               _e2321523516_
               _hd2321623519_
               _tl2321723521_
               _e2321823524_
               _hd2321923527_
               _tl2322023529_
               _e2322123532_
               _hd2322223535_
               _tl2322323537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2886428865_
                                                 _e2318823444_
                                                 _hd2318923447_
                                                 _tl2319023449_
                                                 _e2320023476_
                                                 _hd2320123479_
                                                 _tl2320223481_
                                                 _e2320323484_
                                                 _hd2320423487_
                                                 _tl2320523489_
                                                 _e2320623492_
                                                 _hd2320723495_
                                                 _tl2320823497_
                                                 _e2320923500_
                                                 _hd2321023503_
                                                 _tl2321123505_
                                                 _e2321223508_
                                                 _hd2321323511_
                                                 _tl2321423513_
                                                 _e2321523516_
                                                 _hd2321623519_
                                                 _tl2321723521_
                                                 _e2321823524_
                                                 _hd2321923527_
                                                 _tl2322023529_
                                                 _e2322123532_
                                                 _hd2322223535_
                                                 _tl2322323537_)))))))
                            (_loop2322723569_ _target2322423540_ '()))
                          (___match2886428865_
                           _e2318823444_
                           _hd2318923447_
                           _tl2319023449_
                           _e2320023476_
                           _hd2320123479_
                           _tl2320223481_
                           _e2320323484_
                           _hd2320423487_
                           _tl2320523489_
                           _e2320623492_
                           _hd2320723495_
                           _tl2320823497_
                           _e2320923500_
                           _hd2321023503_
                           _tl2321123505_
                           _e2321223508_
                           _hd2321323511_
                           _tl2321423513_
                           _e2321523516_
                           _hd2321623519_
                           _tl2321723521_
                           _e2321823524_
                           _hd2321923527_
                           _tl2322023529_
                           _e2322123532_
                           _hd2322223535_
                           _tl2322323537_))
                      (___match2886428865_
                       _e2318823444_
                       _hd2318923447_
                       _tl2319023449_
                       _e2320023476_
                       _hd2320123479_
                       _tl2320223481_
                       _e2320323484_
                       _hd2320423487_
                       _tl2320523489_
                       _e2320623492_
                       _hd2320723495_
                       _tl2320823497_
                       _e2320923500_
                       _hd2321023503_
                       _tl2321123505_
                       _e2321223508_
                       _hd2321323511_
                       _tl2321423513_
                       _e2321523516_
                       _hd2321623519_
                       _tl2321723521_
                       _e2321823524_
                       _hd2321923527_
                       _tl2322023529_
                       _e2322123532_
                       _hd2322223535_
                       _tl2322323537_))))
              (___match2886428865_
               _e2318823444_
               _hd2318923447_
               _tl2319023449_
               _e2320023476_
               _hd2320123479_
               _tl2320223481_
               _e2320323484_
               _hd2320423487_
               _tl2320523489_
               _e2320623492_
               _hd2320723495_
               _tl2320823497_
               _e2320923500_
               _hd2321023503_
               _tl2321123505_
               _e2321223508_
               _hd2321323511_
               _tl2321423513_
               _e2321523516_
               _hd2321623519_
               _tl2321723521_
               _e2321823524_
               _hd2321923527_
               _tl2322023529_
               _e2322123532_
               _hd2322223535_
               _tl2322323537_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2886428865_
                                                   _e2318823444_
                                                   _hd2318923447_
                                                   _tl2319023449_
                                                   _e2320023476_
                                                   _hd2320123479_
                                                   _tl2320223481_
                                                   _e2320323484_
                                                   _hd2320423487_
                                                   _tl2320523489_
                                                   _e2320623492_
                                                   _hd2320723495_
                                                   _tl2320823497_
                                                   _e2320923500_
                                                   _hd2321023503_
                                                   _tl2321123505_
                                                   _e2321223508_
                                                   _hd2321323511_
                                                   _tl2321423513_
                                                   _e2321523516_
                                                   _hd2321623519_
                                                   _tl2321723521_
                                                   _e2321823524_
                                                   _hd2321923527_
                                                   _tl2322023529_
                                                   _e2322123532_
                                                   _hd2322223535_
                                                   _tl2322323537_))
                                              (___match2886428865_
                                               _e2318823444_
                                               _hd2318923447_
                                               _tl2319023449_
                                               _e2320023476_
                                               _hd2320123479_
                                               _tl2320223481_
                                               _e2320323484_
                                               _hd2320423487_
                                               _tl2320523489_
                                               _e2320623492_
                                               _hd2320723495_
                                               _tl2320823497_
                                               _e2320923500_
                                               _hd2321023503_
                                               _tl2321123505_
                                               _e2321223508_
                                               _hd2321323511_
                                               _tl2321423513_
                                               _e2321523516_
                                               _hd2321623519_
                                               _tl2321723521_
                                               _e2321823524_
                                               _hd2321923527_
                                               _tl2322023529_
                                               _e2322123532_
                                               _hd2322223535_
                                               _tl2322323537_))))
                                      (___match2886428865_
                                       _e2318823444_
                                       _hd2318923447_
                                       _tl2319023449_
                                       _e2320023476_
                                       _hd2320123479_
                                       _tl2320223481_
                                       _e2320323484_
                                       _hd2320423487_
                                       _tl2320523489_
                                       _e2320623492_
                                       _hd2320723495_
                                       _tl2320823497_
                                       _e2320923500_
                                       _hd2321023503_
                                       _tl2321123505_
                                       _e2321223508_
                                       _hd2321323511_
                                       _tl2321423513_
                                       _e2321523516_
                                       _hd2321623519_
                                       _tl2321723521_
                                       _e2321823524_
                                       _hd2321923527_
                                       _tl2322023529_
                                       _e2322123532_
                                       _hd2322223535_
                                       _tl2322323537_))))
                              (___match2886428865_
                               _e2318823444_
                               _hd2318923447_
                               _tl2319023449_
                               _e2320023476_
                               _hd2320123479_
                               _tl2320223481_
                               _e2320323484_
                               _hd2320423487_
                               _tl2320523489_
                               _e2320623492_
                               _hd2320723495_
                               _tl2320823497_
                               _e2320923500_
                               _hd2321023503_
                               _tl2321123505_
                               _e2321223508_
                               _hd2321323511_
                               _tl2321423513_
                               _e2321523516_
                               _hd2321623519_
                               _tl2321723521_
                               _e2321823524_
                               _hd2321923527_
                               _tl2322023529_
                               _e2322123532_
                               _hd2322223535_
                               _tl2322323537_))))
                      (___match2886428865_
                       _e2318823444_
                       _hd2318923447_
                       _tl2319023449_
                       _e2320023476_
                       _hd2320123479_
                       _tl2320223481_
                       _e2320323484_
                       _hd2320423487_
                       _tl2320523489_
                       _e2320623492_
                       _hd2320723495_
                       _tl2320823497_
                       _e2320923500_
                       _hd2321023503_
                       _tl2321123505_
                       _e2321223508_
                       _hd2321323511_
                       _tl2321423513_
                       _e2321523516_
                       _hd2321623519_
                       _tl2321723521_
                       _e2321823524_
                       _hd2321923527_
                       _tl2322023529_
                       _e2322123532_
                       _hd2322223535_
                       _tl2322323537_))
                  (___match2886428865_
                   _e2318823444_
                   _hd2318923447_
                   _tl2319023449_
                   _e2320023476_
                   _hd2320123479_
                   _tl2320223481_
                   _e2320323484_
                   _hd2320423487_
                   _tl2320523489_
                   _e2320623492_
                   _hd2320723495_
                   _tl2320823497_
                   _e2320923500_
                   _hd2321023503_
                   _tl2321123505_
                   _e2321223508_
                   _hd2321323511_
                   _tl2321423513_
                   _e2321523516_
                   _hd2321623519_
                   _tl2321723521_
                   _e2321823524_
                   _hd2321923527_
                   _tl2322023529_
                   _e2322123532_
                   _hd2322223535_
                   _tl2322323537_))
              (___kont2876728768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2876728768_))
                                          (___kont2876728768_))
                                      (___kont2876728768_))))
                              (___kont2876728768_))))
                      (___kont2876728768_))
                  (___kont2876728768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2876728768_))
                                              (___kont2876728768_))
                                          (___kont2876728768_))))
                                  (___kont2876728768_))))
                          (___kont2876728768_))
                      (___kont2876728768_))
                  (___kont2876728768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2876728768_))))
                                          (___kont2876728768_)))))))
                      (_loop2319423457_ _target2319123452_ '()))))
                 (___match2878228783_
                  (lambda (_e2314023704_
                           _hd2314123707_
                           _tl2314223709_
                           ___splice2875528756_
                           _target2314323712_
                           _tl2314523714_)
                    (letrec ((_loop2314623717_
                              (lambda (_hd2314423720_ _arg2315023722_)
                                (if (gx#stx-pair? _hd2314423720_)
                                    (let ((_e2314723725_
                                           (gx#stx-e _hd2314423720_)))
                                      (let ((_lp-tl2314923730_
                                             (##cdr _e2314723725_))
                                            (_lp-hd2314823728_
                                             (##car _e2314723725_)))
                                        (_loop2314623717_
                                         _lp-tl2314923730_
                                         (cons _lp-hd2314823728_
                                               _arg2315023722_))))
                                    (let ((_arg2315123733_
                                           (reverse _arg2315023722_)))
                                      (if (gx#stx-pair? _tl2314223709_)
                                          (let ((_e2315223736_
                                                 (gx#stx-e _tl2314223709_)))
                                            (let ((_tl2315423741_
                                                   (##cdr _e2315223736_))
                                                  (_hd2315323739_
                                                   (##car _e2315223736_)))
                                              (if (gx#stx-pair? _hd2315323739_)
                                                  (let ((_e2315523744_
                                                         (gx#stx-e
                                                          _hd2315323739_)))
                                                    (let ((_tl2315723749_
                                                           (##cdr _e2315523744_))
                                                          (_hd2315623747_
                                                           (##car _e2315523744_)))
                                                      (if (gx#identifier?
                                                           _hd2315623747_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2315623747_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2315723749_)
                          (let ((_e2315823752_ (gx#stx-e _tl2315723749_)))
                            (let ((_tl2316023757_ (##cdr _e2315823752_))
                                  (_hd2315923755_ (##car _e2315823752_)))
                              (if (gx#stx-pair? _hd2315923755_)
                                  (let ((_e2316123760_
                                         (gx#stx-e _hd2315923755_)))
                                    (let ((_tl2316323765_
                                           (##cdr _e2316123760_))
                                          (_hd2316223763_
                                           (##car _e2316123760_)))
                                      (if (gx#identifier? _hd2316223763_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2316223763_)
                                              (if (gx#stx-pair? _tl2316323765_)
                                                  (let ((_e2316423768_
                                                         (gx#stx-e
                                                          _tl2316323765_)))
                                                    (let ((_tl2316623773_
                                                           (##cdr _e2316423768_))
                                                          (_hd2316523771_
                                                           (##car _e2316423768_)))
                                                      (if (gx#stx-null?
                                                           _tl2316623773_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2316023757_)
                                                              (let ((___splice2875728758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2316023757_ '0)))
                        (let ((_tl2316923778_
                               (##vector-ref ___splice2875728758_ '1))
                              (_target2316723776_
                               (##vector-ref ___splice2875728758_ '0)))
                          (if (gx#stx-null? _tl2316923778_)
                              (letrec ((_loop2317023781_
                                        (lambda (_hd2316823784_
                                                 _xarg2317423786_)
                                          (if (gx#stx-pair? _hd2316823784_)
                                              (let ((_e2317123789_
                                                     (gx#stx-e
                                                      _hd2316823784_)))
                                                (let ((_lp-tl2317323794_
                                                       (##cdr _e2317123789_))
                                                      (_lp-hd2317223792_
                                                       (##car _e2317123789_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2317223792_)
                                                      (let ((_e2317623797_
                                                             (gx#stx-e
                                                              _lp-hd2317223792_)))
                                                        (let ((_tl2317823802_
                                                               (##cdr _e2317623797_))
                                                              (_hd2317723800_
                                                               (##car _e2317623797_)))
                                                          (if (gx#identifier?
                                                               _hd2317723800_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2317723800_)
                          (if (gx#stx-pair? _tl2317823802_)
                              (let ((_e2317923805_ (gx#stx-e _tl2317823802_)))
                                (let ((_tl2318123810_ (##cdr _e2317923805_))
                                      (_hd2318023808_ (##car _e2317923805_)))
                                  (if (gx#stx-null? _tl2318123810_)
                                      (_loop2317023781_
                                       _lp-tl2317323794_
                                       (cons _hd2318023808_ _xarg2317423786_))
                                      (___match2879428795_
                                       _e2314023704_
                                       _hd2314123707_
                                       _tl2314223709_
                                       ___splice2875528756_
                                       _target2314323712_
                                       _tl2314523714_))))
                              (___match2879428795_
                               _e2314023704_
                               _hd2314123707_
                               _tl2314223709_
                               ___splice2875528756_
                               _target2314323712_
                               _tl2314523714_))
                          (___match2879428795_
                           _e2314023704_
                           _hd2314123707_
                           _tl2314223709_
                           ___splice2875528756_
                           _target2314323712_
                           _tl2314523714_))
                      (___match2879428795_
                       _e2314023704_
                       _hd2314123707_
                       _tl2314223709_
                       ___splice2875528756_
                       _target2314323712_
                       _tl2314523714_))))
              (___match2879428795_
               _e2314023704_
               _hd2314123707_
               _tl2314223709_
               ___splice2875528756_
               _target2314323712_
               _tl2314523714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2317523813_
                                                     (reverse _xarg2317423786_)))
                                                (if (gx#stx-null?
                                                     _tl2315423741_)
                                                    (let ((_L23816_
                                                           _xarg2317523813_)
                                                          (_L23817_
                                                           _hd2316523771_)
                                                          (_L23818_
                                                           _arg2315123733_))
                                                      (if (if (gx#identifier-list?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2384623849_ _g2384723851_)
                                   (cons _g2384623849_ _g2384723851_))
                                 '()
                                 _L23818_)))
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2385323856_
                                                          _g2385423858_)
                                                   (cons _g2385323856_
                                                         _g2385423858_))
                                                 '()
                                                 _L23818_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2386023863_
                                                          _g2386123865_)
                                                   (cons _g2386023863_
                                                         _g2386123865_))
                                                 '()
                                                 _L23816_))))
                          (if (andmap2 gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2386723870_
                                                          _g2386823872_)
                                                   (cons _g2386723870_
                                                         _g2386823872_))
                                                 '()
                                                 _L23818_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2387423877_
                                                          _g2387523879_)
                                                   (cons _g2387423877_
                                                         _g2387523879_))
                                                 '()
                                                 _L23816_)))
                              (not (find (lambda (_g2388123883_)
                                           (gx#free-identifier=?
                                            _g2388123883_
                                            _L23817_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2388523888_
                                                            _g2388623890_)
                                                     (cons _g2388523888_
                                                           _g2388623890_))
                                                   '()
                                                   _L23818_))))
                              '#f)
                          '#f)
                      '#f)
                  (___kont2875328754_ _L23816_ _L23817_ _L23818_)
                  (___match2879428795_
                   _e2314023704_
                   _hd2314123707_
                   _tl2314223709_
                   ___splice2875528756_
                   _target2314323712_
                   _tl2314523714_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2879428795_
                                                     _e2314023704_
                                                     _hd2314123707_
                                                     _tl2314223709_
                                                     ___splice2875528756_
                                                     _target2314323712_
                                                     _tl2314523714_)))))))
                                (_loop2317023781_ _target2316723776_ '()))
                              (___match2879428795_
                               _e2314023704_
                               _hd2314123707_
                               _tl2314223709_
                               ___splice2875528756_
                               _target2314323712_
                               _tl2314523714_))))
                      (___match2879428795_
                       _e2314023704_
                       _hd2314123707_
                       _tl2314223709_
                       ___splice2875528756_
                       _target2314323712_
                       _tl2314523714_))
                  (___match2879428795_
                   _e2314023704_
                   _hd2314123707_
                   _tl2314223709_
                   ___splice2875528756_
                   _target2314323712_
                   _tl2314523714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2879428795_
                                                   _e2314023704_
                                                   _hd2314123707_
                                                   _tl2314223709_
                                                   ___splice2875528756_
                                                   _target2314323712_
                                                   _tl2314523714_))
                                              (___match2879428795_
                                               _e2314023704_
                                               _hd2314123707_
                                               _tl2314223709_
                                               ___splice2875528756_
                                               _target2314323712_
                                               _tl2314523714_))
                                          (___match2879428795_
                                           _e2314023704_
                                           _hd2314123707_
                                           _tl2314223709_
                                           ___splice2875528756_
                                           _target2314323712_
                                           _tl2314523714_))))
                                  (___match2879428795_
                                   _e2314023704_
                                   _hd2314123707_
                                   _tl2314223709_
                                   ___splice2875528756_
                                   _target2314323712_
                                   _tl2314523714_))))
                          (___match2879428795_
                           _e2314023704_
                           _hd2314123707_
                           _tl2314223709_
                           ___splice2875528756_
                           _target2314323712_
                           _tl2314523714_))
                      (___match2879428795_
                       _e2314023704_
                       _hd2314123707_
                       _tl2314223709_
                       ___splice2875528756_
                       _target2314323712_
                       _tl2314523714_))
                  (___match2879428795_
                   _e2314023704_
                   _hd2314123707_
                   _tl2314223709_
                   ___splice2875528756_
                   _target2314323712_
                   _tl2314523714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2879428795_
                                                   _e2314023704_
                                                   _hd2314123707_
                                                   _tl2314223709_
                                                   ___splice2875528756_
                                                   _target2314323712_
                                                   _tl2314523714_))))
                                          (___match2879428795_
                                           _e2314023704_
                                           _hd2314123707_
                                           _tl2314223709_
                                           ___splice2875528756_
                                           _target2314323712_
                                           _tl2314523714_)))))))
                      (_loop2314623717_ _target2314323712_ '())))))
            (if (gx#stx-pair? ___stx2875128752_)
                (let ((_e2314023704_ (gx#stx-e ___stx2875128752_)))
                  (let ((_tl2314223709_ (##cdr _e2314023704_))
                        (_hd2314123707_ (##car _e2314023704_)))
                    (if (gx#stx-pair/null? _hd2314123707_)
                        (let ((___splice2875528756_
                               (gx#syntax-split-splice _hd2314123707_ '0)))
                          (let ((_tl2314523714_
                                 (##vector-ref ___splice2875528756_ '1))
                                (_target2314323712_
                                 (##vector-ref ___splice2875528756_ '0)))
                            (if (gx#stx-null? _tl2314523714_)
                                (___match2878228783_
                                 _e2314023704_
                                 _hd2314123707_
                                 _tl2314223709_
                                 ___splice2875528756_
                                 _target2314323712_
                                 _tl2314523714_)
                                (___match2879428795_
                                 _e2314023704_
                                 _hd2314123707_
                                 _tl2314223709_
                                 ___splice2875528756_
                                 _target2314323712_
                                 _tl2314523714_))))
                        (if (gx#stx-pair? _tl2314223709_)
                            (let ((_e2325523312_ (gx#stx-e _tl2314223709_)))
                              (let ((_tl2325723317_ (##cdr _e2325523312_))
                                    (_hd2325623315_ (##car _e2325523312_)))
                                (if (gx#stx-pair? _hd2325623315_)
                                    (let ((_e2325823320_
                                           (gx#stx-e _hd2325623315_)))
                                      (let ((_tl2326023325_
                                             (##cdr _e2325823320_))
                                            (_hd2325923323_
                                             (##car _e2325823320_)))
                                        (if (gx#identifier? _hd2325923323_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2325923323_)
                                                (if (gx#stx-pair?
                                                     _tl2326023325_)
                                                    (let ((_e2326123328_
                                                           (gx#stx-e
                                                            _tl2326023325_)))
                                                      (let ((_tl2326323333_
                                                             (##cdr _e2326123328_))
                                                            (_hd2326223331_
                                                             (##car _e2326123328_)))
                                                        (if (gx#stx-pair?
                                                             _hd2326223331_)
                                                            (let ((_e2326423336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2326223331_)))
                      (let ((_tl2326623341_ (##cdr _e2326423336_))
                            (_hd2326523339_ (##car _e2326423336_)))
                        (if (gx#identifier? _hd2326523339_)
                            (if (gx#stx-eq? '%#ref _hd2326523339_)
                                (if (gx#stx-pair? _tl2326623341_)
                                    (let ((_e2326723344_
                                           (gx#stx-e _tl2326623341_)))
                                      (let ((_tl2326923349_
                                             (##cdr _e2326723344_))
                                            (_hd2326823347_
                                             (##car _e2326723344_)))
                                        (if (gx#stx-null? _tl2326923349_)
                                            (if (gx#stx-pair? _tl2326323333_)
                                                (let ((_e2327023352_
                                                       (gx#stx-e
                                                        _tl2326323333_)))
                                                  (let ((_tl2327223357_
                                                         (##cdr _e2327023352_))
                                                        (_hd2327123355_
                                                         (##car _e2327023352_)))
                                                    (if (gx#stx-pair?
                                                         _hd2327123355_)
                                                        (let ((_e2327323360_
                                                               (gx#stx-e
                                                                _hd2327123355_)))
                                                          (let ((_tl2327523365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2327323360_))
                        (_hd2327423363_ (##car _e2327323360_)))
                    (if (gx#identifier? _hd2327423363_)
                        (if (gx#stx-eq? '%#ref _hd2327423363_)
                            (if (gx#stx-pair? _tl2327523365_)
                                (let ((_e2327623368_
                                       (gx#stx-e _tl2327523365_)))
                                  (let ((_tl2327823373_ (##cdr _e2327623368_))
                                        (_hd2327723371_ (##car _e2327623368_)))
                                    (if (gx#stx-null? _tl2327823373_)
                                        (if (gx#stx-pair? _tl2327223357_)
                                            (let ((_e2327923376_
                                                   (gx#stx-e _tl2327223357_)))
                                              (let ((_tl2328123381_
                                                     (##cdr _e2327923376_))
                                                    (_hd2328023379_
                                                     (##car _e2327923376_)))
                                                (if (gx#stx-pair?
                                                     _hd2328023379_)
                                                    (let ((_e2328223384_
                                                           (gx#stx-e
                                                            _hd2328023379_)))
                                                      (let ((_tl2328423389_
                                                             (##cdr _e2328223384_))
                                                            (_hd2328323387_
                                                             (##car _e2328223384_)))
                                                        (if (gx#identifier?
                                                             _hd2328323387_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2328323387_)
                        (if (gx#stx-pair? _tl2328423389_)
                            (let ((_e2328523392_ (gx#stx-e _tl2328423389_)))
                              (let ((_tl2328723397_ (##cdr _e2328523392_))
                                    (_hd2328623395_ (##car _e2328523392_)))
                                (if (gx#stx-null? _tl2328723397_)
                                    (if (gx#stx-null? _tl2328123381_)
                                        (if (gx#stx-null? _tl2325723317_)
                                            (___match2889228893_
                                             _e2314023704_
                                             _hd2314123707_
                                             _tl2314223709_
                                             _e2325523312_
                                             _hd2325623315_
                                             _tl2325723317_
                                             _e2325823320_
                                             _hd2325923323_
                                             _tl2326023325_
                                             _e2326123328_
                                             _hd2326223331_
                                             _tl2326323333_
                                             _e2326423336_
                                             _hd2326523339_
                                             _tl2326623341_
                                             _e2326723344_
                                             _hd2326823347_
                                             _tl2326923349_
                                             _e2327023352_
                                             _hd2327123355_
                                             _tl2327223357_
                                             _e2327323360_
                                             _hd2327423363_
                                             _tl2327523365_
                                             _e2327623368_
                                             _hd2327723371_
                                             _tl2327823373_
                                             _e2327923376_
                                             _hd2328023379_
                                             _tl2328123381_
                                             _e2328223384_
                                             _hd2328323387_
                                             _tl2328423389_
                                             _e2328523392_
                                             _hd2328623395_
                                             _tl2328723397_)
                                            (___kont2876728768_))
                                        (___kont2876728768_))
                                    (___kont2876728768_))))
                            (___kont2876728768_))
                        (___kont2876728768_))
                    (___kont2876728768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2876728768_))))
                                            (___kont2876728768_))
                                        (___kont2876728768_))))
                                (___kont2876728768_))
                            (___kont2876728768_))
                        (___kont2876728768_))))
                (___kont2876728768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2876728768_))
                                            (___kont2876728768_))))
                                    (___kont2876728768_))
                                (___kont2876728768_))
                            (___kont2876728768_))))
                    (___kont2876728768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2876728768_))
                                                (___kont2876728768_))
                                            (___kont2876728768_))))
                                    (___kont2876728768_))))
                            (___kont2876728768_)))))
                (___kont2876728768_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form22598_)
      (let* ((___stx2889528896_ _form22598_)
             (_g2260222726_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2889528896_))))
        (let ((___kont2889728898_
               (lambda (_L23096_ _L23097_ _L23098_)
                 (gxc#identifier-symbol _L23097_)))
              (___kont2890328904_
               (lambda (_L22944_ _L22945_ _L22946_ _L22947_)
                 (gxc#identifier-symbol _L22944_)))
              (___kont2890728908_
               (lambda (_L22811_ _L22812_ _L22813_)
                 (gxc#identifier-symbol _L22811_))))
          (let* ((___match2900429005_
                  (lambda (_e2269222731_
                           _hd2269322734_
                           _tl2269422736_
                           _e2269522739_
                           _hd2269622742_
                           _tl2269722744_
                           _e2269822747_
                           _hd2269922750_
                           _tl2270022752_
                           _e2270122755_
                           _hd2270222758_
                           _tl2270322760_
                           _e2270422763_
                           _hd2270522766_
                           _tl2270622768_
                           _e2270722771_
                           _hd2270822774_
                           _tl2270922776_
                           _e2271022779_
                           _hd2271122782_
                           _tl2271222784_
                           _e2271322787_
                           _hd2271422790_
                           _tl2271522792_
                           _e2271622795_
                           _hd2271722798_
                           _tl2271822800_)
                    (if (gx#stx-pair? _tl2271222784_)
                        (let ((_e2271922803_ (gx#stx-e _tl2271222784_)))
                          (let ((_tl2272122808_ (##cdr _e2271922803_))
                                (_hd2272022806_ (##car _e2271922803_)))
                            (if (gx#stx-null? _tl2272122808_)
                                (if (gx#stx-null? _tl2269722744_)
                                    (___kont2890728908_
                                     _hd2271722798_
                                     _hd2270822774_
                                     _hd2269322734_)
                                    (_g2260222726_))
                                (_g2260222726_))))
                        (_g2260222726_))))
                 (___match2893428935_
                  (lambda (_e2265322848_
                           _hd2265422851_
                           _tl2265522853_
                           ___splice2890528906_
                           _target2265622856_
                           _tl2265822858_)
                    (letrec ((_loop2265922861_
                              (lambda (_hd2265722864_ _arg2266322866_)
                                (if (gx#stx-pair? _hd2265722864_)
                                    (let ((_e2266022869_
                                           (gx#stx-e _hd2265722864_)))
                                      (let ((_lp-tl2266222874_
                                             (##cdr _e2266022869_))
                                            (_lp-hd2266122872_
                                             (##car _e2266022869_)))
                                        (_loop2265922861_
                                         _lp-tl2266222874_
                                         (cons _lp-hd2266122872_
                                               _arg2266322866_))))
                                    (let ((_arg2266422877_
                                           (reverse _arg2266322866_)))
                                      (if (gx#stx-pair? _tl2265522853_)
                                          (let ((_e2266522880_
                                                 (gx#stx-e _tl2265522853_)))
                                            (let ((_tl2266722885_
                                                   (##cdr _e2266522880_))
                                                  (_hd2266622883_
                                                   (##car _e2266522880_)))
                                              (if (gx#stx-pair? _hd2266622883_)
                                                  (let ((_e2266822888_
                                                         (gx#stx-e
                                                          _hd2266622883_)))
                                                    (let ((_tl2267022893_
                                                           (##cdr _e2266822888_))
                                                          (_hd2266922891_
                                                           (##car _e2266822888_)))
                                                      (if (gx#identifier?
                                                           _hd2266922891_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2266922891_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2267022893_)
                          (let ((_e2267122896_ (gx#stx-e _tl2267022893_)))
                            (let ((_tl2267322901_ (##cdr _e2267122896_))
                                  (_hd2267222899_ (##car _e2267122896_)))
                              (if (gx#stx-pair? _hd2267222899_)
                                  (let ((_e2267422904_
                                         (gx#stx-e _hd2267222899_)))
                                    (let ((_tl2267622909_
                                           (##cdr _e2267422904_))
                                          (_hd2267522907_
                                           (##car _e2267422904_)))
                                      (if (gx#identifier? _hd2267522907_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2267522907_)
                                              (if (gx#stx-pair? _tl2267622909_)
                                                  (let ((_e2267722912_
                                                         (gx#stx-e
                                                          _tl2267622909_)))
                                                    (let ((_tl2267922917_
                                                           (##cdr _e2267722912_))
                                                          (_hd2267822915_
                                                           (##car _e2267722912_)))
                                                      (if (gx#stx-null?
                                                           _tl2267922917_)
                                                          (if (gx#stx-pair?
                                                               _tl2267322901_)
                                                              (let ((_e2268022920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2267322901_)))
                        (let ((_tl2268222925_ (##cdr _e2268022920_))
                              (_hd2268122923_ (##car _e2268022920_)))
                          (if (gx#stx-pair? _hd2268122923_)
                              (let ((_e2268322928_ (gx#stx-e _hd2268122923_)))
                                (let ((_tl2268522933_ (##cdr _e2268322928_))
                                      (_hd2268422931_ (##car _e2268322928_)))
                                  (if (gx#identifier? _hd2268422931_)
                                      (if (gx#stx-eq? '%#ref _hd2268422931_)
                                          (if (gx#stx-pair? _tl2268522933_)
                                              (let ((_e2268622936_
                                                     (gx#stx-e
                                                      _tl2268522933_)))
                                                (let ((_tl2268822941_
                                                       (##cdr _e2268622936_))
                                                      (_hd2268722939_
                                                       (##car _e2268622936_)))
                                                  (if (gx#stx-null?
                                                       _tl2268822941_)
                                                      (if (gx#stx-null?
                                                           _tl2266722885_)
                                                          (___kont2890328904_
                                                           _hd2268722939_
                                                           _hd2267822915_
                                                           _tl2265822858_
                                                           _arg2266422877_)
                                                          (___match2900429005_
                                                           _e2265322848_
                                                           _hd2265422851_
                                                           _tl2265522853_
                                                           _e2266522880_
                                                           _hd2266622883_
                                                           _tl2266722885_
                                                           _e2266822888_
                                                           _hd2266922891_
                                                           _tl2267022893_
                                                           _e2267122896_
                                                           _hd2267222899_
                                                           _tl2267322901_
                                                           _e2267422904_
                                                           _hd2267522907_
                                                           _tl2267622909_
                                                           _e2267722912_
                                                           _hd2267822915_
                                                           _tl2267922917_
                                                           _e2268022920_
                                                           _hd2268122923_
                                                           _tl2268222925_
                                                           _e2268322928_
                                                           _hd2268422931_
                                                           _tl2268522933_
                                                           _e2268622936_
                                                           _hd2268722939_
                                                           _tl2268822941_))
                                                      (_g2260222726_))))
                                              (_g2260222726_))
                                          (_g2260222726_))
                                      (_g2260222726_))))
                              (_g2260222726_))))
                      (_g2260222726_))
                  (_g2260222726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2260222726_))
                                              (_g2260222726_))
                                          (_g2260222726_))))
                                  (_g2260222726_))))
                          (_g2260222726_))
                      (_g2260222726_))
                  (_g2260222726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2260222726_))))
                                          (_g2260222726_)))))))
                      (_loop2265922861_ _target2265622856_ '()))))
                 (___match2892228923_
                  (lambda (_e2260722984_
                           _hd2260822987_
                           _tl2260922989_
                           ___splice2889928900_
                           _target2261022992_
                           _tl2261222994_)
                    (letrec ((_loop2261322997_
                              (lambda (_hd2261123000_ _arg2261723002_)
                                (if (gx#stx-pair? _hd2261123000_)
                                    (let ((_e2261423005_
                                           (gx#stx-e _hd2261123000_)))
                                      (let ((_lp-tl2261623010_
                                             (##cdr _e2261423005_))
                                            (_lp-hd2261523008_
                                             (##car _e2261423005_)))
                                        (_loop2261322997_
                                         _lp-tl2261623010_
                                         (cons _lp-hd2261523008_
                                               _arg2261723002_))))
                                    (let ((_arg2261823013_
                                           (reverse _arg2261723002_)))
                                      (if (gx#stx-pair? _tl2260922989_)
                                          (let ((_e2261923016_
                                                 (gx#stx-e _tl2260922989_)))
                                            (let ((_tl2262123021_
                                                   (##cdr _e2261923016_))
                                                  (_hd2262023019_
                                                   (##car _e2261923016_)))
                                              (if (gx#stx-pair? _hd2262023019_)
                                                  (let ((_e2262223024_
                                                         (gx#stx-e
                                                          _hd2262023019_)))
                                                    (let ((_tl2262423029_
                                                           (##cdr _e2262223024_))
                                                          (_hd2262323027_
                                                           (##car _e2262223024_)))
                                                      (if (gx#identifier?
                                                           _hd2262323027_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2262323027_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2262423029_)
                          (let ((_e2262523032_ (gx#stx-e _tl2262423029_)))
                            (let ((_tl2262723037_ (##cdr _e2262523032_))
                                  (_hd2262623035_ (##car _e2262523032_)))
                              (if (gx#stx-pair? _hd2262623035_)
                                  (let ((_e2262823040_
                                         (gx#stx-e _hd2262623035_)))
                                    (let ((_tl2263023045_
                                           (##cdr _e2262823040_))
                                          (_hd2262923043_
                                           (##car _e2262823040_)))
                                      (if (gx#identifier? _hd2262923043_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2262923043_)
                                              (if (gx#stx-pair? _tl2263023045_)
                                                  (let ((_e2263123048_
                                                         (gx#stx-e
                                                          _tl2263023045_)))
                                                    (let ((_tl2263323053_
                                                           (##cdr _e2263123048_))
                                                          (_hd2263223051_
                                                           (##car _e2263123048_)))
                                                      (if (gx#stx-null?
                                                           _tl2263323053_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2262723037_)
                                                              (let ((___splice2890128902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2262723037_ '0)))
                        (let ((_tl2263623058_
                               (##vector-ref ___splice2890128902_ '1))
                              (_target2263423056_
                               (##vector-ref ___splice2890128902_ '0)))
                          (if (gx#stx-null? _tl2263623058_)
                              (letrec ((_loop2263723061_
                                        (lambda (_hd2263523064_
                                                 _xarg2264123066_)
                                          (if (gx#stx-pair? _hd2263523064_)
                                              (let ((_e2263823069_
                                                     (gx#stx-e
                                                      _hd2263523064_)))
                                                (let ((_lp-tl2264023074_
                                                       (##cdr _e2263823069_))
                                                      (_lp-hd2263923072_
                                                       (##car _e2263823069_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2263923072_)
                                                      (let ((_e2264323077_
                                                             (gx#stx-e
                                                              _lp-hd2263923072_)))
                                                        (let ((_tl2264523082_
                                                               (##cdr _e2264323077_))
                                                              (_hd2264423080_
                                                               (##car _e2264323077_)))
                                                          (if (gx#identifier?
                                                               _hd2264423080_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2264423080_)
                          (if (gx#stx-pair? _tl2264523082_)
                              (let ((_e2264623085_ (gx#stx-e _tl2264523082_)))
                                (let ((_tl2264823090_ (##cdr _e2264623085_))
                                      (_hd2264723088_ (##car _e2264623085_)))
                                  (if (gx#stx-null? _tl2264823090_)
                                      (_loop2263723061_
                                       _lp-tl2264023074_
                                       (cons _hd2264723088_ _xarg2264123066_))
                                      (___match2893428935_
                                       _e2260722984_
                                       _hd2260822987_
                                       _tl2260922989_
                                       ___splice2889928900_
                                       _target2261022992_
                                       _tl2261222994_))))
                              (___match2893428935_
                               _e2260722984_
                               _hd2260822987_
                               _tl2260922989_
                               ___splice2889928900_
                               _target2261022992_
                               _tl2261222994_))
                          (___match2893428935_
                           _e2260722984_
                           _hd2260822987_
                           _tl2260922989_
                           ___splice2889928900_
                           _target2261022992_
                           _tl2261222994_))
                      (___match2893428935_
                       _e2260722984_
                       _hd2260822987_
                       _tl2260922989_
                       ___splice2889928900_
                       _target2261022992_
                       _tl2261222994_))))
              (___match2893428935_
               _e2260722984_
               _hd2260822987_
               _tl2260922989_
               ___splice2889928900_
               _target2261022992_
               _tl2261222994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2264223093_
                                                     (reverse _xarg2264123066_)))
                                                (if (gx#stx-null?
                                                     _tl2262123021_)
                                                    (___kont2889728898_
                                                     _xarg2264223093_
                                                     _hd2263223051_
                                                     _arg2261823013_)
                                                    (___match2893428935_
                                                     _e2260722984_
                                                     _hd2260822987_
                                                     _tl2260922989_
                                                     ___splice2889928900_
                                                     _target2261022992_
                                                     _tl2261222994_)))))))
                                (_loop2263723061_ _target2263423056_ '()))
                              (___match2893428935_
                               _e2260722984_
                               _hd2260822987_
                               _tl2260922989_
                               ___splice2889928900_
                               _target2261022992_
                               _tl2261222994_))))
                      (___match2893428935_
                       _e2260722984_
                       _hd2260822987_
                       _tl2260922989_
                       ___splice2889928900_
                       _target2261022992_
                       _tl2261222994_))
                  (___match2893428935_
                   _e2260722984_
                   _hd2260822987_
                   _tl2260922989_
                   ___splice2889928900_
                   _target2261022992_
                   _tl2261222994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2893428935_
                                                   _e2260722984_
                                                   _hd2260822987_
                                                   _tl2260922989_
                                                   ___splice2889928900_
                                                   _target2261022992_
                                                   _tl2261222994_))
                                              (___match2893428935_
                                               _e2260722984_
                                               _hd2260822987_
                                               _tl2260922989_
                                               ___splice2889928900_
                                               _target2261022992_
                                               _tl2261222994_))
                                          (___match2893428935_
                                           _e2260722984_
                                           _hd2260822987_
                                           _tl2260922989_
                                           ___splice2889928900_
                                           _target2261022992_
                                           _tl2261222994_))))
                                  (___match2893428935_
                                   _e2260722984_
                                   _hd2260822987_
                                   _tl2260922989_
                                   ___splice2889928900_
                                   _target2261022992_
                                   _tl2261222994_))))
                          (___match2893428935_
                           _e2260722984_
                           _hd2260822987_
                           _tl2260922989_
                           ___splice2889928900_
                           _target2261022992_
                           _tl2261222994_))
                      (___match2893428935_
                       _e2260722984_
                       _hd2260822987_
                       _tl2260922989_
                       ___splice2889928900_
                       _target2261022992_
                       _tl2261222994_))
                  (___match2893428935_
                   _e2260722984_
                   _hd2260822987_
                   _tl2260922989_
                   ___splice2889928900_
                   _target2261022992_
                   _tl2261222994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2893428935_
                                                   _e2260722984_
                                                   _hd2260822987_
                                                   _tl2260922989_
                                                   ___splice2889928900_
                                                   _target2261022992_
                                                   _tl2261222994_))))
                                          (___match2893428935_
                                           _e2260722984_
                                           _hd2260822987_
                                           _tl2260922989_
                                           ___splice2889928900_
                                           _target2261022992_
                                           _tl2261222994_)))))))
                      (_loop2261322997_ _target2261022992_ '())))))
            (if (gx#stx-pair? ___stx2889528896_)
                (let ((_e2260722984_ (gx#stx-e ___stx2889528896_)))
                  (let ((_tl2260922989_ (##cdr _e2260722984_))
                        (_hd2260822987_ (##car _e2260722984_)))
                    (if (gx#stx-pair/null? _hd2260822987_)
                        (let ((___splice2889928900_
                               (gx#syntax-split-splice _hd2260822987_ '0)))
                          (let ((_tl2261222994_
                                 (##vector-ref ___splice2889928900_ '1))
                                (_target2261022992_
                                 (##vector-ref ___splice2889928900_ '0)))
                            (if (gx#stx-null? _tl2261222994_)
                                (___match2892228923_
                                 _e2260722984_
                                 _hd2260822987_
                                 _tl2260922989_
                                 ___splice2889928900_
                                 _target2261022992_
                                 _tl2261222994_)
                                (___match2893428935_
                                 _e2260722984_
                                 _hd2260822987_
                                 _tl2260922989_
                                 ___splice2889928900_
                                 _target2261022992_
                                 _tl2261222994_))))
                        (if (gx#stx-pair? _tl2260922989_)
                            (let ((_e2269522739_ (gx#stx-e _tl2260922989_)))
                              (let ((_tl2269722744_ (##cdr _e2269522739_))
                                    (_hd2269622742_ (##car _e2269522739_)))
                                (if (gx#stx-pair? _hd2269622742_)
                                    (let ((_e2269822747_
                                           (gx#stx-e _hd2269622742_)))
                                      (let ((_tl2270022752_
                                             (##cdr _e2269822747_))
                                            (_hd2269922750_
                                             (##car _e2269822747_)))
                                        (if (gx#identifier? _hd2269922750_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2269922750_)
                                                (if (gx#stx-pair?
                                                     _tl2270022752_)
                                                    (let ((_e2270122755_
                                                           (gx#stx-e
                                                            _tl2270022752_)))
                                                      (let ((_tl2270322760_
                                                             (##cdr _e2270122755_))
                                                            (_hd2270222758_
                                                             (##car _e2270122755_)))
                                                        (if (gx#stx-pair?
                                                             _hd2270222758_)
                                                            (let ((_e2270422763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2270222758_)))
                      (let ((_tl2270622768_ (##cdr _e2270422763_))
                            (_hd2270522766_ (##car _e2270422763_)))
                        (if (gx#identifier? _hd2270522766_)
                            (if (gx#stx-eq? '%#ref _hd2270522766_)
                                (if (gx#stx-pair? _tl2270622768_)
                                    (let ((_e2270722771_
                                           (gx#stx-e _tl2270622768_)))
                                      (let ((_tl2270922776_
                                             (##cdr _e2270722771_))
                                            (_hd2270822774_
                                             (##car _e2270722771_)))
                                        (if (gx#stx-null? _tl2270922776_)
                                            (if (gx#stx-pair? _tl2270322760_)
                                                (let ((_e2271022779_
                                                       (gx#stx-e
                                                        _tl2270322760_)))
                                                  (let ((_tl2271222784_
                                                         (##cdr _e2271022779_))
                                                        (_hd2271122782_
                                                         (##car _e2271022779_)))
                                                    (if (gx#stx-pair?
                                                         _hd2271122782_)
                                                        (let ((_e2271322787_
                                                               (gx#stx-e
                                                                _hd2271122782_)))
                                                          (let ((_tl2271522792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2271322787_))
                        (_hd2271422790_ (##car _e2271322787_)))
                    (if (gx#identifier? _hd2271422790_)
                        (if (gx#stx-eq? '%#ref _hd2271422790_)
                            (if (gx#stx-pair? _tl2271522792_)
                                (let ((_e2271622795_
                                       (gx#stx-e _tl2271522792_)))
                                  (let ((_tl2271822800_ (##cdr _e2271622795_))
                                        (_hd2271722798_ (##car _e2271622795_)))
                                    (if (gx#stx-null? _tl2271822800_)
                                        (if (gx#stx-pair? _tl2271222784_)
                                            (let ((_e2271922803_
                                                   (gx#stx-e _tl2271222784_)))
                                              (let ((_tl2272122808_
                                                     (##cdr _e2271922803_))
                                                    (_hd2272022806_
                                                     (##car _e2271922803_)))
                                                (if (gx#stx-null?
                                                     _tl2272122808_)
                                                    (if (gx#stx-null?
                                                         _tl2269722744_)
                                                        (___kont2890728908_
                                                         _hd2271722798_
                                                         _hd2270822774_
                                                         _hd2260822987_)
                                                        (_g2260222726_))
                                                    (_g2260222726_))))
                                            (_g2260222726_))
                                        (_g2260222726_))))
                                (_g2260222726_))
                            (_g2260222726_))
                        (_g2260222726_))))
                (_g2260222726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2260222726_))
                                            (_g2260222726_))))
                                    (_g2260222726_))
                                (_g2260222726_))
                            (_g2260222726_))))
                    (_g2260222726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2260222726_))
                                                (_g2260222726_))
                                            (_g2260222726_))))
                                    (_g2260222726_))))
                            (_g2260222726_)))))
                (_g2260222726_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form22402_)
      (let* ((_g2240422418_
              (lambda (_g2240522415_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2240522415_)))
             (_g2240322595_
              (lambda (_g2240522421_)
                (if (gx#stx-pair? _g2240522421_)
                    (let ((_e2240822423_ (gx#stx-e _g2240522421_)))
                      (let ((_hd2240922426_ (##car _e2240822423_))
                            (_tl2241022428_ (##cdr _e2240822423_)))
                        (if (gx#stx-pair? _tl2241022428_)
                            (let ((_e2241122431_ (gx#stx-e _tl2241022428_)))
                              (let ((_hd2241222434_ (##car _e2241122431_))
                                    (_tl2241322436_ (##cdr _e2241122431_)))
                                (if (gx#stx-null? _tl2241322436_)
                                    ((lambda (_L22439_ _L22440_)
                                       (let* ((___stx2901729018_ _L22440_)
                                              (_g2245522483_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2901729018_))))
                                         (let ((___kont2901929020_
                                                (lambda (_L22574_)
                                                  (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2258422587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2258522589_)
                              (cons _g2258422587_ _g2258522589_))
                            '()
                            _L22574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2902329024_
                                                (lambda (_L22525_ _L22526_)
                                                  (cons (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2253722540_ _g2253822542_)
                                    (cons _g2253722540_ _g2253822542_))
                                  '()
                                  _L22526_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2902729028_
                                                (lambda (_L22488_)
                                                  (cons '0 '()))))
                                           (let* ((___match2904229043_
                                                   (lambda (___splice2902529026_
                                                            _target2246922501_
                                                            _tl2247122503_)
                                                     (letrec ((_loop2247222506_
                                                               (lambda (_hd2247022509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2247622511_)
                         (if (gx#stx-pair? _hd2247022509_)
                             (let ((_e2247322514_ (gx#stx-e _hd2247022509_)))
                               (let ((_lp-tl2247522519_ (##cdr _e2247322514_))
                                     (_lp-hd2247422517_ (##car _e2247322514_)))
                                 (_loop2247222506_
                                  _lp-tl2247522519_
                                  (cons _lp-hd2247422517_ _arg2247622511_))))
                             (let ((_arg2247722522_ (reverse _arg2247622511_)))
                               (___kont2902329024_
                                _tl2247122503_
                                _arg2247722522_))))))
               (_loop2247222506_ _target2246922501_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2903629037_
                                                   (lambda (___splice2902129022_
                                                            _target2245822550_
                                                            _tl2246022552_)
                                                     (letrec ((_loop2246122555_
                                                               (lambda (_hd2245922558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2246522560_)
                         (if (gx#stx-pair? _hd2245922558_)
                             (let ((_e2246222563_ (gx#stx-e _hd2245922558_)))
                               (let ((_lp-tl2246422568_ (##cdr _e2246222563_))
                                     (_lp-hd2246322566_ (##car _e2246222563_)))
                                 (_loop2246122555_
                                  _lp-tl2246422568_
                                  (cons _lp-hd2246322566_ _arg2246522560_))))
                             (let ((_arg2246622571_ (reverse _arg2246522560_)))
                               (___kont2901929020_ _arg2246622571_))))))
               (_loop2246122555_ _target2245822550_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2901729018_)
                                                 (let ((___splice2902129022_
                                                        (gx#syntax-split-splice
                                                         ___stx2901729018_
                                                         '0)))
                                                   (let ((_tl2246022552_
                                                          (##vector-ref
                                                           ___splice2902129022_
                                                           '1))
                                                         (_target2245822550_
                                                          (##vector-ref
                                                           ___splice2902129022_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2246022552_)
                                                         (___match2903629037_
                                                          ___splice2902129022_
                                                          _target2245822550_
                                                          _tl2246022552_)
                                                         (___match2904229043_
                                                          ___splice2902129022_
                                                          _target2245822550_
                                                          _tl2246022552_))))
                                                 (___kont2902729028_
                                                  ___stx2901729018_))))))
                                     _hd2241222434_
                                     _hd2240922426_)
                                    (_g2240422418_ _g2240522421_))))
                            (_g2240422418_ _g2240522421_))))
                    (_g2240422418_ _g2240522421_)))))
        (_g2240322595_ _form22402_))))
  (define gxc#lambda-expr?
    (lambda (_expr22355_)
      (let* ((___stx2904529046_ _expr22355_)
             (_g2235822368_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2904529046_))))
        (let ((___kont2904729048_ (lambda (_L22388_) '#t))
              (___kont2904929050_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2904529046_)
              (let ((_e2236122380_ (gx#stx-e ___stx2904529046_)))
                (let ((_tl2236322385_ (##cdr _e2236122380_))
                      (_hd2236222383_ (##car _e2236122380_)))
                  (if (gx#identifier? _hd2236222383_)
                      (if (gx#stx-eq? '%#lambda _hd2236222383_)
                          (___kont2904729048_ _tl2236322385_)
                          (___kont2904929050_))
                      (___kont2904929050_))))
              (___kont2904929050_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr22308_)
      (let* ((___stx2906329064_ _expr22308_)
             (_g2231122321_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2906329064_))))
        (let ((___kont2906529066_ (lambda (_L22341_) '#t))
              (___kont2906729068_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2906329064_)
              (let ((_e2231422333_ (gx#stx-e ___stx2906329064_)))
                (let ((_tl2231622338_ (##cdr _e2231422333_))
                      (_hd2231522336_ (##car _e2231422333_)))
                  (if (gx#identifier? _hd2231522336_)
                      (if (gx#stx-eq? '%#case-lambda _hd2231522336_)
                          (___kont2906529066_ _tl2231622338_)
                          (___kont2906729068_))
                      (___kont2906729068_))))
              (___kont2906729068_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr22177_)
      (let* ((___stx2908129082_ _expr22177_)
             (_g2218022210_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2908129082_))))
        (let ((___kont2908329084_
               (lambda (_L22278_ _L22279_ _L22280_)
                 (if (gx#identifier? _L22280_)
                     (if (gxc#lambda-expr? _L22279_)
                         (gxc#case-lambda-expr? _L22278_)
                         '#f)
                     '#f)))
              (___kont2908529086_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2908129082_)
              (let ((_e2218522222_ (gx#stx-e ___stx2908129082_)))
                (let ((_tl2218722227_ (##cdr _e2218522222_))
                      (_hd2218622225_ (##car _e2218522222_)))
                  (if (gx#identifier? _hd2218622225_)
                      (if (gx#stx-eq? '%#let-values _hd2218622225_)
                          (if (gx#stx-pair? _tl2218722227_)
                              (let ((_e2218822230_ (gx#stx-e _tl2218722227_)))
                                (let ((_tl2219022235_ (##cdr _e2218822230_))
                                      (_hd2218922233_ (##car _e2218822230_)))
                                  (if (gx#stx-pair? _hd2218922233_)
                                      (let ((_e2219122238_
                                             (gx#stx-e _hd2218922233_)))
                                        (let ((_tl2219322243_
                                               (##cdr _e2219122238_))
                                              (_hd2219222241_
                                               (##car _e2219122238_)))
                                          (if (gx#stx-pair? _hd2219222241_)
                                              (let ((_e2219422246_
                                                     (gx#stx-e
                                                      _hd2219222241_)))
                                                (let ((_tl2219622251_
                                                       (##cdr _e2219422246_))
                                                      (_hd2219522249_
                                                       (##car _e2219422246_)))
                                                  (if (gx#stx-pair?
                                                       _hd2219522249_)
                                                      (let ((_e2219722254_
                                                             (gx#stx-e
                                                              _hd2219522249_)))
                                                        (let ((_tl2219922259_
                                                               (##cdr _e2219722254_))
                                                              (_hd2219822257_
                                                               (##car _e2219722254_)))
                                                          (if (gx#stx-null?
                                                               _tl2219922259_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2219622251_)
                          (let ((_e2220022262_ (gx#stx-e _tl2219622251_)))
                            (let ((_tl2220222267_ (##cdr _e2220022262_))
                                  (_hd2220122265_ (##car _e2220022262_)))
                              (if (gx#stx-null? _tl2220222267_)
                                  (if (gx#stx-null? _tl2219322243_)
                                      (if (gx#stx-pair? _tl2219022235_)
                                          (let ((_e2220322270_
                                                 (gx#stx-e _tl2219022235_)))
                                            (let ((_tl2220522275_
                                                   (##cdr _e2220322270_))
                                                  (_hd2220422273_
                                                   (##car _e2220322270_)))
                                              (if (gx#stx-null? _tl2220522275_)
                                                  (___kont2908329084_
                                                   _hd2220422273_
                                                   _hd2220122265_
                                                   _hd2219822257_)
                                                  (___kont2908529086_))))
                                          (___kont2908529086_))
                                      (___kont2908529086_))
                                  (___kont2908529086_))))
                          (___kont2908529086_))
                      (___kont2908529086_))))
              (___kont2908529086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2908529086_))))
                                      (___kont2908529086_))))
                              (___kont2908529086_))
                          (___kont2908529086_))
                      (___kont2908529086_))))
              (___kont2908529086_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr21502_)
      (let* ((___stx2914329144_ _expr21502_)
             (_g2150521663_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2914329144_))))
        (let ((___kont2914529146_
               (lambda (_L22051_
                        _L22052_
                        _L22053_
                        _L22054_
                        _L22055_
                        _L22056_
                        _L22057_
                        _L22058_
                        _L22059_
                        _L22060_
                        _L22061_)
                 (if (gxc#runtime-identifier=? _L22058_ 'apply)
                     (if (gxc#runtime-identifier=? _L22054_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L22053_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L22061_ _L22052_)
                                 (if (gx#free-identifier=? _L22060_ _L22057_)
                                     (if (gx#free-identifier=?
                                          _L22055_
                                          _L22051_)
                                         (gx#free-identifier=?
                                          _L22059_
                                          _L22056_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2914729148_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2914329144_)
              (let ((_e2151821675_ (gx#stx-e ___stx2914329144_)))
                (let ((_tl2152021680_ (##cdr _e2151821675_))
                      (_hd2151921678_ (##car _e2151821675_)))
                  (if (gx#identifier? _hd2151921678_)
                      (if (gx#stx-eq? '%#let-values _hd2151921678_)
                          (if (gx#stx-pair? _tl2152021680_)
                              (let ((_e2152121683_ (gx#stx-e _tl2152021680_)))
                                (let ((_tl2152321688_ (##cdr _e2152121683_))
                                      (_hd2152221686_ (##car _e2152121683_)))
                                  (if (gx#stx-pair? _hd2152221686_)
                                      (let ((_e2152421691_
                                             (gx#stx-e _hd2152221686_)))
                                        (let ((_tl2152621696_
                                               (##cdr _e2152421691_))
                                              (_hd2152521694_
                                               (##car _e2152421691_)))
                                          (if (gx#stx-pair? _hd2152521694_)
                                              (let ((_e2152721699_
                                                     (gx#stx-e
                                                      _hd2152521694_)))
                                                (let ((_tl2152921704_
                                                       (##cdr _e2152721699_))
                                                      (_hd2152821702_
                                                       (##car _e2152721699_)))
                                                  (if (gx#stx-pair?
                                                       _hd2152821702_)
                                                      (let ((_e2153021707_
                                                             (gx#stx-e
                                                              _hd2152821702_)))
                                                        (let ((_tl2153221712_
                                                               (##cdr _e2153021707_))
                                                              (_hd2153121710_
                                                               (##car _e2153021707_)))
                                                          (if (gx#stx-null?
                                                               _tl2153221712_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2152921704_)
                          (let ((_e2153321715_ (gx#stx-e _tl2152921704_)))
                            (let ((_tl2153521720_ (##cdr _e2153321715_))
                                  (_hd2153421718_ (##car _e2153321715_)))
                              (if (gx#stx-pair? _hd2153421718_)
                                  (let ((_e2153621723_
                                         (gx#stx-e _hd2153421718_)))
                                    (let ((_tl2153821728_
                                           (##cdr _e2153621723_))
                                          (_hd2153721726_
                                           (##car _e2153621723_)))
                                      (if (gx#identifier? _hd2153721726_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2153721726_)
                                              (if (gx#stx-pair? _tl2153821728_)
                                                  (let ((_e2153921731_
                                                         (gx#stx-e
                                                          _tl2153821728_)))
                                                    (let ((_tl2154121736_
                                                           (##cdr _e2153921731_))
                                                          (_hd2154021734_
                                                           (##car _e2153921731_)))
                                                      (if (gx#stx-pair?
                                                           _hd2154021734_)
                                                          (let ((_e2154221739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2154021734_)))
                    (let ((_tl2154421744_ (##cdr _e2154221739_))
                          (_hd2154321742_ (##car _e2154221739_)))
                      (if (gx#stx-pair? _hd2154321742_)
                          (let ((_e2154521747_ (gx#stx-e _hd2154321742_)))
                            (let ((_tl2154721752_ (##cdr _e2154521747_))
                                  (_hd2154621750_ (##car _e2154521747_)))
                              (if (gx#stx-pair? _hd2154621750_)
                                  (let ((_e2154821755_
                                         (gx#stx-e _hd2154621750_)))
                                    (let ((_tl2155021760_
                                           (##cdr _e2154821755_))
                                          (_hd2154921758_
                                           (##car _e2154821755_)))
                                      (if (gx#stx-null? _tl2155021760_)
                                          (if (gx#stx-pair? _tl2154721752_)
                                              (let ((_e2155121763_
                                                     (gx#stx-e
                                                      _tl2154721752_)))
                                                (let ((_tl2155321768_
                                                       (##cdr _e2155121763_))
                                                      (_hd2155221766_
                                                       (##car _e2155121763_)))
                                                  (if (gx#stx-null?
                                                       _tl2155321768_)
                                                      (if (gx#stx-null?
                                                           _tl2154421744_)
                                                          (if (gx#stx-pair?
                                                               _tl2154121736_)
                                                              (let ((_e2155421771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2154121736_)))
                        (let ((_tl2155621776_ (##cdr _e2155421771_))
                              (_hd2155521774_ (##car _e2155421771_)))
                          (if (gx#stx-pair? _hd2155521774_)
                              (let ((_e2155721779_ (gx#stx-e _hd2155521774_)))
                                (let ((_tl2155921784_ (##cdr _e2155721779_))
                                      (_hd2155821782_ (##car _e2155721779_)))
                                  (if (gx#identifier? _hd2155821782_)
                                      (if (gx#stx-eq? '%#lambda _hd2155821782_)
                                          (if (gx#stx-pair? _tl2155921784_)
                                              (let ((_e2156021787_
                                                     (gx#stx-e
                                                      _tl2155921784_)))
                                                (let ((_tl2156221792_
                                                       (##cdr _e2156021787_))
                                                      (_hd2156121790_
                                                       (##car _e2156021787_)))
                                                  (if (gx#stx-pair?
                                                       _hd2156121790_)
                                                      (let ((_e2156321795_
                                                             (gx#stx-e
                                                              _hd2156121790_)))
                                                        (let ((_tl2156521800_
                                                               (##cdr _e2156321795_))
                                                              (_hd2156421798_
                                                               (##car _e2156321795_)))
                                                          (if (gx#stx-pair?
                                                               _tl2156221792_)
                                                              (let ((_e2156621803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2156221792_)))
                        (let ((_tl2156821808_ (##cdr _e2156621803_))
                              (_hd2156721806_ (##car _e2156621803_)))
                          (if (gx#stx-pair? _hd2156721806_)
                              (let ((_e2156921811_ (gx#stx-e _hd2156721806_)))
                                (let ((_tl2157121816_ (##cdr _e2156921811_))
                                      (_hd2157021814_ (##car _e2156921811_)))
                                  (if (gx#identifier? _hd2157021814_)
                                      (if (gx#stx-eq? '%#call _hd2157021814_)
                                          (if (gx#stx-pair? _tl2157121816_)
                                              (let ((_e2157221819_
                                                     (gx#stx-e
                                                      _tl2157121816_)))
                                                (let ((_tl2157421824_
                                                       (##cdr _e2157221819_))
                                                      (_hd2157321822_
                                                       (##car _e2157221819_)))
                                                  (if (gx#stx-pair?
                                                       _hd2157321822_)
                                                      (let ((_e2157521827_
                                                             (gx#stx-e
                                                              _hd2157321822_)))
                                                        (let ((_tl2157721832_
                                                               (##cdr _e2157521827_))
                                                              (_hd2157621830_
                                                               (##car _e2157521827_)))
                                                          (if (gx#identifier?
                                                               _hd2157621830_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2157621830_)
                          (if (gx#stx-pair? _tl2157721832_)
                              (let ((_e2157821835_ (gx#stx-e _tl2157721832_)))
                                (let ((_tl2158021840_ (##cdr _e2157821835_))
                                      (_hd2157921838_ (##car _e2157821835_)))
                                  (if (gx#stx-null? _tl2158021840_)
                                      (if (gx#stx-pair? _tl2157421824_)
                                          (let ((_e2158121843_
                                                 (gx#stx-e _tl2157421824_)))
                                            (let ((_tl2158321848_
                                                   (##cdr _e2158121843_))
                                                  (_hd2158221846_
                                                   (##car _e2158121843_)))
                                              (if (gx#stx-pair? _hd2158221846_)
                                                  (let ((_e2158421851_
                                                         (gx#stx-e
                                                          _hd2158221846_)))
                                                    (let ((_tl2158621856_
                                                           (##cdr _e2158421851_))
                                                          (_hd2158521854_
                                                           (##car _e2158421851_)))
                                                      (if (gx#identifier?
                                                           _hd2158521854_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2158521854_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2158621856_)
                          (let ((_e2158721859_ (gx#stx-e _tl2158621856_)))
                            (let ((_tl2158921864_ (##cdr _e2158721859_))
                                  (_hd2158821862_ (##car _e2158721859_)))
                              (if (gx#stx-null? _tl2158921864_)
                                  (if (gx#stx-pair? _tl2158321848_)
                                      (let ((_e2159021867_
                                             (gx#stx-e _tl2158321848_)))
                                        (let ((_tl2159221872_
                                               (##cdr _e2159021867_))
                                              (_hd2159121870_
                                               (##car _e2159021867_)))
                                          (if (gx#stx-pair? _hd2159121870_)
                                              (let ((_e2159321875_
                                                     (gx#stx-e
                                                      _hd2159121870_)))
                                                (let ((_tl2159521880_
                                                       (##cdr _e2159321875_))
                                                      (_hd2159421878_
                                                       (##car _e2159321875_)))
                                                  (if (gx#identifier?
                                                       _hd2159421878_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2159421878_)
                                                          (if (gx#stx-pair?
                                                               _tl2159521880_)
                                                              (let ((_e2159621883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2159521880_)))
                        (let ((_tl2159821888_ (##cdr _e2159621883_))
                              (_hd2159721886_ (##car _e2159621883_)))
                          (if (gx#stx-null? _tl2159821888_)
                              (if (gx#stx-null? _tl2156821808_)
                                  (if (gx#stx-null? _tl2155621776_)
                                      (if (gx#stx-null? _tl2153521720_)
                                          (if (gx#stx-null? _tl2152621696_)
                                              (if (gx#stx-pair? _tl2152321688_)
                                                  (let ((_e2159921891_
                                                         (gx#stx-e
                                                          _tl2152321688_)))
                                                    (let ((_tl2160121896_
                                                           (##cdr _e2159921891_))
                                                          (_hd2160021894_
                                                           (##car _e2159921891_)))
                                                      (if (gx#stx-pair?
                                                           _hd2160021894_)
                                                          (let ((_e2160221899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2160021894_)))
                    (let ((_tl2160421904_ (##cdr _e2160221899_))
                          (_hd2160321902_ (##car _e2160221899_)))
                      (if (gx#identifier? _hd2160321902_)
                          (if (gx#stx-eq? '%#lambda _hd2160321902_)
                              (if (gx#stx-pair? _tl2160421904_)
                                  (let ((_e2160521907_
                                         (gx#stx-e _tl2160421904_)))
                                    (let ((_tl2160721912_
                                           (##cdr _e2160521907_))
                                          (_hd2160621910_
                                           (##car _e2160521907_)))
                                      (if (gx#stx-pair? _tl2160721912_)
                                          (let ((_e2160821915_
                                                 (gx#stx-e _tl2160721912_)))
                                            (let ((_tl2161021920_
                                                   (##cdr _e2160821915_))
                                                  (_hd2160921918_
                                                   (##car _e2160821915_)))
                                              (if (gx#stx-pair? _hd2160921918_)
                                                  (let ((_e2161121923_
                                                         (gx#stx-e
                                                          _hd2160921918_)))
                                                    (let ((_tl2161321928_
                                                           (##cdr _e2161121923_))
                                                          (_hd2161221926_
                                                           (##car _e2161121923_)))
                                                      (if (gx#identifier?
                                                           _hd2161221926_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2161221926_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2161321928_)
                          (let ((_e2161421931_ (gx#stx-e _tl2161321928_)))
                            (let ((_tl2161621936_ (##cdr _e2161421931_))
                                  (_hd2161521934_ (##car _e2161421931_)))
                              (if (gx#stx-pair? _hd2161521934_)
                                  (let ((_e2161721939_
                                         (gx#stx-e _hd2161521934_)))
                                    (let ((_tl2161921944_
                                           (##cdr _e2161721939_))
                                          (_hd2161821942_
                                           (##car _e2161721939_)))
                                      (if (gx#identifier? _hd2161821942_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2161821942_)
                                              (if (gx#stx-pair? _tl2161921944_)
                                                  (let ((_e2162021947_
                                                         (gx#stx-e
                                                          _tl2161921944_)))
                                                    (let ((_tl2162221952_
                                                           (##cdr _e2162021947_))
                                                          (_hd2162121950_
                                                           (##car _e2162021947_)))
                                                      (if (gx#stx-null?
                                                           _tl2162221952_)
                                                          (if (gx#stx-pair?
                                                               _tl2161621936_)
                                                              (let ((_e2162321955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2161621936_)))
                        (let ((_tl2162521960_ (##cdr _e2162321955_))
                              (_hd2162421958_ (##car _e2162321955_)))
                          (if (gx#stx-pair? _hd2162421958_)
                              (let ((_e2162621963_ (gx#stx-e _hd2162421958_)))
                                (let ((_tl2162821968_ (##cdr _e2162621963_))
                                      (_hd2162721966_ (##car _e2162621963_)))
                                  (if (gx#identifier? _hd2162721966_)
                                      (if (gx#stx-eq? '%#ref _hd2162721966_)
                                          (if (gx#stx-pair? _tl2162821968_)
                                              (let ((_e2162921971_
                                                     (gx#stx-e
                                                      _tl2162821968_)))
                                                (let ((_tl2163121976_
                                                       (##cdr _e2162921971_))
                                                      (_hd2163021974_
                                                       (##car _e2162921971_)))
                                                  (if (gx#stx-null?
                                                       _tl2163121976_)
                                                      (if (gx#stx-pair?
                                                           _tl2162521960_)
                                                          (let ((_e2163221979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2162521960_)))
                    (let ((_tl2163421984_ (##cdr _e2163221979_))
                          (_hd2163321982_ (##car _e2163221979_)))
                      (if (gx#stx-pair? _hd2163321982_)
                          (let ((_e2163521987_ (gx#stx-e _hd2163321982_)))
                            (let ((_tl2163721992_ (##cdr _e2163521987_))
                                  (_hd2163621990_ (##car _e2163521987_)))
                              (if (gx#identifier? _hd2163621990_)
                                  (if (gx#stx-eq? '%#quote _hd2163621990_)
                                      (if (gx#stx-pair? _tl2163721992_)
                                          (let ((_e2163821995_
                                                 (gx#stx-e _tl2163721992_)))
                                            (let ((_tl2164022000_
                                                   (##cdr _e2163821995_))
                                                  (_hd2163921998_
                                                   (##car _e2163821995_)))
                                              (if (gx#stx-null? _tl2164022000_)
                                                  (if (gx#stx-pair?
                                                       _tl2163421984_)
                                                      (let ((_e2164122003_
                                                             (gx#stx-e
                                                              _tl2163421984_)))
                                                        (let ((_tl2164322008_
                                                               (##cdr _e2164122003_))
                                                              (_hd2164222006_
                                                               (##car _e2164122003_)))
                                                          (if (gx#stx-pair?
                                                               _hd2164222006_)
                                                              (let ((_e2164422011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2164222006_)))
                        (let ((_tl2164622016_ (##cdr _e2164422011_))
                              (_hd2164522014_ (##car _e2164422011_)))
                          (if (gx#identifier? _hd2164522014_)
                              (if (gx#stx-eq? '%#ref _hd2164522014_)
                                  (if (gx#stx-pair? _tl2164622016_)
                                      (let ((_e2164722019_
                                             (gx#stx-e _tl2164622016_)))
                                        (let ((_tl2164922024_
                                               (##cdr _e2164722019_))
                                              (_hd2164822022_
                                               (##car _e2164722019_)))
                                          (if (gx#stx-null? _tl2164922024_)
                                              (if (gx#stx-pair? _tl2164322008_)
                                                  (let ((_e2165022027_
                                                         (gx#stx-e
                                                          _tl2164322008_)))
                                                    (let ((_tl2165222032_
                                                           (##cdr _e2165022027_))
                                                          (_hd2165122030_
                                                           (##car _e2165022027_)))
                                                      (if (gx#stx-pair?
                                                           _hd2165122030_)
                                                          (let ((_e2165322035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2165122030_)))
                    (let ((_tl2165522040_ (##cdr _e2165322035_))
                          (_hd2165422038_ (##car _e2165322035_)))
                      (if (gx#identifier? _hd2165422038_)
                          (if (gx#stx-eq? '%#ref _hd2165422038_)
                              (if (gx#stx-pair? _tl2165522040_)
                                  (let ((_e2165622043_
                                         (gx#stx-e _tl2165522040_)))
                                    (let ((_tl2165822048_
                                           (##cdr _e2165622043_))
                                          (_hd2165722046_
                                           (##car _e2165622043_)))
                                      (if (gx#stx-null? _tl2165822048_)
                                          (if (gx#stx-null? _tl2165222032_)
                                              (if (gx#stx-null? _tl2161021920_)
                                                  (if (gx#stx-null?
                                                       _tl2160121896_)
                                                      (___kont2914529146_
                                                       _hd2165722046_
                                                       _hd2164822022_
                                                       _hd2163021974_
                                                       _hd2162121950_
                                                       _hd2160621910_
                                                       _hd2159721886_
                                                       _hd2158821862_
                                                       _hd2157921838_
                                                       _hd2156421798_
                                                       _hd2154921758_
                                                       _hd2153121710_)
                                                      (___kont2914729148_))
                                                  (___kont2914729148_))
                                              (___kont2914729148_))
                                          (___kont2914729148_))))
                                  (___kont2914729148_))
                              (___kont2914729148_))
                          (___kont2914729148_))))
                  (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914729148_))
                                              (___kont2914729148_))))
                                      (___kont2914729148_))
                                  (___kont2914729148_))
                              (___kont2914729148_))))
                      (___kont2914729148_))))
              (___kont2914729148_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914729148_))))
                                          (___kont2914729148_))
                                      (___kont2914729148_))
                                  (___kont2914729148_))))
                          (___kont2914729148_))))
                  (___kont2914729148_))
              (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914729148_))
                                          (___kont2914729148_))
                                      (___kont2914729148_))))
                              (___kont2914729148_))))
                      (___kont2914729148_))
                  (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914729148_))
                                              (___kont2914729148_))
                                          (___kont2914729148_))))
                                  (___kont2914729148_))))
                          (___kont2914729148_))
                      (___kont2914729148_))
                  (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914729148_))))
                                          (___kont2914729148_))))
                                  (___kont2914729148_))
                              (___kont2914729148_))
                          (___kont2914729148_))))
                  (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914729148_))
                                              (___kont2914729148_))
                                          (___kont2914729148_))
                                      (___kont2914729148_))
                                  (___kont2914729148_))
                              (___kont2914729148_))))
                      (___kont2914729148_))
                  (___kont2914729148_))
              (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914729148_))))
                                      (___kont2914729148_))
                                  (___kont2914729148_))))
                          (___kont2914729148_))
                      (___kont2914729148_))
                  (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914729148_))))
                                          (___kont2914729148_))
                                      (___kont2914729148_))))
                              (___kont2914729148_))
                          (___kont2914729148_))
                      (___kont2914729148_))))
              (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914729148_))
                                          (___kont2914729148_))
                                      (___kont2914729148_))))
                              (___kont2914729148_))))
                      (___kont2914729148_))))
              (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914729148_))
                                          (___kont2914729148_))
                                      (___kont2914729148_))))
                              (___kont2914729148_))))
                      (___kont2914729148_))
                  (___kont2914729148_))
              (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914729148_))
                                          (___kont2914729148_))))
                                  (___kont2914729148_))))
                          (___kont2914729148_))))
                  (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914729148_))
                                              (___kont2914729148_))
                                          (___kont2914729148_))))
                                  (___kont2914729148_))))
                          (___kont2914729148_))
                      (___kont2914729148_))))
              (___kont2914729148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914729148_))))
                                      (___kont2914729148_))))
                              (___kont2914729148_))
                          (___kont2914729148_))
                      (___kont2914729148_))))
              (___kont2914729148_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx21244_ _id21245_ _clauses21246_ _gensym?21247_)
        (let _lp21249_ ((_rest21251_ _clauses21246_)
                        (_ids21252_ '())
                        (_impls21253_ '())
                        (_clauses21254_ '()))
          (let* ((_rest2125521263_ _rest21251_)
                 (_else2125721271_
                  (lambda ()
                    (values (reverse _ids21252_)
                            (reverse _impls21253_)
                            (reverse _clauses21254_))))
                 (_K2125921476_
                  (lambda (_rest21274_ _clause21275_)
                    (if (gxc#dispatch-lambda-form? _clause21275_)
                        (_lp21249_
                         _rest21274_
                         _ids21252_
                         _impls21253_
                         (cons _clause21275_ _clauses21254_))
                        (let* ((_g2127721288_
                                (lambda (_g2127821285_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2127821285_)))
                               (_g2127621473_
                                (lambda (_g2127821291_)
                                  (if (gx#stx-pair? _g2127821291_)
                                      (let ((_e2128121293_
                                             (gx#stx-e _g2127821291_)))
                                        (let ((_hd2128221296_
                                               (##car _e2128121293_))
                                              (_tl2128321298_
                                               (##cdr _e2128121293_)))
                                          ((lambda (_L21301_ _L21302_)
                                             (let* ((_id21319_
                                                     (make-symbol
                                                      (gx#stx-e _id21245_)
                                                      '"__"
                                                      (length _clauses21254_)
                                                      (if _gensym?21247_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id21321_
                                                     (gx#core-quote-syntax__1
                                                      _id21319_
                                                      (gx#stx-source
                                                       _stx21244_)))
                                                    (_impl21323_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L21302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L21301_))
              _stx21244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause21470_
                                                     (let* ((___stx2952729528_
                                                             _L21302_)
                                                            (_g2132721355_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx2952729528_))))
                                                       (let ((___kont2952929530_
                                                              (lambda (_L21449_)
                                                                (cons _L21302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id21321_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2145921462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2146021464_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g2145921462_ '()))
                           _g2146021464_))
                   '()
                   _L21449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx21244_)
                                    '()))))
                     (___kont2953329534_
                      (lambda (_L21400_ _L21401_)
                        (cons _L21302_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id21321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L21400_ '()))
                             '())
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2141221415_ _g2141321417_)
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _g2141221415_ '()))
                                         _g2141321417_))
                                 '()
                                 _L21401_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx21244_)
                                    '()))))
                     (___kont2953729538_
                      (lambda (_L21360_)
                        (cons _L21302_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id21321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L21360_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx21244_)
                                    '())))))
                 (let* ((___match2955229553_
                         (lambda (___splice2953529536_
                                  _target2134121376_
                                  _tl2134321378_)
                           (letrec ((_loop2134421381_
                                     (lambda (_hd2134221384_ _arg2134821386_)
                                       (if (gx#stx-pair? _hd2134221384_)
                                           (let ((_e2134521389_
                                                  (gx#stx-e _hd2134221384_)))
                                             (let ((_lp-tl2134721394_
                                                    (##cdr _e2134521389_))
                                                   (_lp-hd2134621392_
                                                    (##car _e2134521389_)))
                                               (_loop2134421381_
                                                _lp-tl2134721394_
                                                (cons _lp-hd2134621392_
                                                      _arg2134821386_))))
                                           (let ((_arg2134921397_
                                                  (reverse _arg2134821386_)))
                                             (___kont2953329534_
                                              _tl2134321378_
                                              _arg2134921397_))))))
                             (_loop2134421381_ _target2134121376_ '()))))
                        (___match2954629547_
                         (lambda (___splice2953129532_
                                  _target2133021425_
                                  _tl2133221427_)
                           (letrec ((_loop2133321430_
                                     (lambda (_hd2133121433_ _arg2133721435_)
                                       (if (gx#stx-pair? _hd2133121433_)
                                           (let ((_e2133421438_
                                                  (gx#stx-e _hd2133121433_)))
                                             (let ((_lp-tl2133621443_
                                                    (##cdr _e2133421438_))
                                                   (_lp-hd2133521441_
                                                    (##car _e2133421438_)))
                                               (_loop2133321430_
                                                _lp-tl2133621443_
                                                (cons _lp-hd2133521441_
                                                      _arg2133721435_))))
                                           (let ((_arg2133821446_
                                                  (reverse _arg2133721435_)))
                                             (___kont2952929530_
                                              _arg2133821446_))))))
                             (_loop2133321430_ _target2133021425_ '())))))
                   (if (gx#stx-pair/null? ___stx2952729528_)
                       (let ((___splice2953129532_
                              (gx#syntax-split-splice ___stx2952729528_ '0)))
                         (let ((_tl2133221427_
                                (##vector-ref ___splice2953129532_ '1))
                               (_target2133021425_
                                (##vector-ref ___splice2953129532_ '0)))
                           (if (gx#stx-null? _tl2133221427_)
                               (___match2954629547_
                                ___splice2953129532_
                                _target2133021425_
                                _tl2133221427_)
                               (___match2955229553_
                                ___splice2953129532_
                                _target2133021425_
                                _tl2133221427_))))
                       (___kont2953729538_ ___stx2952729528_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp21249_
                                                _rest21274_
                                                (cons _id21321_ _ids21252_)
                                                (cons _impl21323_ _impls21253_)
                                                (cons _clause21470_
                                                      _clauses21254_))))
                                           _tl2128321298_
                                           _hd2128221296_)))
                                      (_g2127721288_ _g2127821291_)))))
                          (_g2127621473_ _clause21275_))))))
            (if (##pair? _rest2125521263_)
                (let ((_hd2126021479_ (##car _rest2125521263_))
                      (_tl2126121481_ (##cdr _rest2125521263_)))
                  (let* ((_clause21484_ _hd2126021479_)
                         (_rest21486_ _tl2126121481_))
                    (_K2125921476_ _rest21486_ _clause21484_)))
                (_else2125721271_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx21491_ _id21492_ _clauses21493_)
          (let ((_gensym?21495_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx21491_
             _id21492_
             _clauses21493_
             _gensym?21495_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g30069_
          (let ((_g30068_ (length _g30069_)))
            (cond ((##fx= _g30068_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g30069_))
                  ((##fx= _g30068_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g30069_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g30069_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx20521_)
      (letrec ((_case-lambda-clause-def20523_
                (lambda (_id21240_ _impl21241_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id21240_ '())
                               (cons (gxc#compile-e _impl21241_) '())))
                   _stx20521_)))
               (_opt-lambda-dispatch-name20524_
                (lambda (_id21236_)
                  (if (uninterned-symbol? _id21236_)
                      (let ((_str21238_ (symbol->string _id21236_)))
                        (if (string-prefix? _str21238_ '"opt-lambda")
                            '"%"
                            _id21236_))
                      _id21236_)))
               (_kw-lambda-dispatch-name20525_
                (lambda (_id21231_ _name21232_)
                  (if (uninterned-symbol? _id21231_)
                      (let ((_str21234_ (symbol->string _id21231_)))
                        (if (string-prefix? _str21234_ '"kw-lambda")
                            _name21232_
                            _id21231_))
                      _id21231_))))
        (let* ((___stx2957529576_ _stx20521_)
               (_g2053020589_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2957529576_))))
          (let ((___kont2957729578_
                 (lambda (_L21140_ _L21141_)
                   (let* ((___stx2955529556_ _L21140_)
                          (_g2115821172_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2955529556_))))
                     (let ((___kont2955729558_ (lambda (_L21216_) _stx20521_))
                           (___kont2955929560_
                            (lambda (_L21185_)
                              (let ((_g30070_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx20521_
                                      _L21141_
                                      _L21185_)))
                                (begin
                                  (let ((_g30071_
                                         (if (##values? _g30070_)
                                             (##vector-length _g30070_)
                                             1)))
                                    (if (not (##fx= _g30071_ 3))
                                        (error "Context expects 3 values"
                                               _g30071_)))
                                  (let ((_ids21195_ (##vector-ref _g30070_ 0))
                                        (_impls21196_
                                         (##vector-ref _g30070_ 1))
                                        (_clauses21197_
                                         (##vector-ref _g30070_ 2)))
                                    (let* ((_g30072_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids21195_))
                                           (_defs21200_
                                            (map _case-lambda-clause-def20523_
                                                 _ids21195_
                                                 _impls21196_)))
                                      (begin
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L21141_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids21195_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L21141_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses21197_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx20521_)
                     '())
               _defs21200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx20521_)))))))))
                       (let ((___match2956629567_
                              (lambda (_e2116121208_
                                       _hd2116221211_
                                       _tl2116321213_)
                                (let ((_L21216_ _tl2116321213_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L21216_)
                                      (___kont2955729558_ _L21216_)
                                      (___kont2955929560_ _tl2116321213_))))))
                         (if (gx#stx-pair? ___stx2955529556_)
                             (let ((_e2116121208_
                                    (gx#stx-e ___stx2955529556_)))
                               (let ((_tl2116321213_ (##cdr _e2116121208_))
                                     (_hd2116221211_ (##car _e2116121208_)))
                                 (___match2956629567_
                                  _e2116121208_
                                  _hd2116221211_
                                  _tl2116321213_)))
                             (_g2115821172_)))))))
                (___kont2957929580_
                 (lambda (_L20958_ _L20959_)
                   (let* ((_g2097521005_
                           (lambda (_g2097621002_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2097621002_)))
                          (_g2097421100_
                           (lambda (_g2097621008_)
                             (if (gx#stx-pair? _g2097621008_)
                                 (let ((_e2098021010_
                                        (gx#stx-e _g2097621008_)))
                                   (let ((_hd2098121013_ (##car _e2098021010_))
                                         (_tl2098221015_
                                          (##cdr _e2098021010_)))
                                     (if (gx#stx-pair? _tl2098221015_)
                                         (let ((_e2098321018_
                                                (gx#stx-e _tl2098221015_)))
                                           (let ((_hd2098421021_
                                                  (##car _e2098321018_))
                                                 (_tl2098521023_
                                                  (##cdr _e2098321018_)))
                                             (if (gx#stx-pair? _hd2098421021_)
                                                 (let ((_e2098621026_
                                                        (gx#stx-e
                                                         _hd2098421021_)))
                                                   (let ((_hd2098721029_
                                                          (##car _e2098621026_))
                                                         (_tl2098821031_
                                                          (##cdr _e2098621026_)))
                                                     (if (gx#stx-pair?
                                                          _hd2098721029_)
                                                         (let ((_e2098921034_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2098721029_)))
                   (let ((_hd2099021037_ (##car _e2098921034_))
                         (_tl2099121039_ (##cdr _e2098921034_)))
                     (if (gx#stx-pair? _hd2099021037_)
                         (let ((_e2099221042_ (gx#stx-e _hd2099021037_)))
                           (let ((_hd2099321045_ (##car _e2099221042_))
                                 (_tl2099421047_ (##cdr _e2099221042_)))
                             (if (gx#stx-null? _tl2099421047_)
                                 (if (gx#stx-pair? _tl2099121039_)
                                     (let ((_e2099521050_
                                            (gx#stx-e _tl2099121039_)))
                                       (let ((_hd2099621053_
                                              (##car _e2099521050_))
                                             (_tl2099721055_
                                              (##cdr _e2099521050_)))
                                         (if (gx#stx-null? _tl2099721055_)
                                             (if (gx#stx-null? _tl2098821031_)
                                                 (if (gx#stx-pair?
                                                      _tl2098521023_)
                                                     (let ((_e2099821058_
                                                            (gx#stx-e
                                                             _tl2098521023_)))
                                                       (let ((_hd2099921061_
                                                              (##car _e2099821058_))
                                                             (_tl2100021063_
                                                              (##cdr _e2099821058_)))
                                                         (if (gx#stx-null?
                                                              _tl2100021063_)
                                                             ((lambda (_L21066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21067_
                               _L21068_)
                        (let* ((_lambda-id21092_
                                (make-symbol
                                 (gx#stx-e _L20959_)
                                 '"__"
                                 (_opt-lambda-dispatch-name20524_
                                  (gx#stx-e _L21068_))))
                               (_lambda-id21094_
                                (gx#core-quote-syntax__1
                                 _lambda-id21092_
                                 (gx#stx-source _stx20521_)))
                               (_g30073_
                                (gx#core-bind-runtime!__0 _lambda-id21094_))
                               (_new-case-lambda-expr21097_
                                (gxc#apply-expression-subst
                                 _L21066_
                                 _L21068_
                                 _lambda-id21094_)))
                          (begin
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L20959_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id21094_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id21094_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L21067_)
                                                            '())))
                                          _stx20521_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L20959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr21097_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx20521_))
                                               '())))
                             _stx20521_))))
                      _hd2099921061_
                      _hd2099621053_
                      _hd2099321045_)
                     (_g2097521005_ _g2097621008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2097521005_
                                                      _g2097621008_))
                                                 (_g2097521005_ _g2097621008_))
                                             (_g2097521005_ _g2097621008_))))
                                     (_g2097521005_ _g2097621008_))
                                 (_g2097521005_ _g2097621008_))))
                         (_g2097521005_ _g2097621008_))))
                 (_g2097521005_ _g2097621008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2097521005_
                                                  _g2097621008_))))
                                         (_g2097521005_ _g2097621008_))))
                                 (_g2097521005_ _g2097621008_)))))
                     (_g2097421100_ _L20958_))))
                (___kont2958129582_
                 (lambda (_L20672_ _L20673_)
                   (let* ((_g2068920742_
                           (lambda (_g2069020739_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2069020739_)))
                          (_g2068820918_
                           (lambda (_g2069020745_)
                             (if (gx#stx-pair? _g2069020745_)
                                 (let ((_e2069620747_
                                        (gx#stx-e _g2069020745_)))
                                   (let ((_hd2069720750_ (##car _e2069620747_))
                                         (_tl2069820752_
                                          (##cdr _e2069620747_)))
                                     (if (gx#stx-pair? _tl2069820752_)
                                         (let ((_e2069920755_
                                                (gx#stx-e _tl2069820752_)))
                                           (let ((_hd2070020758_
                                                  (##car _e2069920755_))
                                                 (_tl2070120760_
                                                  (##cdr _e2069920755_)))
                                             (if (gx#stx-pair? _hd2070020758_)
                                                 (let ((_e2070220763_
                                                        (gx#stx-e
                                                         _hd2070020758_)))
                                                   (let ((_hd2070320766_
                                                          (##car _e2070220763_))
                                                         (_tl2070420768_
                                                          (##cdr _e2070220763_)))
                                                     (if (gx#stx-pair?
                                                          _hd2070320766_)
                                                         (let ((_e2070520771_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2070320766_)))
                   (let ((_hd2070620774_ (##car _e2070520771_))
                         (_tl2070720776_ (##cdr _e2070520771_)))
                     (if (gx#stx-pair? _hd2070620774_)
                         (let ((_e2070820779_ (gx#stx-e _hd2070620774_)))
                           (let ((_hd2070920782_ (##car _e2070820779_))
                                 (_tl2071020784_ (##cdr _e2070820779_)))
                             (if (gx#stx-null? _tl2071020784_)
                                 (if (gx#stx-pair? _tl2070720776_)
                                     (let ((_e2071120787_
                                            (gx#stx-e _tl2070720776_)))
                                       (let ((_hd2071220790_
                                              (##car _e2071120787_))
                                             (_tl2071320792_
                                              (##cdr _e2071120787_)))
                                         (if (gx#stx-pair? _hd2071220790_)
                                             (let ((_e2071420795_
                                                    (gx#stx-e _hd2071220790_)))
                                               (let ((_hd2071520798_
                                                      (##car _e2071420795_))
                                                     (_tl2071620800_
                                                      (##cdr _e2071420795_)))
                                                 (if (gx#stx-pair?
                                                      _tl2071620800_)
                                                     (let ((_e2071720803_
                                                            (gx#stx-e
                                                             _tl2071620800_)))
                                                       (let ((_hd2071820806_
                                                              (##car _e2071720803_))
                                                             (_tl2071920808_
                                                              (##cdr _e2071720803_)))
                                                         (if (gx#stx-pair?
                                                              _hd2071820806_)
                                                             (let ((_e2072020811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd2071820806_)))
                       (let ((_hd2072120814_ (##car _e2072020811_))
                             (_tl2072220816_ (##cdr _e2072020811_)))
                         (if (gx#stx-pair? _hd2072120814_)
                             (let ((_e2072320819_ (gx#stx-e _hd2072120814_)))
                               (let ((_hd2072420822_ (##car _e2072320819_))
                                     (_tl2072520824_ (##cdr _e2072320819_)))
                                 (if (gx#stx-pair? _hd2072420822_)
                                     (let ((_e2072620827_
                                            (gx#stx-e _hd2072420822_)))
                                       (let ((_hd2072720830_
                                              (##car _e2072620827_))
                                             (_tl2072820832_
                                              (##cdr _e2072620827_)))
                                         (if (gx#stx-null? _tl2072820832_)
                                             (if (gx#stx-pair? _tl2072520824_)
                                                 (let ((_e2072920835_
                                                        (gx#stx-e
                                                         _tl2072520824_)))
                                                   (let ((_hd2073020838_
                                                          (##car _e2072920835_))
                                                         (_tl2073120840_
                                                          (##cdr _e2072920835_)))
                                                     (if (gx#stx-null?
                                                          _tl2073120840_)
                                                         (if (gx#stx-null?
                                                              _tl2072220816_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2071920808_)
                         (let ((_e2073220843_ (gx#stx-e _tl2071920808_)))
                           (let ((_hd2073320846_ (##car _e2073220843_))
                                 (_tl2073420848_ (##cdr _e2073220843_)))
                             (if (gx#stx-null? _tl2073420848_)
                                 (if (gx#stx-null? _tl2071320792_)
                                     (if (gx#stx-null? _tl2070420768_)
                                         (if (gx#stx-pair? _tl2070120760_)
                                             (let ((_e2073520851_
                                                    (gx#stx-e _tl2070120760_)))
                                               (let ((_hd2073620854_
                                                      (##car _e2073520851_))
                                                     (_tl2073720856_
                                                      (##cdr _e2073520851_)))
                                                 (if (gx#stx-null?
                                                      _tl2073720856_)
                                                     ((lambda (_L20859_
                                                               _L20860_
                                                               _L20861_
                                                               _L20862_
                                                               _L20863_)
                                                        (let* ((_get-kws-id20903_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L20673_)
                         '"__"
                         (_kw-lambda-dispatch-name20525_
                          (gx#stx-e _L20863_)
                          '"@")))
                       (_get-kws-id20905_
                        (gx#core-quote-syntax__1
                         _get-kws-id20903_
                         (gx#stx-source _stx20521_)))
                       (_main-id20907_
                        (make-symbol
                         (gx#stx-e _L20673_)
                         '"__"
                         (_kw-lambda-dispatch-name20525_
                          (gx#stx-e _L20862_)
                          '"%")))
                       (_main-id20909_
                        (gx#core-quote-syntax__1
                         _main-id20907_
                         (gx#stx-source _stx20521_)))
                       (_g30074_ (gx#core-bind-runtime!__0 _get-kws-id20905_))
                       (_g30075_ (gx#core-bind-runtime!__0 _main-id20909_))
                       (_new-kw-dispatch20913_
                        (gxc#apply-expression-subst
                         _L20859_
                         _L20863_
                         _get-kws-id20905_))
                       (_new-get-kws20915_
                        (gxc#apply-expression-subst
                         _L20860_
                         _L20862_
                         _main-id20909_)))
                  (begin
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L20673_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id20905_)
                     '" => "
                     (gxc#identifier-symbol _main-id20909_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id20909_ '())
                                               (cons _L20861_ '())))
                                   _stx20521_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id20905_
                                                          '())
                                                    (cons _new-get-kws20915_
                                                          '())))
                                        _stx20521_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L20673_ '())
                                                          (cons _new-kw-dispatch20913_
                                                                '())))
                                              _stx20521_)
                                             '()))))
                     _stx20521_))))
              _hd2073620854_
              _hd2073320846_
              _hd2073020838_
              _hd2072720830_
              _hd2070920782_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2068920742_
                                                      _g2069020745_))))
                                             (_g2068920742_ _g2069020745_))
                                         (_g2068920742_ _g2069020745_))
                                     (_g2068920742_ _g2069020745_))
                                 (_g2068920742_ _g2069020745_))))
                         (_g2068920742_ _g2069020745_))
                     (_g2068920742_ _g2069020745_))
                 (_g2068920742_ _g2069020745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2068920742_ _g2069020745_))
                                             (_g2068920742_ _g2069020745_))))
                                     (_g2068920742_ _g2069020745_))))
                             (_g2068920742_ _g2069020745_))))
                     (_g2068920742_ _g2069020745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2068920742_
                                                      _g2069020745_))))
                                             (_g2068920742_ _g2069020745_))))
                                     (_g2068920742_ _g2069020745_))
                                 (_g2068920742_ _g2069020745_))))
                         (_g2068920742_ _g2069020745_))))
                 (_g2068920742_ _g2069020745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2068920742_
                                                  _g2069020745_))))
                                         (_g2068920742_ _g2069020745_))))
                                 (_g2068920742_ _g2069020745_)))))
                     (_g2068820918_ _L20672_))))
                (___kont2958329584_
                 (lambda (_L20618_ _L20619_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L20619_ (cons (gxc#compile-e _L20618_) '())))
                    _stx20521_))))
            (let* ((___match2966829669_
                    (lambda (_e2056220640_
                             _hd2056320643_
                             _tl2056420645_
                             _e2056520648_
                             _hd2056620651_
                             _tl2056720653_
                             _e2056820656_
                             _hd2056920659_
                             _tl2057020661_
                             _e2057120664_
                             _hd2057220667_
                             _tl2057320669_)
                      (let ((_L20672_ _hd2057220667_)
                            (_L20673_ _hd2056920659_))
                        (if (if (gx#identifier? _L20673_)
                                (gxc#kw-lambda-expr? _L20672_)
                                '#f)
                            (___kont2958129582_ _L20672_ _L20673_)
                            (___kont2958329584_
                             _hd2057220667_
                             _hd2056620651_)))))
                   (___match2964029641_
                    (lambda (_e2054820926_
                             _hd2054920929_
                             _tl2055020931_
                             _e2055120934_
                             _hd2055220937_
                             _tl2055320939_
                             _e2055420942_
                             _hd2055520945_
                             _tl2055620947_
                             _e2055720950_
                             _hd2055820953_
                             _tl2055920955_)
                      (let ((_L20958_ _hd2055820953_)
                            (_L20959_ _hd2055520945_))
                        (if (if (gx#identifier? _L20959_)
                                (gxc#opt-lambda-expr? _L20958_)
                                '#f)
                            (___kont2957929580_ _L20958_ _L20959_)
                            (___match2966829669_
                             _e2054820926_
                             _hd2054920929_
                             _tl2055020931_
                             _e2055120934_
                             _hd2055220937_
                             _tl2055320939_
                             _e2055420942_
                             _hd2055520945_
                             _tl2055620947_
                             _e2055720950_
                             _hd2055820953_
                             _tl2055920955_)))))
                   (___match2961229613_
                    (lambda (_e2053421108_
                             _hd2053521111_
                             _tl2053621113_
                             _e2053721116_
                             _hd2053821119_
                             _tl2053921121_
                             _e2054021124_
                             _hd2054121127_
                             _tl2054221129_
                             _e2054321132_
                             _hd2054421135_
                             _tl2054521137_)
                      (let ((_L21140_ _hd2054421135_)
                            (_L21141_ _hd2054121127_))
                        (if (if (gx#identifier? _L21141_)
                                (gxc#case-lambda-expr? _L21140_)
                                '#f)
                            (___kont2957729578_ _L21140_ _L21141_)
                            (___match2964029641_
                             _e2053421108_
                             _hd2053521111_
                             _tl2053621113_
                             _e2053721116_
                             _hd2053821119_
                             _tl2053921121_
                             _e2054021124_
                             _hd2054121127_
                             _tl2054221129_
                             _e2054321132_
                             _hd2054421135_
                             _tl2054521137_))))))
              (if (gx#stx-pair? ___stx2957529576_)
                  (let ((_e2053421108_ (gx#stx-e ___stx2957529576_)))
                    (let ((_tl2053621113_ (##cdr _e2053421108_))
                          (_hd2053521111_ (##car _e2053421108_)))
                      (if (gx#stx-pair? _tl2053621113_)
                          (let ((_e2053721116_ (gx#stx-e _tl2053621113_)))
                            (let ((_tl2053921121_ (##cdr _e2053721116_))
                                  (_hd2053821119_ (##car _e2053721116_)))
                              (if (gx#stx-pair? _hd2053821119_)
                                  (let ((_e2054021124_
                                         (gx#stx-e _hd2053821119_)))
                                    (let ((_tl2054221129_
                                           (##cdr _e2054021124_))
                                          (_hd2054121127_
                                           (##car _e2054021124_)))
                                      (if (gx#stx-null? _tl2054221129_)
                                          (if (gx#stx-pair? _tl2053921121_)
                                              (let ((_e2054321132_
                                                     (gx#stx-e
                                                      _tl2053921121_)))
                                                (let ((_tl2054521137_
                                                       (##cdr _e2054321132_))
                                                      (_hd2054421135_
                                                       (##car _e2054321132_)))
                                                  (if (gx#stx-null?
                                                       _tl2054521137_)
                                                      (___match2961229613_
                                                       _e2053421108_
                                                       _hd2053521111_
                                                       _tl2053621113_
                                                       _e2053721116_
                                                       _hd2053821119_
                                                       _tl2053921121_
                                                       _e2054021124_
                                                       _hd2054121127_
                                                       _tl2054221129_
                                                       _e2054321132_
                                                       _hd2054421135_
                                                       _tl2054521137_)
                                                      (_g2053020589_))))
                                              (_g2053020589_))
                                          (if (gx#stx-pair? _tl2053921121_)
                                              (let ((_e2058220610_
                                                     (gx#stx-e
                                                      _tl2053921121_)))
                                                (let ((_tl2058420615_
                                                       (##cdr _e2058220610_))
                                                      (_hd2058320613_
                                                       (##car _e2058220610_)))
                                                  (if (gx#stx-null?
                                                       _tl2058420615_)
                                                      (___kont2958329584_
                                                       _hd2058320613_
                                                       _hd2053821119_)
                                                      (_g2053020589_))))
                                              (_g2053020589_)))))
                                  (if (gx#stx-pair? _tl2053921121_)
                                      (let ((_e2058220610_
                                             (gx#stx-e _tl2053921121_)))
                                        (let ((_tl2058420615_
                                               (##cdr _e2058220610_))
                                              (_hd2058320613_
                                               (##car _e2058220610_)))
                                          (if (gx#stx-null? _tl2058420615_)
                                              (___kont2958329584_
                                               _hd2058320613_
                                               _hd2053821119_)
                                              (_g2053020589_))))
                                      (_g2053020589_)))))
                          (_g2053020589_))))
                  (_g2053020589_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19453_)
      (letrec* ((_bind-e__2744727448_
                 (lambda (_id20505_ _expr20506_ _compile?20507_)
                   (cons (cons _id20505_ '())
                         (cons (if _compile?20507_
                                   (gxc#compile-e _expr20506_)
                                   _expr20506_)
                               '()))))
                (_bind-e__0__2744927450_
                 (lambda (_id20512_ _expr20513_)
                   (let ((_compile?20515_ '#t))
                     (_bind-e__2744727448_
                      _id20512_
                      _expr20513_
                      _compile?20515_))))
                (_bind-e19455_
                 (lambda _g30077_
                   (let ((_g30076_ (length _g30077_)))
                     (cond ((##fx= _g30076_ 2)
                            (apply _bind-e__0__2744927450_ _g30077_))
                           ((##fx= _g30076_ 3)
                            (apply _bind-e__2744727448_ _g30077_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g30077_))))))
                (_compile-bindings19456_
                 (lambda (_bindings20089_)
                   (let _lp20091_ ((_rest20093_ _bindings20089_)
                                   (_lift120094_ '())
                                   (_lift220095_ '())
                                   (_bind20096_ '()))
                     (let* ((_rest2009720105_ _rest20093_)
                            (_else2009920113_
                             (lambda ()
                               (values (reverse _lift120094_)
                                       (reverse _lift220095_)
                                       (reverse _bind20096_))))
                            (_K2010120492_
                             (lambda (_rest20116_ _hd20117_)
                               (let* ((___stx2971129712_ _hd20117_)
                                      (_g2012120157_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2971129712_))))
                                 (let ((___kont2971329714_
                                        (lambda (_L20399_ _L20400_)
                                          (let* ((___stx2969129692_ _L20399_)
                                                 (_g2041520429_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2969129692_))))
                                            (let ((___kont2969329694_
                                                   (lambda (_L20477_)
                                                     (_lp20091_
                                                      _rest20116_
                                                      _lift120094_
                                                      _lift220095_
                                                      (cons (_bind-e__2744727448_
                                                             _L20400_
                                                             _L20399_
                                                             '#f)
                                                            _bind20096_))))
                                                  (___kont2969529696_
                                                   (lambda (_L20442_)
                                                     (let ((_g30078_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx19453_
                                                             _L20400_
                                                             _L20442_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g30079_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30078_)
                            (##vector-length _g30078_)
                            1)))
                   (if (not (##fx= _g30079_ 3))
                       (error "Context expects 3 values" _g30079_)))
                 (let ((_ids20452_ (##vector-ref _g30078_ 0))
                       (_impls20453_ (##vector-ref _g30078_ 1))
                       (_clauses20454_ (##vector-ref _g30078_ 2)))
                   (let* ((_g30080_
                           (for-each gx#core-bind-runtime! _ids20452_))
                          (_xbind20457_
                           (map _bind-e19455_ _ids20452_ _impls20453_))
                          (_expr*20459_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses20454_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*20461_
                           (_bind-e__2744727448_ _L20400_ _expr*20459_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L20400_)
                        '" => "
                        (map gxc#identifier-symbol _ids20452_))
                       (_lp20091_
                        _rest20116_
                        _lift120094_
                        (foldl1 cons _lift220095_ _xbind20457_)
                        (cons _bind*20461_ _bind20096_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2970229703_
                                                     (lambda (_e2041820469_
                                                              _hd2041920472_
                                                              _tl2042020474_)
                                                       (let ((_L20477_
                                                              _tl2042020474_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L20477_)
                     (___kont2969329694_ _L20477_)
                     (___kont2969529696_ _tl2042020474_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2969129692_)
                                                    (let ((_e2041820469_
                                                           (gx#stx-e
                                                            ___stx2969129692_)))
                                                      (let ((_tl2042020474_
                                                             (##cdr _e2041820469_))
                                                            (_hd2041920472_
                                                             (##car _e2041820469_)))
                                                        (___match2970229703_
                                                         _e2041820469_
                                                         _hd2041920472_
                                                         _tl2042020474_)))
                                                    (_g2041520429_)))))))
                                       (___kont2971529716_
                                        (lambda (_L20227_ _L20228_)
                                          (let* ((_g2024220272_
                                                  (lambda (_g2024320269_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2024320269_)))
                                                 (_g2024120367_
                                                  (lambda (_g2024320275_)
                                                    (if (gx#stx-pair?
                                                         _g2024320275_)
                                                        (let ((_e2024720277_
                                                               (gx#stx-e
                                                                _g2024320275_)))
                                                          (let ((_hd2024820280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2024720277_))
                        (_tl2024920282_ (##cdr _e2024720277_)))
                    (if (gx#stx-pair? _tl2024920282_)
                        (let ((_e2025020285_ (gx#stx-e _tl2024920282_)))
                          (let ((_hd2025120288_ (##car _e2025020285_))
                                (_tl2025220290_ (##cdr _e2025020285_)))
                            (if (gx#stx-pair? _hd2025120288_)
                                (let ((_e2025320293_
                                       (gx#stx-e _hd2025120288_)))
                                  (let ((_hd2025420296_ (##car _e2025320293_))
                                        (_tl2025520298_ (##cdr _e2025320293_)))
                                    (if (gx#stx-pair? _hd2025420296_)
                                        (let ((_e2025620301_
                                               (gx#stx-e _hd2025420296_)))
                                          (let ((_hd2025720304_
                                                 (##car _e2025620301_))
                                                (_tl2025820306_
                                                 (##cdr _e2025620301_)))
                                            (if (gx#stx-pair? _hd2025720304_)
                                                (let ((_e2025920309_
                                                       (gx#stx-e
                                                        _hd2025720304_)))
                                                  (let ((_hd2026020312_
                                                         (##car _e2025920309_))
                                                        (_tl2026120314_
                                                         (##cdr _e2025920309_)))
                                                    (if (gx#stx-null?
                                                         _tl2026120314_)
                                                        (if (gx#stx-pair?
                                                             _tl2025820306_)
                                                            (let ((_e2026220317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2025820306_)))
                      (let ((_hd2026320320_ (##car _e2026220317_))
                            (_tl2026420322_ (##cdr _e2026220317_)))
                        (if (gx#stx-null? _tl2026420322_)
                            (if (gx#stx-null? _tl2025520298_)
                                (if (gx#stx-pair? _tl2025220290_)
                                    (let ((_e2026520325_
                                           (gx#stx-e _tl2025220290_)))
                                      (let ((_hd2026620328_
                                             (##car _e2026520325_))
                                            (_tl2026720330_
                                             (##cdr _e2026520325_)))
                                        (if (gx#stx-null? _tl2026720330_)
                                            ((lambda (_L20333_
                                                      _L20334_
                                                      _L20335_)
                                               (let* ((_lambda-id20359_
                                                       (make-symbol
                                                        (gx#stx-e _L20228_)
                                                        (gensym '__)))
                                                      (_lambda-id20361_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id20359_
                                                        (gx#stx-source
                                                         _stx19453_)))
                                                      (_g30081_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id20361_))
                                                      (_new-case-lambda-expr20364_
                                                       (gxc#apply-expression-subst
                                                        _L20333_
                                                        _L20335_
                                                        _lambda-id20361_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L20228_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id20361_))
                                                   (_lp20091_
                                                    (cons (_bind-e__2744727448_
                                                           _L20228_
                                                           _new-case-lambda-expr20364_
                                                           '#f)
                                                          _rest20116_)
                                                    (cons (_bind-e__0__2744927450_
                                                           _lambda-id20361_
                                                           _L20334_)
                                                          _lift120094_)
                                                    _lift220095_
                                                    _bind20096_))))
                                             _hd2026620328_
                                             _hd2026320320_
                                             _hd2026020312_)
                                            (_g2024220272_ _g2024320275_))))
                                    (_g2024220272_ _g2024320275_))
                                (_g2024220272_ _g2024320275_))
                            (_g2024220272_ _g2024320275_))))
                    (_g2024220272_ _g2024320275_))
                (_g2024220272_ _g2024320275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2024220272_
                                                 _g2024320275_))))
                                        (_g2024220272_ _g2024320275_))))
                                (_g2024220272_ _g2024320275_))))
                        (_g2024220272_ _g2024320275_))))
                (_g2024220272_ _g2024320275_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2024120367_ _L20227_))))
                                       (___kont2971729718_
                                        (lambda (_L20178_ _L20179_)
                                          (_lp20091_
                                           _rest20116_
                                           _lift120094_
                                           _lift220095_
                                           (cons (cons _L20179_
                                                       (cons (gxc#compile-e
                                                              _L20178_)
                                                             '()))
                                                 _bind20096_)))))
                                   (let* ((___match2976229763_
                                           (lambda (_e2013620203_
                                                    _hd2013720206_
                                                    _tl2013820208_
                                                    _e2013920211_
                                                    _hd2014020214_
                                                    _tl2014120216_
                                                    _e2014220219_
                                                    _hd2014320222_
                                                    _tl2014420224_)
                                             (let ((_L20227_ _hd2014320222_)
                                                   (_L20228_ _hd2014020214_))
                                               (if (if (gx#identifier?
                                                        _L20228_)
                                                       (gxc#opt-lambda-expr?
                                                        _L20227_)
                                                       '#f)
                                                   (___kont2971529716_
                                                    _L20227_
                                                    _L20228_)
                                                   (___kont2971729718_
                                                    _hd2014320222_
                                                    _hd2013720206_)))))
                                          (___match2974029741_
                                           (lambda (_e2012520375_
                                                    _hd2012620378_
                                                    _tl2012720380_
                                                    _e2012820383_
                                                    _hd2012920386_
                                                    _tl2013020388_
                                                    _e2013120391_
                                                    _hd2013220394_
                                                    _tl2013320396_)
                                             (let ((_L20399_ _hd2013220394_)
                                                   (_L20400_ _hd2012920386_))
                                               (if (if (gx#identifier?
                                                        _L20400_)
                                                       (gxc#case-lambda-expr?
                                                        _L20399_)
                                                       '#f)
                                                   (___kont2971329714_
                                                    _L20399_
                                                    _L20400_)
                                                   (___match2976229763_
                                                    _e2012520375_
                                                    _hd2012620378_
                                                    _tl2012720380_
                                                    _e2012820383_
                                                    _hd2012920386_
                                                    _tl2013020388_
                                                    _e2013120391_
                                                    _hd2013220394_
                                                    _tl2013320396_))))))
                                     (if (gx#stx-pair? ___stx2971129712_)
                                         (let ((_e2012520375_
                                                (gx#stx-e ___stx2971129712_)))
                                           (let ((_tl2012720380_
                                                  (##cdr _e2012520375_))
                                                 (_hd2012620378_
                                                  (##car _e2012520375_)))
                                             (if (gx#stx-pair? _hd2012620378_)
                                                 (let ((_e2012820383_
                                                        (gx#stx-e
                                                         _hd2012620378_)))
                                                   (let ((_tl2013020388_
                                                          (##cdr _e2012820383_))
                                                         (_hd2012920386_
                                                          (##car _e2012820383_)))
                                                     (if (gx#stx-null?
                                                          _tl2013020388_)
                                                         (if (gx#stx-pair?
                                                              _tl2012720380_)
                                                             (let ((_e2013120391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl2012720380_)))
                       (let ((_tl2013320396_ (##cdr _e2013120391_))
                             (_hd2013220394_ (##car _e2013120391_)))
                         (if (gx#stx-null? _tl2013320396_)
                             (___match2974029741_
                              _e2012520375_
                              _hd2012620378_
                              _tl2012720380_
                              _e2012820383_
                              _hd2012920386_
                              _tl2013020388_
                              _e2013120391_
                              _hd2013220394_
                              _tl2013320396_)
                             (_g2012120157_))))
                     (_g2012120157_))
                 (if (gx#stx-pair? _tl2012720380_)
                     (let ((_e2015020170_ (gx#stx-e _tl2012720380_)))
                       (let ((_tl2015220175_ (##cdr _e2015020170_))
                             (_hd2015120173_ (##car _e2015020170_)))
                         (if (gx#stx-null? _tl2015220175_)
                             (___kont2971729718_ _hd2015120173_ _hd2012620378_)
                             (_g2012120157_))))
                     (_g2012120157_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl2012720380_)
                                                     (let ((_e2015020170_
                                                            (gx#stx-e
                                                             _tl2012720380_)))
                                                       (let ((_tl2015220175_
                                                              (##cdr _e2015020170_))
                                                             (_hd2015120173_
                                                              (##car _e2015020170_)))
                                                         (if (gx#stx-null?
                                                              _tl2015220175_)
                                                             (___kont2971729718_
                                                              _hd2015120173_
                                                              _hd2012620378_)
                                                             (_g2012120157_))))
                                                     (_g2012120157_)))))
                                         (_g2012120157_))))))))
                       (if (##pair? _rest2009720105_)
                           (let ((_hd2010220495_ (##car _rest2009720105_))
                                 (_tl2010320497_ (##cdr _rest2009720105_)))
                             (let* ((_hd20500_ _hd2010220495_)
                                    (_rest20502_ _tl2010320497_))
                               (_K2010120492_ _rest20502_ _hd20500_)))
                           (_else2009920113_))))))
                (_lift-kw-lambda?19457_
                 (lambda (_bind20013_)
                   (let* ((___stx2977929780_ _bind20013_)
                          (_g2001620033_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2977929780_))))
                     (let ((___kont2978129782_
                            (lambda (_L20069_ _L20070_)
                              (if (gx#identifier? _L20070_)
                                  (gxc#kw-lambda-expr? _L20069_)
                                  '#f)))
                           (___kont2978329784_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx2977929780_)
                           (let ((_e2002020045_ (gx#stx-e ___stx2977929780_)))
                             (let ((_tl2002220050_ (##cdr _e2002020045_))
                                   (_hd2002120048_ (##car _e2002020045_)))
                               (if (gx#stx-pair? _hd2002120048_)
                                   (let ((_e2002320053_
                                          (gx#stx-e _hd2002120048_)))
                                     (let ((_tl2002520058_
                                            (##cdr _e2002320053_))
                                           (_hd2002420056_
                                            (##car _e2002320053_)))
                                       (if (gx#stx-null? _tl2002520058_)
                                           (if (gx#stx-pair? _tl2002220050_)
                                               (let ((_e2002620061_
                                                      (gx#stx-e
                                                       _tl2002220050_)))
                                                 (let ((_tl2002820066_
                                                        (##cdr _e2002620061_))
                                                       (_hd2002720064_
                                                        (##car _e2002620061_)))
                                                   (if (gx#stx-null?
                                                        _tl2002820066_)
                                                       (___kont2978129782_
                                                        _hd2002720064_
                                                        _hd2002420056_)
                                                       (___kont2978329784_))))
                                               (___kont2978329784_))
                                           (___kont2978329784_))))
                                   (___kont2978329784_))))
                           (___kont2978329784_))))))
                (_lift-kw-lambda-bindings19458_
                 (lambda (_bindings19625_)
                   (let _lp19627_ ((_rest19629_ _bindings19625_)
                                   (_lift119630_ '())
                                   (_lift219631_ '())
                                   (_bind19632_ '()))
                     (let* ((_rest1963319641_ _rest19629_)
                            (_else1963519649_
                             (lambda ()
                               (values (reverse _lift119630_)
                                       (reverse _lift219631_)
                                       (reverse _bind19632_))))
                            (_K1963720001_
                             (lambda (_rest19652_ _hd19653_)
                               (let* ((___stx2980929810_ _hd19653_)
                                      (_g1965619681_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2980929810_))))
                                 (let ((___kont2981129812_
                                        (lambda (_L19751_ _L19752_)
                                          (let* ((_g1976619819_
                                                  (lambda (_g1976719816_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1976719816_)))
                                                 (_g1976519995_
                                                  (lambda (_g1976719822_)
                                                    (if (gx#stx-pair?
                                                         _g1976719822_)
                                                        (let ((_e1977319824_
                                                               (gx#stx-e
                                                                _g1976719822_)))
                                                          (let ((_hd1977419827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1977319824_))
                        (_tl1977519829_ (##cdr _e1977319824_)))
                    (if (gx#stx-pair? _tl1977519829_)
                        (let ((_e1977619832_ (gx#stx-e _tl1977519829_)))
                          (let ((_hd1977719835_ (##car _e1977619832_))
                                (_tl1977819837_ (##cdr _e1977619832_)))
                            (if (gx#stx-pair? _hd1977719835_)
                                (let ((_e1977919840_
                                       (gx#stx-e _hd1977719835_)))
                                  (let ((_hd1978019843_ (##car _e1977919840_))
                                        (_tl1978119845_ (##cdr _e1977919840_)))
                                    (if (gx#stx-pair? _hd1978019843_)
                                        (let ((_e1978219848_
                                               (gx#stx-e _hd1978019843_)))
                                          (let ((_hd1978319851_
                                                 (##car _e1978219848_))
                                                (_tl1978419853_
                                                 (##cdr _e1978219848_)))
                                            (if (gx#stx-pair? _hd1978319851_)
                                                (let ((_e1978519856_
                                                       (gx#stx-e
                                                        _hd1978319851_)))
                                                  (let ((_hd1978619859_
                                                         (##car _e1978519856_))
                                                        (_tl1978719861_
                                                         (##cdr _e1978519856_)))
                                                    (if (gx#stx-null?
                                                         _tl1978719861_)
                                                        (if (gx#stx-pair?
                                                             _tl1978419853_)
                                                            (let ((_e1978819864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1978419853_)))
                      (let ((_hd1978919867_ (##car _e1978819864_))
                            (_tl1979019869_ (##cdr _e1978819864_)))
                        (if (gx#stx-pair? _hd1978919867_)
                            (let ((_e1979119872_ (gx#stx-e _hd1978919867_)))
                              (let ((_hd1979219875_ (##car _e1979119872_))
                                    (_tl1979319877_ (##cdr _e1979119872_)))
                                (if (gx#stx-pair? _tl1979319877_)
                                    (let ((_e1979419880_
                                           (gx#stx-e _tl1979319877_)))
                                      (let ((_hd1979519883_
                                             (##car _e1979419880_))
                                            (_tl1979619885_
                                             (##cdr _e1979419880_)))
                                        (if (gx#stx-pair? _hd1979519883_)
                                            (let ((_e1979719888_
                                                   (gx#stx-e _hd1979519883_)))
                                              (let ((_hd1979819891_
                                                     (##car _e1979719888_))
                                                    (_tl1979919893_
                                                     (##cdr _e1979719888_)))
                                                (if (gx#stx-pair?
                                                     _hd1979819891_)
                                                    (let ((_e1980019896_
                                                           (gx#stx-e
                                                            _hd1979819891_)))
                                                      (let ((_hd1980119899_
                                                             (##car _e1980019896_))
                                                            (_tl1980219901_
                                                             (##cdr _e1980019896_)))
                                                        (if (gx#stx-pair?
                                                             _hd1980119899_)
                                                            (let ((_e1980319904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1980119899_)))
                      (let ((_hd1980419907_ (##car _e1980319904_))
                            (_tl1980519909_ (##cdr _e1980319904_)))
                        (if (gx#stx-null? _tl1980519909_)
                            (if (gx#stx-pair? _tl1980219901_)
                                (let ((_e1980619912_
                                       (gx#stx-e _tl1980219901_)))
                                  (let ((_hd1980719915_ (##car _e1980619912_))
                                        (_tl1980819917_ (##cdr _e1980619912_)))
                                    (if (gx#stx-null? _tl1980819917_)
                                        (if (gx#stx-null? _tl1979919893_)
                                            (if (gx#stx-pair? _tl1979619885_)
                                                (let ((_e1980919920_
                                                       (gx#stx-e
                                                        _tl1979619885_)))
                                                  (let ((_hd1981019923_
                                                         (##car _e1980919920_))
                                                        (_tl1981119925_
                                                         (##cdr _e1980919920_)))
                                                    (if (gx#stx-null?
                                                         _tl1981119925_)
                                                        (if (gx#stx-null?
                                                             _tl1979019869_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1978119845_)
                        (if (gx#stx-pair? _tl1977819837_)
                            (let ((_e1981219928_ (gx#stx-e _tl1977819837_)))
                              (let ((_hd1981319931_ (##car _e1981219928_))
                                    (_tl1981419933_ (##cdr _e1981219928_)))
                                (if (gx#stx-null? _tl1981419933_)
                                    ((lambda (_L19936_
                                              _L19937_
                                              _L19938_
                                              _L19939_
                                              _L19940_)
                                       (let* ((_get-kws-id19980_
                                               (make-symbol
                                                (gx#stx-e _L19752_)
                                                (gensym '__)))
                                              (_get-kws-id19982_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id19980_
                                                (gx#stx-source _stx19453_)))
                                              (_main-id19984_
                                               (make-symbol
                                                (gx#stx-e _L19752_)
                                                (gensym '__)))
                                              (_main-id19986_
                                               (gx#core-quote-syntax__1
                                                _main-id19984_
                                                (gx#stx-source _stx19453_)))
                                              (_g30082_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id19982_))
                                              (_g30083_
                                               (gx#core-bind-runtime!__0
                                                _main-id19986_))
                                              (_new-kw-dispatch19990_
                                               (gxc#apply-expression-subst
                                                _L19936_
                                                _L19940_
                                                _get-kws-id19982_))
                                              (_new-get-kws19992_
                                               (gxc#apply-expression-subst
                                                _L19937_
                                                _L19939_
                                                _main-id19986_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L19752_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id19982_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id19986_))
                                           (_lp19627_
                                            _rest19652_
                                            (cons (_bind-e__2744727448_
                                                   _main-id19986_
                                                   _L19938_
                                                   '#f)
                                                  _lift119630_)
                                            (cons (_bind-e__2744727448_
                                                   _get-kws-id19982_
                                                   _new-get-kws19992_
                                                   '#f)
                                                  _lift219631_)
                                            (cons (_bind-e__2744727448_
                                                   _L19752_
                                                   _new-kw-dispatch19990_
                                                   '#f)
                                                  _bind19632_)))))
                                     _hd1981319931_
                                     _hd1981019923_
                                     _hd1980719915_
                                     _hd1980419907_
                                     _hd1978619859_)
                                    (_g1976619819_ _g1976719822_))))
                            (_g1976619819_ _g1976719822_))
                        (_g1976619819_ _g1976719822_))
                    (_g1976619819_ _g1976719822_))
                (_g1976619819_ _g1976719822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1976619819_ _g1976719822_))
                                            (_g1976619819_ _g1976719822_))
                                        (_g1976619819_ _g1976719822_))))
                                (_g1976619819_ _g1976719822_))
                            (_g1976619819_ _g1976719822_))))
                    (_g1976619819_ _g1976719822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1976619819_
                                                     _g1976719822_))))
                                            (_g1976619819_ _g1976719822_))))
                                    (_g1976619819_ _g1976719822_))))
                            (_g1976619819_ _g1976719822_))))
                    (_g1976619819_ _g1976719822_))
                (_g1976619819_ _g1976719822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1976619819_
                                                 _g1976719822_))))
                                        (_g1976619819_ _g1976719822_))))
                                (_g1976619819_ _g1976719822_))))
                        (_g1976619819_ _g1976719822_))))
                (_g1976619819_ _g1976719822_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1976519995_ _L19751_))))
                                       (___kont2981329814_
                                        (lambda (_L19702_ _L19703_)
                                          (_lp19627_
                                           _rest19652_
                                           _lift119630_
                                           _lift219631_
                                           (cons (cons _L19703_
                                                       (cons _L19702_ '()))
                                                 _bind19632_)))))
                                   (let ((___match2983629837_
                                          (lambda (_e1966019727_
                                                   _hd1966119730_
                                                   _tl1966219732_
                                                   _e1966319735_
                                                   _hd1966419738_
                                                   _tl1966519740_
                                                   _e1966619743_
                                                   _hd1966719746_
                                                   _tl1966819748_)
                                            (let ((_L19751_ _hd1966719746_)
                                                  (_L19752_ _hd1966419738_))
                                              (if (if (gx#identifier? _L19752_)
                                                      (gxc#kw-lambda-expr?
                                                       _L19751_)
                                                      '#f)
                                                  (___kont2981129812_
                                                   _L19751_
                                                   _L19752_)
                                                  (___kont2981329814_
                                                   _hd1966719746_
                                                   _hd1966119730_))))))
                                     (if (gx#stx-pair? ___stx2980929810_)
                                         (let ((_e1966019727_
                                                (gx#stx-e ___stx2980929810_)))
                                           (let ((_tl1966219732_
                                                  (##cdr _e1966019727_))
                                                 (_hd1966119730_
                                                  (##car _e1966019727_)))
                                             (if (gx#stx-pair? _hd1966119730_)
                                                 (let ((_e1966319735_
                                                        (gx#stx-e
                                                         _hd1966119730_)))
                                                   (let ((_tl1966519740_
                                                          (##cdr _e1966319735_))
                                                         (_hd1966419738_
                                                          (##car _e1966319735_)))
                                                     (if (gx#stx-null?
                                                          _tl1966519740_)
                                                         (if (gx#stx-pair?
                                                              _tl1966219732_)
                                                             (let ((_e1966619743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1966219732_)))
                       (let ((_tl1966819748_ (##cdr _e1966619743_))
                             (_hd1966719746_ (##car _e1966619743_)))
                         (if (gx#stx-null? _tl1966819748_)
                             (___match2983629837_
                              _e1966019727_
                              _hd1966119730_
                              _tl1966219732_
                              _e1966319735_
                              _hd1966419738_
                              _tl1966519740_
                              _e1966619743_
                              _hd1966719746_
                              _tl1966819748_)
                             (_g1965619681_))))
                     (_g1965619681_))
                 (if (gx#stx-pair? _tl1966219732_)
                     (let ((_e1967419694_ (gx#stx-e _tl1966219732_)))
                       (let ((_tl1967619699_ (##cdr _e1967419694_))
                             (_hd1967519697_ (##car _e1967419694_)))
                         (if (gx#stx-null? _tl1967619699_)
                             (___kont2981329814_ _hd1967519697_ _hd1966119730_)
                             (_g1965619681_))))
                     (_g1965619681_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1966219732_)
                                                     (let ((_e1967419694_
                                                            (gx#stx-e
                                                             _tl1966219732_)))
                                                       (let ((_tl1967619699_
                                                              (##cdr _e1967419694_))
                                                             (_hd1967519697_
                                                              (##car _e1967419694_)))
                                                         (if (gx#stx-null?
                                                              _tl1967619699_)
                                                             (___kont2981329814_
                                                              _hd1967519697_
                                                              _hd1966119730_)
                                                             (_g1965619681_))))
                                                     (_g1965619681_)))))
                                         (_g1965619681_))))))))
                       (if (##pair? _rest1963319641_)
                           (let ((_hd1963820004_ (##car _rest1963319641_))
                                 (_tl1963920006_ (##cdr _rest1963319641_)))
                             (let* ((_hd20009_ _hd1963820004_)
                                    (_rest20011_ _tl1963920006_))
                               (_K1963720001_ _rest20011_ _hd20009_)))
                           (_else1963519649_)))))))
        (let* ((___stx2985329854_ _stx19453_)
               (_g1946119487_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2985329854_))))
          (let ((___kont2985529856_
                 (lambda (_L19547_ _L19548_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?19457_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1957619579_
                                                     _g1957719581_)
                                              (cons _g1957619579_
                                                    _g1957719581_))
                                            '()
                                            _L19548_)))
                          (let ((_g30084_
                                 (_lift-kw-lambda-bindings19458_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1958319586_
                                                     _g1958419588_)
                                              (cons _g1958319586_
                                                    _g1958419588_))
                                            '()
                                            _L19548_)))))
                            (begin
                              (let ((_g30085_
                                     (if (##values? _g30084_)
                                         (##vector-length _g30084_)
                                         1)))
                                (if (not (##fx= _g30085_ 3))
                                    (error "Context expects 3 values"
                                           _g30085_)))
                              (let ((_lift119591_ (##vector-ref _g30084_ 0))
                                    (_lift219592_ (##vector-ref _g30084_ 1))
                                    (_hd19593_ (##vector-ref _g30084_ 2)))
                                (let* ((_expr19595_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd19593_
                                                     (cons _L19547_ '())))
                                         _stx19453_))
                                       (_expr19597_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift219592_
                                                     (cons _expr19595_ '())))
                                         _stx19453_))
                                       (_expr19599_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift119591_
                                                     (cons _expr19597_ '())))
                                         _stx19453_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr19599_)))))
                          (let ((_g30086_
                                 (_compile-bindings19456_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1960119604_
                                                     _g1960219606_)
                                              (cons _g1960119604_
                                                    _g1960219606_))
                                            '()
                                            _L19548_)))))
                            (begin
                              (let ((_g30087_
                                     (if (##values? _g30086_)
                                         (##vector-length _g30086_)
                                         1)))
                                (if (not (##fx= _g30087_ 3))
                                    (error "Context expects 3 values"
                                           _g30087_)))
                              (let ((_lift119609_ (##vector-ref _g30086_ 0))
                                    (_lift219610_ (##vector-ref _g30086_ 1))
                                    (_hd19611_ (##vector-ref _g30086_ 2)))
                                (let* ((_body19613_ (gxc#compile-e _L19547_))
                                       (_expr19615_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd19611_
                                                     (cons _body19613_ '())))
                                         _stx19453_))
                                       (_expr19617_
                                        (if (null? _lift219610_)
                                            _expr19615_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift219610_
                                                         (cons _expr19615_
                                                               '())))
                                             _stx19453_)))
                                       (_expr19619_
                                        (if (null? _lift119609_)
                                            _expr19617_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift119609_
                                                         (cons _expr19617_
                                                               '())))
                                             _stx19453_))))
                                  _expr19619_))))))
                    gx#current-expander-context
                    (let ((__obj30060 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj30060)
                        __obj30060)))))
                (___kont2985929860_
                 (lambda () (gxc#xform-let-values% _stx19453_))))
            (let ((___match2988029881_
                   (lambda (_e1946519499_
                            _hd1946619502_
                            _tl1946719504_
                            _e1946819507_
                            _hd1946919510_
                            _tl1947019512_
                            ___splice2985729858_
                            _target1947119515_
                            _tl1947319517_)
                     (letrec ((_loop1947419520_
                               (lambda (_hd1947219523_ _bind1947819525_)
                                 (if (gx#stx-pair? _hd1947219523_)
                                     (let ((_e1947519528_
                                            (gx#stx-e _hd1947219523_)))
                                       (let ((_lp-tl1947719533_
                                              (##cdr _e1947519528_))
                                             (_lp-hd1947619531_
                                              (##car _e1947519528_)))
                                         (_loop1947419520_
                                          _lp-tl1947719533_
                                          (cons _lp-hd1947619531_
                                                _bind1947819525_))))
                                     (let ((_bind1947919536_
                                            (reverse _bind1947819525_)))
                                       (if (gx#stx-pair? _tl1947019512_)
                                           (let ((_e1948019539_
                                                  (gx#stx-e _tl1947019512_)))
                                             (let ((_tl1948219544_
                                                    (##cdr _e1948019539_))
                                                   (_hd1948119542_
                                                    (##car _e1948019539_)))
                                               (if (gx#stx-null?
                                                    _tl1948219544_)
                                                   (let ((_L19547_
                                                          _hd1948119542_)
                                                         (_L19548_
                                                          _bind1947919536_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1956819571_ _g1956919573_)
                                     (cons _g1956819571_ _g1956919573_))
                                   '()
                                   _L19548_)))
                 (___kont2985529856_ _L19547_ _L19548_)
                 (___kont2985929860_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2985929860_))))
                                           (___kont2985929860_)))))))
                       (_loop1947419520_ _target1947119515_ '())))))
              (if (gx#stx-pair? ___stx2985329854_)
                  (let ((_e1946519499_ (gx#stx-e ___stx2985329854_)))
                    (let ((_tl1946719504_ (##cdr _e1946519499_))
                          (_hd1946619502_ (##car _e1946519499_)))
                      (if (gx#stx-pair? _tl1946719504_)
                          (let ((_e1946819507_ (gx#stx-e _tl1946719504_)))
                            (let ((_tl1947019512_ (##cdr _e1946819507_))
                                  (_hd1946919510_ (##car _e1946819507_)))
                              (if (gx#stx-pair/null? _hd1946919510_)
                                  (let ((___splice2985729858_
                                         (gx#syntax-split-splice
                                          _hd1946919510_
                                          '0)))
                                    (let ((_tl1947319517_
                                           (##vector-ref
                                            ___splice2985729858_
                                            '1))
                                          (_target1947119515_
                                           (##vector-ref
                                            ___splice2985729858_
                                            '0)))
                                      (if (gx#stx-null? _tl1947319517_)
                                          (___match2988029881_
                                           _e1946519499_
                                           _hd1946619502_
                                           _tl1946719504_
                                           _e1946819507_
                                           _hd1946919510_
                                           _tl1947019512_
                                           ___splice2985729858_
                                           _target1947119515_
                                           _tl1947319517_)
                                          (___kont2985929860_))))
                                  (___kont2985929860_))))
                          (___kont2985929860_))))
                  (___kont2985929860_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx18597_)
      (letrec* ((_bind-e__2745227453_
                 (lambda (_id19437_ _expr19438_ _compile?19439_)
                   (cons (cons _id19437_ '())
                         (cons (if _compile?19439_
                                   (gxc#compile-e _expr19438_)
                                   _expr19438_)
                               '()))))
                (_bind-e__0__2745427455_
                 (lambda (_id19444_ _expr19445_)
                   (let ((_compile?19447_ '#t))
                     (_bind-e__2745227453_
                      _id19444_
                      _expr19445_
                      _compile?19447_))))
                (_bind-e18599_
                 (lambda _g30089_
                   (let ((_g30088_ (length _g30089_)))
                     (cond ((##fx= _g30088_ 2)
                            (apply _bind-e__0__2745427455_ _g30089_))
                           ((##fx= _g30088_ 3)
                            (apply _bind-e__2745227453_ _g30089_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g30089_))))))
                (_compile-bindings18600_
                 (lambda (_rest18735_)
                   (let _lp18737_ ((_rest18739_ _rest18735_) (_bind18740_ '()))
                     (let* ((_rest1874118749_ _rest18739_)
                            (_else1874318757_
                             (lambda () (reverse _bind18740_)))
                            (_K1874519424_
                             (lambda (_rest18760_ _hd18761_)
                               (let* ((___stx2990329904_ _hd18761_)
                                      (_g1876618813_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2990329904_))))
                                 (let ((___kont2990529906_
                                        (lambda (_L19331_ _L19332_)
                                          (let* ((___stx2988329884_ _L19331_)
                                                 (_g1934719361_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2988329884_))))
                                            (let ((___kont2988529886_
                                                   (lambda (_L19409_)
                                                     (_lp18737_
                                                      _rest18760_
                                                      (cons (_bind-e__2745227453_
                                                             _L19332_
                                                             _L19331_
                                                             '#f)
                                                            _bind18740_))))
                                                  (___kont2988729888_
                                                   (lambda (_L19374_)
                                                     (let ((_g30090_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx18597_
                                                             _L19332_
                                                             _L19374_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g30091_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30090_)
                            (##vector-length _g30090_)
                            1)))
                   (if (not (##fx= _g30091_ 3))
                       (error "Context expects 3 values" _g30091_)))
                 (let ((_ids19384_ (##vector-ref _g30090_ 0))
                       (_impls19385_ (##vector-ref _g30090_ 1))
                       (_clauses19386_ (##vector-ref _g30090_ 2)))
                   (let* ((_g30092_
                           (for-each gx#core-bind-runtime! _ids19384_))
                          (_xbind19389_
                           (map _bind-e18599_ _ids19384_ _impls19385_))
                          (_expr*19391_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses19386_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*19393_
                           (_bind-e__2745227453_ _L19332_ _expr*19391_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L19332_)
                        '" => "
                        (map gxc#identifier-symbol _ids19384_))
                       (_lp18737_
                        _rest18760_
                        (cons _bind*19393_
                              (foldl1 cons _bind18740_ _xbind19389_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2989429895_
                                                     (lambda (_e1935019401_
                                                              _hd1935119404_
                                                              _tl1935219406_)
                                                       (let ((_L19409_
                                                              _tl1935219406_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19409_)
                     (___kont2988529886_ _L19409_)
                     (___kont2988729888_ _tl1935219406_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2988329884_)
                                                    (let ((_e1935019401_
                                                           (gx#stx-e
                                                            ___stx2988329884_)))
                                                      (let ((_tl1935219406_
                                                             (##cdr _e1935019401_))
                                                            (_hd1935119404_
                                                             (##car _e1935019401_)))
                                                        (___match2989429895_
                                                         _e1935019401_
                                                         _hd1935119404_
                                                         _tl1935219406_)))
                                                    (_g1934719361_)))))))
                                       (___kont2990729908_
                                        (lambda (_L19159_ _L19160_)
                                          (let* ((_g1917419204_
                                                  (lambda (_g1917519201_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1917519201_)))
                                                 (_g1917319299_
                                                  (lambda (_g1917519207_)
                                                    (if (gx#stx-pair?
                                                         _g1917519207_)
                                                        (let ((_e1917919209_
                                                               (gx#stx-e
                                                                _g1917519207_)))
                                                          (let ((_hd1918019212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1917919209_))
                        (_tl1918119214_ (##cdr _e1917919209_)))
                    (if (gx#stx-pair? _tl1918119214_)
                        (let ((_e1918219217_ (gx#stx-e _tl1918119214_)))
                          (let ((_hd1918319220_ (##car _e1918219217_))
                                (_tl1918419222_ (##cdr _e1918219217_)))
                            (if (gx#stx-pair? _hd1918319220_)
                                (let ((_e1918519225_
                                       (gx#stx-e _hd1918319220_)))
                                  (let ((_hd1918619228_ (##car _e1918519225_))
                                        (_tl1918719230_ (##cdr _e1918519225_)))
                                    (if (gx#stx-pair? _hd1918619228_)
                                        (let ((_e1918819233_
                                               (gx#stx-e _hd1918619228_)))
                                          (let ((_hd1918919236_
                                                 (##car _e1918819233_))
                                                (_tl1919019238_
                                                 (##cdr _e1918819233_)))
                                            (if (gx#stx-pair? _hd1918919236_)
                                                (let ((_e1919119241_
                                                       (gx#stx-e
                                                        _hd1918919236_)))
                                                  (let ((_hd1919219244_
                                                         (##car _e1919119241_))
                                                        (_tl1919319246_
                                                         (##cdr _e1919119241_)))
                                                    (if (gx#stx-null?
                                                         _tl1919319246_)
                                                        (if (gx#stx-pair?
                                                             _tl1919019238_)
                                                            (let ((_e1919419249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1919019238_)))
                      (let ((_hd1919519252_ (##car _e1919419249_))
                            (_tl1919619254_ (##cdr _e1919419249_)))
                        (if (gx#stx-null? _tl1919619254_)
                            (if (gx#stx-null? _tl1918719230_)
                                (if (gx#stx-pair? _tl1918419222_)
                                    (let ((_e1919719257_
                                           (gx#stx-e _tl1918419222_)))
                                      (let ((_hd1919819260_
                                             (##car _e1919719257_))
                                            (_tl1919919262_
                                             (##cdr _e1919719257_)))
                                        (if (gx#stx-null? _tl1919919262_)
                                            ((lambda (_L19265_
                                                      _L19266_
                                                      _L19267_)
                                               (let* ((_lambda-id19291_
                                                       (make-symbol
                                                        (gx#stx-e _L19160_)
                                                        (gensym '__)))
                                                      (_lambda-id19293_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id19291_
                                                        (gx#stx-source
                                                         _stx18597_)))
                                                      (_g30093_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id19293_))
                                                      (_new-case-lambda-expr19296_
                                                       (gxc#apply-expression-subst
                                                        _L19265_
                                                        _L19267_
                                                        _lambda-id19293_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L19160_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id19293_))
                                                   (_lp18737_
                                                    (cons (_bind-e__2745227453_
                                                           _L19160_
                                                           _new-case-lambda-expr19296_
                                                           '#f)
                                                          _rest18760_)
                                                    (cons (_bind-e__0__2745427455_
                                                           _lambda-id19293_
                                                           _L19266_)
                                                          _bind18740_)))))
                                             _hd1919819260_
                                             _hd1919519252_
                                             _hd1919219244_)
                                            (_g1917419204_ _g1917519207_))))
                                    (_g1917419204_ _g1917519207_))
                                (_g1917419204_ _g1917519207_))
                            (_g1917419204_ _g1917519207_))))
                    (_g1917419204_ _g1917519207_))
                (_g1917419204_ _g1917519207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1917419204_
                                                 _g1917519207_))))
                                        (_g1917419204_ _g1917519207_))))
                                (_g1917419204_ _g1917519207_))))
                        (_g1917419204_ _g1917519207_))))
                (_g1917419204_ _g1917519207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1917319299_ _L19159_))))
                                       (___kont2990929910_
                                        (lambda (_L18883_ _L18884_)
                                          (let* ((_g1889818951_
                                                  (lambda (_g1889918948_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1889918948_)))
                                                 (_g1889719127_
                                                  (lambda (_g1889918954_)
                                                    (if (gx#stx-pair?
                                                         _g1889918954_)
                                                        (let ((_e1890518956_
                                                               (gx#stx-e
                                                                _g1889918954_)))
                                                          (let ((_hd1890618959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1890518956_))
                        (_tl1890718961_ (##cdr _e1890518956_)))
                    (if (gx#stx-pair? _tl1890718961_)
                        (let ((_e1890818964_ (gx#stx-e _tl1890718961_)))
                          (let ((_hd1890918967_ (##car _e1890818964_))
                                (_tl1891018969_ (##cdr _e1890818964_)))
                            (if (gx#stx-pair? _hd1890918967_)
                                (let ((_e1891118972_
                                       (gx#stx-e _hd1890918967_)))
                                  (let ((_hd1891218975_ (##car _e1891118972_))
                                        (_tl1891318977_ (##cdr _e1891118972_)))
                                    (if (gx#stx-pair? _hd1891218975_)
                                        (let ((_e1891418980_
                                               (gx#stx-e _hd1891218975_)))
                                          (let ((_hd1891518983_
                                                 (##car _e1891418980_))
                                                (_tl1891618985_
                                                 (##cdr _e1891418980_)))
                                            (if (gx#stx-pair? _hd1891518983_)
                                                (let ((_e1891718988_
                                                       (gx#stx-e
                                                        _hd1891518983_)))
                                                  (let ((_hd1891818991_
                                                         (##car _e1891718988_))
                                                        (_tl1891918993_
                                                         (##cdr _e1891718988_)))
                                                    (if (gx#stx-null?
                                                         _tl1891918993_)
                                                        (if (gx#stx-pair?
                                                             _tl1891618985_)
                                                            (let ((_e1892018996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1891618985_)))
                      (let ((_hd1892118999_ (##car _e1892018996_))
                            (_tl1892219001_ (##cdr _e1892018996_)))
                        (if (gx#stx-pair? _hd1892118999_)
                            (let ((_e1892319004_ (gx#stx-e _hd1892118999_)))
                              (let ((_hd1892419007_ (##car _e1892319004_))
                                    (_tl1892519009_ (##cdr _e1892319004_)))
                                (if (gx#stx-pair? _tl1892519009_)
                                    (let ((_e1892619012_
                                           (gx#stx-e _tl1892519009_)))
                                      (let ((_hd1892719015_
                                             (##car _e1892619012_))
                                            (_tl1892819017_
                                             (##cdr _e1892619012_)))
                                        (if (gx#stx-pair? _hd1892719015_)
                                            (let ((_e1892919020_
                                                   (gx#stx-e _hd1892719015_)))
                                              (let ((_hd1893019023_
                                                     (##car _e1892919020_))
                                                    (_tl1893119025_
                                                     (##cdr _e1892919020_)))
                                                (if (gx#stx-pair?
                                                     _hd1893019023_)
                                                    (let ((_e1893219028_
                                                           (gx#stx-e
                                                            _hd1893019023_)))
                                                      (let ((_hd1893319031_
                                                             (##car _e1893219028_))
                                                            (_tl1893419033_
                                                             (##cdr _e1893219028_)))
                                                        (if (gx#stx-pair?
                                                             _hd1893319031_)
                                                            (let ((_e1893519036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1893319031_)))
                      (let ((_hd1893619039_ (##car _e1893519036_))
                            (_tl1893719041_ (##cdr _e1893519036_)))
                        (if (gx#stx-null? _tl1893719041_)
                            (if (gx#stx-pair? _tl1893419033_)
                                (let ((_e1893819044_
                                       (gx#stx-e _tl1893419033_)))
                                  (let ((_hd1893919047_ (##car _e1893819044_))
                                        (_tl1894019049_ (##cdr _e1893819044_)))
                                    (if (gx#stx-null? _tl1894019049_)
                                        (if (gx#stx-null? _tl1893119025_)
                                            (if (gx#stx-pair? _tl1892819017_)
                                                (let ((_e1894119052_
                                                       (gx#stx-e
                                                        _tl1892819017_)))
                                                  (let ((_hd1894219055_
                                                         (##car _e1894119052_))
                                                        (_tl1894319057_
                                                         (##cdr _e1894119052_)))
                                                    (if (gx#stx-null?
                                                         _tl1894319057_)
                                                        (if (gx#stx-null?
                                                             _tl1892219001_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1891318977_)
                        (if (gx#stx-pair? _tl1891018969_)
                            (let ((_e1894419060_ (gx#stx-e _tl1891018969_)))
                              (let ((_hd1894519063_ (##car _e1894419060_))
                                    (_tl1894619065_ (##cdr _e1894419060_)))
                                (if (gx#stx-null? _tl1894619065_)
                                    ((lambda (_L19068_
                                              _L19069_
                                              _L19070_
                                              _L19071_
                                              _L19072_)
                                       (let* ((_get-kws-id19112_
                                               (make-symbol
                                                (gx#stx-e _L18884_)
                                                (gensym '__)))
                                              (_get-kws-id19114_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id19112_
                                                (gx#stx-source _stx18597_)))
                                              (_main-id19116_
                                               (make-symbol
                                                (gx#stx-e _L18884_)
                                                (gensym '__)))
                                              (_main-id19118_
                                               (gx#core-quote-syntax__1
                                                _main-id19116_
                                                (gx#stx-source _stx18597_)))
                                              (_g30094_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id19114_))
                                              (_g30095_
                                               (gx#core-bind-runtime!__0
                                                _main-id19118_))
                                              (_new-kw-dispatch19122_
                                               (gxc#apply-expression-subst
                                                _L19068_
                                                _L19072_
                                                _get-kws-id19114_))
                                              (_new-get-kws19124_
                                               (gxc#apply-expression-subst
                                                _L19069_
                                                _L19071_
                                                _main-id19118_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L18884_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id19114_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id19118_))
                                           (_lp18737_
                                            (cons (_bind-e__2745227453_
                                                   _main-id19118_
                                                   _L19070_
                                                   '#f)
                                                  (cons (_bind-e__2745227453_
                                                         _get-kws-id19114_
                                                         _new-get-kws19124_
                                                         '#f)
                                                        (cons (_bind-e__2745227453_
                                                               _L18884_
                                                               _new-kw-dispatch19122_
                                                               '#f)
                                                              _rest18760_)))
                                            _bind18740_))))
                                     _hd1894519063_
                                     _hd1894219055_
                                     _hd1893919047_
                                     _hd1893619039_
                                     _hd1891818991_)
                                    (_g1889818951_ _g1889918954_))))
                            (_g1889818951_ _g1889918954_))
                        (_g1889818951_ _g1889918954_))
                    (_g1889818951_ _g1889918954_))
                (_g1889818951_ _g1889918954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1889818951_ _g1889918954_))
                                            (_g1889818951_ _g1889918954_))
                                        (_g1889818951_ _g1889918954_))))
                                (_g1889818951_ _g1889918954_))
                            (_g1889818951_ _g1889918954_))))
                    (_g1889818951_ _g1889918954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1889818951_
                                                     _g1889918954_))))
                                            (_g1889818951_ _g1889918954_))))
                                    (_g1889818951_ _g1889918954_))))
                            (_g1889818951_ _g1889918954_))))
                    (_g1889818951_ _g1889918954_))
                (_g1889818951_ _g1889918954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1889818951_
                                                 _g1889918954_))))
                                        (_g1889818951_ _g1889918954_))))
                                (_g1889818951_ _g1889918954_))))
                        (_g1889818951_ _g1889918954_))))
                (_g1889818951_ _g1889918954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1889719127_ _L18883_))))
                                       (___kont2991129912_
                                        (lambda (_L18834_ _L18835_)
                                          (_lp18737_
                                           _rest18760_
                                           (cons (cons _L18835_
                                                       (cons (gxc#compile-e
                                                              _L18834_)
                                                             '()))
                                                 _bind18740_)))))
                                   (let* ((___match2997829979_
                                           (lambda (_e1879218859_
                                                    _hd1879318862_
                                                    _tl1879418864_
                                                    _e1879518867_
                                                    _hd1879618870_
                                                    _tl1879718872_
                                                    _e1879818875_
                                                    _hd1879918878_
                                                    _tl1880018880_)
                                             (let ((_L18883_ _hd1879918878_)
                                                   (_L18884_ _hd1879618870_))
                                               (if (if (gx#identifier?
                                                        _L18884_)
                                                       (gxc#kw-lambda-expr?
                                                        _L18883_)
                                                       '#f)
                                                   (___kont2990929910_
                                                    _L18883_
                                                    _L18884_)
                                                   (___kont2991129912_
                                                    _hd1879918878_
                                                    _hd1879318862_)))))
                                          (___match2995629957_
                                           (lambda (_e1878119135_
                                                    _hd1878219138_
                                                    _tl1878319140_
                                                    _e1878419143_
                                                    _hd1878519146_
                                                    _tl1878619148_
                                                    _e1878719151_
                                                    _hd1878819154_
                                                    _tl1878919156_)
                                             (let ((_L19159_ _hd1878819154_)
                                                   (_L19160_ _hd1878519146_))
                                               (if (if (gx#identifier?
                                                        _L19160_)
                                                       (gxc#opt-lambda-expr?
                                                        _L19159_)
                                                       '#f)
                                                   (___kont2990729908_
                                                    _L19159_
                                                    _L19160_)
                                                   (___match2997829979_
                                                    _e1878119135_
                                                    _hd1878219138_
                                                    _tl1878319140_
                                                    _e1878419143_
                                                    _hd1878519146_
                                                    _tl1878619148_
                                                    _e1878719151_
                                                    _hd1878819154_
                                                    _tl1878919156_)))))
                                          (___match2993429935_
                                           (lambda (_e1877019307_
                                                    _hd1877119310_
                                                    _tl1877219312_
                                                    _e1877319315_
                                                    _hd1877419318_
                                                    _tl1877519320_
                                                    _e1877619323_
                                                    _hd1877719326_
                                                    _tl1877819328_)
                                             (let ((_L19331_ _hd1877719326_)
                                                   (_L19332_ _hd1877419318_))
                                               (if (if (gx#identifier?
                                                        _L19332_)
                                                       (gxc#case-lambda-expr?
                                                        _L19331_)
                                                       '#f)
                                                   (___kont2990529906_
                                                    _L19331_
                                                    _L19332_)
                                                   (___match2995629957_
                                                    _e1877019307_
                                                    _hd1877119310_
                                                    _tl1877219312_
                                                    _e1877319315_
                                                    _hd1877419318_
                                                    _tl1877519320_
                                                    _e1877619323_
                                                    _hd1877719326_
                                                    _tl1877819328_))))))
                                     (if (gx#stx-pair? ___stx2990329904_)
                                         (let ((_e1877019307_
                                                (gx#stx-e ___stx2990329904_)))
                                           (let ((_tl1877219312_
                                                  (##cdr _e1877019307_))
                                                 (_hd1877119310_
                                                  (##car _e1877019307_)))
                                             (if (gx#stx-pair? _hd1877119310_)
                                                 (let ((_e1877319315_
                                                        (gx#stx-e
                                                         _hd1877119310_)))
                                                   (let ((_tl1877519320_
                                                          (##cdr _e1877319315_))
                                                         (_hd1877419318_
                                                          (##car _e1877319315_)))
                                                     (if (gx#stx-null?
                                                          _tl1877519320_)
                                                         (if (gx#stx-pair?
                                                              _tl1877219312_)
                                                             (let ((_e1877619323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1877219312_)))
                       (let ((_tl1877819328_ (##cdr _e1877619323_))
                             (_hd1877719326_ (##car _e1877619323_)))
                         (if (gx#stx-null? _tl1877819328_)
                             (___match2993429935_
                              _e1877019307_
                              _hd1877119310_
                              _tl1877219312_
                              _e1877319315_
                              _hd1877419318_
                              _tl1877519320_
                              _e1877619323_
                              _hd1877719326_
                              _tl1877819328_)
                             (_g1876618813_))))
                     (_g1876618813_))
                 (if (gx#stx-pair? _tl1877219312_)
                     (let ((_e1880618826_ (gx#stx-e _tl1877219312_)))
                       (let ((_tl1880818831_ (##cdr _e1880618826_))
                             (_hd1880718829_ (##car _e1880618826_)))
                         (if (gx#stx-null? _tl1880818831_)
                             (___kont2991129912_ _hd1880718829_ _hd1877119310_)
                             (_g1876618813_))))
                     (_g1876618813_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1877219312_)
                                                     (let ((_e1880618826_
                                                            (gx#stx-e
                                                             _tl1877219312_)))
                                                       (let ((_tl1880818831_
                                                              (##cdr _e1880618826_))
                                                             (_hd1880718829_
                                                              (##car _e1880618826_)))
                                                         (if (gx#stx-null?
                                                              _tl1880818831_)
                                                             (___kont2991129912_
                                                              _hd1880718829_
                                                              _hd1877119310_)
                                                             (_g1876618813_))))
                                                     (_g1876618813_)))))
                                         (_g1876618813_))))))))
                       (if (##pair? _rest1874118749_)
                           (let ((_hd1874619427_ (##car _rest1874118749_))
                                 (_tl1874719429_ (##cdr _rest1874118749_)))
                             (let* ((_hd19432_ _hd1874619427_)
                                    (_rest19434_ _tl1874719429_))
                               (_K1874519424_ _rest19434_ _hd19432_)))
                           (_else1874318757_)))))))
        (let* ((___stx2999529996_ _stx18597_)
               (_g1860318630_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2999529996_))))
          (let ((___kont2999729998_
                 (lambda (_L18690_ _L18691_ _L18692_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd18729_
                             (_compile-bindings18600_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1872118724_ _g1872218726_)
                                          (cons _g1872118724_ _g1872218726_))
                                        '()
                                        _L18691_))))
                            (_body18730_ (gxc#compile-e _L18690_)))
                        (gxc#xform-wrap-source
                         (cons _L18692_
                               (cons _hd18729_ (cons _body18730_ '())))
                         _stx18597_)))
                    gx#current-expander-context
                    (let ((__obj30061 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj30061)
                        __obj30061)))))
                (___kont3000130002_
                 (lambda () (gxc#xform-let-values% _stx18597_))))
            (let ((___match3002230023_
                   (lambda (_e1860818642_
                            _hd1860918645_
                            _tl1861018647_
                            _e1861118650_
                            _hd1861218653_
                            _tl1861318655_
                            ___splice2999930000_
                            _target1861418658_
                            _tl1861618660_)
                     (letrec ((_loop1861718663_
                               (lambda (_hd1861518666_ _bind1862118668_)
                                 (if (gx#stx-pair? _hd1861518666_)
                                     (let ((_e1861818671_
                                            (gx#stx-e _hd1861518666_)))
                                       (let ((_lp-tl1862018676_
                                              (##cdr _e1861818671_))
                                             (_lp-hd1861918674_
                                              (##car _e1861818671_)))
                                         (_loop1861718663_
                                          _lp-tl1862018676_
                                          (cons _lp-hd1861918674_
                                                _bind1862118668_))))
                                     (let ((_bind1862218679_
                                            (reverse _bind1862118668_)))
                                       (if (gx#stx-pair? _tl1861318655_)
                                           (let ((_e1862318682_
                                                  (gx#stx-e _tl1861318655_)))
                                             (let ((_tl1862518687_
                                                    (##cdr _e1862318682_))
                                                   (_hd1862418685_
                                                    (##car _e1862318682_)))
                                               (if (gx#stx-null?
                                                    _tl1862518687_)
                                                   (let ((_L18690_
                                                          _hd1862418685_)
                                                         (_L18691_
                                                          _bind1862218679_)
                                                         (_L18692_
                                                          _hd1860918645_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1871318716_ _g1871418718_)
                                     (cons _g1871318716_ _g1871418718_))
                                   '()
                                   _L18691_)))
                 (___kont2999729998_ _L18690_ _L18691_ _L18692_)
                 (___kont3000130002_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3000130002_))))
                                           (___kont3000130002_)))))))
                       (_loop1861718663_ _target1861418658_ '())))))
              (if (gx#stx-pair? ___stx2999529996_)
                  (let ((_e1860818642_ (gx#stx-e ___stx2999529996_)))
                    (let ((_tl1861018647_ (##cdr _e1860818642_))
                          (_hd1860918645_ (##car _e1860818642_)))
                      (if (gx#stx-pair? _tl1861018647_)
                          (let ((_e1861118650_ (gx#stx-e _tl1861018647_)))
                            (let ((_tl1861318655_ (##cdr _e1861118650_))
                                  (_hd1861218653_ (##car _e1861118650_)))
                              (if (gx#stx-pair/null? _hd1861218653_)
                                  (let ((___splice2999930000_
                                         (gx#syntax-split-splice
                                          _hd1861218653_
                                          '0)))
                                    (let ((_tl1861618660_
                                           (##vector-ref
                                            ___splice2999930000_
                                            '1))
                                          (_target1861418658_
                                           (##vector-ref
                                            ___splice2999930000_
                                            '0)))
                                      (if (gx#stx-null? _tl1861618660_)
                                          (___match3002230023_
                                           _e1860818642_
                                           _hd1860918645_
                                           _tl1861018647_
                                           _e1861118650_
                                           _hd1861218653_
                                           _tl1861318655_
                                           ___splice2999930000_
                                           _target1861418658_
                                           _tl1861618660_)
                                          (___kont3000130002_))))
                                  (___kont3000130002_))))
                          (___kont3000130002_))))
                  (___kont3000130002_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind18515_)
      (let* ((___stx3002530026_ _bind18515_)
             (_g1851818535_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx3002530026_))))
        (let ((___kont3002730028_
               (lambda (_L18571_ _L18572_)
                 (if (gx#identifier? _L18572_)
                     (let ((_$e18588_ (gxc#case-lambda-expr? _L18571_)))
                       (if _$e18588_
                           _$e18588_
                           (let ((_$e18591_ (gxc#opt-lambda-expr? _L18571_)))
                             (if _$e18591_
                                 _$e18591_
                                 (gxc#kw-lambda-expr? _L18571_)))))
                     '#f)))
              (___kont3002930030_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx3002530026_)
              (let ((_e1852218547_ (gx#stx-e ___stx3002530026_)))
                (let ((_tl1852418552_ (##cdr _e1852218547_))
                      (_hd1852318550_ (##car _e1852218547_)))
                  (if (gx#stx-pair? _hd1852318550_)
                      (let ((_e1852518555_ (gx#stx-e _hd1852318550_)))
                        (let ((_tl1852718560_ (##cdr _e1852518555_))
                              (_hd1852618558_ (##car _e1852518555_)))
                          (if (gx#stx-null? _tl1852718560_)
                              (if (gx#stx-pair? _tl1852418552_)
                                  (let ((_e1852818563_
                                         (gx#stx-e _tl1852418552_)))
                                    (let ((_tl1853018568_
                                           (##cdr _e1852818563_))
                                          (_hd1852918566_
                                           (##car _e1852818563_)))
                                      (if (gx#stx-null? _tl1853018568_)
                                          (___kont3002730028_
                                           _hd1852918566_
                                           _hd1852618558_)
                                          (___kont3002930030_))))
                                  (___kont3002930030_))
                              (___kont3002930030_))))
                      (___kont3002930030_))))
              (___kont3002930030_)))))))
