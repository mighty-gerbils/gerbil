(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (##make-promise
     (lambda ()
       (let ((_tbl27442_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl27442_ (force gxc#&void))
           (table-set! _tbl27442_ '%#begin gxc#collect-begin%)
           (table-set! _tbl27442_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl27442_ '%#module gxc#collect-module%)
           (table-set!
            _tbl27442_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl27442_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl27442_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl27442_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl27442_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl27442_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl27442_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl27442_ '%#call gxc#collect-type-call%)
           (table-set! _tbl27442_ '%#if gxc#collect-operands)
           (table-set! _tbl27442_ '%#set! gxc#collect-body-setq%)
           _tbl27442_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx27435_ . _args27437_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27435_ _args27437_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (##make-promise
     (lambda ()
       (let ((_tbl27432_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl27432_ (force gxc#&false))
           (table-set! _tbl27432_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl27432_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl27432_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl27432_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set!
            _tbl27432_
            '%#let-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl27432_
            '%#letrec-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl27432_
            '%#letrec*-values
            gxc#basic-expression-type-let-values%)
           (table-set! _tbl27432_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl27432_ '%#ref gxc#basic-expression-type-ref%)
           _tbl27432_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx27425_ . _args27427_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27425_ _args27427_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (##make-promise
     (lambda ()
       (let ((_tbl27422_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl27422_ (force gxc#&basic-xform))
           (table-set!
            _tbl27422_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl27422_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl27422_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl27422_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl27422_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx27415_ . _args27417_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27415_ _args27417_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx27271_)
      (let* ((___stx2745527456_ _stx27271_)
             (_g2727427305_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2745527456_))))
        (let ((___kont2745727458_
               (lambda (_L27387_ _L27388_)
                 (let ((_sym27404_ (gxc#identifier-symbol _L27388_)))
                   (begin
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym27404_
                          '#f)
                         (gxc#verbose
                          '"skipping type declaration for mutable binding "
                          _sym27404_)
                         (let ((_type2740527407_
                                (gxc#apply-basic-expression-type _L27387_)))
                           (if _type2740527407_
                               (let ((_type27410_ _type2740527407_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym27404_
                                  _type27410_))
                               '#f)))
                     (gxc#compile-e _L27387_)))))
              (___kont2745927460_
               (lambda (_L27334_ _L27335_) (gxc#compile-e _L27334_))))
          (let ((___match2748827489_
                 (lambda (_e2727827355_
                          _hd2727927358_
                          _tl2728027360_
                          _e2728127363_
                          _hd2728227366_
                          _tl2728327368_
                          _e2728427371_
                          _hd2728527374_
                          _tl2728627376_
                          _e2728727379_
                          _hd2728827382_
                          _tl2728927384_)
                   (let ((_L27387_ _hd2728827382_) (_L27388_ _hd2728527374_))
                     (if (gx#identifier? _L27388_)
                         (___kont2745727458_ _L27387_ _L27388_)
                         (___kont2745927460_
                          _hd2728827382_
                          _hd2728227366_))))))
            (if (gx#stx-pair? ___stx2745527456_)
                (let ((_e2727827355_ (gx#stx-e ___stx2745527456_)))
                  (let ((_tl2728027360_ (##cdr _e2727827355_))
                        (_hd2727927358_ (##car _e2727827355_)))
                    (if (gx#stx-pair? _tl2728027360_)
                        (let ((_e2728127363_ (gx#stx-e _tl2728027360_)))
                          (let ((_tl2728327368_ (##cdr _e2728127363_))
                                (_hd2728227366_ (##car _e2728127363_)))
                            (if (gx#stx-pair? _hd2728227366_)
                                (let ((_e2728427371_
                                       (gx#stx-e _hd2728227366_)))
                                  (let ((_tl2728627376_ (##cdr _e2728427371_))
                                        (_hd2728527374_ (##car _e2728427371_)))
                                    (if (gx#stx-null? _tl2728627376_)
                                        (if (gx#stx-pair? _tl2728327368_)
                                            (let ((_e2728727379_
                                                   (gx#stx-e _tl2728327368_)))
                                              (let ((_tl2728927384_
                                                     (##cdr _e2728727379_))
                                                    (_hd2728827382_
                                                     (##car _e2728727379_)))
                                                (if (gx#stx-null?
                                                     _tl2728927384_)
                                                    (___match2748827489_
                                                     _e2727827355_
                                                     _hd2727927358_
                                                     _tl2728027360_
                                                     _e2728127363_
                                                     _hd2728227366_
                                                     _tl2728327368_
                                                     _e2728427371_
                                                     _hd2728527374_
                                                     _tl2728627376_
                                                     _e2728727379_
                                                     _hd2728827382_
                                                     _tl2728927384_)
                                                    (_g2727427305_))))
                                            (_g2727427305_))
                                        (if (gx#stx-pair? _tl2728327368_)
                                            (let ((_e2729827326_
                                                   (gx#stx-e _tl2728327368_)))
                                              (let ((_tl2730027331_
                                                     (##cdr _e2729827326_))
                                                    (_hd2729927329_
                                                     (##car _e2729827326_)))
                                                (if (gx#stx-null?
                                                     _tl2730027331_)
                                                    (___kont2745927460_
                                                     _hd2729927329_
                                                     _hd2728227366_)
                                                    (_g2727427305_))))
                                            (_g2727427305_)))))
                                (if (gx#stx-pair? _tl2728327368_)
                                    (let ((_e2729827326_
                                           (gx#stx-e _tl2728327368_)))
                                      (let ((_tl2730027331_
                                             (##cdr _e2729827326_))
                                            (_hd2729927329_
                                             (##car _e2729827326_)))
                                        (if (gx#stx-null? _tl2730027331_)
                                            (___kont2745927460_
                                             _hd2729927329_
                                             _hd2728227366_)
                                            (_g2727427305_))))
                                    (_g2727427305_)))))
                        (_g2727427305_))))
                (_g2727427305_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx27056_)
      (letrec ((_collect-e27058_
                (lambda (_hd27215_ _expr27216_)
                  (let* ((___stx2751127512_ _hd27215_)
                         (_g2721927229_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2751127512_))))
                    (let ((___kont2751327514_
                           (lambda (_L27249_)
                             (let ((_sym27260_
                                    (gxc#identifier-symbol _L27249_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym27260_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym27260_)
                                   (let ((_type2726127263_
                                          (gxc#apply-basic-expression-type
                                           _expr27216_)))
                                     (if _type2726127263_
                                         (let ((_type27266_ _type2726127263_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym27260_
                                            _type27266_
                                            '#t))
                                         '#f))))))
                          (___kont2751527516_ (lambda () '#!void)))
                      (let ((___match2752427525_
                             (lambda (_e2722227241_
                                      _hd2722327244_
                                      _tl2722427246_)
                               (let ((_L27249_ _hd2722327244_))
                                 (if (gx#identifier? _L27249_)
                                     (___kont2751327514_ _L27249_)
                                     (___kont2751527516_))))))
                        (if (gx#stx-pair? ___stx2751127512_)
                            (let ((_e2722227241_ (gx#stx-e ___stx2751127512_)))
                              (let ((_tl2722427246_ (##cdr _e2722227241_))
                                    (_hd2722327244_ (##car _e2722227241_)))
                                (if (gx#stx-null? _tl2722427246_)
                                    (___match2752427525_
                                     _e2722227241_
                                     _hd2722327244_
                                     _tl2722427246_)
                                    (___kont2751527516_))))
                            (___kont2751527516_))))))))
        (let* ((_g2706027095_
                (lambda (_g2706127092_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2706127092_)))
               (_g2705927212_
                (lambda (_g2706127098_)
                  (if (gx#stx-pair? _g2706127098_)
                      (let ((_e2706527100_ (gx#stx-e _g2706127098_)))
                        (let ((_hd2706627103_ (##car _e2706527100_))
                              (_tl2706727105_ (##cdr _e2706527100_)))
                          (if (gx#stx-pair? _tl2706727105_)
                              (let ((_e2706827108_ (gx#stx-e _tl2706727105_)))
                                (let ((_hd2706927111_ (##car _e2706827108_))
                                      (_tl2707027113_ (##cdr _e2706827108_)))
                                  (if (gx#stx-pair/null? _hd2706927111_)
                                      (let ((_g30060_
                                             (gx#syntax-split-splice
                                              _hd2706927111_
                                              '0)))
                                        (begin
                                          (let ((_g30061_
                                                 (if (##values? _g30060_)
                                                     (##vector-length _g30060_)
                                                     1)))
                                            (if (not (##fx= _g30061_ 2))
                                                (error "Context expects 2 values"
                                                       _g30061_)))
                                          (let ((_target2707127116_
                                                 (##vector-ref _g30060_ 0))
                                                (_tl2707327118_
                                                 (##vector-ref _g30060_ 1)))
                                            (if (gx#stx-null? _tl2707327118_)
                                                (letrec ((_loop2707427121_
                                                          (lambda (_hd2707227124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2707827126_
                           _hd2707927128_)
                    (if (gx#stx-pair? _hd2707227124_)
                        (let ((_e2707527131_ (gx#stx-e _hd2707227124_)))
                          (let ((_lp-hd2707627134_ (##car _e2707527131_))
                                (_lp-tl2707727136_ (##cdr _e2707527131_)))
                            (if (gx#stx-pair? _lp-hd2707627134_)
                                (let ((_e2708227139_
                                       (gx#stx-e _lp-hd2707627134_)))
                                  (let ((_hd2708327142_ (##car _e2708227139_))
                                        (_tl2708427144_ (##cdr _e2708227139_)))
                                    (if (gx#stx-pair? _tl2708427144_)
                                        (let ((_e2708527147_
                                               (gx#stx-e _tl2708427144_)))
                                          (let ((_hd2708627150_
                                                 (##car _e2708527147_))
                                                (_tl2708727152_
                                                 (##cdr _e2708527147_)))
                                            (if (gx#stx-null? _tl2708727152_)
                                                (_loop2707427121_
                                                 _lp-tl2707727136_
                                                 (cons _hd2708627150_
                                                       _expr2707827126_)
                                                 (cons _hd2708327142_
                                                       _hd2707927128_))
                                                (_g2706027095_
                                                 _g2706127098_))))
                                        (_g2706027095_ _g2706127098_))))
                                (_g2706027095_ _g2706127098_))))
                        (let ((_expr2708027155_ (reverse _expr2707827126_))
                              (_hd2708127157_ (reverse _hd2707927128_)))
                          (if (gx#stx-pair? _tl2707027113_)
                              (let ((_e2708827160_ (gx#stx-e _tl2707027113_)))
                                (let ((_hd2708927163_ (##car _e2708827160_))
                                      (_tl2709027165_ (##cdr _e2708827160_)))
                                  (if (gx#stx-null? _tl2709027165_)
                                      ((lambda (_L27168_ _L27169_ _L27170_)
                                         (begin
                                           (for-each
                                            _collect-e27058_
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2719027193_
                                                               _g2719127195_)
                                                        (cons _g2719027193_
                                                              _g2719127195_))
                                                      '()
                                                      _L27170_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2719727200_
                                                               _g2719827202_)
                                                        (cons _g2719727200_
                                                              _g2719827202_))
                                                      '()
                                                      _L27169_)))
                                           (for-each
                                            gxc#compile-e
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2720427207_
                                                               _g2720527209_)
                                                        (cons _g2720427207_
                                                              _g2720527209_))
                                                      '()
                                                      _L27169_)))
                                           (gxc#compile-e _L27168_)))
                                       _hd2708927163_
                                       _expr2708027155_
                                       _hd2708127157_)
                                      (_g2706027095_ _g2706127098_))))
                              (_g2706027095_ _g2706127098_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2707427121_
                                                   _target2707127116_
                                                   '()
                                                   '()))
                                                (_g2706027095_
                                                 _g2706127098_)))))
                                      (_g2706027095_ _g2706127098_))))
                              (_g2706027095_ _g2706127098_))))
                      (_g2706027095_ _g2706127098_)))))
          (_g2705927212_ _stx27056_)))))
  (define gxc#collect-type-call%
    (lambda (_stx26548_)
      (let* ((___stx2752727528_ _stx26548_)
             (_g2655226667_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2752727528_))))
        (let ((___kont2752927530_
               (lambda (_L27006_ _L27007_ _L27008_ _L27009_ _L27010_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L27009_)
                  (gx#stx-e _L27008_)
                  (gxc#identifier-symbol _L27007_)
                  (gx#stx-e _L27006_))))
              (___kont2753127532_
               (lambda (_L26834_ _L26835_ _L26836_ _L26837_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L26836_)
                  (gx#stx-e _L26835_)
                  (gxc#identifier-symbol _L26834_)
                  '#f)))
              (___kont2753327534_
               (lambda (_L26704_)
                 (for-each
                  gxc#compile-e
                  (begin
                    '#!void
                    (foldr1 (lambda (_g2671726720_ _g2671826722_)
                              (cons _g2671726720_ _g2671826722_))
                            '()
                            _L26704_))))))
          (let* ((___match2778427785_
                  (lambda (_e2665126672_
                           _hd2665226675_
                           _tl2665326677_
                           ___splice2753527536_
                           _target2665426680_
                           _tl2665626682_)
                    (letrec ((_loop2665726685_
                              (lambda (_hd2665526688_ _expr2666126690_)
                                (if (gx#stx-pair? _hd2665526688_)
                                    (let ((_e2665826693_
                                           (gx#stx-e _hd2665526688_)))
                                      (let ((_lp-tl2666026698_
                                             (##cdr _e2665826693_))
                                            (_lp-hd2665926696_
                                             (##car _e2665826693_)))
                                        (_loop2665726685_
                                         _lp-tl2666026698_
                                         (cons _lp-hd2665926696_
                                               _expr2666126690_))))
                                    (let ((_expr2666226701_
                                           (reverse _expr2666126690_)))
                                      (___kont2753327534_
                                       _expr2666226701_))))))
                      (_loop2665726685_ _target2665426680_ '()))))
                 (___match2766427665_
                  (lambda (_e2655926878_
                           _hd2656026881_
                           _tl2656126883_
                           _e2656226886_
                           _hd2656326889_
                           _tl2656426891_
                           _e2656526894_
                           _hd2656626897_
                           _tl2656726899_
                           _e2656826902_
                           _hd2656926905_
                           _tl2657026907_
                           _e2657126910_
                           _hd2657226913_
                           _tl2657326915_
                           _e2657426918_
                           _hd2657526921_
                           _tl2657626923_
                           _e2657726926_
                           _hd2657826929_
                           _tl2657926931_
                           _e2658026934_
                           _hd2658126937_
                           _tl2658226939_
                           _e2658326942_
                           _hd2658426945_
                           _tl2658526947_
                           _e2658626950_
                           _hd2658726953_
                           _tl2658826955_
                           _e2658926958_
                           _hd2659026961_
                           _tl2659126963_
                           _e2659226966_
                           _hd2659326969_
                           _tl2659426971_
                           _e2659526974_
                           _hd2659626977_
                           _tl2659726979_
                           _e2659826982_
                           _hd2659926985_
                           _tl2660026987_
                           _e2660126990_
                           _hd2660226993_
                           _tl2660326995_
                           _e2660426998_
                           _hd2660527001_
                           _tl2660627003_)
                    (let ((_L27006_ _hd2660527001_)
                          (_L27007_ _hd2659626977_)
                          (_L27008_ _hd2658726953_)
                          (_L27009_ _hd2657826929_)
                          (_L27010_ _hd2656926905_))
                      (if (gxc#runtime-identifier=? _L27010_ 'bind-method!)
                          (___kont2752927530_
                           _L27006_
                           _L27007_
                           _L27008_
                           _L27009_
                           _L27010_)
                          (if (gx#stx-pair/null? _tl2656126883_)
                              (let ((___splice2753527536_
                                     (gx#syntax-split-splice
                                      _tl2656126883_
                                      '0)))
                                (let ((_tl2665626682_
                                       (##vector-ref ___splice2753527536_ '1))
                                      (_target2665426680_
                                       (##vector-ref ___splice2753527536_ '0)))
                                  (if (gx#stx-null? _tl2665626682_)
                                      (___match2778427785_
                                       _e2655926878_
                                       _hd2656026881_
                                       _tl2656126883_
                                       ___splice2753527536_
                                       _target2665426680_
                                       _tl2665626682_)
                                      (_g2655226667_))))
                              (_g2655226667_)))))))
            (if (gx#stx-pair? ___stx2752727528_)
                (let ((_e2655926878_ (gx#stx-e ___stx2752727528_)))
                  (let ((_tl2656126883_ (##cdr _e2655926878_))
                        (_hd2656026881_ (##car _e2655926878_)))
                    (if (gx#stx-pair? _tl2656126883_)
                        (let ((_e2656226886_ (gx#stx-e _tl2656126883_)))
                          (let ((_tl2656426891_ (##cdr _e2656226886_))
                                (_hd2656326889_ (##car _e2656226886_)))
                            (if (gx#stx-pair? _hd2656326889_)
                                (let ((_e2656526894_
                                       (gx#stx-e _hd2656326889_)))
                                  (let ((_tl2656726899_ (##cdr _e2656526894_))
                                        (_hd2656626897_ (##car _e2656526894_)))
                                    (if (gx#identifier? _hd2656626897_)
                                        (if (gx#stx-eq? '%#ref _hd2656626897_)
                                            (if (gx#stx-pair? _tl2656726899_)
                                                (let ((_e2656826902_
                                                       (gx#stx-e
                                                        _tl2656726899_)))
                                                  (let ((_tl2657026907_
                                                         (##cdr _e2656826902_))
                                                        (_hd2656926905_
                                                         (##car _e2656826902_)))
                                                    (if (gx#stx-null?
                                                         _tl2657026907_)
                                                        (if (gx#stx-pair?
                                                             _tl2656426891_)
                                                            (let ((_e2657126910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2656426891_)))
                      (let ((_tl2657326915_ (##cdr _e2657126910_))
                            (_hd2657226913_ (##car _e2657126910_)))
                        (if (gx#stx-pair? _hd2657226913_)
                            (let ((_e2657426918_ (gx#stx-e _hd2657226913_)))
                              (let ((_tl2657626923_ (##cdr _e2657426918_))
                                    (_hd2657526921_ (##car _e2657426918_)))
                                (if (gx#identifier? _hd2657526921_)
                                    (if (gx#stx-eq? '%#ref _hd2657526921_)
                                        (if (gx#stx-pair? _tl2657626923_)
                                            (let ((_e2657726926_
                                                   (gx#stx-e _tl2657626923_)))
                                              (let ((_tl2657926931_
                                                     (##cdr _e2657726926_))
                                                    (_hd2657826929_
                                                     (##car _e2657726926_)))
                                                (if (gx#stx-null?
                                                     _tl2657926931_)
                                                    (if (gx#stx-pair?
                                                         _tl2657326915_)
                                                        (let ((_e2658026934_
                                                               (gx#stx-e
                                                                _tl2657326915_)))
                                                          (let ((_tl2658226939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2658026934_))
                        (_hd2658126937_ (##car _e2658026934_)))
                    (if (gx#stx-pair? _hd2658126937_)
                        (let ((_e2658326942_ (gx#stx-e _hd2658126937_)))
                          (let ((_tl2658526947_ (##cdr _e2658326942_))
                                (_hd2658426945_ (##car _e2658326942_)))
                            (if (gx#identifier? _hd2658426945_)
                                (if (gx#stx-eq? '%#quote _hd2658426945_)
                                    (if (gx#stx-pair? _tl2658526947_)
                                        (let ((_e2658626950_
                                               (gx#stx-e _tl2658526947_)))
                                          (let ((_tl2658826955_
                                                 (##cdr _e2658626950_))
                                                (_hd2658726953_
                                                 (##car _e2658626950_)))
                                            (if (gx#stx-null? _tl2658826955_)
                                                (if (gx#stx-pair?
                                                     _tl2658226939_)
                                                    (let ((_e2658926958_
                                                           (gx#stx-e
                                                            _tl2658226939_)))
                                                      (let ((_tl2659126963_
                                                             (##cdr _e2658926958_))
                                                            (_hd2659026961_
                                                             (##car _e2658926958_)))
                                                        (if (gx#stx-pair?
                                                             _hd2659026961_)
                                                            (let ((_e2659226966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2659026961_)))
                      (let ((_tl2659426971_ (##cdr _e2659226966_))
                            (_hd2659326969_ (##car _e2659226966_)))
                        (if (gx#identifier? _hd2659326969_)
                            (if (gx#stx-eq? '%#ref _hd2659326969_)
                                (if (gx#stx-pair? _tl2659426971_)
                                    (let ((_e2659526974_
                                           (gx#stx-e _tl2659426971_)))
                                      (let ((_tl2659726979_
                                             (##cdr _e2659526974_))
                                            (_hd2659626977_
                                             (##car _e2659526974_)))
                                        (if (gx#stx-null? _tl2659726979_)
                                            (if (gx#stx-pair? _tl2659126963_)
                                                (let ((_e2659826982_
                                                       (gx#stx-e
                                                        _tl2659126963_)))
                                                  (let ((_tl2660026987_
                                                         (##cdr _e2659826982_))
                                                        (_hd2659926985_
                                                         (##car _e2659826982_)))
                                                    (if (gx#stx-pair?
                                                         _hd2659926985_)
                                                        (let ((_e2660126990_
                                                               (gx#stx-e
                                                                _hd2659926985_)))
                                                          (let ((_tl2660326995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2660126990_))
                        (_hd2660226993_ (##car _e2660126990_)))
                    (if (gx#identifier? _hd2660226993_)
                        (if (gx#stx-eq? '%#quote _hd2660226993_)
                            (if (gx#stx-pair? _tl2660326995_)
                                (let ((_e2660426998_
                                       (gx#stx-e _tl2660326995_)))
                                  (let ((_tl2660627003_ (##cdr _e2660426998_))
                                        (_hd2660527001_ (##car _e2660426998_)))
                                    (if (gx#stx-null? _tl2660627003_)
                                        (if (gx#stx-null? _tl2660026987_)
                                            (___match2766427665_
                                             _e2655926878_
                                             _hd2656026881_
                                             _tl2656126883_
                                             _e2656226886_
                                             _hd2656326889_
                                             _tl2656426891_
                                             _e2656526894_
                                             _hd2656626897_
                                             _tl2656726899_
                                             _e2656826902_
                                             _hd2656926905_
                                             _tl2657026907_
                                             _e2657126910_
                                             _hd2657226913_
                                             _tl2657326915_
                                             _e2657426918_
                                             _hd2657526921_
                                             _tl2657626923_
                                             _e2657726926_
                                             _hd2657826929_
                                             _tl2657926931_
                                             _e2658026934_
                                             _hd2658126937_
                                             _tl2658226939_
                                             _e2658326942_
                                             _hd2658426945_
                                             _tl2658526947_
                                             _e2658626950_
                                             _hd2658726953_
                                             _tl2658826955_
                                             _e2658926958_
                                             _hd2659026961_
                                             _tl2659126963_
                                             _e2659226966_
                                             _hd2659326969_
                                             _tl2659426971_
                                             _e2659526974_
                                             _hd2659626977_
                                             _tl2659726979_
                                             _e2659826982_
                                             _hd2659926985_
                                             _tl2660026987_
                                             _e2660126990_
                                             _hd2660226993_
                                             _tl2660326995_
                                             _e2660426998_
                                             _hd2660527001_
                                             _tl2660627003_)
                                            (if (gx#stx-pair/null?
                                                 _tl2656126883_)
                                                (let ((___splice2753527536_
                                                       (gx#syntax-split-splice
                                                        _tl2656126883_
                                                        '0)))
                                                  (let ((_tl2665626682_
                                                         (##vector-ref
                                                          ___splice2753527536_
                                                          '1))
                                                        (_target2665426680_
                                                         (##vector-ref
                                                          ___splice2753527536_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2665626682_)
                                                        (___match2778427785_
                                                         _e2655926878_
                                                         _hd2656026881_
                                                         _tl2656126883_
                                                         ___splice2753527536_
                                                         _target2665426680_
                                                         _tl2665626682_)
                                                        (_g2655226667_))))
                                                (_g2655226667_)))
                                        (if (gx#stx-pair/null? _tl2656126883_)
                                            (let ((___splice2753527536_
                                                   (gx#syntax-split-splice
                                                    _tl2656126883_
                                                    '0)))
                                              (let ((_tl2665626682_
                                                     (##vector-ref
                                                      ___splice2753527536_
                                                      '1))
                                                    (_target2665426680_
                                                     (##vector-ref
                                                      ___splice2753527536_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2665626682_)
                                                    (___match2778427785_
                                                     _e2655926878_
                                                     _hd2656026881_
                                                     _tl2656126883_
                                                     ___splice2753527536_
                                                     _target2665426680_
                                                     _tl2665626682_)
                                                    (_g2655226667_))))
                                            (_g2655226667_)))))
                                (if (gx#stx-pair/null? _tl2656126883_)
                                    (let ((___splice2753527536_
                                           (gx#syntax-split-splice
                                            _tl2656126883_
                                            '0)))
                                      (let ((_tl2665626682_
                                             (##vector-ref
                                              ___splice2753527536_
                                              '1))
                                            (_target2665426680_
                                             (##vector-ref
                                              ___splice2753527536_
                                              '0)))
                                        (if (gx#stx-null? _tl2665626682_)
                                            (___match2778427785_
                                             _e2655926878_
                                             _hd2656026881_
                                             _tl2656126883_
                                             ___splice2753527536_
                                             _target2665426680_
                                             _tl2665626682_)
                                            (_g2655226667_))))
                                    (_g2655226667_)))
                            (if (gx#stx-pair/null? _tl2656126883_)
                                (let ((___splice2753527536_
                                       (gx#syntax-split-splice
                                        _tl2656126883_
                                        '0)))
                                  (let ((_tl2665626682_
                                         (##vector-ref
                                          ___splice2753527536_
                                          '1))
                                        (_target2665426680_
                                         (##vector-ref
                                          ___splice2753527536_
                                          '0)))
                                    (if (gx#stx-null? _tl2665626682_)
                                        (___match2778427785_
                                         _e2655926878_
                                         _hd2656026881_
                                         _tl2656126883_
                                         ___splice2753527536_
                                         _target2665426680_
                                         _tl2665626682_)
                                        (_g2655226667_))))
                                (_g2655226667_)))
                        (if (gx#stx-pair/null? _tl2656126883_)
                            (let ((___splice2753527536_
                                   (gx#syntax-split-splice _tl2656126883_ '0)))
                              (let ((_tl2665626682_
                                     (##vector-ref ___splice2753527536_ '1))
                                    (_target2665426680_
                                     (##vector-ref ___splice2753527536_ '0)))
                                (if (gx#stx-null? _tl2665626682_)
                                    (___match2778427785_
                                     _e2655926878_
                                     _hd2656026881_
                                     _tl2656126883_
                                     ___splice2753527536_
                                     _target2665426680_
                                     _tl2665626682_)
                                    (_g2655226667_))))
                            (_g2655226667_)))))
                (if (gx#stx-pair/null? _tl2656126883_)
                    (let ((___splice2753527536_
                           (gx#syntax-split-splice _tl2656126883_ '0)))
                      (let ((_tl2665626682_
                             (##vector-ref ___splice2753527536_ '1))
                            (_target2665426680_
                             (##vector-ref ___splice2753527536_ '0)))
                        (if (gx#stx-null? _tl2665626682_)
                            (___match2778427785_
                             _e2655926878_
                             _hd2656026881_
                             _tl2656126883_
                             ___splice2753527536_
                             _target2665426680_
                             _tl2665626682_)
                            (_g2655226667_))))
                    (_g2655226667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2659126963_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L26834_
                                                               _hd2659626977_)
                                                              (_L26835_
                                                               _hd2658726953_)
                                                              (_L26836_
                                                               _hd2657826929_)
                                                              (_L26837_
                                                               _hd2656926905_))
                                                          (___kont2753127532_
                                                           _L26834_
                                                           _L26835_
                                                           _L26836_
                                                           _L26837_))
                                                        (if (gx#stx-pair/null?
                                                             _tl2656126883_)
                                                            (let ((___splice2753527536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl2656126883_ '0)))
                      (let ((_tl2665626682_
                             (##vector-ref ___splice2753527536_ '1))
                            (_target2665426680_
                             (##vector-ref ___splice2753527536_ '0)))
                        (if (gx#stx-null? _tl2665626682_)
                            (___match2778427785_
                             _e2655926878_
                             _hd2656026881_
                             _tl2656126883_
                             ___splice2753527536_
                             _target2665426680_
                             _tl2665626682_)
                            (_g2655226667_))))
                    (_g2655226667_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2656126883_)
                                                        (let ((___splice2753527536_
                                                               (gx#syntax-split-splice
                                                                _tl2656126883_
                                                                '0)))
                                                          (let ((_tl2665626682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2753527536_ '1))
                        (_target2665426680_
                         (##vector-ref ___splice2753527536_ '0)))
                    (if (gx#stx-null? _tl2665626682_)
                        (___match2778427785_
                         _e2655926878_
                         _hd2656026881_
                         _tl2656126883_
                         ___splice2753527536_
                         _target2665426680_
                         _tl2665626682_)
                        (_g2655226667_))))
                (_g2655226667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2656126883_)
                                                (let ((___splice2753527536_
                                                       (gx#syntax-split-splice
                                                        _tl2656126883_
                                                        '0)))
                                                  (let ((_tl2665626682_
                                                         (##vector-ref
                                                          ___splice2753527536_
                                                          '1))
                                                        (_target2665426680_
                                                         (##vector-ref
                                                          ___splice2753527536_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2665626682_)
                                                        (___match2778427785_
                                                         _e2655926878_
                                                         _hd2656026881_
                                                         _tl2656126883_
                                                         ___splice2753527536_
                                                         _target2665426680_
                                                         _tl2665626682_)
                                                        (_g2655226667_))))
                                                (_g2655226667_)))))
                                    (if (gx#stx-pair/null? _tl2656126883_)
                                        (let ((___splice2753527536_
                                               (gx#syntax-split-splice
                                                _tl2656126883_
                                                '0)))
                                          (let ((_tl2665626682_
                                                 (##vector-ref
                                                  ___splice2753527536_
                                                  '1))
                                                (_target2665426680_
                                                 (##vector-ref
                                                  ___splice2753527536_
                                                  '0)))
                                            (if (gx#stx-null? _tl2665626682_)
                                                (___match2778427785_
                                                 _e2655926878_
                                                 _hd2656026881_
                                                 _tl2656126883_
                                                 ___splice2753527536_
                                                 _target2665426680_
                                                 _tl2665626682_)
                                                (_g2655226667_))))
                                        (_g2655226667_)))
                                (if (gx#stx-pair/null? _tl2656126883_)
                                    (let ((___splice2753527536_
                                           (gx#syntax-split-splice
                                            _tl2656126883_
                                            '0)))
                                      (let ((_tl2665626682_
                                             (##vector-ref
                                              ___splice2753527536_
                                              '1))
                                            (_target2665426680_
                                             (##vector-ref
                                              ___splice2753527536_
                                              '0)))
                                        (if (gx#stx-null? _tl2665626682_)
                                            (___match2778427785_
                                             _e2655926878_
                                             _hd2656026881_
                                             _tl2656126883_
                                             ___splice2753527536_
                                             _target2665426680_
                                             _tl2665626682_)
                                            (_g2655226667_))))
                                    (_g2655226667_)))
                            (if (gx#stx-pair/null? _tl2656126883_)
                                (let ((___splice2753527536_
                                       (gx#syntax-split-splice
                                        _tl2656126883_
                                        '0)))
                                  (let ((_tl2665626682_
                                         (##vector-ref
                                          ___splice2753527536_
                                          '1))
                                        (_target2665426680_
                                         (##vector-ref
                                          ___splice2753527536_
                                          '0)))
                                    (if (gx#stx-null? _tl2665626682_)
                                        (___match2778427785_
                                         _e2655926878_
                                         _hd2656026881_
                                         _tl2656126883_
                                         ___splice2753527536_
                                         _target2665426680_
                                         _tl2665626682_)
                                        (_g2655226667_))))
                                (_g2655226667_)))))
                    (if (gx#stx-pair/null? _tl2656126883_)
                        (let ((___splice2753527536_
                               (gx#syntax-split-splice _tl2656126883_ '0)))
                          (let ((_tl2665626682_
                                 (##vector-ref ___splice2753527536_ '1))
                                (_target2665426680_
                                 (##vector-ref ___splice2753527536_ '0)))
                            (if (gx#stx-null? _tl2665626682_)
                                (___match2778427785_
                                 _e2655926878_
                                 _hd2656026881_
                                 _tl2656126883_
                                 ___splice2753527536_
                                 _target2665426680_
                                 _tl2665626682_)
                                (_g2655226667_))))
                        (_g2655226667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2656126883_)
                                                        (let ((___splice2753527536_
                                                               (gx#syntax-split-splice
                                                                _tl2656126883_
                                                                '0)))
                                                          (let ((_tl2665626682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2753527536_ '1))
                        (_target2665426680_
                         (##vector-ref ___splice2753527536_ '0)))
                    (if (gx#stx-null? _tl2665626682_)
                        (___match2778427785_
                         _e2655926878_
                         _hd2656026881_
                         _tl2656126883_
                         ___splice2753527536_
                         _target2665426680_
                         _tl2665626682_)
                        (_g2655226667_))))
                (_g2655226667_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2656126883_)
                                                    (let ((___splice2753527536_
                                                           (gx#syntax-split-splice
                                                            _tl2656126883_
                                                            '0)))
                                                      (let ((_tl2665626682_
                                                             (##vector-ref
                                                              ___splice2753527536_
                                                              '1))
                                                            (_target2665426680_
                                                             (##vector-ref
                                                              ___splice2753527536_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2665626682_)
                                                            (___match2778427785_
                                                             _e2655926878_
                                                             _hd2656026881_
                                                             _tl2656126883_
                                                             ___splice2753527536_
                                                             _target2665426680_
                                                             _tl2665626682_)
                                                            (_g2655226667_))))
                                                    (_g2655226667_)))))
                                        (if (gx#stx-pair/null? _tl2656126883_)
                                            (let ((___splice2753527536_
                                                   (gx#syntax-split-splice
                                                    _tl2656126883_
                                                    '0)))
                                              (let ((_tl2665626682_
                                                     (##vector-ref
                                                      ___splice2753527536_
                                                      '1))
                                                    (_target2665426680_
                                                     (##vector-ref
                                                      ___splice2753527536_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2665626682_)
                                                    (___match2778427785_
                                                     _e2655926878_
                                                     _hd2656026881_
                                                     _tl2656126883_
                                                     ___splice2753527536_
                                                     _target2665426680_
                                                     _tl2665626682_)
                                                    (_g2655226667_))))
                                            (_g2655226667_)))
                                    (if (gx#stx-pair/null? _tl2656126883_)
                                        (let ((___splice2753527536_
                                               (gx#syntax-split-splice
                                                _tl2656126883_
                                                '0)))
                                          (let ((_tl2665626682_
                                                 (##vector-ref
                                                  ___splice2753527536_
                                                  '1))
                                                (_target2665426680_
                                                 (##vector-ref
                                                  ___splice2753527536_
                                                  '0)))
                                            (if (gx#stx-null? _tl2665626682_)
                                                (___match2778427785_
                                                 _e2655926878_
                                                 _hd2656026881_
                                                 _tl2656126883_
                                                 ___splice2753527536_
                                                 _target2665426680_
                                                 _tl2665626682_)
                                                (_g2655226667_))))
                                        (_g2655226667_)))
                                (if (gx#stx-pair/null? _tl2656126883_)
                                    (let ((___splice2753527536_
                                           (gx#syntax-split-splice
                                            _tl2656126883_
                                            '0)))
                                      (let ((_tl2665626682_
                                             (##vector-ref
                                              ___splice2753527536_
                                              '1))
                                            (_target2665426680_
                                             (##vector-ref
                                              ___splice2753527536_
                                              '0)))
                                        (if (gx#stx-null? _tl2665626682_)
                                            (___match2778427785_
                                             _e2655926878_
                                             _hd2656026881_
                                             _tl2656126883_
                                             ___splice2753527536_
                                             _target2665426680_
                                             _tl2665626682_)
                                            (_g2655226667_))))
                                    (_g2655226667_)))))
                        (if (gx#stx-pair/null? _tl2656126883_)
                            (let ((___splice2753527536_
                                   (gx#syntax-split-splice _tl2656126883_ '0)))
                              (let ((_tl2665626682_
                                     (##vector-ref ___splice2753527536_ '1))
                                    (_target2665426680_
                                     (##vector-ref ___splice2753527536_ '0)))
                                (if (gx#stx-null? _tl2665626682_)
                                    (___match2778427785_
                                     _e2655926878_
                                     _hd2656026881_
                                     _tl2656126883_
                                     ___splice2753527536_
                                     _target2665426680_
                                     _tl2665626682_)
                                    (_g2655226667_))))
                            (_g2655226667_)))))
                (if (gx#stx-pair/null? _tl2656126883_)
                    (let ((___splice2753527536_
                           (gx#syntax-split-splice _tl2656126883_ '0)))
                      (let ((_tl2665626682_
                             (##vector-ref ___splice2753527536_ '1))
                            (_target2665426680_
                             (##vector-ref ___splice2753527536_ '0)))
                        (if (gx#stx-null? _tl2665626682_)
                            (___match2778427785_
                             _e2655926878_
                             _hd2656026881_
                             _tl2656126883_
                             ___splice2753527536_
                             _target2665426680_
                             _tl2665626682_)
                            (_g2655226667_))))
                    (_g2655226667_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2656126883_)
                                                        (let ((___splice2753527536_
                                                               (gx#syntax-split-splice
                                                                _tl2656126883_
                                                                '0)))
                                                          (let ((_tl2665626682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2753527536_ '1))
                        (_target2665426680_
                         (##vector-ref ___splice2753527536_ '0)))
                    (if (gx#stx-null? _tl2665626682_)
                        (___match2778427785_
                         _e2655926878_
                         _hd2656026881_
                         _tl2656126883_
                         ___splice2753527536_
                         _target2665426680_
                         _tl2665626682_)
                        (_g2655226667_))))
                (_g2655226667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2656126883_)
                                                (let ((___splice2753527536_
                                                       (gx#syntax-split-splice
                                                        _tl2656126883_
                                                        '0)))
                                                  (let ((_tl2665626682_
                                                         (##vector-ref
                                                          ___splice2753527536_
                                                          '1))
                                                        (_target2665426680_
                                                         (##vector-ref
                                                          ___splice2753527536_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2665626682_)
                                                        (___match2778427785_
                                                         _e2655926878_
                                                         _hd2656026881_
                                                         _tl2656126883_
                                                         ___splice2753527536_
                                                         _target2665426680_
                                                         _tl2665626682_)
                                                        (_g2655226667_))))
                                                (_g2655226667_)))
                                        (if (gx#stx-pair/null? _tl2656126883_)
                                            (let ((___splice2753527536_
                                                   (gx#syntax-split-splice
                                                    _tl2656126883_
                                                    '0)))
                                              (let ((_tl2665626682_
                                                     (##vector-ref
                                                      ___splice2753527536_
                                                      '1))
                                                    (_target2665426680_
                                                     (##vector-ref
                                                      ___splice2753527536_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2665626682_)
                                                    (___match2778427785_
                                                     _e2655926878_
                                                     _hd2656026881_
                                                     _tl2656126883_
                                                     ___splice2753527536_
                                                     _target2665426680_
                                                     _tl2665626682_)
                                                    (_g2655226667_))))
                                            (_g2655226667_)))
                                    (if (gx#stx-pair/null? _tl2656126883_)
                                        (let ((___splice2753527536_
                                               (gx#syntax-split-splice
                                                _tl2656126883_
                                                '0)))
                                          (let ((_tl2665626682_
                                                 (##vector-ref
                                                  ___splice2753527536_
                                                  '1))
                                                (_target2665426680_
                                                 (##vector-ref
                                                  ___splice2753527536_
                                                  '0)))
                                            (if (gx#stx-null? _tl2665626682_)
                                                (___match2778427785_
                                                 _e2655926878_
                                                 _hd2656026881_
                                                 _tl2656126883_
                                                 ___splice2753527536_
                                                 _target2665426680_
                                                 _tl2665626682_)
                                                (_g2655226667_))))
                                        (_g2655226667_)))))
                            (if (gx#stx-pair/null? _tl2656126883_)
                                (let ((___splice2753527536_
                                       (gx#syntax-split-splice
                                        _tl2656126883_
                                        '0)))
                                  (let ((_tl2665626682_
                                         (##vector-ref
                                          ___splice2753527536_
                                          '1))
                                        (_target2665426680_
                                         (##vector-ref
                                          ___splice2753527536_
                                          '0)))
                                    (if (gx#stx-null? _tl2665626682_)
                                        (___match2778427785_
                                         _e2655926878_
                                         _hd2656026881_
                                         _tl2656126883_
                                         ___splice2753527536_
                                         _target2665426680_
                                         _tl2665626682_)
                                        (_g2655226667_))))
                                (_g2655226667_)))))
                    (if (gx#stx-pair/null? _tl2656126883_)
                        (let ((___splice2753527536_
                               (gx#syntax-split-splice _tl2656126883_ '0)))
                          (let ((_tl2665626682_
                                 (##vector-ref ___splice2753527536_ '1))
                                (_target2665426680_
                                 (##vector-ref ___splice2753527536_ '0)))
                            (if (gx#stx-null? _tl2665626682_)
                                (___match2778427785_
                                 _e2655926878_
                                 _hd2656026881_
                                 _tl2656126883_
                                 ___splice2753527536_
                                 _target2665426680_
                                 _tl2665626682_)
                                (_g2655226667_))))
                        (_g2655226667_)))
                (if (gx#stx-pair/null? _tl2656126883_)
                    (let ((___splice2753527536_
                           (gx#syntax-split-splice _tl2656126883_ '0)))
                      (let ((_tl2665626682_
                             (##vector-ref ___splice2753527536_ '1))
                            (_target2665426680_
                             (##vector-ref ___splice2753527536_ '0)))
                        (if (gx#stx-null? _tl2665626682_)
                            (___match2778427785_
                             _e2655926878_
                             _hd2656026881_
                             _tl2656126883_
                             ___splice2753527536_
                             _target2665426680_
                             _tl2665626682_)
                            (_g2655226667_))))
                    (_g2655226667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2656126883_)
                                                    (let ((___splice2753527536_
                                                           (gx#syntax-split-splice
                                                            _tl2656126883_
                                                            '0)))
                                                      (let ((_tl2665626682_
                                                             (##vector-ref
                                                              ___splice2753527536_
                                                              '1))
                                                            (_target2665426680_
                                                             (##vector-ref
                                                              ___splice2753527536_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2665626682_)
                                                            (___match2778427785_
                                                             _e2655926878_
                                                             _hd2656026881_
                                                             _tl2656126883_
                                                             ___splice2753527536_
                                                             _target2665426680_
                                                             _tl2665626682_)
                                                            (_g2655226667_))))
                                                    (_g2655226667_)))
                                            (if (gx#stx-pair/null?
                                                 _tl2656126883_)
                                                (let ((___splice2753527536_
                                                       (gx#syntax-split-splice
                                                        _tl2656126883_
                                                        '0)))
                                                  (let ((_tl2665626682_
                                                         (##vector-ref
                                                          ___splice2753527536_
                                                          '1))
                                                        (_target2665426680_
                                                         (##vector-ref
                                                          ___splice2753527536_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2665626682_)
                                                        (___match2778427785_
                                                         _e2655926878_
                                                         _hd2656026881_
                                                         _tl2656126883_
                                                         ___splice2753527536_
                                                         _target2665426680_
                                                         _tl2665626682_)
                                                        (_g2655226667_))))
                                                (_g2655226667_)))
                                        (if (gx#stx-pair/null? _tl2656126883_)
                                            (let ((___splice2753527536_
                                                   (gx#syntax-split-splice
                                                    _tl2656126883_
                                                    '0)))
                                              (let ((_tl2665626682_
                                                     (##vector-ref
                                                      ___splice2753527536_
                                                      '1))
                                                    (_target2665426680_
                                                     (##vector-ref
                                                      ___splice2753527536_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2665626682_)
                                                    (___match2778427785_
                                                     _e2655926878_
                                                     _hd2656026881_
                                                     _tl2656126883_
                                                     ___splice2753527536_
                                                     _target2665426680_
                                                     _tl2665626682_)
                                                    (_g2655226667_))))
                                            (_g2655226667_)))))
                                (if (gx#stx-pair/null? _tl2656126883_)
                                    (let ((___splice2753527536_
                                           (gx#syntax-split-splice
                                            _tl2656126883_
                                            '0)))
                                      (let ((_tl2665626682_
                                             (##vector-ref
                                              ___splice2753527536_
                                              '1))
                                            (_target2665426680_
                                             (##vector-ref
                                              ___splice2753527536_
                                              '0)))
                                        (if (gx#stx-null? _tl2665626682_)
                                            (___match2778427785_
                                             _e2655926878_
                                             _hd2656026881_
                                             _tl2656126883_
                                             ___splice2753527536_
                                             _target2665426680_
                                             _tl2665626682_)
                                            (_g2655226667_))))
                                    (_g2655226667_)))))
                        (if (gx#stx-pair/null? _tl2656126883_)
                            (let ((___splice2753527536_
                                   (gx#syntax-split-splice _tl2656126883_ '0)))
                              (let ((_tl2665626682_
                                     (##vector-ref ___splice2753527536_ '1))
                                    (_target2665426680_
                                     (##vector-ref ___splice2753527536_ '0)))
                                (if (gx#stx-null? _tl2665626682_)
                                    (___match2778427785_
                                     _e2655926878_
                                     _hd2656026881_
                                     _tl2656126883_
                                     ___splice2753527536_
                                     _target2665426680_
                                     _tl2665626682_)
                                    (_g2655226667_))))
                            (_g2655226667_)))))
                (_g2655226667_)))))))
  (define gxc#current-compile-type-closure (make-parameter '#f))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx26488_)
      (let* ((___stx2778727788_ _stx26488_)
             (_g2649126504_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2778727788_))))
        (let ((___kont2778927790_ (lambda (_L26532_) (gxc#compile-e _L26532_)))
              (___kont2779127792_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2778727788_)
              (let ((_e2649426516_ (gx#stx-e ___stx2778727788_)))
                (let ((_tl2649626521_ (##cdr _e2649426516_))
                      (_hd2649526519_ (##car _e2649426516_)))
                  (if (gx#stx-pair? _tl2649626521_)
                      (let ((_e2649726524_ (gx#stx-e _tl2649626521_)))
                        (let ((_tl2649926529_ (##cdr _e2649726524_))
                              (_hd2649826527_ (##car _e2649726524_)))
                          (if (gx#stx-null? _tl2649926529_)
                              (___kont2778927790_ _hd2649826527_)
                              (___kont2779127792_))))
                      (___kont2779127792_))))
              (___kont2779127792_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx26421_)
      (let* ((_g2642326440_
              (lambda (_g2642426437_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2642426437_)))
             (_g2642226485_
              (lambda (_g2642426443_)
                (if (gx#stx-pair? _g2642426443_)
                    (let ((_e2642726445_ (gx#stx-e _g2642426443_)))
                      (let ((_hd2642826448_ (##car _e2642726445_))
                            (_tl2642926450_ (##cdr _e2642726445_)))
                        (if (gx#stx-pair? _tl2642926450_)
                            (let ((_e2643026453_ (gx#stx-e _tl2642926450_)))
                              (let ((_hd2643126456_ (##car _e2643026453_))
                                    (_tl2643226458_ (##cdr _e2643026453_)))
                                (if (gx#stx-pair? _tl2643226458_)
                                    (let ((_e2643326461_
                                           (gx#stx-e _tl2643226458_)))
                                      (let ((_hd2643426464_
                                             (##car _e2643326461_))
                                            (_tl2643526466_
                                             (##cdr _e2643326461_)))
                                        (if (gx#stx-null? _tl2643526466_)
                                            ((lambda (_L26469_ _L26470_)
                                               (gxc#compile-e _L26469_))
                                             _hd2643426464_
                                             _hd2643126456_)
                                            (_g2642326440_ _g2642426443_))))
                                    (_g2642326440_ _g2642426443_))))
                            (_g2642326440_ _g2642426443_))))
                    (_g2642326440_ _g2642426443_)))))
        (_g2642226485_ _stx26421_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx25013_)
      (let* ((___stx2780927810_ _stx25013_)
             (_g2502125328_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2780927810_))))
        (let ((___kont2781127812_
               (lambda (_L26409_)
                 (let ((__obj30052 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj30052
                      'lambda
                      (gxc#lambda-form-arity _L26409_)
                      '#f)
                     __obj30052))))
              (___kont2781327814_
               (lambda (_L26344_ _L26345_ _L26346_ _L26347_ _L26348_)
                 (let* ((_type-t26391_ (gxc#identifier-symbol _L26345_))
                        (_type26393_
                         (gxc#optimizer-resolve-type _type-t26391_)))
                   (if (##structure-instance-of?
                        _type26393_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t26391_)
                       '#f))))
              (___kont2781527816_
               (lambda (_L26130_ _L26131_ _L26132_ _L26133_)
                 (let* ((_type-t26206_ (gxc#identifier-symbol _L26131_))
                        (_type26208_
                         (gxc#optimizer-resolve-type _type-t26206_)))
                   (if (##structure-instance-of?
                        _type26208_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t26206_)
                       '#f))))
              (___kont2782127822_
               (lambda (_L25921_ _L25922_ _L25923_ _L25924_ _L25925_ _L25926_)
                 (let* ((_tab25976_ (gx#stx-e _L25923_))
                        (_keys25978_
                         (if _tab25976_
                             (filter values (vector->list _tab25976_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys25978_
                    (gxc#identifier-symbol _L25922_)))))
              (___kont2782327824_
               (lambda (_L25654_
                        _L25655_
                        _L25656_
                        _L25657_
                        _L25658_
                        _L25659_
                        _L25660_
                        _L25661_
                        _L25662_
                        _L25663_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2575625759_ _g2575725761_)
                                   (cons _g2575625759_ _g2575725761_))
                                 '()
                                 _L25656_)))
                  (gxc#identifier-symbol _L25660_))))
              (___kont2782727828_
               (lambda (_L25364_)
                 (let ((__obj30053 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj30053
                      'lambda
                      (gxc#lambda-form-arity _L25364_)
                      (gxc#dispatch-lambda-form-delegate _L25364_))
                     __obj30053))))
              (___kont2782927830_
               (lambda (_L25341_)
                 (let ((__obj30054 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj30054
                      'lambda
                      (gxc#lambda-form-arity _L25341_)
                      '#f)
                     __obj30054)))))
          (let* ((___match2828428285_
                  (lambda (_e2531725356_ _hd2531825359_ _tl2531925361_)
                    (let ((_L25364_ _tl2531925361_))
                      (if (gxc#dispatch-lambda-form? _L25364_)
                          (___kont2782727828_ _L25364_)
                          (___kont2782927830_ _tl2531925361_)))))
                 (___match2827828279_
                  (lambda (_e2521125378_
                           _hd2521225381_
                           _tl2521325383_
                           _e2521425386_
                           _hd2521525389_
                           _tl2521625391_
                           _e2521725394_
                           _hd2521825397_
                           _tl2521925399_
                           _e2522025402_
                           _hd2522125405_
                           _tl2522225407_
                           _e2522325410_
                           _hd2522425413_
                           _tl2522525415_
                           _e2522625418_
                           _hd2522725421_
                           _tl2522825423_
                           _e2522925426_
                           _hd2523025429_
                           _tl2523125431_
                           _e2523225434_
                           _hd2523325437_
                           _tl2523425439_
                           _e2523525442_
                           _hd2523625445_
                           _tl2523725447_
                           _e2523825450_
                           _hd2523925453_
                           _tl2524025455_
                           _e2524125458_
                           _hd2524225461_
                           _tl2524325463_
                           _e2524425466_
                           _hd2524525469_
                           _tl2524625471_
                           _e2524725474_
                           _hd2524825477_
                           _tl2524925479_
                           _e2525025482_
                           _hd2525125485_
                           _tl2525225487_
                           ___splice2782527826_
                           _target2525325490_
                           _tl2525525492_
                           _e2526825495_
                           _hd2526925498_
                           _tl2527025500_
                           _e2527125503_
                           _hd2527225506_
                           _tl2527325508_
                           _e2527425511_
                           _hd2527525514_
                           _tl2527625516_)
                    (letrec ((_loop2525625519_
                              (lambda (_hd2525425522_
                                       _-absent-value2526025524_
                                       _key2526125526_
                                       _-xkwvar2526225528_
                                       _-hash-ref2526325530_)
                                (if (gx#stx-pair? _hd2525425522_)
                                    (let ((_e2525725533_
                                           (gx#stx-e _hd2525425522_)))
                                      (let ((_lp-tl2525925538_
                                             (##cdr _e2525725533_))
                                            (_lp-hd2525825536_
                                             (##car _e2525725533_)))
                                        (if (gx#stx-pair? _lp-hd2525825536_)
                                            (let ((_e2527725541_
                                                   (gx#stx-e
                                                    _lp-hd2525825536_)))
                                              (let ((_tl2527925546_
                                                     (##cdr _e2527725541_))
                                                    (_hd2527825544_
                                                     (##car _e2527725541_)))
                                                (if (gx#identifier?
                                                     _hd2527825544_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2527825544_)
                                                        (if (gx#stx-pair?
                                                             _tl2527925546_)
                                                            (let ((_e2528025549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2527925546_)))
                      (let ((_tl2528225554_ (##cdr _e2528025549_))
                            (_hd2528125552_ (##car _e2528025549_)))
                        (if (gx#stx-pair? _hd2528125552_)
                            (let ((_e2528325557_ (gx#stx-e _hd2528125552_)))
                              (let ((_tl2528525562_ (##cdr _e2528325557_))
                                    (_hd2528425560_ (##car _e2528325557_)))
                                (if (gx#identifier? _hd2528425560_)
                                    (if (gx#stx-eq? '%#ref _hd2528425560_)
                                        (if (gx#stx-pair? _tl2528525562_)
                                            (let ((_e2528625565_
                                                   (gx#stx-e _tl2528525562_)))
                                              (let ((_tl2528825570_
                                                     (##cdr _e2528625565_))
                                                    (_hd2528725568_
                                                     (##car _e2528625565_)))
                                                (if (gx#stx-null?
                                                     _tl2528825570_)
                                                    (if (gx#stx-pair?
                                                         _tl2528225554_)
                                                        (let ((_e2528925573_
                                                               (gx#stx-e
                                                                _tl2528225554_)))
                                                          (let ((_tl2529125578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2528925573_))
                        (_hd2529025576_ (##car _e2528925573_)))
                    (if (gx#stx-pair? _hd2529025576_)
                        (let ((_e2529225581_ (gx#stx-e _hd2529025576_)))
                          (let ((_tl2529425586_ (##cdr _e2529225581_))
                                (_hd2529325584_ (##car _e2529225581_)))
                            (if (gx#identifier? _hd2529325584_)
                                (if (gx#stx-eq? '%#ref _hd2529325584_)
                                    (if (gx#stx-pair? _tl2529425586_)
                                        (let ((_e2529525589_
                                               (gx#stx-e _tl2529425586_)))
                                          (let ((_tl2529725594_
                                                 (##cdr _e2529525589_))
                                                (_hd2529625592_
                                                 (##car _e2529525589_)))
                                            (if (gx#stx-null? _tl2529725594_)
                                                (if (gx#stx-pair?
                                                     _tl2529125578_)
                                                    (let ((_e2529825597_
                                                           (gx#stx-e
                                                            _tl2529125578_)))
                                                      (let ((_tl2530025602_
                                                             (##cdr _e2529825597_))
                                                            (_hd2529925600_
                                                             (##car _e2529825597_)))
                                                        (if (gx#stx-pair?
                                                             _hd2529925600_)
                                                            (let ((_e2530125605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2529925600_)))
                      (let ((_tl2530325610_ (##cdr _e2530125605_))
                            (_hd2530225608_ (##car _e2530125605_)))
                        (if (gx#identifier? _hd2530225608_)
                            (if (gx#stx-eq? '%#quote _hd2530225608_)
                                (if (gx#stx-pair? _tl2530325610_)
                                    (let ((_e2530425613_
                                           (gx#stx-e _tl2530325610_)))
                                      (let ((_tl2530625618_
                                             (##cdr _e2530425613_))
                                            (_hd2530525616_
                                             (##car _e2530425613_)))
                                        (if (gx#stx-null? _tl2530625618_)
                                            (if (gx#stx-pair? _tl2530025602_)
                                                (let ((_e2530725621_
                                                       (gx#stx-e
                                                        _tl2530025602_)))
                                                  (let ((_tl2530925626_
                                                         (##cdr _e2530725621_))
                                                        (_hd2530825624_
                                                         (##car _e2530725621_)))
                                                    (if (gx#stx-pair?
                                                         _hd2530825624_)
                                                        (let ((_e2531025629_
                                                               (gx#stx-e
                                                                _hd2530825624_)))
                                                          (let ((_tl2531225634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2531025629_))
                        (_hd2531125632_ (##car _e2531025629_)))
                    (if (gx#identifier? _hd2531125632_)
                        (if (gx#stx-eq? '%#ref _hd2531125632_)
                            (if (gx#stx-pair? _tl2531225634_)
                                (let ((_e2531325637_
                                       (gx#stx-e _tl2531225634_)))
                                  (let ((_tl2531525642_ (##cdr _e2531325637_))
                                        (_hd2531425640_ (##car _e2531325637_)))
                                    (if (gx#stx-null? _tl2531525642_)
                                        (if (gx#stx-null? _tl2530925626_)
                                            (_loop2525625519_
                                             _lp-tl2525925538_
                                             (cons _hd2531425640_
                                                   _-absent-value2526025524_)
                                             (cons _hd2530525616_
                                                   _key2526125526_)
                                             (cons _hd2529625592_
                                                   _-xkwvar2526225528_)
                                             (cons _hd2528725568_
                                                   _-hash-ref2526325530_))
                                            (___match2828428285_
                                             _e2521125378_
                                             _hd2521225381_
                                             _tl2521325383_))
                                        (___match2828428285_
                                         _e2521125378_
                                         _hd2521225381_
                                         _tl2521325383_))))
                                (___match2828428285_
                                 _e2521125378_
                                 _hd2521225381_
                                 _tl2521325383_))
                            (___match2828428285_
                             _e2521125378_
                             _hd2521225381_
                             _tl2521325383_))
                        (___match2828428285_
                         _e2521125378_
                         _hd2521225381_
                         _tl2521325383_))))
                (___match2828428285_
                 _e2521125378_
                 _hd2521225381_
                 _tl2521325383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2828428285_
                                                 _e2521125378_
                                                 _hd2521225381_
                                                 _tl2521325383_))
                                            (___match2828428285_
                                             _e2521125378_
                                             _hd2521225381_
                                             _tl2521325383_))))
                                    (___match2828428285_
                                     _e2521125378_
                                     _hd2521225381_
                                     _tl2521325383_))
                                (___match2828428285_
                                 _e2521125378_
                                 _hd2521225381_
                                 _tl2521325383_))
                            (___match2828428285_
                             _e2521125378_
                             _hd2521225381_
                             _tl2521325383_))))
                    (___match2828428285_
                     _e2521125378_
                     _hd2521225381_
                     _tl2521325383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828428285_
                                                     _e2521125378_
                                                     _hd2521225381_
                                                     _tl2521325383_))
                                                (___match2828428285_
                                                 _e2521125378_
                                                 _hd2521225381_
                                                 _tl2521325383_))))
                                        (___match2828428285_
                                         _e2521125378_
                                         _hd2521225381_
                                         _tl2521325383_))
                                    (___match2828428285_
                                     _e2521125378_
                                     _hd2521225381_
                                     _tl2521325383_))
                                (___match2828428285_
                                 _e2521125378_
                                 _hd2521225381_
                                 _tl2521325383_))))
                        (___match2828428285_
                         _e2521125378_
                         _hd2521225381_
                         _tl2521325383_))))
                (___match2828428285_
                 _e2521125378_
                 _hd2521225381_
                 _tl2521325383_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828428285_
                                                     _e2521125378_
                                                     _hd2521225381_
                                                     _tl2521325383_))))
                                            (___match2828428285_
                                             _e2521125378_
                                             _hd2521225381_
                                             _tl2521325383_))
                                        (___match2828428285_
                                         _e2521125378_
                                         _hd2521225381_
                                         _tl2521325383_))
                                    (___match2828428285_
                                     _e2521125378_
                                     _hd2521225381_
                                     _tl2521325383_))))
                            (___match2828428285_
                             _e2521125378_
                             _hd2521225381_
                             _tl2521325383_))))
                    (___match2828428285_
                     _e2521125378_
                     _hd2521225381_
                     _tl2521325383_))
                (___match2828428285_
                 _e2521125378_
                 _hd2521225381_
                 _tl2521325383_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828428285_
                                                     _e2521125378_
                                                     _hd2521225381_
                                                     _tl2521325383_))))
                                            (___match2828428285_
                                             _e2521125378_
                                             _hd2521225381_
                                             _tl2521325383_))))
                                    (let ((_-hash-ref2526725651_
                                           (reverse _-hash-ref2526325530_))
                                          (_-xkwvar2526625649_
                                           (reverse _-xkwvar2526225528_))
                                          (_key2526525647_
                                           (reverse _key2526125526_))
                                          (_-absent-value2526425645_
                                           (reverse _-absent-value2526025524_)))
                                      (if (gx#stx-null? _tl2522225407_)
                                          (let ((_L25654_ _hd2527525514_)
                                                (_L25655_
                                                 _-absent-value2526425645_)
                                                (_L25656_ _key2526525647_)
                                                (_L25657_ _-xkwvar2526625649_)
                                                (_L25658_
                                                 _-hash-ref2526725651_)
                                                (_L25659_ _hd2525125485_)
                                                (_L25660_ _hd2524225461_)
                                                (_L25661_ _hd2523325437_)
                                                (_L25662_ _tl2521925399_)
                                                (_L25663_ _hd2521825397_))
                                            (if (if (gx#identifier? _L25663_)
                                                    (if (gx#identifier?
                                                         _L25662_)
                                                        (if (gxc#runtime-identifier=?
                                                             _L25661_
                                                             'apply)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25663_
                         _L25659_)
                        (if (andmap1 gx#stx-keyword?
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g2571625719_
                                                        _g2571725721_)
                                                 (cons _g2571625719_
                                                       _g2571725721_))
                                               '()
                                               _L25656_)))
                            (if (andmap1 (lambda (_g2572325725_)
                                           (gxc#runtime-identifier=?
                                            _g2572325725_
                                            'hash-ref))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2572725730_
                                                            _g2572825732_)
                                                     (cons _g2572725730_
                                                           _g2572825732_))
                                                   '()
                                                   _L25658_)))
                                (if (andmap1 (lambda (_g2573425736_)
                                               (gxc#runtime-identifier=?
                                                _g2573425736_
                                                'absent-value))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2573825741_
                                                                _g2573925743_)
                                                         (cons _g2573825741_
                                                               _g2573925743_))
                                                       '()
                                                       _L25655_)))
                                    (andmap1 (lambda (_g2574525747_)
                                               (gx#free-identifier=?
                                                _g2574525747_
                                                _L25663_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2574925752_
                                                                _g2575025754_)
                                                         (cons _g2574925752_
                                                               _g2575025754_))
                                                       '()
                                                       _L25657_)))
                                    '#f)
                                '#f)
                            '#f)
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (___kont2782327824_
                                                 _L25654_
                                                 _L25655_
                                                 _L25656_
                                                 _L25657_
                                                 _L25658_
                                                 _L25659_
                                                 _L25660_
                                                 _L25661_
                                                 _L25662_
                                                 _L25663_)
                                                (___match2828428285_
                                                 _e2521125378_
                                                 _hd2521225381_
                                                 _tl2521325383_)))
                                          (___match2828428285_
                                           _e2521125378_
                                           _hd2521225381_
                                           _tl2521325383_)))))))
                      (_loop2525625519_ _target2525325490_ '() '() '() '()))))
                 (___match2815028151_
                  (lambda (_e2521125378_
                           _hd2521225381_
                           _tl2521325383_
                           _e2521425386_
                           _hd2521525389_
                           _tl2521625391_)
                    (if (gx#stx-pair? _hd2521525389_)
                        (let ((_e2521725394_ (gx#stx-e _hd2521525389_)))
                          (let ((_tl2521925399_ (##cdr _e2521725394_))
                                (_hd2521825397_ (##car _e2521725394_)))
                            (if (gx#stx-pair? _tl2521625391_)
                                (let ((_e2522025402_
                                       (gx#stx-e _tl2521625391_)))
                                  (let ((_tl2522225407_ (##cdr _e2522025402_))
                                        (_hd2522125405_ (##car _e2522025402_)))
                                    (if (gx#stx-pair? _hd2522125405_)
                                        (let ((_e2522325410_
                                               (gx#stx-e _hd2522125405_)))
                                          (let ((_tl2522525415_
                                                 (##cdr _e2522325410_))
                                                (_hd2522425413_
                                                 (##car _e2522325410_)))
                                            (if (gx#identifier? _hd2522425413_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2522425413_)
                                                    (if (gx#stx-pair?
                                                         _tl2522525415_)
                                                        (let ((_e2522625418_
                                                               (gx#stx-e
                                                                _tl2522525415_)))
                                                          (let ((_tl2522825423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2522625418_))
                        (_hd2522725421_ (##car _e2522625418_)))
                    (if (gx#stx-pair? _hd2522725421_)
                        (let ((_e2522925426_ (gx#stx-e _hd2522725421_)))
                          (let ((_tl2523125431_ (##cdr _e2522925426_))
                                (_hd2523025429_ (##car _e2522925426_)))
                            (if (gx#identifier? _hd2523025429_)
                                (if (gx#stx-eq? '%#ref _hd2523025429_)
                                    (if (gx#stx-pair? _tl2523125431_)
                                        (let ((_e2523225434_
                                               (gx#stx-e _tl2523125431_)))
                                          (let ((_tl2523425439_
                                                 (##cdr _e2523225434_))
                                                (_hd2523325437_
                                                 (##car _e2523225434_)))
                                            (if (gx#stx-null? _tl2523425439_)
                                                (if (gx#stx-pair?
                                                     _tl2522825423_)
                                                    (let ((_e2523525442_
                                                           (gx#stx-e
                                                            _tl2522825423_)))
                                                      (let ((_tl2523725447_
                                                             (##cdr _e2523525442_))
                                                            (_hd2523625445_
                                                             (##car _e2523525442_)))
                                                        (if (gx#stx-pair?
                                                             _hd2523625445_)
                                                            (let ((_e2523825450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2523625445_)))
                      (let ((_tl2524025455_ (##cdr _e2523825450_))
                            (_hd2523925453_ (##car _e2523825450_)))
                        (if (gx#identifier? _hd2523925453_)
                            (if (gx#stx-eq? '%#ref _hd2523925453_)
                                (if (gx#stx-pair? _tl2524025455_)
                                    (let ((_e2524125458_
                                           (gx#stx-e _tl2524025455_)))
                                      (let ((_tl2524325463_
                                             (##cdr _e2524125458_))
                                            (_hd2524225461_
                                             (##car _e2524125458_)))
                                        (if (gx#stx-null? _tl2524325463_)
                                            (if (gx#stx-pair? _tl2523725447_)
                                                (let ((_e2524425466_
                                                       (gx#stx-e
                                                        _tl2523725447_)))
                                                  (let ((_tl2524625471_
                                                         (##cdr _e2524425466_))
                                                        (_hd2524525469_
                                                         (##car _e2524425466_)))
                                                    (if (gx#stx-pair?
                                                         _hd2524525469_)
                                                        (let ((_e2524725474_
                                                               (gx#stx-e
                                                                _hd2524525469_)))
                                                          (let ((_tl2524925479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2524725474_))
                        (_hd2524825477_ (##car _e2524725474_)))
                    (if (gx#identifier? _hd2524825477_)
                        (if (gx#stx-eq? '%#ref _hd2524825477_)
                            (if (gx#stx-pair? _tl2524925479_)
                                (let ((_e2525025482_
                                       (gx#stx-e _tl2524925479_)))
                                  (let ((_tl2525225487_ (##cdr _e2525025482_))
                                        (_hd2525125485_ (##car _e2525025482_)))
                                    (if (gx#stx-null? _tl2525225487_)
                                        (if (gx#stx-pair/null? _tl2524625471_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2524625471_)
                                                      '1)
                                                (let ((___splice2782527826_
                                                       (gx#syntax-split-splice
                                                        _tl2524625471_
                                                        '1)))
                                                  (let ((_tl2525525492_
                                                         (##vector-ref
                                                          ___splice2782527826_
                                                          '1))
                                                        (_target2525325490_
                                                         (##vector-ref
                                                          ___splice2782527826_
                                                          '0)))
                                                    (if (gx#stx-pair?
                                                         _tl2525525492_)
                                                        (let ((_e2526825495_
                                                               (gx#stx-e
                                                                _tl2525525492_)))
                                                          (let ((_tl2527025500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2526825495_))
                        (_hd2526925498_ (##car _e2526825495_)))
                    (if (gx#stx-pair? _hd2526925498_)
                        (let ((_e2527125503_ (gx#stx-e _hd2526925498_)))
                          (let ((_tl2527325508_ (##cdr _e2527125503_))
                                (_hd2527225506_ (##car _e2527125503_)))
                            (if (gx#identifier? _hd2527225506_)
                                (if (gx#stx-eq? '%#ref _hd2527225506_)
                                    (if (gx#stx-pair? _tl2527325508_)
                                        (let ((_e2527425511_
                                               (gx#stx-e _tl2527325508_)))
                                          (let ((_tl2527625516_
                                                 (##cdr _e2527425511_))
                                                (_hd2527525514_
                                                 (##car _e2527425511_)))
                                            (if (gx#stx-null? _tl2527625516_)
                                                (if (gx#stx-null?
                                                     _tl2527025500_)
                                                    (___match2827828279_
                                                     _e2521125378_
                                                     _hd2521225381_
                                                     _tl2521325383_
                                                     _e2521425386_
                                                     _hd2521525389_
                                                     _tl2521625391_
                                                     _e2521725394_
                                                     _hd2521825397_
                                                     _tl2521925399_
                                                     _e2522025402_
                                                     _hd2522125405_
                                                     _tl2522225407_
                                                     _e2522325410_
                                                     _hd2522425413_
                                                     _tl2522525415_
                                                     _e2522625418_
                                                     _hd2522725421_
                                                     _tl2522825423_
                                                     _e2522925426_
                                                     _hd2523025429_
                                                     _tl2523125431_
                                                     _e2523225434_
                                                     _hd2523325437_
                                                     _tl2523425439_
                                                     _e2523525442_
                                                     _hd2523625445_
                                                     _tl2523725447_
                                                     _e2523825450_
                                                     _hd2523925453_
                                                     _tl2524025455_
                                                     _e2524125458_
                                                     _hd2524225461_
                                                     _tl2524325463_
                                                     _e2524425466_
                                                     _hd2524525469_
                                                     _tl2524625471_
                                                     _e2524725474_
                                                     _hd2524825477_
                                                     _tl2524925479_
                                                     _e2525025482_
                                                     _hd2525125485_
                                                     _tl2525225487_
                                                     ___splice2782527826_
                                                     _target2525325490_
                                                     _tl2525525492_
                                                     _e2526825495_
                                                     _hd2526925498_
                                                     _tl2527025500_
                                                     _e2527125503_
                                                     _hd2527225506_
                                                     _tl2527325508_
                                                     _e2527425511_
                                                     _hd2527525514_
                                                     _tl2527625516_)
                                                    (___match2828428285_
                                                     _e2521125378_
                                                     _hd2521225381_
                                                     _tl2521325383_))
                                                (___match2828428285_
                                                 _e2521125378_
                                                 _hd2521225381_
                                                 _tl2521325383_))))
                                        (___match2828428285_
                                         _e2521125378_
                                         _hd2521225381_
                                         _tl2521325383_))
                                    (___match2828428285_
                                     _e2521125378_
                                     _hd2521225381_
                                     _tl2521325383_))
                                (___match2828428285_
                                 _e2521125378_
                                 _hd2521225381_
                                 _tl2521325383_))))
                        (___match2828428285_
                         _e2521125378_
                         _hd2521225381_
                         _tl2521325383_))))
                (___match2828428285_
                 _e2521125378_
                 _hd2521225381_
                 _tl2521325383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2828428285_
                                                 _e2521125378_
                                                 _hd2521225381_
                                                 _tl2521325383_))
                                            (___match2828428285_
                                             _e2521125378_
                                             _hd2521225381_
                                             _tl2521325383_))
                                        (___match2828428285_
                                         _e2521125378_
                                         _hd2521225381_
                                         _tl2521325383_))))
                                (___match2828428285_
                                 _e2521125378_
                                 _hd2521225381_
                                 _tl2521325383_))
                            (___match2828428285_
                             _e2521125378_
                             _hd2521225381_
                             _tl2521325383_))
                        (___match2828428285_
                         _e2521125378_
                         _hd2521225381_
                         _tl2521325383_))))
                (___match2828428285_
                 _e2521125378_
                 _hd2521225381_
                 _tl2521325383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2828428285_
                                                 _e2521125378_
                                                 _hd2521225381_
                                                 _tl2521325383_))
                                            (___match2828428285_
                                             _e2521125378_
                                             _hd2521225381_
                                             _tl2521325383_))))
                                    (___match2828428285_
                                     _e2521125378_
                                     _hd2521225381_
                                     _tl2521325383_))
                                (___match2828428285_
                                 _e2521125378_
                                 _hd2521225381_
                                 _tl2521325383_))
                            (___match2828428285_
                             _e2521125378_
                             _hd2521225381_
                             _tl2521325383_))))
                    (___match2828428285_
                     _e2521125378_
                     _hd2521225381_
                     _tl2521325383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828428285_
                                                     _e2521125378_
                                                     _hd2521225381_
                                                     _tl2521325383_))
                                                (___match2828428285_
                                                 _e2521125378_
                                                 _hd2521225381_
                                                 _tl2521325383_))))
                                        (___match2828428285_
                                         _e2521125378_
                                         _hd2521225381_
                                         _tl2521325383_))
                                    (___match2828428285_
                                     _e2521125378_
                                     _hd2521225381_
                                     _tl2521325383_))
                                (___match2828428285_
                                 _e2521125378_
                                 _hd2521225381_
                                 _tl2521325383_))))
                        (___match2828428285_
                         _e2521125378_
                         _hd2521225381_
                         _tl2521325383_))))
                (___match2828428285_
                 _e2521125378_
                 _hd2521225381_
                 _tl2521325383_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2828428285_
                                                     _e2521125378_
                                                     _hd2521225381_
                                                     _tl2521325383_))
                                                (___match2828428285_
                                                 _e2521125378_
                                                 _hd2521225381_
                                                 _tl2521325383_))))
                                        (___match2828428285_
                                         _e2521125378_
                                         _hd2521225381_
                                         _tl2521325383_))))
                                (___match2828428285_
                                 _e2521125378_
                                 _hd2521225381_
                                 _tl2521325383_))))
                        (___match2828428285_
                         _e2521125378_
                         _hd2521225381_
                         _tl2521325383_))))
                 (___match2813828139_
                  (lambda (_e2514425769_
                           _hd2514525772_
                           _tl2514625774_
                           _e2514725777_
                           _hd2514825780_
                           _tl2514925782_
                           _e2515025785_
                           _hd2515125788_
                           _tl2515225790_
                           _e2515325793_
                           _hd2515425796_
                           _tl2515525798_
                           _e2515625801_
                           _hd2515725804_
                           _tl2515825806_
                           _e2515925809_
                           _hd2516025812_
                           _tl2516125814_
                           _e2516225817_
                           _hd2516325820_
                           _tl2516425822_
                           _e2516525825_
                           _hd2516625828_
                           _tl2516725830_
                           _e2516825833_
                           _hd2516925836_
                           _tl2517025838_
                           _e2517125841_
                           _hd2517225844_
                           _tl2517325846_
                           _e2517425849_
                           _hd2517525852_
                           _tl2517625854_
                           _e2517725857_
                           _hd2517825860_
                           _tl2517925862_
                           _e2518025865_
                           _hd2518125868_
                           _tl2518225870_
                           _e2518325873_
                           _hd2518425876_
                           _tl2518525878_
                           _e2518625881_
                           _hd2518725884_
                           _tl2518825886_
                           _e2518925889_
                           _hd2519025892_
                           _tl2519125894_
                           _e2519225897_
                           _hd2519325900_
                           _tl2519425902_
                           _e2519525905_
                           _hd2519625908_
                           _tl2519725910_
                           _e2519825913_
                           _hd2519925916_
                           _tl2520025918_)
                    (let ((_L25921_ _hd2519925916_)
                          (_L25922_ _hd2519025892_)
                          (_L25923_ _hd2518125868_)
                          (_L25924_ _hd2517225844_)
                          (_L25925_ _hd2516325820_)
                          (_L25926_ _hd2514825780_))
                      (if (if (gx#identifier? _L25926_)
                              (if (gxc#runtime-identifier=? _L25925_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L25924_
                                       'keyword-dispatch)
                                      (gx#free-identifier=? _L25926_ _L25921_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2782127822_
                           _L25921_
                           _L25922_
                           _L25923_
                           _L25924_
                           _L25925_
                           _L25926_)
                          (___match2815028151_
                           _e2514425769_
                           _hd2514525772_
                           _tl2514625774_
                           _e2514725777_
                           _hd2514825780_
                           _tl2514925782_)))))
                 (___match2806228063_
                  (lambda (_e2514425769_
                           _hd2514525772_
                           _tl2514625774_
                           _e2514725777_
                           _hd2514825780_
                           _tl2514925782_
                           _e2515025785_
                           _hd2515125788_
                           _tl2515225790_
                           _e2515325793_
                           _hd2515425796_
                           _tl2515525798_
                           _e2515625801_
                           _hd2515725804_
                           _tl2515825806_
                           _e2515925809_
                           _hd2516025812_
                           _tl2516125814_
                           _e2516225817_
                           _hd2516325820_
                           _tl2516425822_
                           _e2516525825_
                           _hd2516625828_
                           _tl2516725830_
                           _e2516825833_
                           _hd2516925836_
                           _tl2517025838_
                           _e2517125841_
                           _hd2517225844_
                           _tl2517325846_)
                    (if (gx#stx-pair? _tl2516725830_)
                        (let ((_e2517425849_ (gx#stx-e _tl2516725830_)))
                          (let ((_tl2517625854_ (##cdr _e2517425849_))
                                (_hd2517525852_ (##car _e2517425849_)))
                            (if (gx#stx-pair? _hd2517525852_)
                                (let ((_e2517725857_
                                       (gx#stx-e _hd2517525852_)))
                                  (let ((_tl2517925862_ (##cdr _e2517725857_))
                                        (_hd2517825860_ (##car _e2517725857_)))
                                    (if (gx#identifier? _hd2517825860_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2517825860_)
                                            (if (gx#stx-pair? _tl2517925862_)
                                                (let ((_e2518025865_
                                                       (gx#stx-e
                                                        _tl2517925862_)))
                                                  (let ((_tl2518225870_
                                                         (##cdr _e2518025865_))
                                                        (_hd2518125868_
                                                         (##car _e2518025865_)))
                                                    (if (gx#stx-null?
                                                         _tl2518225870_)
                                                        (if (gx#stx-pair?
                                                             _tl2517625854_)
                                                            (let ((_e2518325873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2517625854_)))
                      (let ((_tl2518525878_ (##cdr _e2518325873_))
                            (_hd2518425876_ (##car _e2518325873_)))
                        (if (gx#stx-pair? _hd2518425876_)
                            (let ((_e2518625881_ (gx#stx-e _hd2518425876_)))
                              (let ((_tl2518825886_ (##cdr _e2518625881_))
                                    (_hd2518725884_ (##car _e2518625881_)))
                                (if (gx#identifier? _hd2518725884_)
                                    (if (gx#stx-eq? '%#ref _hd2518725884_)
                                        (if (gx#stx-pair? _tl2518825886_)
                                            (let ((_e2518925889_
                                                   (gx#stx-e _tl2518825886_)))
                                              (let ((_tl2519125894_
                                                     (##cdr _e2518925889_))
                                                    (_hd2519025892_
                                                     (##car _e2518925889_)))
                                                (if (gx#stx-null?
                                                     _tl2519125894_)
                                                    (if (gx#stx-pair?
                                                         _tl2518525878_)
                                                        (let ((_e2519225897_
                                                               (gx#stx-e
                                                                _tl2518525878_)))
                                                          (let ((_tl2519425902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2519225897_))
                        (_hd2519325900_ (##car _e2519225897_)))
                    (if (gx#stx-pair? _hd2519325900_)
                        (let ((_e2519525905_ (gx#stx-e _hd2519325900_)))
                          (let ((_tl2519725910_ (##cdr _e2519525905_))
                                (_hd2519625908_ (##car _e2519525905_)))
                            (if (gx#identifier? _hd2519625908_)
                                (if (gx#stx-eq? '%#ref _hd2519625908_)
                                    (if (gx#stx-pair? _tl2519725910_)
                                        (let ((_e2519825913_
                                               (gx#stx-e _tl2519725910_)))
                                          (let ((_tl2520025918_
                                                 (##cdr _e2519825913_))
                                                (_hd2519925916_
                                                 (##car _e2519825913_)))
                                            (if (gx#stx-null? _tl2520025918_)
                                                (if (gx#stx-null?
                                                     _tl2519425902_)
                                                    (if (gx#stx-null?
                                                         _tl2515225790_)
                                                        (___match2813828139_
                                                         _e2514425769_
                                                         _hd2514525772_
                                                         _tl2514625774_
                                                         _e2514725777_
                                                         _hd2514825780_
                                                         _tl2514925782_
                                                         _e2515025785_
                                                         _hd2515125788_
                                                         _tl2515225790_
                                                         _e2515325793_
                                                         _hd2515425796_
                                                         _tl2515525798_
                                                         _e2515625801_
                                                         _hd2515725804_
                                                         _tl2515825806_
                                                         _e2515925809_
                                                         _hd2516025812_
                                                         _tl2516125814_
                                                         _e2516225817_
                                                         _hd2516325820_
                                                         _tl2516425822_
                                                         _e2516525825_
                                                         _hd2516625828_
                                                         _tl2516725830_
                                                         _e2516825833_
                                                         _hd2516925836_
                                                         _tl2517025838_
                                                         _e2517125841_
                                                         _hd2517225844_
                                                         _tl2517325846_
                                                         _e2517425849_
                                                         _hd2517525852_
                                                         _tl2517625854_
                                                         _e2517725857_
                                                         _hd2517825860_
                                                         _tl2517925862_
                                                         _e2518025865_
                                                         _hd2518125868_
                                                         _tl2518225870_
                                                         _e2518325873_
                                                         _hd2518425876_
                                                         _tl2518525878_
                                                         _e2518625881_
                                                         _hd2518725884_
                                                         _tl2518825886_
                                                         _e2518925889_
                                                         _hd2519025892_
                                                         _tl2519125894_
                                                         _e2519225897_
                                                         _hd2519325900_
                                                         _tl2519425902_
                                                         _e2519525905_
                                                         _hd2519625908_
                                                         _tl2519725910_
                                                         _e2519825913_
                                                         _hd2519925916_
                                                         _tl2520025918_)
                                                        (___match2815028151_
                                                         _e2514425769_
                                                         _hd2514525772_
                                                         _tl2514625774_
                                                         _e2514725777_
                                                         _hd2514825780_
                                                         _tl2514925782_))
                                                    (___match2815028151_
                                                     _e2514425769_
                                                     _hd2514525772_
                                                     _tl2514625774_
                                                     _e2514725777_
                                                     _hd2514825780_
                                                     _tl2514925782_))
                                                (___match2815028151_
                                                 _e2514425769_
                                                 _hd2514525772_
                                                 _tl2514625774_
                                                 _e2514725777_
                                                 _hd2514825780_
                                                 _tl2514925782_))))
                                        (___match2815028151_
                                         _e2514425769_
                                         _hd2514525772_
                                         _tl2514625774_
                                         _e2514725777_
                                         _hd2514825780_
                                         _tl2514925782_))
                                    (___match2815028151_
                                     _e2514425769_
                                     _hd2514525772_
                                     _tl2514625774_
                                     _e2514725777_
                                     _hd2514825780_
                                     _tl2514925782_))
                                (___match2815028151_
                                 _e2514425769_
                                 _hd2514525772_
                                 _tl2514625774_
                                 _e2514725777_
                                 _hd2514825780_
                                 _tl2514925782_))))
                        (___match2815028151_
                         _e2514425769_
                         _hd2514525772_
                         _tl2514625774_
                         _e2514725777_
                         _hd2514825780_
                         _tl2514925782_))))
                (___match2815028151_
                 _e2514425769_
                 _hd2514525772_
                 _tl2514625774_
                 _e2514725777_
                 _hd2514825780_
                 _tl2514925782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815028151_
                                                     _e2514425769_
                                                     _hd2514525772_
                                                     _tl2514625774_
                                                     _e2514725777_
                                                     _hd2514825780_
                                                     _tl2514925782_))))
                                            (___match2815028151_
                                             _e2514425769_
                                             _hd2514525772_
                                             _tl2514625774_
                                             _e2514725777_
                                             _hd2514825780_
                                             _tl2514925782_))
                                        (___match2815028151_
                                         _e2514425769_
                                         _hd2514525772_
                                         _tl2514625774_
                                         _e2514725777_
                                         _hd2514825780_
                                         _tl2514925782_))
                                    (___match2815028151_
                                     _e2514425769_
                                     _hd2514525772_
                                     _tl2514625774_
                                     _e2514725777_
                                     _hd2514825780_
                                     _tl2514925782_))))
                            (___match2815028151_
                             _e2514425769_
                             _hd2514525772_
                             _tl2514625774_
                             _e2514725777_
                             _hd2514825780_
                             _tl2514925782_))))
                    (___match2815028151_
                     _e2514425769_
                     _hd2514525772_
                     _tl2514625774_
                     _e2514725777_
                     _hd2514825780_
                     _tl2514925782_))
                (___match2815028151_
                 _e2514425769_
                 _hd2514525772_
                 _tl2514625774_
                 _e2514725777_
                 _hd2514825780_
                 _tl2514925782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2815028151_
                                                 _e2514425769_
                                                 _hd2514525772_
                                                 _tl2514625774_
                                                 _e2514725777_
                                                 _hd2514825780_
                                                 _tl2514925782_))
                                            (___match2815028151_
                                             _e2514425769_
                                             _hd2514525772_
                                             _tl2514625774_
                                             _e2514725777_
                                             _hd2514825780_
                                             _tl2514925782_))
                                        (___match2815028151_
                                         _e2514425769_
                                         _hd2514525772_
                                         _tl2514625774_
                                         _e2514725777_
                                         _hd2514825780_
                                         _tl2514925782_))))
                                (___match2815028151_
                                 _e2514425769_
                                 _hd2514525772_
                                 _tl2514625774_
                                 _e2514725777_
                                 _hd2514825780_
                                 _tl2514925782_))))
                        (___match2815028151_
                         _e2514425769_
                         _hd2514525772_
                         _tl2514625774_
                         _e2514725777_
                         _hd2514825780_
                         _tl2514925782_))))
                 (___match2799827999_
                  (lambda (_e2514425769_
                           _hd2514525772_
                           _tl2514625774_
                           _e2514725777_
                           _hd2514825780_
                           _tl2514925782_)
                    (if (gx#stx-pair? _tl2514925782_)
                        (let ((_e2515025785_ (gx#stx-e _tl2514925782_)))
                          (let ((_tl2515225790_ (##cdr _e2515025785_))
                                (_hd2515125788_ (##car _e2515025785_)))
                            (if (gx#stx-pair? _hd2515125788_)
                                (let ((_e2515325793_
                                       (gx#stx-e _hd2515125788_)))
                                  (let ((_tl2515525798_ (##cdr _e2515325793_))
                                        (_hd2515425796_ (##car _e2515325793_)))
                                    (if (gx#identifier? _hd2515425796_)
                                        (if (gx#stx-eq? '%#call _hd2515425796_)
                                            (if (gx#stx-pair? _tl2515525798_)
                                                (let ((_e2515625801_
                                                       (gx#stx-e
                                                        _tl2515525798_)))
                                                  (let ((_tl2515825806_
                                                         (##cdr _e2515625801_))
                                                        (_hd2515725804_
                                                         (##car _e2515625801_)))
                                                    (if (gx#stx-pair?
                                                         _hd2515725804_)
                                                        (let ((_e2515925809_
                                                               (gx#stx-e
                                                                _hd2515725804_)))
                                                          (let ((_tl2516125814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2515925809_))
                        (_hd2516025812_ (##car _e2515925809_)))
                    (if (gx#identifier? _hd2516025812_)
                        (if (gx#stx-eq? '%#ref _hd2516025812_)
                            (if (gx#stx-pair? _tl2516125814_)
                                (let ((_e2516225817_
                                       (gx#stx-e _tl2516125814_)))
                                  (let ((_tl2516425822_ (##cdr _e2516225817_))
                                        (_hd2516325820_ (##car _e2516225817_)))
                                    (if (gx#stx-null? _tl2516425822_)
                                        (if (gx#stx-pair? _tl2515825806_)
                                            (let ((_e2516525825_
                                                   (gx#stx-e _tl2515825806_)))
                                              (let ((_tl2516725830_
                                                     (##cdr _e2516525825_))
                                                    (_hd2516625828_
                                                     (##car _e2516525825_)))
                                                (if (gx#stx-pair?
                                                     _hd2516625828_)
                                                    (let ((_e2516825833_
                                                           (gx#stx-e
                                                            _hd2516625828_)))
                                                      (let ((_tl2517025838_
                                                             (##cdr _e2516825833_))
                                                            (_hd2516925836_
                                                             (##car _e2516825833_)))
                                                        (if (gx#identifier?
                                                             _hd2516925836_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2516925836_)
                        (if (gx#stx-pair? _tl2517025838_)
                            (let ((_e2517125841_ (gx#stx-e _tl2517025838_)))
                              (let ((_tl2517325846_ (##cdr _e2517125841_))
                                    (_hd2517225844_ (##car _e2517125841_)))
                                (if (gx#stx-null? _tl2517325846_)
                                    (if (gx#stx-pair? _tl2516725830_)
                                        (let ((_e2517425849_
                                               (gx#stx-e _tl2516725830_)))
                                          (let ((_tl2517625854_
                                                 (##cdr _e2517425849_))
                                                (_hd2517525852_
                                                 (##car _e2517425849_)))
                                            (if (gx#stx-pair? _hd2517525852_)
                                                (let ((_e2517725857_
                                                       (gx#stx-e
                                                        _hd2517525852_)))
                                                  (let ((_tl2517925862_
                                                         (##cdr _e2517725857_))
                                                        (_hd2517825860_
                                                         (##car _e2517725857_)))
                                                    (if (gx#identifier?
                                                         _hd2517825860_)
                                                        (if (gx#stx-eq?
                                                             '%#quote
                                                             _hd2517825860_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2517925862_)
                        (let ((_e2518025865_ (gx#stx-e _tl2517925862_)))
                          (let ((_tl2518225870_ (##cdr _e2518025865_))
                                (_hd2518125868_ (##car _e2518025865_)))
                            (if (gx#stx-null? _tl2518225870_)
                                (if (gx#stx-pair? _tl2517625854_)
                                    (let ((_e2518325873_
                                           (gx#stx-e _tl2517625854_)))
                                      (let ((_tl2518525878_
                                             (##cdr _e2518325873_))
                                            (_hd2518425876_
                                             (##car _e2518325873_)))
                                        (if (gx#stx-pair? _hd2518425876_)
                                            (let ((_e2518625881_
                                                   (gx#stx-e _hd2518425876_)))
                                              (let ((_tl2518825886_
                                                     (##cdr _e2518625881_))
                                                    (_hd2518725884_
                                                     (##car _e2518625881_)))
                                                (if (gx#identifier?
                                                     _hd2518725884_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd2518725884_)
                                                        (if (gx#stx-pair?
                                                             _tl2518825886_)
                                                            (let ((_e2518925889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2518825886_)))
                      (let ((_tl2519125894_ (##cdr _e2518925889_))
                            (_hd2519025892_ (##car _e2518925889_)))
                        (if (gx#stx-null? _tl2519125894_)
                            (if (gx#stx-pair? _tl2518525878_)
                                (let ((_e2519225897_
                                       (gx#stx-e _tl2518525878_)))
                                  (let ((_tl2519425902_ (##cdr _e2519225897_))
                                        (_hd2519325900_ (##car _e2519225897_)))
                                    (if (gx#stx-pair? _hd2519325900_)
                                        (let ((_e2519525905_
                                               (gx#stx-e _hd2519325900_)))
                                          (let ((_tl2519725910_
                                                 (##cdr _e2519525905_))
                                                (_hd2519625908_
                                                 (##car _e2519525905_)))
                                            (if (gx#identifier? _hd2519625908_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2519625908_)
                                                    (if (gx#stx-pair?
                                                         _tl2519725910_)
                                                        (let ((_e2519825913_
                                                               (gx#stx-e
                                                                _tl2519725910_)))
                                                          (let ((_tl2520025918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2519825913_))
                        (_hd2519925916_ (##car _e2519825913_)))
                    (if (gx#stx-null? _tl2520025918_)
                        (if (gx#stx-null? _tl2519425902_)
                            (if (gx#stx-null? _tl2515225790_)
                                (___match2813828139_
                                 _e2514425769_
                                 _hd2514525772_
                                 _tl2514625774_
                                 _e2514725777_
                                 _hd2514825780_
                                 _tl2514925782_
                                 _e2515025785_
                                 _hd2515125788_
                                 _tl2515225790_
                                 _e2515325793_
                                 _hd2515425796_
                                 _tl2515525798_
                                 _e2515625801_
                                 _hd2515725804_
                                 _tl2515825806_
                                 _e2515925809_
                                 _hd2516025812_
                                 _tl2516125814_
                                 _e2516225817_
                                 _hd2516325820_
                                 _tl2516425822_
                                 _e2516525825_
                                 _hd2516625828_
                                 _tl2516725830_
                                 _e2516825833_
                                 _hd2516925836_
                                 _tl2517025838_
                                 _e2517125841_
                                 _hd2517225844_
                                 _tl2517325846_
                                 _e2517425849_
                                 _hd2517525852_
                                 _tl2517625854_
                                 _e2517725857_
                                 _hd2517825860_
                                 _tl2517925862_
                                 _e2518025865_
                                 _hd2518125868_
                                 _tl2518225870_
                                 _e2518325873_
                                 _hd2518425876_
                                 _tl2518525878_
                                 _e2518625881_
                                 _hd2518725884_
                                 _tl2518825886_
                                 _e2518925889_
                                 _hd2519025892_
                                 _tl2519125894_
                                 _e2519225897_
                                 _hd2519325900_
                                 _tl2519425902_
                                 _e2519525905_
                                 _hd2519625908_
                                 _tl2519725910_
                                 _e2519825913_
                                 _hd2519925916_
                                 _tl2520025918_)
                                (___match2815028151_
                                 _e2514425769_
                                 _hd2514525772_
                                 _tl2514625774_
                                 _e2514725777_
                                 _hd2514825780_
                                 _tl2514925782_))
                            (___match2815028151_
                             _e2514425769_
                             _hd2514525772_
                             _tl2514625774_
                             _e2514725777_
                             _hd2514825780_
                             _tl2514925782_))
                        (___match2815028151_
                         _e2514425769_
                         _hd2514525772_
                         _tl2514625774_
                         _e2514725777_
                         _hd2514825780_
                         _tl2514925782_))))
                (___match2815028151_
                 _e2514425769_
                 _hd2514525772_
                 _tl2514625774_
                 _e2514725777_
                 _hd2514825780_
                 _tl2514925782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815028151_
                                                     _e2514425769_
                                                     _hd2514525772_
                                                     _tl2514625774_
                                                     _e2514725777_
                                                     _hd2514825780_
                                                     _tl2514925782_))
                                                (___match2815028151_
                                                 _e2514425769_
                                                 _hd2514525772_
                                                 _tl2514625774_
                                                 _e2514725777_
                                                 _hd2514825780_
                                                 _tl2514925782_))))
                                        (___match2815028151_
                                         _e2514425769_
                                         _hd2514525772_
                                         _tl2514625774_
                                         _e2514725777_
                                         _hd2514825780_
                                         _tl2514925782_))))
                                (___match2815028151_
                                 _e2514425769_
                                 _hd2514525772_
                                 _tl2514625774_
                                 _e2514725777_
                                 _hd2514825780_
                                 _tl2514925782_))
                            (___match2815028151_
                             _e2514425769_
                             _hd2514525772_
                             _tl2514625774_
                             _e2514725777_
                             _hd2514825780_
                             _tl2514925782_))))
                    (___match2815028151_
                     _e2514425769_
                     _hd2514525772_
                     _tl2514625774_
                     _e2514725777_
                     _hd2514825780_
                     _tl2514925782_))
                (___match2815028151_
                 _e2514425769_
                 _hd2514525772_
                 _tl2514625774_
                 _e2514725777_
                 _hd2514825780_
                 _tl2514925782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815028151_
                                                     _e2514425769_
                                                     _hd2514525772_
                                                     _tl2514625774_
                                                     _e2514725777_
                                                     _hd2514825780_
                                                     _tl2514925782_))))
                                            (___match2815028151_
                                             _e2514425769_
                                             _hd2514525772_
                                             _tl2514625774_
                                             _e2514725777_
                                             _hd2514825780_
                                             _tl2514925782_))))
                                    (___match2815028151_
                                     _e2514425769_
                                     _hd2514525772_
                                     _tl2514625774_
                                     _e2514725777_
                                     _hd2514825780_
                                     _tl2514925782_))
                                (___match2815028151_
                                 _e2514425769_
                                 _hd2514525772_
                                 _tl2514625774_
                                 _e2514725777_
                                 _hd2514825780_
                                 _tl2514925782_))))
                        (___match2815028151_
                         _e2514425769_
                         _hd2514525772_
                         _tl2514625774_
                         _e2514725777_
                         _hd2514825780_
                         _tl2514925782_))
                    (___match2815028151_
                     _e2514425769_
                     _hd2514525772_
                     _tl2514625774_
                     _e2514725777_
                     _hd2514825780_
                     _tl2514925782_))
                (___match2815028151_
                 _e2514425769_
                 _hd2514525772_
                 _tl2514625774_
                 _e2514725777_
                 _hd2514825780_
                 _tl2514925782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2815028151_
                                                 _e2514425769_
                                                 _hd2514525772_
                                                 _tl2514625774_
                                                 _e2514725777_
                                                 _hd2514825780_
                                                 _tl2514925782_))))
                                        (___match2815028151_
                                         _e2514425769_
                                         _hd2514525772_
                                         _tl2514625774_
                                         _e2514725777_
                                         _hd2514825780_
                                         _tl2514925782_))
                                    (___match2815028151_
                                     _e2514425769_
                                     _hd2514525772_
                                     _tl2514625774_
                                     _e2514725777_
                                     _hd2514825780_
                                     _tl2514925782_))))
                            (___match2815028151_
                             _e2514425769_
                             _hd2514525772_
                             _tl2514625774_
                             _e2514725777_
                             _hd2514825780_
                             _tl2514925782_))
                        (___match2815028151_
                         _e2514425769_
                         _hd2514525772_
                         _tl2514625774_
                         _e2514725777_
                         _hd2514825780_
                         _tl2514925782_))
                    (___match2815028151_
                     _e2514425769_
                     _hd2514525772_
                     _tl2514625774_
                     _e2514725777_
                     _hd2514825780_
                     _tl2514925782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2815028151_
                                                     _e2514425769_
                                                     _hd2514525772_
                                                     _tl2514625774_
                                                     _e2514725777_
                                                     _hd2514825780_
                                                     _tl2514925782_))))
                                            (___match2815028151_
                                             _e2514425769_
                                             _hd2514525772_
                                             _tl2514625774_
                                             _e2514725777_
                                             _hd2514825780_
                                             _tl2514925782_))
                                        (___match2815028151_
                                         _e2514425769_
                                         _hd2514525772_
                                         _tl2514625774_
                                         _e2514725777_
                                         _hd2514825780_
                                         _tl2514925782_))))
                                (___match2815028151_
                                 _e2514425769_
                                 _hd2514525772_
                                 _tl2514625774_
                                 _e2514725777_
                                 _hd2514825780_
                                 _tl2514925782_))
                            (___match2815028151_
                             _e2514425769_
                             _hd2514525772_
                             _tl2514625774_
                             _e2514725777_
                             _hd2514825780_
                             _tl2514925782_))
                        (___match2815028151_
                         _e2514425769_
                         _hd2514525772_
                         _tl2514625774_
                         _e2514725777_
                         _hd2514825780_
                         _tl2514925782_))))
                (___match2815028151_
                 _e2514425769_
                 _hd2514525772_
                 _tl2514625774_
                 _e2514725777_
                 _hd2514825780_
                 _tl2514925782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2815028151_
                                                 _e2514425769_
                                                 _hd2514525772_
                                                 _tl2514625774_
                                                 _e2514725777_
                                                 _hd2514825780_
                                                 _tl2514925782_))
                                            (___match2815028151_
                                             _e2514425769_
                                             _hd2514525772_
                                             _tl2514625774_
                                             _e2514725777_
                                             _hd2514825780_
                                             _tl2514925782_))
                                        (___match2815028151_
                                         _e2514425769_
                                         _hd2514525772_
                                         _tl2514625774_
                                         _e2514725777_
                                         _hd2514825780_
                                         _tl2514925782_))))
                                (___match2815028151_
                                 _e2514425769_
                                 _hd2514525772_
                                 _tl2514625774_
                                 _e2514725777_
                                 _hd2514825780_
                                 _tl2514925782_))))
                        (___match2815028151_
                         _e2514425769_
                         _hd2514525772_
                         _tl2514625774_
                         _e2514725777_
                         _hd2514825780_
                         _tl2514925782_))))
                 (___match2798627987_
                  (lambda (_e2508425986_
                           _hd2508525989_
                           _tl2508625991_
                           _e2508725994_
                           _hd2508825997_
                           _tl2508925999_
                           ___splice2781727818_
                           _target2509026002_
                           _tl2509226004_)
                    (letrec ((_loop2509326007_
                              (lambda (_hd2509126010_ _arg2509726012_)
                                (if (gx#stx-pair? _hd2509126010_)
                                    (let ((_e2509426015_
                                           (gx#stx-e _hd2509126010_)))
                                      (let ((_lp-tl2509626020_
                                             (##cdr _e2509426015_))
                                            (_lp-hd2509526018_
                                             (##car _e2509426015_)))
                                        (_loop2509326007_
                                         _lp-tl2509626020_
                                         (cons _lp-hd2509526018_
                                               _arg2509726012_))))
                                    (let ((_arg2509826023_
                                           (reverse _arg2509726012_)))
                                      (if (gx#stx-pair? _tl2508925999_)
                                          (let ((_e2509926026_
                                                 (gx#stx-e _tl2508925999_)))
                                            (let ((_tl2510126031_
                                                   (##cdr _e2509926026_))
                                                  (_hd2510026029_
                                                   (##car _e2509926026_)))
                                              (if (gx#stx-pair? _hd2510026029_)
                                                  (let ((_e2510226034_
                                                         (gx#stx-e
                                                          _hd2510026029_)))
                                                    (let ((_tl2510426039_
                                                           (##cdr _e2510226034_))
                                                          (_hd2510326037_
                                                           (##car _e2510226034_)))
                                                      (if (gx#identifier?
                                                           _hd2510326037_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2510326037_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2510426039_)
                          (let ((_e2510526042_ (gx#stx-e _tl2510426039_)))
                            (let ((_tl2510726047_ (##cdr _e2510526042_))
                                  (_hd2510626045_ (##car _e2510526042_)))
                              (if (gx#stx-pair? _hd2510626045_)
                                  (let ((_e2510826050_
                                         (gx#stx-e _hd2510626045_)))
                                    (let ((_tl2511026055_
                                           (##cdr _e2510826050_))
                                          (_hd2510926053_
                                           (##car _e2510826050_)))
                                      (if (gx#identifier? _hd2510926053_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2510926053_)
                                              (if (gx#stx-pair? _tl2511026055_)
                                                  (let ((_e2511126058_
                                                         (gx#stx-e
                                                          _tl2511026055_)))
                                                    (let ((_tl2511326063_
                                                           (##cdr _e2511126058_))
                                                          (_hd2511226061_
                                                           (##car _e2511126058_)))
                                                      (if (gx#stx-null?
                                                           _tl2511326063_)
                                                          (if (gx#stx-pair?
                                                               _tl2510726047_)
                                                              (let ((_e2511426066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2510726047_)))
                        (let ((_tl2511626071_ (##cdr _e2511426066_))
                              (_hd2511526069_ (##car _e2511426066_)))
                          (if (gx#stx-pair? _hd2511526069_)
                              (let ((_e2511726074_ (gx#stx-e _hd2511526069_)))
                                (let ((_tl2511926079_ (##cdr _e2511726074_))
                                      (_hd2511826077_ (##car _e2511726074_)))
                                  (if (gx#identifier? _hd2511826077_)
                                      (if (gx#stx-eq? '%#ref _hd2511826077_)
                                          (if (gx#stx-pair? _tl2511926079_)
                                              (let ((_e2512026082_
                                                     (gx#stx-e
                                                      _tl2511926079_)))
                                                (let ((_tl2512226087_
                                                       (##cdr _e2512026082_))
                                                      (_hd2512126085_
                                                       (##car _e2512026082_)))
                                                  (if (gx#stx-null?
                                                       _tl2512226087_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2511626071_)
                                                          (let ((___splice2781927820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2511626071_ '0)))
                    (let ((_tl2512526092_
                           (##vector-ref ___splice2781927820_ '1))
                          (_target2512326090_
                           (##vector-ref ___splice2781927820_ '0)))
                      (if (gx#stx-null? _tl2512526092_)
                          (letrec ((_loop2512626095_
                                    (lambda (_hd2512426098_ _xarg2513026100_)
                                      (if (gx#stx-pair? _hd2512426098_)
                                          (let ((_e2512726103_
                                                 (gx#stx-e _hd2512426098_)))
                                            (let ((_lp-tl2512926108_
                                                   (##cdr _e2512726103_))
                                                  (_lp-hd2512826106_
                                                   (##car _e2512726103_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2512826106_)
                                                  (let ((_e2513226111_
                                                         (gx#stx-e
                                                          _lp-hd2512826106_)))
                                                    (let ((_tl2513426116_
                                                           (##cdr _e2513226111_))
                                                          (_hd2513326114_
                                                           (##car _e2513226111_)))
                                                      (if (gx#identifier?
                                                           _hd2513326114_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2513326114_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2513426116_)
                          (let ((_e2513526119_ (gx#stx-e _tl2513426116_)))
                            (let ((_tl2513726124_ (##cdr _e2513526119_))
                                  (_hd2513626122_ (##car _e2513526119_)))
                              (if (gx#stx-null? _tl2513726124_)
                                  (_loop2512626095_
                                   _lp-tl2512926108_
                                   (cons _hd2513626122_ _xarg2513026100_))
                                  (___match2806228063_
                                   _e2508425986_
                                   _hd2508525989_
                                   _tl2508625991_
                                   _e2508725994_
                                   _hd2508825997_
                                   _tl2508925999_
                                   _e2509926026_
                                   _hd2510026029_
                                   _tl2510126031_
                                   _e2510226034_
                                   _hd2510326037_
                                   _tl2510426039_
                                   _e2510526042_
                                   _hd2510626045_
                                   _tl2510726047_
                                   _e2510826050_
                                   _hd2510926053_
                                   _tl2511026055_
                                   _e2511126058_
                                   _hd2511226061_
                                   _tl2511326063_
                                   _e2511426066_
                                   _hd2511526069_
                                   _tl2511626071_
                                   _e2511726074_
                                   _hd2511826077_
                                   _tl2511926079_
                                   _e2512026082_
                                   _hd2512126085_
                                   _tl2512226087_))))
                          (___match2806228063_
                           _e2508425986_
                           _hd2508525989_
                           _tl2508625991_
                           _e2508725994_
                           _hd2508825997_
                           _tl2508925999_
                           _e2509926026_
                           _hd2510026029_
                           _tl2510126031_
                           _e2510226034_
                           _hd2510326037_
                           _tl2510426039_
                           _e2510526042_
                           _hd2510626045_
                           _tl2510726047_
                           _e2510826050_
                           _hd2510926053_
                           _tl2511026055_
                           _e2511126058_
                           _hd2511226061_
                           _tl2511326063_
                           _e2511426066_
                           _hd2511526069_
                           _tl2511626071_
                           _e2511726074_
                           _hd2511826077_
                           _tl2511926079_
                           _e2512026082_
                           _hd2512126085_
                           _tl2512226087_))
                      (___match2806228063_
                       _e2508425986_
                       _hd2508525989_
                       _tl2508625991_
                       _e2508725994_
                       _hd2508825997_
                       _tl2508925999_
                       _e2509926026_
                       _hd2510026029_
                       _tl2510126031_
                       _e2510226034_
                       _hd2510326037_
                       _tl2510426039_
                       _e2510526042_
                       _hd2510626045_
                       _tl2510726047_
                       _e2510826050_
                       _hd2510926053_
                       _tl2511026055_
                       _e2511126058_
                       _hd2511226061_
                       _tl2511326063_
                       _e2511426066_
                       _hd2511526069_
                       _tl2511626071_
                       _e2511726074_
                       _hd2511826077_
                       _tl2511926079_
                       _e2512026082_
                       _hd2512126085_
                       _tl2512226087_))
                  (___match2806228063_
                   _e2508425986_
                   _hd2508525989_
                   _tl2508625991_
                   _e2508725994_
                   _hd2508825997_
                   _tl2508925999_
                   _e2509926026_
                   _hd2510026029_
                   _tl2510126031_
                   _e2510226034_
                   _hd2510326037_
                   _tl2510426039_
                   _e2510526042_
                   _hd2510626045_
                   _tl2510726047_
                   _e2510826050_
                   _hd2510926053_
                   _tl2511026055_
                   _e2511126058_
                   _hd2511226061_
                   _tl2511326063_
                   _e2511426066_
                   _hd2511526069_
                   _tl2511626071_
                   _e2511726074_
                   _hd2511826077_
                   _tl2511926079_
                   _e2512026082_
                   _hd2512126085_
                   _tl2512226087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2806228063_
                                                   _e2508425986_
                                                   _hd2508525989_
                                                   _tl2508625991_
                                                   _e2508725994_
                                                   _hd2508825997_
                                                   _tl2508925999_
                                                   _e2509926026_
                                                   _hd2510026029_
                                                   _tl2510126031_
                                                   _e2510226034_
                                                   _hd2510326037_
                                                   _tl2510426039_
                                                   _e2510526042_
                                                   _hd2510626045_
                                                   _tl2510726047_
                                                   _e2510826050_
                                                   _hd2510926053_
                                                   _tl2511026055_
                                                   _e2511126058_
                                                   _hd2511226061_
                                                   _tl2511326063_
                                                   _e2511426066_
                                                   _hd2511526069_
                                                   _tl2511626071_
                                                   _e2511726074_
                                                   _hd2511826077_
                                                   _tl2511926079_
                                                   _e2512026082_
                                                   _hd2512126085_
                                                   _tl2512226087_))))
                                          (let ((_xarg2513126127_
                                                 (reverse _xarg2513026100_)))
                                            (if (gx#stx-null? _tl2510126031_)
                                                (let ((_L26130_
                                                       _xarg2513126127_)
                                                      (_L26131_ _hd2512126085_)
                                                      (_L26132_ _hd2511226061_)
                                                      (_L26133_
                                                       _arg2509826023_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2617026173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2617126175_)
                               (cons _g2617026173_ _g2617126175_))
                             '()
                             _L26133_)))
                  (if (gxc#runtime-identifier=? _L26132_ 'make-struct-instance)
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2617726180_
                                                          _g2617826182_)
                                                   (cons _g2617726180_
                                                         _g2617826182_))
                                                 '()
                                                 _L26133_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2618426187_
                                                          _g2618526189_)
                                                   (cons _g2618426187_
                                                         _g2618526189_))
                                                 '()
                                                 _L26130_))))
                          (andmap2 gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2619126194_
                                                      _g2619226196_)
                                               (cons _g2619126194_
                                                     _g2619226196_))
                                             '()
                                             _L26133_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2619826201_
                                                      _g2619926203_)
                                               (cons _g2619826201_
                                                     _g2619926203_))
                                             '()
                                             _L26130_)))
                          '#f)
                      '#f)
                  '#f)
              (___kont2781527816_ _L26130_ _L26131_ _L26132_ _L26133_)
              (___match2806228063_
               _e2508425986_
               _hd2508525989_
               _tl2508625991_
               _e2508725994_
               _hd2508825997_
               _tl2508925999_
               _e2509926026_
               _hd2510026029_
               _tl2510126031_
               _e2510226034_
               _hd2510326037_
               _tl2510426039_
               _e2510526042_
               _hd2510626045_
               _tl2510726047_
               _e2510826050_
               _hd2510926053_
               _tl2511026055_
               _e2511126058_
               _hd2511226061_
               _tl2511326063_
               _e2511426066_
               _hd2511526069_
               _tl2511626071_
               _e2511726074_
               _hd2511826077_
               _tl2511926079_
               _e2512026082_
               _hd2512126085_
               _tl2512226087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2806228063_
                                                 _e2508425986_
                                                 _hd2508525989_
                                                 _tl2508625991_
                                                 _e2508725994_
                                                 _hd2508825997_
                                                 _tl2508925999_
                                                 _e2509926026_
                                                 _hd2510026029_
                                                 _tl2510126031_
                                                 _e2510226034_
                                                 _hd2510326037_
                                                 _tl2510426039_
                                                 _e2510526042_
                                                 _hd2510626045_
                                                 _tl2510726047_
                                                 _e2510826050_
                                                 _hd2510926053_
                                                 _tl2511026055_
                                                 _e2511126058_
                                                 _hd2511226061_
                                                 _tl2511326063_
                                                 _e2511426066_
                                                 _hd2511526069_
                                                 _tl2511626071_
                                                 _e2511726074_
                                                 _hd2511826077_
                                                 _tl2511926079_
                                                 _e2512026082_
                                                 _hd2512126085_
                                                 _tl2512226087_)))))))
                            (_loop2512626095_ _target2512326090_ '()))
                          (___match2806228063_
                           _e2508425986_
                           _hd2508525989_
                           _tl2508625991_
                           _e2508725994_
                           _hd2508825997_
                           _tl2508925999_
                           _e2509926026_
                           _hd2510026029_
                           _tl2510126031_
                           _e2510226034_
                           _hd2510326037_
                           _tl2510426039_
                           _e2510526042_
                           _hd2510626045_
                           _tl2510726047_
                           _e2510826050_
                           _hd2510926053_
                           _tl2511026055_
                           _e2511126058_
                           _hd2511226061_
                           _tl2511326063_
                           _e2511426066_
                           _hd2511526069_
                           _tl2511626071_
                           _e2511726074_
                           _hd2511826077_
                           _tl2511926079_
                           _e2512026082_
                           _hd2512126085_
                           _tl2512226087_))))
                  (___match2806228063_
                   _e2508425986_
                   _hd2508525989_
                   _tl2508625991_
                   _e2508725994_
                   _hd2508825997_
                   _tl2508925999_
                   _e2509926026_
                   _hd2510026029_
                   _tl2510126031_
                   _e2510226034_
                   _hd2510326037_
                   _tl2510426039_
                   _e2510526042_
                   _hd2510626045_
                   _tl2510726047_
                   _e2510826050_
                   _hd2510926053_
                   _tl2511026055_
                   _e2511126058_
                   _hd2511226061_
                   _tl2511326063_
                   _e2511426066_
                   _hd2511526069_
                   _tl2511626071_
                   _e2511726074_
                   _hd2511826077_
                   _tl2511926079_
                   _e2512026082_
                   _hd2512126085_
                   _tl2512226087_))
              (___match2815028151_
               _e2508425986_
               _hd2508525989_
               _tl2508625991_
               _e2508725994_
               _hd2508825997_
               _tl2508925999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2815028151_
                                               _e2508425986_
                                               _hd2508525989_
                                               _tl2508625991_
                                               _e2508725994_
                                               _hd2508825997_
                                               _tl2508925999_))
                                          (___match2815028151_
                                           _e2508425986_
                                           _hd2508525989_
                                           _tl2508625991_
                                           _e2508725994_
                                           _hd2508825997_
                                           _tl2508925999_))
                                      (___match2815028151_
                                       _e2508425986_
                                       _hd2508525989_
                                       _tl2508625991_
                                       _e2508725994_
                                       _hd2508825997_
                                       _tl2508925999_))))
                              (___match2815028151_
                               _e2508425986_
                               _hd2508525989_
                               _tl2508625991_
                               _e2508725994_
                               _hd2508825997_
                               _tl2508925999_))))
                      (___match2815028151_
                       _e2508425986_
                       _hd2508525989_
                       _tl2508625991_
                       _e2508725994_
                       _hd2508825997_
                       _tl2508925999_))
                  (___match2815028151_
                   _e2508425986_
                   _hd2508525989_
                   _tl2508625991_
                   _e2508725994_
                   _hd2508825997_
                   _tl2508925999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2815028151_
                                                   _e2508425986_
                                                   _hd2508525989_
                                                   _tl2508625991_
                                                   _e2508725994_
                                                   _hd2508825997_
                                                   _tl2508925999_))
                                              (___match2815028151_
                                               _e2508425986_
                                               _hd2508525989_
                                               _tl2508625991_
                                               _e2508725994_
                                               _hd2508825997_
                                               _tl2508925999_))
                                          (___match2815028151_
                                           _e2508425986_
                                           _hd2508525989_
                                           _tl2508625991_
                                           _e2508725994_
                                           _hd2508825997_
                                           _tl2508925999_))))
                                  (___match2815028151_
                                   _e2508425986_
                                   _hd2508525989_
                                   _tl2508625991_
                                   _e2508725994_
                                   _hd2508825997_
                                   _tl2508925999_))))
                          (___match2815028151_
                           _e2508425986_
                           _hd2508525989_
                           _tl2508625991_
                           _e2508725994_
                           _hd2508825997_
                           _tl2508925999_))
                      (___match2815028151_
                       _e2508425986_
                       _hd2508525989_
                       _tl2508625991_
                       _e2508725994_
                       _hd2508825997_
                       _tl2508925999_))
                  (___match2815028151_
                   _e2508425986_
                   _hd2508525989_
                   _tl2508625991_
                   _e2508725994_
                   _hd2508825997_
                   _tl2508925999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2815028151_
                                                   _e2508425986_
                                                   _hd2508525989_
                                                   _tl2508625991_
                                                   _e2508725994_
                                                   _hd2508825997_
                                                   _tl2508925999_))))
                                          (___match2815028151_
                                           _e2508425986_
                                           _hd2508525989_
                                           _tl2508625991_
                                           _e2508725994_
                                           _hd2508825997_
                                           _tl2508925999_)))))))
                      (_loop2509326007_ _target2509026002_ '()))))
                 (___match2797827979_
                  (lambda (_e2508425986_
                           _hd2508525989_
                           _tl2508625991_
                           _e2508725994_
                           _hd2508825997_
                           _tl2508925999_)
                    (if (gx#stx-pair/null? _hd2508825997_)
                        (let ((___splice2781727818_
                               (gx#syntax-split-splice _hd2508825997_ '0)))
                          (let ((_tl2509226004_
                                 (##vector-ref ___splice2781727818_ '1))
                                (_target2509026002_
                                 (##vector-ref ___splice2781727818_ '0)))
                            (if (gx#stx-null? _tl2509226004_)
                                (___match2798627987_
                                 _e2508425986_
                                 _hd2508525989_
                                 _tl2508625991_
                                 _e2508725994_
                                 _hd2508825997_
                                 _tl2508925999_
                                 ___splice2781727818_
                                 _target2509026002_
                                 _tl2509226004_)
                                (___match2799827999_
                                 _e2508425986_
                                 _hd2508525989_
                                 _tl2508625991_
                                 _e2508725994_
                                 _hd2508825997_
                                 _tl2508925999_))))
                        (___match2799827999_
                         _e2508425986_
                         _hd2508525989_
                         _tl2508625991_
                         _e2508725994_
                         _hd2508825997_
                         _tl2508925999_))))
                 (___match2796627967_
                  (lambda (_e2503226216_
                           _hd2503326219_
                           _tl2503426221_
                           _e2503526224_
                           _hd2503626227_
                           _tl2503726229_
                           _e2503826232_
                           _hd2503926235_
                           _tl2504026237_
                           _e2504126240_
                           _hd2504226243_
                           _tl2504326245_
                           _e2504426248_
                           _hd2504526251_
                           _tl2504626253_
                           _e2504726256_
                           _hd2504826259_
                           _tl2504926261_
                           _e2505026264_
                           _hd2505126267_
                           _tl2505226269_
                           _e2505326272_
                           _hd2505426275_
                           _tl2505526277_
                           _e2505626280_
                           _hd2505726283_
                           _tl2505826285_
                           _e2505926288_
                           _hd2506026291_
                           _tl2506126293_
                           _e2506226296_
                           _hd2506326299_
                           _tl2506426301_
                           _e2506526304_
                           _hd2506626307_
                           _tl2506726309_
                           _e2506826312_
                           _hd2506926315_
                           _tl2507026317_
                           _e2507126320_
                           _hd2507226323_
                           _tl2507326325_
                           _e2507426328_
                           _hd2507526331_
                           _tl2507626333_
                           _e2507726336_
                           _hd2507826339_
                           _tl2507926341_)
                    (let ((_L26344_ _hd2507826339_)
                          (_L26345_ _hd2506926315_)
                          (_L26346_ _hd2506026291_)
                          (_L26347_ _hd2505126267_)
                          (_L26348_ _hd2503626227_))
                      (if (if (gx#identifier? _L26348_)
                              (if (gxc#runtime-identifier=? _L26347_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L26346_
                                       'make-struct-instance)
                                      (gx#free-identifier=? _L26348_ _L26344_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2781327814_
                           _L26344_
                           _L26345_
                           _L26346_
                           _L26347_
                           _L26348_)
                          (___match2797827979_
                           _e2503226216_
                           _hd2503326219_
                           _tl2503426221_
                           _e2503526224_
                           _hd2503626227_
                           _tl2503726229_)))))
                 (___match2784427845_
                  (lambda (_e2503226216_ _hd2503326219_ _tl2503426221_)
                    (if (gx#stx-pair? _tl2503426221_)
                        (let ((_e2503526224_ (gx#stx-e _tl2503426221_)))
                          (let ((_tl2503726229_ (##cdr _e2503526224_))
                                (_hd2503626227_ (##car _e2503526224_)))
                            (if (gx#stx-pair? _tl2503726229_)
                                (let ((_e2503826232_
                                       (gx#stx-e _tl2503726229_)))
                                  (let ((_tl2504026237_ (##cdr _e2503826232_))
                                        (_hd2503926235_ (##car _e2503826232_)))
                                    (if (gx#stx-pair? _hd2503926235_)
                                        (let ((_e2504126240_
                                               (gx#stx-e _hd2503926235_)))
                                          (let ((_tl2504326245_
                                                 (##cdr _e2504126240_))
                                                (_hd2504226243_
                                                 (##car _e2504126240_)))
                                            (if (gx#identifier? _hd2504226243_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2504226243_)
                                                    (if (gx#stx-pair?
                                                         _tl2504326245_)
                                                        (let ((_e2504426248_
                                                               (gx#stx-e
                                                                _tl2504326245_)))
                                                          (let ((_tl2504626253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2504426248_))
                        (_hd2504526251_ (##car _e2504426248_)))
                    (if (gx#stx-pair? _hd2504526251_)
                        (let ((_e2504726256_ (gx#stx-e _hd2504526251_)))
                          (let ((_tl2504926261_ (##cdr _e2504726256_))
                                (_hd2504826259_ (##car _e2504726256_)))
                            (if (gx#identifier? _hd2504826259_)
                                (if (gx#stx-eq? '%#ref _hd2504826259_)
                                    (if (gx#stx-pair? _tl2504926261_)
                                        (let ((_e2505026264_
                                               (gx#stx-e _tl2504926261_)))
                                          (let ((_tl2505226269_
                                                 (##cdr _e2505026264_))
                                                (_hd2505126267_
                                                 (##car _e2505026264_)))
                                            (if (gx#stx-null? _tl2505226269_)
                                                (if (gx#stx-pair?
                                                     _tl2504626253_)
                                                    (let ((_e2505326272_
                                                           (gx#stx-e
                                                            _tl2504626253_)))
                                                      (let ((_tl2505526277_
                                                             (##cdr _e2505326272_))
                                                            (_hd2505426275_
                                                             (##car _e2505326272_)))
                                                        (if (gx#stx-pair?
                                                             _hd2505426275_)
                                                            (let ((_e2505626280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2505426275_)))
                      (let ((_tl2505826285_ (##cdr _e2505626280_))
                            (_hd2505726283_ (##car _e2505626280_)))
                        (if (gx#identifier? _hd2505726283_)
                            (if (gx#stx-eq? '%#ref _hd2505726283_)
                                (if (gx#stx-pair? _tl2505826285_)
                                    (let ((_e2505926288_
                                           (gx#stx-e _tl2505826285_)))
                                      (let ((_tl2506126293_
                                             (##cdr _e2505926288_))
                                            (_hd2506026291_
                                             (##car _e2505926288_)))
                                        (if (gx#stx-null? _tl2506126293_)
                                            (if (gx#stx-pair? _tl2505526277_)
                                                (let ((_e2506226296_
                                                       (gx#stx-e
                                                        _tl2505526277_)))
                                                  (let ((_tl2506426301_
                                                         (##cdr _e2506226296_))
                                                        (_hd2506326299_
                                                         (##car _e2506226296_)))
                                                    (if (gx#stx-pair?
                                                         _hd2506326299_)
                                                        (let ((_e2506526304_
                                                               (gx#stx-e
                                                                _hd2506326299_)))
                                                          (let ((_tl2506726309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2506526304_))
                        (_hd2506626307_ (##car _e2506526304_)))
                    (if (gx#identifier? _hd2506626307_)
                        (if (gx#stx-eq? '%#ref _hd2506626307_)
                            (if (gx#stx-pair? _tl2506726309_)
                                (let ((_e2506826312_
                                       (gx#stx-e _tl2506726309_)))
                                  (let ((_tl2507026317_ (##cdr _e2506826312_))
                                        (_hd2506926315_ (##car _e2506826312_)))
                                    (if (gx#stx-null? _tl2507026317_)
                                        (if (gx#stx-pair? _tl2506426301_)
                                            (let ((_e2507126320_
                                                   (gx#stx-e _tl2506426301_)))
                                              (let ((_tl2507326325_
                                                     (##cdr _e2507126320_))
                                                    (_hd2507226323_
                                                     (##car _e2507126320_)))
                                                (if (gx#stx-pair?
                                                     _hd2507226323_)
                                                    (let ((_e2507426328_
                                                           (gx#stx-e
                                                            _hd2507226323_)))
                                                      (let ((_tl2507626333_
                                                             (##cdr _e2507426328_))
                                                            (_hd2507526331_
                                                             (##car _e2507426328_)))
                                                        (if (gx#identifier?
                                                             _hd2507526331_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2507526331_)
                        (if (gx#stx-pair? _tl2507626333_)
                            (let ((_e2507726336_ (gx#stx-e _tl2507626333_)))
                              (let ((_tl2507926341_ (##cdr _e2507726336_))
                                    (_hd2507826339_ (##car _e2507726336_)))
                                (if (gx#stx-null? _tl2507926341_)
                                    (if (gx#stx-null? _tl2507326325_)
                                        (if (gx#stx-null? _tl2504026237_)
                                            (___match2796627967_
                                             _e2503226216_
                                             _hd2503326219_
                                             _tl2503426221_
                                             _e2503526224_
                                             _hd2503626227_
                                             _tl2503726229_
                                             _e2503826232_
                                             _hd2503926235_
                                             _tl2504026237_
                                             _e2504126240_
                                             _hd2504226243_
                                             _tl2504326245_
                                             _e2504426248_
                                             _hd2504526251_
                                             _tl2504626253_
                                             _e2504726256_
                                             _hd2504826259_
                                             _tl2504926261_
                                             _e2505026264_
                                             _hd2505126267_
                                             _tl2505226269_
                                             _e2505326272_
                                             _hd2505426275_
                                             _tl2505526277_
                                             _e2505626280_
                                             _hd2505726283_
                                             _tl2505826285_
                                             _e2505926288_
                                             _hd2506026291_
                                             _tl2506126293_
                                             _e2506226296_
                                             _hd2506326299_
                                             _tl2506426301_
                                             _e2506526304_
                                             _hd2506626307_
                                             _tl2506726309_
                                             _e2506826312_
                                             _hd2506926315_
                                             _tl2507026317_
                                             _e2507126320_
                                             _hd2507226323_
                                             _tl2507326325_
                                             _e2507426328_
                                             _hd2507526331_
                                             _tl2507626333_
                                             _e2507726336_
                                             _hd2507826339_
                                             _tl2507926341_)
                                            (___match2797827979_
                                             _e2503226216_
                                             _hd2503326219_
                                             _tl2503426221_
                                             _e2503526224_
                                             _hd2503626227_
                                             _tl2503726229_))
                                        (___match2797827979_
                                         _e2503226216_
                                         _hd2503326219_
                                         _tl2503426221_
                                         _e2503526224_
                                         _hd2503626227_
                                         _tl2503726229_))
                                    (___match2797827979_
                                     _e2503226216_
                                     _hd2503326219_
                                     _tl2503426221_
                                     _e2503526224_
                                     _hd2503626227_
                                     _tl2503726229_))))
                            (___match2797827979_
                             _e2503226216_
                             _hd2503326219_
                             _tl2503426221_
                             _e2503526224_
                             _hd2503626227_
                             _tl2503726229_))
                        (___match2797827979_
                         _e2503226216_
                         _hd2503326219_
                         _tl2503426221_
                         _e2503526224_
                         _hd2503626227_
                         _tl2503726229_))
                    (___match2797827979_
                     _e2503226216_
                     _hd2503326219_
                     _tl2503426221_
                     _e2503526224_
                     _hd2503626227_
                     _tl2503726229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2797827979_
                                                     _e2503226216_
                                                     _hd2503326219_
                                                     _tl2503426221_
                                                     _e2503526224_
                                                     _hd2503626227_
                                                     _tl2503726229_))))
                                            (___match2797827979_
                                             _e2503226216_
                                             _hd2503326219_
                                             _tl2503426221_
                                             _e2503526224_
                                             _hd2503626227_
                                             _tl2503726229_))
                                        (___match2797827979_
                                         _e2503226216_
                                         _hd2503326219_
                                         _tl2503426221_
                                         _e2503526224_
                                         _hd2503626227_
                                         _tl2503726229_))))
                                (___match2797827979_
                                 _e2503226216_
                                 _hd2503326219_
                                 _tl2503426221_
                                 _e2503526224_
                                 _hd2503626227_
                                 _tl2503726229_))
                            (___match2797827979_
                             _e2503226216_
                             _hd2503326219_
                             _tl2503426221_
                             _e2503526224_
                             _hd2503626227_
                             _tl2503726229_))
                        (___match2797827979_
                         _e2503226216_
                         _hd2503326219_
                         _tl2503426221_
                         _e2503526224_
                         _hd2503626227_
                         _tl2503726229_))))
                (___match2797827979_
                 _e2503226216_
                 _hd2503326219_
                 _tl2503426221_
                 _e2503526224_
                 _hd2503626227_
                 _tl2503726229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2797827979_
                                                 _e2503226216_
                                                 _hd2503326219_
                                                 _tl2503426221_
                                                 _e2503526224_
                                                 _hd2503626227_
                                                 _tl2503726229_))
                                            (___match2797827979_
                                             _e2503226216_
                                             _hd2503326219_
                                             _tl2503426221_
                                             _e2503526224_
                                             _hd2503626227_
                                             _tl2503726229_))))
                                    (___match2797827979_
                                     _e2503226216_
                                     _hd2503326219_
                                     _tl2503426221_
                                     _e2503526224_
                                     _hd2503626227_
                                     _tl2503726229_))
                                (___match2797827979_
                                 _e2503226216_
                                 _hd2503326219_
                                 _tl2503426221_
                                 _e2503526224_
                                 _hd2503626227_
                                 _tl2503726229_))
                            (___match2797827979_
                             _e2503226216_
                             _hd2503326219_
                             _tl2503426221_
                             _e2503526224_
                             _hd2503626227_
                             _tl2503726229_))))
                    (___match2797827979_
                     _e2503226216_
                     _hd2503326219_
                     _tl2503426221_
                     _e2503526224_
                     _hd2503626227_
                     _tl2503726229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2797827979_
                                                     _e2503226216_
                                                     _hd2503326219_
                                                     _tl2503426221_
                                                     _e2503526224_
                                                     _hd2503626227_
                                                     _tl2503726229_))
                                                (___match2797827979_
                                                 _e2503226216_
                                                 _hd2503326219_
                                                 _tl2503426221_
                                                 _e2503526224_
                                                 _hd2503626227_
                                                 _tl2503726229_))))
                                        (___match2797827979_
                                         _e2503226216_
                                         _hd2503326219_
                                         _tl2503426221_
                                         _e2503526224_
                                         _hd2503626227_
                                         _tl2503726229_))
                                    (___match2797827979_
                                     _e2503226216_
                                     _hd2503326219_
                                     _tl2503426221_
                                     _e2503526224_
                                     _hd2503626227_
                                     _tl2503726229_))
                                (___match2797827979_
                                 _e2503226216_
                                 _hd2503326219_
                                 _tl2503426221_
                                 _e2503526224_
                                 _hd2503626227_
                                 _tl2503726229_))))
                        (___match2797827979_
                         _e2503226216_
                         _hd2503326219_
                         _tl2503426221_
                         _e2503526224_
                         _hd2503626227_
                         _tl2503726229_))))
                (___match2797827979_
                 _e2503226216_
                 _hd2503326219_
                 _tl2503426221_
                 _e2503526224_
                 _hd2503626227_
                 _tl2503726229_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2797827979_
                                                     _e2503226216_
                                                     _hd2503326219_
                                                     _tl2503426221_
                                                     _e2503526224_
                                                     _hd2503626227_
                                                     _tl2503726229_))
                                                (___match2797827979_
                                                 _e2503226216_
                                                 _hd2503326219_
                                                 _tl2503426221_
                                                 _e2503526224_
                                                 _hd2503626227_
                                                 _tl2503726229_))))
                                        (___match2797827979_
                                         _e2503226216_
                                         _hd2503326219_
                                         _tl2503426221_
                                         _e2503526224_
                                         _hd2503626227_
                                         _tl2503726229_))))
                                (___match2797827979_
                                 _e2503226216_
                                 _hd2503326219_
                                 _tl2503426221_
                                 _e2503526224_
                                 _hd2503626227_
                                 _tl2503726229_))))
                        (___match2828428285_
                         _e2503226216_
                         _hd2503326219_
                         _tl2503426221_)))))
            (if (gx#stx-pair? ___stx2780927810_)
                (let ((_e2502426401_ (gx#stx-e ___stx2780927810_)))
                  (let ((_tl2502626406_ (##cdr _e2502426401_))
                        (_hd2502526404_ (##car _e2502426401_)))
                    (if (gxc#current-compile-type-closure)
                        (let ((_L26409_ _tl2502626406_))
                          (___kont2781127812_ _L26409_))
                        (___match2784427845_
                         _e2502426401_
                         _hd2502526404_
                         _tl2502626406_))))
                (_g2502125328_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx24968_)
      (letrec ((_clause-e24970_
                (lambda (_form25011_)
                  (let ((__obj30055 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj30055
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form25011_)
                       (if (not (gxc#current-compile-type-closure))
                           (if (gxc#dispatch-lambda-form? _form25011_)
                               (gxc#dispatch-lambda-form-delegate _form25011_)
                               '#f)
                           '#f))
                      __obj30055)))))
        (let* ((_g2497224982_
                (lambda (_g2497324979_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2497324979_)))
               (_g2497125008_
                (lambda (_g2497324985_)
                  (if (gx#stx-pair? _g2497324985_)
                      (let ((_e2497524987_ (gx#stx-e _g2497324985_)))
                        (let ((_hd2497624990_ (##car _e2497524987_))
                              (_tl2497724992_ (##cdr _e2497524987_)))
                          ((lambda (_L24995_)
                             (let ((_clauses25006_
                                    (map _clause-e24970_ _L24995_)))
                               (##structure
                                gxc#!case-lambda::t
                                'case-lambda
                                _clauses25006_)))
                           _tl2497724992_)))
                      (_g2497224982_ _g2497324985_)))))
          (_g2497125008_ _stx24968_)))))
  (define gxc#basic-expression-type-let-values%
    (lambda (_stx24900_)
      (let* ((_g2490224919_
              (lambda (_g2490324916_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2490324916_)))
             (_g2490124965_
              (lambda (_g2490324922_)
                (if (gx#stx-pair? _g2490324922_)
                    (let ((_e2490624924_ (gx#stx-e _g2490324922_)))
                      (let ((_hd2490724927_ (##car _e2490624924_))
                            (_tl2490824929_ (##cdr _e2490624924_)))
                        (if (gx#stx-pair? _tl2490824929_)
                            (let ((_e2490924932_ (gx#stx-e _tl2490824929_)))
                              (let ((_hd2491024935_ (##car _e2490924932_))
                                    (_tl2491124937_ (##cdr _e2490924932_)))
                                (if (gx#stx-pair? _tl2491124937_)
                                    (let ((_e2491224940_
                                           (gx#stx-e _tl2491124937_)))
                                      (let ((_hd2491324943_
                                             (##car _e2491224940_))
                                            (_tl2491424945_
                                             (##cdr _e2491224940_)))
                                        (if (gx#stx-null? _tl2491424945_)
                                            ((lambda (_L24948_ _L24949_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (gxc#compile-e _L24948_))
                                                gxc#current-compile-type-closure
                                                '#t))
                                             _hd2491324943_
                                             _hd2491024935_)
                                            (_g2490224919_ _g2490324922_))))
                                    (_g2490224919_ _g2490324922_))))
                            (_g2490224919_ _g2490324922_))))
                    (_g2490224919_ _g2490324922_)))))
        (_g2490124965_ _stx24900_))))
  (define gxc#basic-expression-type-builtin (make-table 'test: eq?))
  (define gxc#basic-expression-type-call%
    (lambda (_stx24805_)
      (let* ((___stx2829328294_ _stx24805_)
             (_g2480824828_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2829328294_))))
        (let ((___kont2829528296_
               (lambda (_L24872_ _L24873_)
                 (let ((_type-e2489024892_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L24873_)
                         '#f)))
                   (if _type-e2489024892_
                       (let ((_type-e24895_ _type-e2489024892_))
                         (_type-e24895_ _stx24805_ _L24872_))
                       '#f))))
              (___kont2829728298_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2829328294_)
              (let ((_e2481224840_ (gx#stx-e ___stx2829328294_)))
                (let ((_tl2481424845_ (##cdr _e2481224840_))
                      (_hd2481324843_ (##car _e2481224840_)))
                  (if (gx#stx-pair? _tl2481424845_)
                      (let ((_e2481524848_ (gx#stx-e _tl2481424845_)))
                        (let ((_tl2481724853_ (##cdr _e2481524848_))
                              (_hd2481624851_ (##car _e2481524848_)))
                          (if (gx#stx-pair? _hd2481624851_)
                              (let ((_e2481824856_ (gx#stx-e _hd2481624851_)))
                                (let ((_tl2482024861_ (##cdr _e2481824856_))
                                      (_hd2481924859_ (##car _e2481824856_)))
                                  (if (gx#identifier? _hd2481924859_)
                                      (if (gx#stx-eq? '%#ref _hd2481924859_)
                                          (if (gx#stx-pair? _tl2482024861_)
                                              (let ((_e2482124864_
                                                     (gx#stx-e
                                                      _tl2482024861_)))
                                                (let ((_tl2482324869_
                                                       (##cdr _e2482124864_))
                                                      (_hd2482224867_
                                                       (##car _e2482124864_)))
                                                  (if (gx#stx-null?
                                                       _tl2482324869_)
                                                      (___kont2829528296_
                                                       _tl2481724853_
                                                       _hd2482224867_)
                                                      (___kont2829728298_))))
                                              (___kont2829728298_))
                                          (___kont2829728298_))
                                      (___kont2829728298_))))
                              (___kont2829728298_))))
                      (___kont2829728298_))))
              (___kont2829728298_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx24285_ _args24286_)
      (let* ((___stx2833128332_ _args24286_)
             (_g2429024404_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2833128332_))))
        (let ((___kont2833328334_
               (lambda (_L24754_ _L24755_ _L24756_ _L24757_ _L24758_)
                 (let ((__obj30056 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj30056
                      (gx#stx-e _L24758_)
                      '#f
                      (gx#stx-e _L24757_)
                      '0
                      (gx#stx-e _L24754_)
                      (gx#stx-e _L24755_))
                     __obj30056))))
              (___kont2833528336_
               (lambda (_L24544_ _L24545_ _L24546_ _L24547_ _L24548_ _L24549_)
                 (let* ((_super-t24595_
                         (if (gx#stx-e _L24548_)
                             (gxc#identifier-symbol _L24548_)
                             '#f))
                        (_super-type24597_
                         (if _super-t24595_
                             (gxc#optimizer-resolve-type _super-t24595_)
                             '#f)))
                   (begin
                     (if (if _super-type24597_
                             (not (##structure-instance-of?
                                   _super-type24597_
                                   'gxc#!struct-type::t))
                             '#f)
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx24285_
                          _L24548_)
                         '#!void)
                     (let ((_fields24613_ (gx#stx-e _L24547_))
                           (_xfields24614_
                            (if _super-type24597_
                                (let ((_super-fields2459924602_
                                       (##structure-ref
                                        _super-type24597_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2460024604_
                                       (##structure-ref
                                        _super-type24597_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2459924602_
                                      (if _super-xfields2460024604_
                                          (let ((_super-fields24607_
                                                 _super-fields2459924602_)
                                                (_super-xfields24608_
                                                 _super-xfields2460024604_))
                                            (fx+ _super-fields24607_
                                                 _super-xfields24608_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist24615_ (gx#stx-e _L24545_))
                           (_ctor24616_
                            (let ((_$e24610_ (gx#stx-e _L24544_)))
                              (if _$e24610_
                                  (values _$e24610_)
                                  (if _super-type24597_
                                      (##structure-ref
                                       _super-type24597_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t24595_ '#!void '#f))))))
                       (let ((__obj30057 (make-object gxc#!struct-type::t '7)))
                         (begin
                           (gxc#!struct-type:::init!
                            __obj30057
                            (gx#stx-e _L24549_)
                            _super-t24595_
                            _fields24613_
                            _xfields24614_
                            _ctor24616_
                            _plist24615_)
                           __obj30057)))))))
              (___kont2833728338_
               (lambda ()
                 (begin
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx24285_))
                   '#f))))
          (if (gx#stx-pair? ___stx2833128332_)
              (let ((_e2429724623_ (gx#stx-e ___stx2833128332_)))
                (let ((_tl2429924628_ (##cdr _e2429724623_))
                      (_hd2429824626_ (##car _e2429724623_)))
                  (if (gx#stx-pair? _hd2429824626_)
                      (let ((_e2430024631_ (gx#stx-e _hd2429824626_)))
                        (let ((_tl2430224636_ (##cdr _e2430024631_))
                              (_hd2430124634_ (##car _e2430024631_)))
                          (if (gx#identifier? _hd2430124634_)
                              (if (gx#stx-eq? '%#quote _hd2430124634_)
                                  (if (gx#stx-pair? _tl2430224636_)
                                      (let ((_e2430324639_
                                             (gx#stx-e _tl2430224636_)))
                                        (let ((_tl2430524644_
                                               (##cdr _e2430324639_))
                                              (_hd2430424642_
                                               (##car _e2430324639_)))
                                          (if (gx#stx-null? _tl2430524644_)
                                              (if (gx#stx-pair? _tl2429924628_)
                                                  (let ((_e2430624647_
                                                         (gx#stx-e
                                                          _tl2429924628_)))
                                                    (let ((_tl2430824652_
                                                           (##cdr _e2430624647_))
                                                          (_hd2430724650_
                                                           (##car _e2430624647_)))
                                                      (if (gx#stx-pair?
                                                           _hd2430724650_)
                                                          (let ((_e2430924655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2430724650_)))
                    (let ((_tl2431124660_ (##cdr _e2430924655_))
                          (_hd2431024658_ (##car _e2430924655_)))
                      (if (gx#identifier? _hd2431024658_)
                          (if (gx#stx-eq? '%#quote _hd2431024658_)
                              (if (gx#stx-pair? _tl2431124660_)
                                  (let ((_e2431224663_
                                         (gx#stx-e _tl2431124660_)))
                                    (let ((_tl2431424668_
                                           (##cdr _e2431224663_))
                                          (_hd2431324666_
                                           (##car _e2431224663_)))
                                      (if (gx#stx-datum? _hd2431324666_)
                                          (let ((_e2431524671_
                                                 (gx#stx-e _hd2431324666_)))
                                            (if (equal? _e2431524671_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2431424668_)
                                                    (if (gx#stx-pair?
                                                         _tl2430824652_)
                                                        (let ((_e2431624674_
                                                               (gx#stx-e
                                                                _tl2430824652_)))
                                                          (let ((_tl2431824679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2431624674_))
                        (_hd2431724677_ (##car _e2431624674_)))
                    (if (gx#stx-pair? _hd2431724677_)
                        (let ((_e2431924682_ (gx#stx-e _hd2431724677_)))
                          (let ((_tl2432124687_ (##cdr _e2431924682_))
                                (_hd2432024685_ (##car _e2431924682_)))
                            (if (gx#identifier? _hd2432024685_)
                                (if (gx#stx-eq? '%#quote _hd2432024685_)
                                    (if (gx#stx-pair? _tl2432124687_)
                                        (let ((_e2432224690_
                                               (gx#stx-e _tl2432124687_)))
                                          (let ((_tl2432424695_
                                                 (##cdr _e2432224690_))
                                                (_hd2432324693_
                                                 (##car _e2432224690_)))
                                            (if (gx#stx-null? _tl2432424695_)
                                                (if (gx#stx-pair?
                                                     _tl2431824679_)
                                                    (let ((_e2432524698_
                                                           (gx#stx-e
                                                            _tl2431824679_)))
                                                      (let ((_tl2432724703_
                                                             (##cdr _e2432524698_))
                                                            (_hd2432624701_
                                                             (##car _e2432524698_)))
                                                        (if (gx#stx-pair?
                                                             _tl2432724703_)
                                                            (let ((_e2432824706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2432724703_)))
                      (let ((_tl2433024711_ (##cdr _e2432824706_))
                            (_hd2432924709_ (##car _e2432824706_)))
                        (if (gx#stx-pair? _hd2432924709_)
                            (let ((_e2433124714_ (gx#stx-e _hd2432924709_)))
                              (let ((_tl2433324719_ (##cdr _e2433124714_))
                                    (_hd2433224717_ (##car _e2433124714_)))
                                (if (gx#identifier? _hd2433224717_)
                                    (if (gx#stx-eq? '%#quote _hd2433224717_)
                                        (if (gx#stx-pair? _tl2433324719_)
                                            (let ((_e2433424722_
                                                   (gx#stx-e _tl2433324719_)))
                                              (let ((_tl2433624727_
                                                     (##cdr _e2433424722_))
                                                    (_hd2433524725_
                                                     (##car _e2433424722_)))
                                                (if (gx#stx-null?
                                                     _tl2433624727_)
                                                    (if (gx#stx-pair?
                                                         _tl2433024711_)
                                                        (let ((_e2433724730_
                                                               (gx#stx-e
                                                                _tl2433024711_)))
                                                          (let ((_tl2433924735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2433724730_))
                        (_hd2433824733_ (##car _e2433724730_)))
                    (if (gx#stx-pair? _hd2433824733_)
                        (let ((_e2434024738_ (gx#stx-e _hd2433824733_)))
                          (let ((_tl2434224743_ (##cdr _e2434024738_))
                                (_hd2434124741_ (##car _e2434024738_)))
                            (if (gx#identifier? _hd2434124741_)
                                (if (gx#stx-eq? '%#quote _hd2434124741_)
                                    (if (gx#stx-pair? _tl2434224743_)
                                        (let ((_e2434324746_
                                               (gx#stx-e _tl2434224743_)))
                                          (let ((_tl2434524751_
                                                 (##cdr _e2434324746_))
                                                (_hd2434424749_
                                                 (##car _e2434324746_)))
                                            (if (gx#stx-null? _tl2434524751_)
                                                (___kont2833328334_
                                                 _hd2434424749_
                                                 _hd2433524725_
                                                 _hd2432624701_
                                                 _hd2432324693_
                                                 _hd2430424642_)
                                                (___kont2833728338_))))
                                        (___kont2833728338_))
                                    (___kont2833728338_))
                                (___kont2833728338_))))
                        (___kont2833728338_))))
                (___kont2833728338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2833728338_))))
                                            (___kont2833728338_))
                                        (___kont2833728338_))
                                    (___kont2833728338_))))
                            (___kont2833728338_))))
                    (___kont2833728338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2833728338_))
                                                (___kont2833728338_))))
                                        (___kont2833728338_))
                                    (___kont2833728338_))
                                (___kont2833728338_))))
                        (___kont2833728338_))))
                (___kont2833728338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2833728338_))
                                                (___kont2833728338_)))
                                          (___kont2833728338_))))
                                  (___kont2833728338_))
                              (if (gx#stx-eq? '%#ref _hd2431024658_)
                                  (if (gx#stx-pair? _tl2431124660_)
                                      (let ((_e2436724456_
                                             (gx#stx-e _tl2431124660_)))
                                        (let ((_tl2436924461_
                                               (##cdr _e2436724456_))
                                              (_hd2436824459_
                                               (##car _e2436724456_)))
                                          (if (gx#stx-null? _tl2436924461_)
                                              (if (gx#stx-pair? _tl2430824652_)
                                                  (let ((_e2437024464_
                                                         (gx#stx-e
                                                          _tl2430824652_)))
                                                    (let ((_tl2437224469_
                                                           (##cdr _e2437024464_))
                                                          (_hd2437124467_
                                                           (##car _e2437024464_)))
                                                      (if (gx#stx-pair?
                                                           _hd2437124467_)
                                                          (let ((_e2437324472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2437124467_)))
                    (let ((_tl2437524477_ (##cdr _e2437324472_))
                          (_hd2437424475_ (##car _e2437324472_)))
                      (if (gx#identifier? _hd2437424475_)
                          (if (gx#stx-eq? '%#quote _hd2437424475_)
                              (if (gx#stx-pair? _tl2437524477_)
                                  (let ((_e2437624480_
                                         (gx#stx-e _tl2437524477_)))
                                    (let ((_tl2437824485_
                                           (##cdr _e2437624480_))
                                          (_hd2437724483_
                                           (##car _e2437624480_)))
                                      (if (gx#stx-null? _tl2437824485_)
                                          (if (gx#stx-pair? _tl2437224469_)
                                              (let ((_e2437924488_
                                                     (gx#stx-e
                                                      _tl2437224469_)))
                                                (let ((_tl2438124493_
                                                       (##cdr _e2437924488_))
                                                      (_hd2438024491_
                                                       (##car _e2437924488_)))
                                                  (if (gx#stx-pair?
                                                       _tl2438124493_)
                                                      (let ((_e2438224496_
                                                             (gx#stx-e
                                                              _tl2438124493_)))
                                                        (let ((_tl2438424501_
                                                               (##cdr _e2438224496_))
                                                              (_hd2438324499_
                                                               (##car _e2438224496_)))
                                                          (if (gx#stx-pair?
                                                               _hd2438324499_)
                                                              (let ((_e2438524504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2438324499_)))
                        (let ((_tl2438724509_ (##cdr _e2438524504_))
                              (_hd2438624507_ (##car _e2438524504_)))
                          (if (gx#identifier? _hd2438624507_)
                              (if (gx#stx-eq? '%#quote _hd2438624507_)
                                  (if (gx#stx-pair? _tl2438724509_)
                                      (let ((_e2438824512_
                                             (gx#stx-e _tl2438724509_)))
                                        (let ((_tl2439024517_
                                               (##cdr _e2438824512_))
                                              (_hd2438924515_
                                               (##car _e2438824512_)))
                                          (if (gx#stx-null? _tl2439024517_)
                                              (if (gx#stx-pair? _tl2438424501_)
                                                  (let ((_e2439124520_
                                                         (gx#stx-e
                                                          _tl2438424501_)))
                                                    (let ((_tl2439324525_
                                                           (##cdr _e2439124520_))
                                                          (_hd2439224523_
                                                           (##car _e2439124520_)))
                                                      (if (gx#stx-pair?
                                                           _hd2439224523_)
                                                          (let ((_e2439424528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2439224523_)))
                    (let ((_tl2439624533_ (##cdr _e2439424528_))
                          (_hd2439524531_ (##car _e2439424528_)))
                      (if (gx#identifier? _hd2439524531_)
                          (if (gx#stx-eq? '%#quote _hd2439524531_)
                              (if (gx#stx-pair? _tl2439624533_)
                                  (let ((_e2439724536_
                                         (gx#stx-e _tl2439624533_)))
                                    (let ((_tl2439924541_
                                           (##cdr _e2439724536_))
                                          (_hd2439824539_
                                           (##car _e2439724536_)))
                                      (if (gx#stx-null? _tl2439924541_)
                                          (___kont2833528336_
                                           _hd2439824539_
                                           _hd2438924515_
                                           _hd2438024491_
                                           _hd2437724483_
                                           _hd2436824459_
                                           _hd2430424642_)
                                          (___kont2833728338_))))
                                  (___kont2833728338_))
                              (___kont2833728338_))
                          (___kont2833728338_))))
                  (___kont2833728338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2833728338_))
                                              (___kont2833728338_))))
                                      (___kont2833728338_))
                                  (___kont2833728338_))
                              (___kont2833728338_))))
                      (___kont2833728338_))))
              (___kont2833728338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2833728338_))
                                          (___kont2833728338_))))
                                  (___kont2833728338_))
                              (___kont2833728338_))
                          (___kont2833728338_))))
                  (___kont2833728338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2833728338_))
                                              (___kont2833728338_))))
                                      (___kont2833728338_))
                                  (___kont2833728338_)))
                          (___kont2833728338_))))
                  (___kont2833728338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2833728338_))
                                              (___kont2833728338_))))
                                      (___kont2833728338_))
                                  (___kont2833728338_))
                              (___kont2833728338_))))
                      (___kont2833728338_))))
              (___kont2833728338_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx24211_ _args24212_)
      (let* ((___stx2859928600_ _args24212_)
             (_g2421524231_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2859928600_))))
        (let ((___kont2860128602_
               (lambda (_L24267_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L24267_))))
              (___kont2860328604_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2859928600_)
              (let ((_e2421824243_ (gx#stx-e ___stx2859928600_)))
                (let ((_tl2422024248_ (##cdr _e2421824243_))
                      (_hd2421924246_ (##car _e2421824243_)))
                  (if (gx#stx-pair? _hd2421924246_)
                      (let ((_e2422124251_ (gx#stx-e _hd2421924246_)))
                        (let ((_tl2422324256_ (##cdr _e2422124251_))
                              (_hd2422224254_ (##car _e2422124251_)))
                          (if (gx#identifier? _hd2422224254_)
                              (if (gx#stx-eq? '%#ref _hd2422224254_)
                                  (if (gx#stx-pair? _tl2422324256_)
                                      (let ((_e2422424259_
                                             (gx#stx-e _tl2422324256_)))
                                        (let ((_tl2422624264_
                                               (##cdr _e2422424259_))
                                              (_hd2422524262_
                                               (##car _e2422424259_)))
                                          (if (gx#stx-null? _tl2422624264_)
                                              (if (gx#stx-null? _tl2422024248_)
                                                  (___kont2860128602_
                                                   _hd2422524262_)
                                                  (___kont2860328604_))
                                              (___kont2860328604_))))
                                      (___kont2860328604_))
                                  (___kont2860328604_))
                              (___kont2860328604_))))
                      (___kont2860328604_))))
              (___kont2860328604_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx24082_ _args24083_ _unchecked?24084_)
        (let* ((___stx2863328634_ _args24083_)
               (_g2408724113_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2863328634_))))
          (let ((___kont2863528636_
                 (lambda (_L24173_ _L24174_)
                   (##structure
                    gxc#!struct-getf::t
                    (gxc#identifier-symbol _L24174_)
                    (gx#stx-e _L24173_)
                    _unchecked?24084_)))
                (___kont2863728638_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2863328634_)
                (let ((_e2409124125_ (gx#stx-e ___stx2863328634_)))
                  (let ((_tl2409324130_ (##cdr _e2409124125_))
                        (_hd2409224128_ (##car _e2409124125_)))
                    (if (gx#stx-pair? _hd2409224128_)
                        (let ((_e2409424133_ (gx#stx-e _hd2409224128_)))
                          (let ((_tl2409624138_ (##cdr _e2409424133_))
                                (_hd2409524136_ (##car _e2409424133_)))
                            (if (gx#identifier? _hd2409524136_)
                                (if (gx#stx-eq? '%#ref _hd2409524136_)
                                    (if (gx#stx-pair? _tl2409624138_)
                                        (let ((_e2409724141_
                                               (gx#stx-e _tl2409624138_)))
                                          (let ((_tl2409924146_
                                                 (##cdr _e2409724141_))
                                                (_hd2409824144_
                                                 (##car _e2409724141_)))
                                            (if (gx#stx-null? _tl2409924146_)
                                                (if (gx#stx-pair?
                                                     _tl2409324130_)
                                                    (let ((_e2410024149_
                                                           (gx#stx-e
                                                            _tl2409324130_)))
                                                      (let ((_tl2410224154_
                                                             (##cdr _e2410024149_))
                                                            (_hd2410124152_
                                                             (##car _e2410024149_)))
                                                        (if (gx#stx-pair?
                                                             _hd2410124152_)
                                                            (let ((_e2410324157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2410124152_)))
                      (let ((_tl2410524162_ (##cdr _e2410324157_))
                            (_hd2410424160_ (##car _e2410324157_)))
                        (if (gx#identifier? _hd2410424160_)
                            (if (gx#stx-eq? '%#quote _hd2410424160_)
                                (if (gx#stx-pair? _tl2410524162_)
                                    (let ((_e2410624165_
                                           (gx#stx-e _tl2410524162_)))
                                      (let ((_tl2410824170_
                                             (##cdr _e2410624165_))
                                            (_hd2410724168_
                                             (##car _e2410624165_)))
                                        (if (gx#stx-null? _tl2410824170_)
                                            (if (gx#stx-null? _tl2410224154_)
                                                (___kont2863528636_
                                                 _hd2410724168_
                                                 _hd2409824144_)
                                                (___kont2863728638_))
                                            (___kont2863728638_))))
                                    (___kont2863728638_))
                                (___kont2863728638_))
                            (___kont2863728638_))))
                    (___kont2863728638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2863728638_))
                                                (___kont2863728638_))))
                                        (___kont2863728638_))
                                    (___kont2863728638_))
                                (___kont2863728638_))))
                        (___kont2863728638_))))
                (___kont2863728638_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx24202_ _args24203_)
          (let ((_unchecked?24205_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx24202_
             _args24203_
             _unchecked?24205_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g30063_
          (let ((_g30062_ (length _g30063_)))
            (cond ((##fx= _g30062_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g30063_))
                  ((##fx= _g30062_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g30063_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g30063_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx23952_ _args23953_ _unchecked?23954_)
        (let* ((___stx2869128692_ _args23953_)
               (_g2395723983_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2869128692_))))
          (let ((___kont2869328694_
                 (lambda (_L24043_ _L24044_)
                   (##structure
                    gxc#!struct-setf::t
                    (gxc#identifier-symbol _L24044_)
                    (gx#stx-e _L24043_)
                    _unchecked?23954_)))
                (___kont2869528696_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2869128692_)
                (let ((_e2396123995_ (gx#stx-e ___stx2869128692_)))
                  (let ((_tl2396324000_ (##cdr _e2396123995_))
                        (_hd2396223998_ (##car _e2396123995_)))
                    (if (gx#stx-pair? _hd2396223998_)
                        (let ((_e2396424003_ (gx#stx-e _hd2396223998_)))
                          (let ((_tl2396624008_ (##cdr _e2396424003_))
                                (_hd2396524006_ (##car _e2396424003_)))
                            (if (gx#identifier? _hd2396524006_)
                                (if (gx#stx-eq? '%#ref _hd2396524006_)
                                    (if (gx#stx-pair? _tl2396624008_)
                                        (let ((_e2396724011_
                                               (gx#stx-e _tl2396624008_)))
                                          (let ((_tl2396924016_
                                                 (##cdr _e2396724011_))
                                                (_hd2396824014_
                                                 (##car _e2396724011_)))
                                            (if (gx#stx-null? _tl2396924016_)
                                                (if (gx#stx-pair?
                                                     _tl2396324000_)
                                                    (let ((_e2397024019_
                                                           (gx#stx-e
                                                            _tl2396324000_)))
                                                      (let ((_tl2397224024_
                                                             (##cdr _e2397024019_))
                                                            (_hd2397124022_
                                                             (##car _e2397024019_)))
                                                        (if (gx#stx-pair?
                                                             _hd2397124022_)
                                                            (let ((_e2397324027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2397124022_)))
                      (let ((_tl2397524032_ (##cdr _e2397324027_))
                            (_hd2397424030_ (##car _e2397324027_)))
                        (if (gx#identifier? _hd2397424030_)
                            (if (gx#stx-eq? '%#quote _hd2397424030_)
                                (if (gx#stx-pair? _tl2397524032_)
                                    (let ((_e2397624035_
                                           (gx#stx-e _tl2397524032_)))
                                      (let ((_tl2397824040_
                                             (##cdr _e2397624035_))
                                            (_hd2397724038_
                                             (##car _e2397624035_)))
                                        (if (gx#stx-null? _tl2397824040_)
                                            (if (gx#stx-null? _tl2397224024_)
                                                (___kont2869328694_
                                                 _hd2397724038_
                                                 _hd2396824014_)
                                                (___kont2869528696_))
                                            (___kont2869528696_))))
                                    (___kont2869528696_))
                                (___kont2869528696_))
                            (___kont2869528696_))))
                    (___kont2869528696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2869528696_))
                                                (___kont2869528696_))))
                                        (___kont2869528696_))
                                    (___kont2869528696_))
                                (___kont2869528696_))))
                        (___kont2869528696_))))
                (___kont2869528696_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx24072_ _args24073_)
          (let ((_unchecked?24075_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx24072_
             _args24073_
             _unchecked?24075_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g30065_
          (let ((_g30064_ (length _g30065_)))
            (cond ((##fx= _g30064_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g30065_))
                  ((##fx= _g30064_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g30065_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g30065_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx23948_ _args23949_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx23948_
       _args23949_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx23945_ _args23946_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx23945_
       _args23946_
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
    (lambda (_stx23894_)
      (let* ((_g2389623909_
              (lambda (_g2389723906_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2389723906_)))
             (_g2389523942_
              (lambda (_g2389723912_)
                (if (gx#stx-pair? _g2389723912_)
                    (let ((_e2389923914_ (gx#stx-e _g2389723912_)))
                      (let ((_hd2390023917_ (##car _e2389923914_))
                            (_tl2390123919_ (##cdr _e2389923914_)))
                        (if (gx#stx-pair? _tl2390123919_)
                            (let ((_e2390223922_ (gx#stx-e _tl2390123919_)))
                              (let ((_hd2390323925_ (##car _e2390223922_))
                                    (_tl2390423927_ (##cdr _e2390223922_)))
                                (if (gx#stx-null? _tl2390423927_)
                                    ((lambda (_L23930_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L23930_)))
                                     _hd2390323925_)
                                    (_g2389623909_ _g2389723912_))))
                            (_g2389623909_ _g2389723912_))))
                    (_g2389623909_ _g2389723912_)))))
        (_g2389523942_ _stx23894_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form23128_)
      (let* ((___stx2874928750_ _form23128_)
             (_g2313323290_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2874928750_))))
        (let ((___kont2875128752_ (lambda (_L23814_ _L23815_ _L23816_) '#t))
              (___kont2875728758_
               (lambda (_L23602_ _L23603_ _L23604_ _L23605_ _L23606_ _L23607_)
                 '#t))
              (___kont2876328764_
               (lambda (_L23398_ _L23399_ _L23400_ _L23401_) '#t))
              (___kont2876528766_ (lambda () '#f)))
          (let* ((___match2889028891_
                  (lambda (_e2325023302_
                           _hd2325123305_
                           _tl2325223307_
                           _e2325323310_
                           _hd2325423313_
                           _tl2325523315_
                           _e2325623318_
                           _hd2325723321_
                           _tl2325823323_
                           _e2325923326_
                           _hd2326023329_
                           _tl2326123331_
                           _e2326223334_
                           _hd2326323337_
                           _tl2326423339_
                           _e2326523342_
                           _hd2326623345_
                           _tl2326723347_
                           _e2326823350_
                           _hd2326923353_
                           _tl2327023355_
                           _e2327123358_
                           _hd2327223361_
                           _tl2327323363_
                           _e2327423366_
                           _hd2327523369_
                           _tl2327623371_
                           _e2327723374_
                           _hd2327823377_
                           _tl2327923379_
                           _e2328023382_
                           _hd2328123385_
                           _tl2328223387_
                           _e2328323390_
                           _hd2328423393_
                           _tl2328523395_)
                    (let ((_L23398_ _hd2328423393_)
                          (_L23399_ _hd2327523369_)
                          (_L23400_ _hd2326623345_)
                          (_L23401_ _hd2325123305_))
                      (if (if (gx#identifier? _L23401_)
                              (if (gxc#runtime-identifier=? _L23400_ 'apply)
                                  (if (gx#free-identifier=? _L23401_ _L23398_)
                                      (not (gx#free-identifier=?
                                            _L23399_
                                            _L23401_))
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2876328764_
                           _L23398_
                           _L23399_
                           _L23400_
                           _L23401_)
                          (___kont2876528766_)))))
                 (___match2886228863_
                  (lambda (_e2325023302_
                           _hd2325123305_
                           _tl2325223307_
                           _e2325323310_
                           _hd2325423313_
                           _tl2325523315_
                           _e2325623318_
                           _hd2325723321_
                           _tl2325823323_
                           _e2325923326_
                           _hd2326023329_
                           _tl2326123331_
                           _e2326223334_
                           _hd2326323337_
                           _tl2326423339_
                           _e2326523342_
                           _hd2326623345_
                           _tl2326723347_
                           _e2326823350_
                           _hd2326923353_
                           _tl2327023355_
                           _e2327123358_
                           _hd2327223361_
                           _tl2327323363_
                           _e2327423366_
                           _hd2327523369_
                           _tl2327623371_)
                    (if (gx#stx-pair? _tl2327023355_)
                        (let ((_e2327723374_ (gx#stx-e _tl2327023355_)))
                          (let ((_tl2327923379_ (##cdr _e2327723374_))
                                (_hd2327823377_ (##car _e2327723374_)))
                            (if (gx#stx-pair? _hd2327823377_)
                                (let ((_e2328023382_
                                       (gx#stx-e _hd2327823377_)))
                                  (let ((_tl2328223387_ (##cdr _e2328023382_))
                                        (_hd2328123385_ (##car _e2328023382_)))
                                    (if (gx#identifier? _hd2328123385_)
                                        (if (gx#stx-eq? '%#ref _hd2328123385_)
                                            (if (gx#stx-pair? _tl2328223387_)
                                                (let ((_e2328323390_
                                                       (gx#stx-e
                                                        _tl2328223387_)))
                                                  (let ((_tl2328523395_
                                                         (##cdr _e2328323390_))
                                                        (_hd2328423393_
                                                         (##car _e2328323390_)))
                                                    (if (gx#stx-null?
                                                         _tl2328523395_)
                                                        (if (gx#stx-null?
                                                             _tl2327923379_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2325523315_)
                        (___match2889028891_
                         _e2325023302_
                         _hd2325123305_
                         _tl2325223307_
                         _e2325323310_
                         _hd2325423313_
                         _tl2325523315_
                         _e2325623318_
                         _hd2325723321_
                         _tl2325823323_
                         _e2325923326_
                         _hd2326023329_
                         _tl2326123331_
                         _e2326223334_
                         _hd2326323337_
                         _tl2326423339_
                         _e2326523342_
                         _hd2326623345_
                         _tl2326723347_
                         _e2326823350_
                         _hd2326923353_
                         _tl2327023355_
                         _e2327123358_
                         _hd2327223361_
                         _tl2327323363_
                         _e2327423366_
                         _hd2327523369_
                         _tl2327623371_
                         _e2327723374_
                         _hd2327823377_
                         _tl2327923379_
                         _e2328023382_
                         _hd2328123385_
                         _tl2328223387_
                         _e2328323390_
                         _hd2328423393_
                         _tl2328523395_)
                        (___kont2876528766_))
                    (___kont2876528766_))
                (___kont2876528766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2876528766_))
                                            (___kont2876528766_))
                                        (___kont2876528766_))))
                                (___kont2876528766_))))
                        (___kont2876528766_))))
                 (___match2879228793_
                  (lambda (_e2318623442_
                           _hd2318723445_
                           _tl2318823447_
                           ___splice2875928760_
                           _target2318923450_
                           _tl2319123452_)
                    (letrec ((_loop2319223455_
                              (lambda (_hd2319023458_ _arg2319623460_)
                                (if (gx#stx-pair? _hd2319023458_)
                                    (let ((_e2319323463_
                                           (gx#stx-e _hd2319023458_)))
                                      (let ((_lp-tl2319523468_
                                             (##cdr _e2319323463_))
                                            (_lp-hd2319423466_
                                             (##car _e2319323463_)))
                                        (_loop2319223455_
                                         _lp-tl2319523468_
                                         (cons _lp-hd2319423466_
                                               _arg2319623460_))))
                                    (let ((_arg2319723471_
                                           (reverse _arg2319623460_)))
                                      (if (gx#stx-pair? _tl2318823447_)
                                          (let ((_e2319823474_
                                                 (gx#stx-e _tl2318823447_)))
                                            (let ((_tl2320023479_
                                                   (##cdr _e2319823474_))
                                                  (_hd2319923477_
                                                   (##car _e2319823474_)))
                                              (if (gx#stx-pair? _hd2319923477_)
                                                  (let ((_e2320123482_
                                                         (gx#stx-e
                                                          _hd2319923477_)))
                                                    (let ((_tl2320323487_
                                                           (##cdr _e2320123482_))
                                                          (_hd2320223485_
                                                           (##car _e2320123482_)))
                                                      (if (gx#identifier?
                                                           _hd2320223485_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2320223485_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2320323487_)
                          (let ((_e2320423490_ (gx#stx-e _tl2320323487_)))
                            (let ((_tl2320623495_ (##cdr _e2320423490_))
                                  (_hd2320523493_ (##car _e2320423490_)))
                              (if (gx#stx-pair? _hd2320523493_)
                                  (let ((_e2320723498_
                                         (gx#stx-e _hd2320523493_)))
                                    (let ((_tl2320923503_
                                           (##cdr _e2320723498_))
                                          (_hd2320823501_
                                           (##car _e2320723498_)))
                                      (if (gx#identifier? _hd2320823501_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2320823501_)
                                              (if (gx#stx-pair? _tl2320923503_)
                                                  (let ((_e2321023506_
                                                         (gx#stx-e
                                                          _tl2320923503_)))
                                                    (let ((_tl2321223511_
                                                           (##cdr _e2321023506_))
                                                          (_hd2321123509_
                                                           (##car _e2321023506_)))
                                                      (if (gx#stx-null?
                                                           _tl2321223511_)
                                                          (if (gx#stx-pair?
                                                               _tl2320623495_)
                                                              (let ((_e2321323514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2320623495_)))
                        (let ((_tl2321523519_ (##cdr _e2321323514_))
                              (_hd2321423517_ (##car _e2321323514_)))
                          (if (gx#stx-pair? _hd2321423517_)
                              (let ((_e2321623522_ (gx#stx-e _hd2321423517_)))
                                (let ((_tl2321823527_ (##cdr _e2321623522_))
                                      (_hd2321723525_ (##car _e2321623522_)))
                                  (if (gx#identifier? _hd2321723525_)
                                      (if (gx#stx-eq? '%#ref _hd2321723525_)
                                          (if (gx#stx-pair? _tl2321823527_)
                                              (let ((_e2321923530_
                                                     (gx#stx-e
                                                      _tl2321823527_)))
                                                (let ((_tl2322123535_
                                                       (##cdr _e2321923530_))
                                                      (_hd2322023533_
                                                       (##car _e2321923530_)))
                                                  (if (gx#stx-null?
                                                       _tl2322123535_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2321523519_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2321523519_)
                            '1)
                      (let ((___splice2876128762_
                             (gx#syntax-split-splice _tl2321523519_ '1)))
                        (let ((_tl2322423540_
                               (##vector-ref ___splice2876128762_ '1))
                              (_target2322223538_
                               (##vector-ref ___splice2876128762_ '0)))
                          (if (gx#stx-pair? _tl2322423540_)
                              (let ((_e2323123543_ (gx#stx-e _tl2322423540_)))
                                (let ((_tl2323323548_ (##cdr _e2323123543_))
                                      (_hd2323223546_ (##car _e2323123543_)))
                                  (if (gx#stx-pair? _hd2323223546_)
                                      (let ((_e2323423551_
                                             (gx#stx-e _hd2323223546_)))
                                        (let ((_tl2323623556_
                                               (##cdr _e2323423551_))
                                              (_hd2323523554_
                                               (##car _e2323423551_)))
                                          (if (gx#identifier? _hd2323523554_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2323523554_)
                                                  (if (gx#stx-pair?
                                                       _tl2323623556_)
                                                      (let ((_e2323723559_
                                                             (gx#stx-e
                                                              _tl2323623556_)))
                                                        (let ((_tl2323923564_
                                                               (##cdr _e2323723559_))
                                                              (_hd2323823562_
                                                               (##car _e2323723559_)))
                                                          (if (gx#stx-null?
                                                               _tl2323923564_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2323323548_)
                          (letrec ((_loop2322523567_
                                    (lambda (_hd2322323570_ _xarg2322923572_)
                                      (if (gx#stx-pair? _hd2322323570_)
                                          (let ((_e2322623575_
                                                 (gx#stx-e _hd2322323570_)))
                                            (let ((_lp-tl2322823580_
                                                   (##cdr _e2322623575_))
                                                  (_lp-hd2322723578_
                                                   (##car _e2322623575_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2322723578_)
                                                  (let ((_e2324023583_
                                                         (gx#stx-e
                                                          _lp-hd2322723578_)))
                                                    (let ((_tl2324223588_
                                                           (##cdr _e2324023583_))
                                                          (_hd2324123586_
                                                           (##car _e2324023583_)))
                                                      (if (gx#identifier?
                                                           _hd2324123586_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2324123586_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2324223588_)
                          (let ((_e2324323591_ (gx#stx-e _tl2324223588_)))
                            (let ((_tl2324523596_ (##cdr _e2324323591_))
                                  (_hd2324423594_ (##car _e2324323591_)))
                              (if (gx#stx-null? _tl2324523596_)
                                  (_loop2322523567_
                                   _lp-tl2322823580_
                                   (cons _hd2324423594_ _xarg2322923572_))
                                  (___match2886228863_
                                   _e2318623442_
                                   _hd2318723445_
                                   _tl2318823447_
                                   _e2319823474_
                                   _hd2319923477_
                                   _tl2320023479_
                                   _e2320123482_
                                   _hd2320223485_
                                   _tl2320323487_
                                   _e2320423490_
                                   _hd2320523493_
                                   _tl2320623495_
                                   _e2320723498_
                                   _hd2320823501_
                                   _tl2320923503_
                                   _e2321023506_
                                   _hd2321123509_
                                   _tl2321223511_
                                   _e2321323514_
                                   _hd2321423517_
                                   _tl2321523519_
                                   _e2321623522_
                                   _hd2321723525_
                                   _tl2321823527_
                                   _e2321923530_
                                   _hd2322023533_
                                   _tl2322123535_))))
                          (___match2886228863_
                           _e2318623442_
                           _hd2318723445_
                           _tl2318823447_
                           _e2319823474_
                           _hd2319923477_
                           _tl2320023479_
                           _e2320123482_
                           _hd2320223485_
                           _tl2320323487_
                           _e2320423490_
                           _hd2320523493_
                           _tl2320623495_
                           _e2320723498_
                           _hd2320823501_
                           _tl2320923503_
                           _e2321023506_
                           _hd2321123509_
                           _tl2321223511_
                           _e2321323514_
                           _hd2321423517_
                           _tl2321523519_
                           _e2321623522_
                           _hd2321723525_
                           _tl2321823527_
                           _e2321923530_
                           _hd2322023533_
                           _tl2322123535_))
                      (___match2886228863_
                       _e2318623442_
                       _hd2318723445_
                       _tl2318823447_
                       _e2319823474_
                       _hd2319923477_
                       _tl2320023479_
                       _e2320123482_
                       _hd2320223485_
                       _tl2320323487_
                       _e2320423490_
                       _hd2320523493_
                       _tl2320623495_
                       _e2320723498_
                       _hd2320823501_
                       _tl2320923503_
                       _e2321023506_
                       _hd2321123509_
                       _tl2321223511_
                       _e2321323514_
                       _hd2321423517_
                       _tl2321523519_
                       _e2321623522_
                       _hd2321723525_
                       _tl2321823527_
                       _e2321923530_
                       _hd2322023533_
                       _tl2322123535_))
                  (___match2886228863_
                   _e2318623442_
                   _hd2318723445_
                   _tl2318823447_
                   _e2319823474_
                   _hd2319923477_
                   _tl2320023479_
                   _e2320123482_
                   _hd2320223485_
                   _tl2320323487_
                   _e2320423490_
                   _hd2320523493_
                   _tl2320623495_
                   _e2320723498_
                   _hd2320823501_
                   _tl2320923503_
                   _e2321023506_
                   _hd2321123509_
                   _tl2321223511_
                   _e2321323514_
                   _hd2321423517_
                   _tl2321523519_
                   _e2321623522_
                   _hd2321723525_
                   _tl2321823527_
                   _e2321923530_
                   _hd2322023533_
                   _tl2322123535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2886228863_
                                                   _e2318623442_
                                                   _hd2318723445_
                                                   _tl2318823447_
                                                   _e2319823474_
                                                   _hd2319923477_
                                                   _tl2320023479_
                                                   _e2320123482_
                                                   _hd2320223485_
                                                   _tl2320323487_
                                                   _e2320423490_
                                                   _hd2320523493_
                                                   _tl2320623495_
                                                   _e2320723498_
                                                   _hd2320823501_
                                                   _tl2320923503_
                                                   _e2321023506_
                                                   _hd2321123509_
                                                   _tl2321223511_
                                                   _e2321323514_
                                                   _hd2321423517_
                                                   _tl2321523519_
                                                   _e2321623522_
                                                   _hd2321723525_
                                                   _tl2321823527_
                                                   _e2321923530_
                                                   _hd2322023533_
                                                   _tl2322123535_))))
                                          (let ((_xarg2323023599_
                                                 (reverse _xarg2322923572_)))
                                            (if (gx#stx-null? _tl2320023479_)
                                                (let ((_L23602_ _hd2323823562_)
                                                      (_L23603_
                                                       _xarg2323023599_)
                                                      (_L23604_ _hd2322023533_)
                                                      (_L23605_ _hd2321123509_)
                                                      (_L23606_ _tl2319123452_)
                                                      (_L23607_
                                                       _arg2319723471_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2365023653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2365123655_)
                               (cons _g2365023653_ _g2365123655_))
                             '()
                             _L23607_)))
                  (if (gx#identifier? _L23606_)
                      (if (gxc#runtime-identifier=? _L23605_ 'apply)
                          (if (fx= (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2365723660_
                                                              _g2365823662_)
                                                       (cons _g2365723660_
                                                             _g2365823662_))
                                                     '()
                                                     _L23607_)))
                                   (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2366423667_
                                                              _g2366523669_)
                                                       (cons _g2366423667_
                                                             _g2366523669_))
                                                     '()
                                                     _L23603_))))
                              (if (andmap2 gx#free-identifier=?
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2367123674_
                                                              _g2367223676_)
                                                       (cons _g2367123674_
                                                             _g2367223676_))
                                                     '()
                                                     _L23607_))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2367823681_
                                                              _g2367923683_)
                                                       (cons _g2367823681_
                                                             _g2367923683_))
                                                     '()
                                                     _L23603_)))
                                  (if (gx#free-identifier=? _L23606_ _L23602_)
                                      (not (find (lambda (_g2368523687_)
                                                   (gx#free-identifier=?
                                                    _g2368523687_
                                                    _L23604_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2368923692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2369023694_)
                     (cons _g2368923692_ _g2369023694_))
                   (cons _L23606_ '())
                   _L23607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '#f)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  '#f)
              (___kont2875728758_
               _L23602_
               _L23603_
               _L23604_
               _L23605_
               _L23606_
               _L23607_)
              (___match2886228863_
               _e2318623442_
               _hd2318723445_
               _tl2318823447_
               _e2319823474_
               _hd2319923477_
               _tl2320023479_
               _e2320123482_
               _hd2320223485_
               _tl2320323487_
               _e2320423490_
               _hd2320523493_
               _tl2320623495_
               _e2320723498_
               _hd2320823501_
               _tl2320923503_
               _e2321023506_
               _hd2321123509_
               _tl2321223511_
               _e2321323514_
               _hd2321423517_
               _tl2321523519_
               _e2321623522_
               _hd2321723525_
               _tl2321823527_
               _e2321923530_
               _hd2322023533_
               _tl2322123535_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2886228863_
                                                 _e2318623442_
                                                 _hd2318723445_
                                                 _tl2318823447_
                                                 _e2319823474_
                                                 _hd2319923477_
                                                 _tl2320023479_
                                                 _e2320123482_
                                                 _hd2320223485_
                                                 _tl2320323487_
                                                 _e2320423490_
                                                 _hd2320523493_
                                                 _tl2320623495_
                                                 _e2320723498_
                                                 _hd2320823501_
                                                 _tl2320923503_
                                                 _e2321023506_
                                                 _hd2321123509_
                                                 _tl2321223511_
                                                 _e2321323514_
                                                 _hd2321423517_
                                                 _tl2321523519_
                                                 _e2321623522_
                                                 _hd2321723525_
                                                 _tl2321823527_
                                                 _e2321923530_
                                                 _hd2322023533_
                                                 _tl2322123535_)))))))
                            (_loop2322523567_ _target2322223538_ '()))
                          (___match2886228863_
                           _e2318623442_
                           _hd2318723445_
                           _tl2318823447_
                           _e2319823474_
                           _hd2319923477_
                           _tl2320023479_
                           _e2320123482_
                           _hd2320223485_
                           _tl2320323487_
                           _e2320423490_
                           _hd2320523493_
                           _tl2320623495_
                           _e2320723498_
                           _hd2320823501_
                           _tl2320923503_
                           _e2321023506_
                           _hd2321123509_
                           _tl2321223511_
                           _e2321323514_
                           _hd2321423517_
                           _tl2321523519_
                           _e2321623522_
                           _hd2321723525_
                           _tl2321823527_
                           _e2321923530_
                           _hd2322023533_
                           _tl2322123535_))
                      (___match2886228863_
                       _e2318623442_
                       _hd2318723445_
                       _tl2318823447_
                       _e2319823474_
                       _hd2319923477_
                       _tl2320023479_
                       _e2320123482_
                       _hd2320223485_
                       _tl2320323487_
                       _e2320423490_
                       _hd2320523493_
                       _tl2320623495_
                       _e2320723498_
                       _hd2320823501_
                       _tl2320923503_
                       _e2321023506_
                       _hd2321123509_
                       _tl2321223511_
                       _e2321323514_
                       _hd2321423517_
                       _tl2321523519_
                       _e2321623522_
                       _hd2321723525_
                       _tl2321823527_
                       _e2321923530_
                       _hd2322023533_
                       _tl2322123535_))))
              (___match2886228863_
               _e2318623442_
               _hd2318723445_
               _tl2318823447_
               _e2319823474_
               _hd2319923477_
               _tl2320023479_
               _e2320123482_
               _hd2320223485_
               _tl2320323487_
               _e2320423490_
               _hd2320523493_
               _tl2320623495_
               _e2320723498_
               _hd2320823501_
               _tl2320923503_
               _e2321023506_
               _hd2321123509_
               _tl2321223511_
               _e2321323514_
               _hd2321423517_
               _tl2321523519_
               _e2321623522_
               _hd2321723525_
               _tl2321823527_
               _e2321923530_
               _hd2322023533_
               _tl2322123535_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2886228863_
                                                   _e2318623442_
                                                   _hd2318723445_
                                                   _tl2318823447_
                                                   _e2319823474_
                                                   _hd2319923477_
                                                   _tl2320023479_
                                                   _e2320123482_
                                                   _hd2320223485_
                                                   _tl2320323487_
                                                   _e2320423490_
                                                   _hd2320523493_
                                                   _tl2320623495_
                                                   _e2320723498_
                                                   _hd2320823501_
                                                   _tl2320923503_
                                                   _e2321023506_
                                                   _hd2321123509_
                                                   _tl2321223511_
                                                   _e2321323514_
                                                   _hd2321423517_
                                                   _tl2321523519_
                                                   _e2321623522_
                                                   _hd2321723525_
                                                   _tl2321823527_
                                                   _e2321923530_
                                                   _hd2322023533_
                                                   _tl2322123535_))
                                              (___match2886228863_
                                               _e2318623442_
                                               _hd2318723445_
                                               _tl2318823447_
                                               _e2319823474_
                                               _hd2319923477_
                                               _tl2320023479_
                                               _e2320123482_
                                               _hd2320223485_
                                               _tl2320323487_
                                               _e2320423490_
                                               _hd2320523493_
                                               _tl2320623495_
                                               _e2320723498_
                                               _hd2320823501_
                                               _tl2320923503_
                                               _e2321023506_
                                               _hd2321123509_
                                               _tl2321223511_
                                               _e2321323514_
                                               _hd2321423517_
                                               _tl2321523519_
                                               _e2321623522_
                                               _hd2321723525_
                                               _tl2321823527_
                                               _e2321923530_
                                               _hd2322023533_
                                               _tl2322123535_))))
                                      (___match2886228863_
                                       _e2318623442_
                                       _hd2318723445_
                                       _tl2318823447_
                                       _e2319823474_
                                       _hd2319923477_
                                       _tl2320023479_
                                       _e2320123482_
                                       _hd2320223485_
                                       _tl2320323487_
                                       _e2320423490_
                                       _hd2320523493_
                                       _tl2320623495_
                                       _e2320723498_
                                       _hd2320823501_
                                       _tl2320923503_
                                       _e2321023506_
                                       _hd2321123509_
                                       _tl2321223511_
                                       _e2321323514_
                                       _hd2321423517_
                                       _tl2321523519_
                                       _e2321623522_
                                       _hd2321723525_
                                       _tl2321823527_
                                       _e2321923530_
                                       _hd2322023533_
                                       _tl2322123535_))))
                              (___match2886228863_
                               _e2318623442_
                               _hd2318723445_
                               _tl2318823447_
                               _e2319823474_
                               _hd2319923477_
                               _tl2320023479_
                               _e2320123482_
                               _hd2320223485_
                               _tl2320323487_
                               _e2320423490_
                               _hd2320523493_
                               _tl2320623495_
                               _e2320723498_
                               _hd2320823501_
                               _tl2320923503_
                               _e2321023506_
                               _hd2321123509_
                               _tl2321223511_
                               _e2321323514_
                               _hd2321423517_
                               _tl2321523519_
                               _e2321623522_
                               _hd2321723525_
                               _tl2321823527_
                               _e2321923530_
                               _hd2322023533_
                               _tl2322123535_))))
                      (___match2886228863_
                       _e2318623442_
                       _hd2318723445_
                       _tl2318823447_
                       _e2319823474_
                       _hd2319923477_
                       _tl2320023479_
                       _e2320123482_
                       _hd2320223485_
                       _tl2320323487_
                       _e2320423490_
                       _hd2320523493_
                       _tl2320623495_
                       _e2320723498_
                       _hd2320823501_
                       _tl2320923503_
                       _e2321023506_
                       _hd2321123509_
                       _tl2321223511_
                       _e2321323514_
                       _hd2321423517_
                       _tl2321523519_
                       _e2321623522_
                       _hd2321723525_
                       _tl2321823527_
                       _e2321923530_
                       _hd2322023533_
                       _tl2322123535_))
                  (___match2886228863_
                   _e2318623442_
                   _hd2318723445_
                   _tl2318823447_
                   _e2319823474_
                   _hd2319923477_
                   _tl2320023479_
                   _e2320123482_
                   _hd2320223485_
                   _tl2320323487_
                   _e2320423490_
                   _hd2320523493_
                   _tl2320623495_
                   _e2320723498_
                   _hd2320823501_
                   _tl2320923503_
                   _e2321023506_
                   _hd2321123509_
                   _tl2321223511_
                   _e2321323514_
                   _hd2321423517_
                   _tl2321523519_
                   _e2321623522_
                   _hd2321723525_
                   _tl2321823527_
                   _e2321923530_
                   _hd2322023533_
                   _tl2322123535_))
              (___kont2876528766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2876528766_))
                                          (___kont2876528766_))
                                      (___kont2876528766_))))
                              (___kont2876528766_))))
                      (___kont2876528766_))
                  (___kont2876528766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2876528766_))
                                              (___kont2876528766_))
                                          (___kont2876528766_))))
                                  (___kont2876528766_))))
                          (___kont2876528766_))
                      (___kont2876528766_))
                  (___kont2876528766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2876528766_))))
                                          (___kont2876528766_)))))))
                      (_loop2319223455_ _target2318923450_ '()))))
                 (___match2878028781_
                  (lambda (_e2313823702_
                           _hd2313923705_
                           _tl2314023707_
                           ___splice2875328754_
                           _target2314123710_
                           _tl2314323712_)
                    (letrec ((_loop2314423715_
                              (lambda (_hd2314223718_ _arg2314823720_)
                                (if (gx#stx-pair? _hd2314223718_)
                                    (let ((_e2314523723_
                                           (gx#stx-e _hd2314223718_)))
                                      (let ((_lp-tl2314723728_
                                             (##cdr _e2314523723_))
                                            (_lp-hd2314623726_
                                             (##car _e2314523723_)))
                                        (_loop2314423715_
                                         _lp-tl2314723728_
                                         (cons _lp-hd2314623726_
                                               _arg2314823720_))))
                                    (let ((_arg2314923731_
                                           (reverse _arg2314823720_)))
                                      (if (gx#stx-pair? _tl2314023707_)
                                          (let ((_e2315023734_
                                                 (gx#stx-e _tl2314023707_)))
                                            (let ((_tl2315223739_
                                                   (##cdr _e2315023734_))
                                                  (_hd2315123737_
                                                   (##car _e2315023734_)))
                                              (if (gx#stx-pair? _hd2315123737_)
                                                  (let ((_e2315323742_
                                                         (gx#stx-e
                                                          _hd2315123737_)))
                                                    (let ((_tl2315523747_
                                                           (##cdr _e2315323742_))
                                                          (_hd2315423745_
                                                           (##car _e2315323742_)))
                                                      (if (gx#identifier?
                                                           _hd2315423745_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2315423745_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2315523747_)
                          (let ((_e2315623750_ (gx#stx-e _tl2315523747_)))
                            (let ((_tl2315823755_ (##cdr _e2315623750_))
                                  (_hd2315723753_ (##car _e2315623750_)))
                              (if (gx#stx-pair? _hd2315723753_)
                                  (let ((_e2315923758_
                                         (gx#stx-e _hd2315723753_)))
                                    (let ((_tl2316123763_
                                           (##cdr _e2315923758_))
                                          (_hd2316023761_
                                           (##car _e2315923758_)))
                                      (if (gx#identifier? _hd2316023761_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2316023761_)
                                              (if (gx#stx-pair? _tl2316123763_)
                                                  (let ((_e2316223766_
                                                         (gx#stx-e
                                                          _tl2316123763_)))
                                                    (let ((_tl2316423771_
                                                           (##cdr _e2316223766_))
                                                          (_hd2316323769_
                                                           (##car _e2316223766_)))
                                                      (if (gx#stx-null?
                                                           _tl2316423771_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2315823755_)
                                                              (let ((___splice2875528756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2315823755_ '0)))
                        (let ((_tl2316723776_
                               (##vector-ref ___splice2875528756_ '1))
                              (_target2316523774_
                               (##vector-ref ___splice2875528756_ '0)))
                          (if (gx#stx-null? _tl2316723776_)
                              (letrec ((_loop2316823779_
                                        (lambda (_hd2316623782_
                                                 _xarg2317223784_)
                                          (if (gx#stx-pair? _hd2316623782_)
                                              (let ((_e2316923787_
                                                     (gx#stx-e
                                                      _hd2316623782_)))
                                                (let ((_lp-tl2317123792_
                                                       (##cdr _e2316923787_))
                                                      (_lp-hd2317023790_
                                                       (##car _e2316923787_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2317023790_)
                                                      (let ((_e2317423795_
                                                             (gx#stx-e
                                                              _lp-hd2317023790_)))
                                                        (let ((_tl2317623800_
                                                               (##cdr _e2317423795_))
                                                              (_hd2317523798_
                                                               (##car _e2317423795_)))
                                                          (if (gx#identifier?
                                                               _hd2317523798_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2317523798_)
                          (if (gx#stx-pair? _tl2317623800_)
                              (let ((_e2317723803_ (gx#stx-e _tl2317623800_)))
                                (let ((_tl2317923808_ (##cdr _e2317723803_))
                                      (_hd2317823806_ (##car _e2317723803_)))
                                  (if (gx#stx-null? _tl2317923808_)
                                      (_loop2316823779_
                                       _lp-tl2317123792_
                                       (cons _hd2317823806_ _xarg2317223784_))
                                      (___match2879228793_
                                       _e2313823702_
                                       _hd2313923705_
                                       _tl2314023707_
                                       ___splice2875328754_
                                       _target2314123710_
                                       _tl2314323712_))))
                              (___match2879228793_
                               _e2313823702_
                               _hd2313923705_
                               _tl2314023707_
                               ___splice2875328754_
                               _target2314123710_
                               _tl2314323712_))
                          (___match2879228793_
                           _e2313823702_
                           _hd2313923705_
                           _tl2314023707_
                           ___splice2875328754_
                           _target2314123710_
                           _tl2314323712_))
                      (___match2879228793_
                       _e2313823702_
                       _hd2313923705_
                       _tl2314023707_
                       ___splice2875328754_
                       _target2314123710_
                       _tl2314323712_))))
              (___match2879228793_
               _e2313823702_
               _hd2313923705_
               _tl2314023707_
               ___splice2875328754_
               _target2314123710_
               _tl2314323712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2317323811_
                                                     (reverse _xarg2317223784_)))
                                                (if (gx#stx-null?
                                                     _tl2315223739_)
                                                    (let ((_L23814_
                                                           _xarg2317323811_)
                                                          (_L23815_
                                                           _hd2316323769_)
                                                          (_L23816_
                                                           _arg2314923731_))
                                                      (if (if (gx#identifier-list?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2384423847_ _g2384523849_)
                                   (cons _g2384423847_ _g2384523849_))
                                 '()
                                 _L23816_)))
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2385123854_
                                                          _g2385223856_)
                                                   (cons _g2385123854_
                                                         _g2385223856_))
                                                 '()
                                                 _L23816_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2385823861_
                                                          _g2385923863_)
                                                   (cons _g2385823861_
                                                         _g2385923863_))
                                                 '()
                                                 _L23814_))))
                          (if (andmap2 gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2386523868_
                                                          _g2386623870_)
                                                   (cons _g2386523868_
                                                         _g2386623870_))
                                                 '()
                                                 _L23816_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2387223875_
                                                          _g2387323877_)
                                                   (cons _g2387223875_
                                                         _g2387323877_))
                                                 '()
                                                 _L23814_)))
                              (not (find (lambda (_g2387923881_)
                                           (gx#free-identifier=?
                                            _g2387923881_
                                            _L23815_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2388323886_
                                                            _g2388423888_)
                                                     (cons _g2388323886_
                                                           _g2388423888_))
                                                   '()
                                                   _L23816_))))
                              '#f)
                          '#f)
                      '#f)
                  (___kont2875128752_ _L23814_ _L23815_ _L23816_)
                  (___match2879228793_
                   _e2313823702_
                   _hd2313923705_
                   _tl2314023707_
                   ___splice2875328754_
                   _target2314123710_
                   _tl2314323712_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2879228793_
                                                     _e2313823702_
                                                     _hd2313923705_
                                                     _tl2314023707_
                                                     ___splice2875328754_
                                                     _target2314123710_
                                                     _tl2314323712_)))))))
                                (_loop2316823779_ _target2316523774_ '()))
                              (___match2879228793_
                               _e2313823702_
                               _hd2313923705_
                               _tl2314023707_
                               ___splice2875328754_
                               _target2314123710_
                               _tl2314323712_))))
                      (___match2879228793_
                       _e2313823702_
                       _hd2313923705_
                       _tl2314023707_
                       ___splice2875328754_
                       _target2314123710_
                       _tl2314323712_))
                  (___match2879228793_
                   _e2313823702_
                   _hd2313923705_
                   _tl2314023707_
                   ___splice2875328754_
                   _target2314123710_
                   _tl2314323712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2879228793_
                                                   _e2313823702_
                                                   _hd2313923705_
                                                   _tl2314023707_
                                                   ___splice2875328754_
                                                   _target2314123710_
                                                   _tl2314323712_))
                                              (___match2879228793_
                                               _e2313823702_
                                               _hd2313923705_
                                               _tl2314023707_
                                               ___splice2875328754_
                                               _target2314123710_
                                               _tl2314323712_))
                                          (___match2879228793_
                                           _e2313823702_
                                           _hd2313923705_
                                           _tl2314023707_
                                           ___splice2875328754_
                                           _target2314123710_
                                           _tl2314323712_))))
                                  (___match2879228793_
                                   _e2313823702_
                                   _hd2313923705_
                                   _tl2314023707_
                                   ___splice2875328754_
                                   _target2314123710_
                                   _tl2314323712_))))
                          (___match2879228793_
                           _e2313823702_
                           _hd2313923705_
                           _tl2314023707_
                           ___splice2875328754_
                           _target2314123710_
                           _tl2314323712_))
                      (___match2879228793_
                       _e2313823702_
                       _hd2313923705_
                       _tl2314023707_
                       ___splice2875328754_
                       _target2314123710_
                       _tl2314323712_))
                  (___match2879228793_
                   _e2313823702_
                   _hd2313923705_
                   _tl2314023707_
                   ___splice2875328754_
                   _target2314123710_
                   _tl2314323712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2879228793_
                                                   _e2313823702_
                                                   _hd2313923705_
                                                   _tl2314023707_
                                                   ___splice2875328754_
                                                   _target2314123710_
                                                   _tl2314323712_))))
                                          (___match2879228793_
                                           _e2313823702_
                                           _hd2313923705_
                                           _tl2314023707_
                                           ___splice2875328754_
                                           _target2314123710_
                                           _tl2314323712_)))))))
                      (_loop2314423715_ _target2314123710_ '())))))
            (if (gx#stx-pair? ___stx2874928750_)
                (let ((_e2313823702_ (gx#stx-e ___stx2874928750_)))
                  (let ((_tl2314023707_ (##cdr _e2313823702_))
                        (_hd2313923705_ (##car _e2313823702_)))
                    (if (gx#stx-pair/null? _hd2313923705_)
                        (let ((___splice2875328754_
                               (gx#syntax-split-splice _hd2313923705_ '0)))
                          (let ((_tl2314323712_
                                 (##vector-ref ___splice2875328754_ '1))
                                (_target2314123710_
                                 (##vector-ref ___splice2875328754_ '0)))
                            (if (gx#stx-null? _tl2314323712_)
                                (___match2878028781_
                                 _e2313823702_
                                 _hd2313923705_
                                 _tl2314023707_
                                 ___splice2875328754_
                                 _target2314123710_
                                 _tl2314323712_)
                                (___match2879228793_
                                 _e2313823702_
                                 _hd2313923705_
                                 _tl2314023707_
                                 ___splice2875328754_
                                 _target2314123710_
                                 _tl2314323712_))))
                        (if (gx#stx-pair? _tl2314023707_)
                            (let ((_e2325323310_ (gx#stx-e _tl2314023707_)))
                              (let ((_tl2325523315_ (##cdr _e2325323310_))
                                    (_hd2325423313_ (##car _e2325323310_)))
                                (if (gx#stx-pair? _hd2325423313_)
                                    (let ((_e2325623318_
                                           (gx#stx-e _hd2325423313_)))
                                      (let ((_tl2325823323_
                                             (##cdr _e2325623318_))
                                            (_hd2325723321_
                                             (##car _e2325623318_)))
                                        (if (gx#identifier? _hd2325723321_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2325723321_)
                                                (if (gx#stx-pair?
                                                     _tl2325823323_)
                                                    (let ((_e2325923326_
                                                           (gx#stx-e
                                                            _tl2325823323_)))
                                                      (let ((_tl2326123331_
                                                             (##cdr _e2325923326_))
                                                            (_hd2326023329_
                                                             (##car _e2325923326_)))
                                                        (if (gx#stx-pair?
                                                             _hd2326023329_)
                                                            (let ((_e2326223334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2326023329_)))
                      (let ((_tl2326423339_ (##cdr _e2326223334_))
                            (_hd2326323337_ (##car _e2326223334_)))
                        (if (gx#identifier? _hd2326323337_)
                            (if (gx#stx-eq? '%#ref _hd2326323337_)
                                (if (gx#stx-pair? _tl2326423339_)
                                    (let ((_e2326523342_
                                           (gx#stx-e _tl2326423339_)))
                                      (let ((_tl2326723347_
                                             (##cdr _e2326523342_))
                                            (_hd2326623345_
                                             (##car _e2326523342_)))
                                        (if (gx#stx-null? _tl2326723347_)
                                            (if (gx#stx-pair? _tl2326123331_)
                                                (let ((_e2326823350_
                                                       (gx#stx-e
                                                        _tl2326123331_)))
                                                  (let ((_tl2327023355_
                                                         (##cdr _e2326823350_))
                                                        (_hd2326923353_
                                                         (##car _e2326823350_)))
                                                    (if (gx#stx-pair?
                                                         _hd2326923353_)
                                                        (let ((_e2327123358_
                                                               (gx#stx-e
                                                                _hd2326923353_)))
                                                          (let ((_tl2327323363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2327123358_))
                        (_hd2327223361_ (##car _e2327123358_)))
                    (if (gx#identifier? _hd2327223361_)
                        (if (gx#stx-eq? '%#ref _hd2327223361_)
                            (if (gx#stx-pair? _tl2327323363_)
                                (let ((_e2327423366_
                                       (gx#stx-e _tl2327323363_)))
                                  (let ((_tl2327623371_ (##cdr _e2327423366_))
                                        (_hd2327523369_ (##car _e2327423366_)))
                                    (if (gx#stx-null? _tl2327623371_)
                                        (if (gx#stx-pair? _tl2327023355_)
                                            (let ((_e2327723374_
                                                   (gx#stx-e _tl2327023355_)))
                                              (let ((_tl2327923379_
                                                     (##cdr _e2327723374_))
                                                    (_hd2327823377_
                                                     (##car _e2327723374_)))
                                                (if (gx#stx-pair?
                                                     _hd2327823377_)
                                                    (let ((_e2328023382_
                                                           (gx#stx-e
                                                            _hd2327823377_)))
                                                      (let ((_tl2328223387_
                                                             (##cdr _e2328023382_))
                                                            (_hd2328123385_
                                                             (##car _e2328023382_)))
                                                        (if (gx#identifier?
                                                             _hd2328123385_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2328123385_)
                        (if (gx#stx-pair? _tl2328223387_)
                            (let ((_e2328323390_ (gx#stx-e _tl2328223387_)))
                              (let ((_tl2328523395_ (##cdr _e2328323390_))
                                    (_hd2328423393_ (##car _e2328323390_)))
                                (if (gx#stx-null? _tl2328523395_)
                                    (if (gx#stx-null? _tl2327923379_)
                                        (if (gx#stx-null? _tl2325523315_)
                                            (___match2889028891_
                                             _e2313823702_
                                             _hd2313923705_
                                             _tl2314023707_
                                             _e2325323310_
                                             _hd2325423313_
                                             _tl2325523315_
                                             _e2325623318_
                                             _hd2325723321_
                                             _tl2325823323_
                                             _e2325923326_
                                             _hd2326023329_
                                             _tl2326123331_
                                             _e2326223334_
                                             _hd2326323337_
                                             _tl2326423339_
                                             _e2326523342_
                                             _hd2326623345_
                                             _tl2326723347_
                                             _e2326823350_
                                             _hd2326923353_
                                             _tl2327023355_
                                             _e2327123358_
                                             _hd2327223361_
                                             _tl2327323363_
                                             _e2327423366_
                                             _hd2327523369_
                                             _tl2327623371_
                                             _e2327723374_
                                             _hd2327823377_
                                             _tl2327923379_
                                             _e2328023382_
                                             _hd2328123385_
                                             _tl2328223387_
                                             _e2328323390_
                                             _hd2328423393_
                                             _tl2328523395_)
                                            (___kont2876528766_))
                                        (___kont2876528766_))
                                    (___kont2876528766_))))
                            (___kont2876528766_))
                        (___kont2876528766_))
                    (___kont2876528766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2876528766_))))
                                            (___kont2876528766_))
                                        (___kont2876528766_))))
                                (___kont2876528766_))
                            (___kont2876528766_))
                        (___kont2876528766_))))
                (___kont2876528766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2876528766_))
                                            (___kont2876528766_))))
                                    (___kont2876528766_))
                                (___kont2876528766_))
                            (___kont2876528766_))))
                    (___kont2876528766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2876528766_))
                                                (___kont2876528766_))
                                            (___kont2876528766_))))
                                    (___kont2876528766_))))
                            (___kont2876528766_)))))
                (___kont2876528766_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form22596_)
      (let* ((___stx2889328894_ _form22596_)
             (_g2260022724_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2889328894_))))
        (let ((___kont2889528896_
               (lambda (_L23094_ _L23095_ _L23096_)
                 (gxc#identifier-symbol _L23095_)))
              (___kont2890128902_
               (lambda (_L22942_ _L22943_ _L22944_ _L22945_)
                 (gxc#identifier-symbol _L22942_)))
              (___kont2890528906_
               (lambda (_L22809_ _L22810_ _L22811_)
                 (gxc#identifier-symbol _L22809_))))
          (let* ((___match2900229003_
                  (lambda (_e2269022729_
                           _hd2269122732_
                           _tl2269222734_
                           _e2269322737_
                           _hd2269422740_
                           _tl2269522742_
                           _e2269622745_
                           _hd2269722748_
                           _tl2269822750_
                           _e2269922753_
                           _hd2270022756_
                           _tl2270122758_
                           _e2270222761_
                           _hd2270322764_
                           _tl2270422766_
                           _e2270522769_
                           _hd2270622772_
                           _tl2270722774_
                           _e2270822777_
                           _hd2270922780_
                           _tl2271022782_
                           _e2271122785_
                           _hd2271222788_
                           _tl2271322790_
                           _e2271422793_
                           _hd2271522796_
                           _tl2271622798_)
                    (if (gx#stx-pair? _tl2271022782_)
                        (let ((_e2271722801_ (gx#stx-e _tl2271022782_)))
                          (let ((_tl2271922806_ (##cdr _e2271722801_))
                                (_hd2271822804_ (##car _e2271722801_)))
                            (if (gx#stx-null? _tl2271922806_)
                                (if (gx#stx-null? _tl2269522742_)
                                    (___kont2890528906_
                                     _hd2271522796_
                                     _hd2270622772_
                                     _hd2269122732_)
                                    (_g2260022724_))
                                (_g2260022724_))))
                        (_g2260022724_))))
                 (___match2893228933_
                  (lambda (_e2265122846_
                           _hd2265222849_
                           _tl2265322851_
                           ___splice2890328904_
                           _target2265422854_
                           _tl2265622856_)
                    (letrec ((_loop2265722859_
                              (lambda (_hd2265522862_ _arg2266122864_)
                                (if (gx#stx-pair? _hd2265522862_)
                                    (let ((_e2265822867_
                                           (gx#stx-e _hd2265522862_)))
                                      (let ((_lp-tl2266022872_
                                             (##cdr _e2265822867_))
                                            (_lp-hd2265922870_
                                             (##car _e2265822867_)))
                                        (_loop2265722859_
                                         _lp-tl2266022872_
                                         (cons _lp-hd2265922870_
                                               _arg2266122864_))))
                                    (let ((_arg2266222875_
                                           (reverse _arg2266122864_)))
                                      (if (gx#stx-pair? _tl2265322851_)
                                          (let ((_e2266322878_
                                                 (gx#stx-e _tl2265322851_)))
                                            (let ((_tl2266522883_
                                                   (##cdr _e2266322878_))
                                                  (_hd2266422881_
                                                   (##car _e2266322878_)))
                                              (if (gx#stx-pair? _hd2266422881_)
                                                  (let ((_e2266622886_
                                                         (gx#stx-e
                                                          _hd2266422881_)))
                                                    (let ((_tl2266822891_
                                                           (##cdr _e2266622886_))
                                                          (_hd2266722889_
                                                           (##car _e2266622886_)))
                                                      (if (gx#identifier?
                                                           _hd2266722889_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2266722889_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2266822891_)
                          (let ((_e2266922894_ (gx#stx-e _tl2266822891_)))
                            (let ((_tl2267122899_ (##cdr _e2266922894_))
                                  (_hd2267022897_ (##car _e2266922894_)))
                              (if (gx#stx-pair? _hd2267022897_)
                                  (let ((_e2267222902_
                                         (gx#stx-e _hd2267022897_)))
                                    (let ((_tl2267422907_
                                           (##cdr _e2267222902_))
                                          (_hd2267322905_
                                           (##car _e2267222902_)))
                                      (if (gx#identifier? _hd2267322905_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2267322905_)
                                              (if (gx#stx-pair? _tl2267422907_)
                                                  (let ((_e2267522910_
                                                         (gx#stx-e
                                                          _tl2267422907_)))
                                                    (let ((_tl2267722915_
                                                           (##cdr _e2267522910_))
                                                          (_hd2267622913_
                                                           (##car _e2267522910_)))
                                                      (if (gx#stx-null?
                                                           _tl2267722915_)
                                                          (if (gx#stx-pair?
                                                               _tl2267122899_)
                                                              (let ((_e2267822918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2267122899_)))
                        (let ((_tl2268022923_ (##cdr _e2267822918_))
                              (_hd2267922921_ (##car _e2267822918_)))
                          (if (gx#stx-pair? _hd2267922921_)
                              (let ((_e2268122926_ (gx#stx-e _hd2267922921_)))
                                (let ((_tl2268322931_ (##cdr _e2268122926_))
                                      (_hd2268222929_ (##car _e2268122926_)))
                                  (if (gx#identifier? _hd2268222929_)
                                      (if (gx#stx-eq? '%#ref _hd2268222929_)
                                          (if (gx#stx-pair? _tl2268322931_)
                                              (let ((_e2268422934_
                                                     (gx#stx-e
                                                      _tl2268322931_)))
                                                (let ((_tl2268622939_
                                                       (##cdr _e2268422934_))
                                                      (_hd2268522937_
                                                       (##car _e2268422934_)))
                                                  (if (gx#stx-null?
                                                       _tl2268622939_)
                                                      (if (gx#stx-null?
                                                           _tl2266522883_)
                                                          (___kont2890128902_
                                                           _hd2268522937_
                                                           _hd2267622913_
                                                           _tl2265622856_
                                                           _arg2266222875_)
                                                          (___match2900229003_
                                                           _e2265122846_
                                                           _hd2265222849_
                                                           _tl2265322851_
                                                           _e2266322878_
                                                           _hd2266422881_
                                                           _tl2266522883_
                                                           _e2266622886_
                                                           _hd2266722889_
                                                           _tl2266822891_
                                                           _e2266922894_
                                                           _hd2267022897_
                                                           _tl2267122899_
                                                           _e2267222902_
                                                           _hd2267322905_
                                                           _tl2267422907_
                                                           _e2267522910_
                                                           _hd2267622913_
                                                           _tl2267722915_
                                                           _e2267822918_
                                                           _hd2267922921_
                                                           _tl2268022923_
                                                           _e2268122926_
                                                           _hd2268222929_
                                                           _tl2268322931_
                                                           _e2268422934_
                                                           _hd2268522937_
                                                           _tl2268622939_))
                                                      (_g2260022724_))))
                                              (_g2260022724_))
                                          (_g2260022724_))
                                      (_g2260022724_))))
                              (_g2260022724_))))
                      (_g2260022724_))
                  (_g2260022724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2260022724_))
                                              (_g2260022724_))
                                          (_g2260022724_))))
                                  (_g2260022724_))))
                          (_g2260022724_))
                      (_g2260022724_))
                  (_g2260022724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2260022724_))))
                                          (_g2260022724_)))))))
                      (_loop2265722859_ _target2265422854_ '()))))
                 (___match2892028921_
                  (lambda (_e2260522982_
                           _hd2260622985_
                           _tl2260722987_
                           ___splice2889728898_
                           _target2260822990_
                           _tl2261022992_)
                    (letrec ((_loop2261122995_
                              (lambda (_hd2260922998_ _arg2261523000_)
                                (if (gx#stx-pair? _hd2260922998_)
                                    (let ((_e2261223003_
                                           (gx#stx-e _hd2260922998_)))
                                      (let ((_lp-tl2261423008_
                                             (##cdr _e2261223003_))
                                            (_lp-hd2261323006_
                                             (##car _e2261223003_)))
                                        (_loop2261122995_
                                         _lp-tl2261423008_
                                         (cons _lp-hd2261323006_
                                               _arg2261523000_))))
                                    (let ((_arg2261623011_
                                           (reverse _arg2261523000_)))
                                      (if (gx#stx-pair? _tl2260722987_)
                                          (let ((_e2261723014_
                                                 (gx#stx-e _tl2260722987_)))
                                            (let ((_tl2261923019_
                                                   (##cdr _e2261723014_))
                                                  (_hd2261823017_
                                                   (##car _e2261723014_)))
                                              (if (gx#stx-pair? _hd2261823017_)
                                                  (let ((_e2262023022_
                                                         (gx#stx-e
                                                          _hd2261823017_)))
                                                    (let ((_tl2262223027_
                                                           (##cdr _e2262023022_))
                                                          (_hd2262123025_
                                                           (##car _e2262023022_)))
                                                      (if (gx#identifier?
                                                           _hd2262123025_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2262123025_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2262223027_)
                          (let ((_e2262323030_ (gx#stx-e _tl2262223027_)))
                            (let ((_tl2262523035_ (##cdr _e2262323030_))
                                  (_hd2262423033_ (##car _e2262323030_)))
                              (if (gx#stx-pair? _hd2262423033_)
                                  (let ((_e2262623038_
                                         (gx#stx-e _hd2262423033_)))
                                    (let ((_tl2262823043_
                                           (##cdr _e2262623038_))
                                          (_hd2262723041_
                                           (##car _e2262623038_)))
                                      (if (gx#identifier? _hd2262723041_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2262723041_)
                                              (if (gx#stx-pair? _tl2262823043_)
                                                  (let ((_e2262923046_
                                                         (gx#stx-e
                                                          _tl2262823043_)))
                                                    (let ((_tl2263123051_
                                                           (##cdr _e2262923046_))
                                                          (_hd2263023049_
                                                           (##car _e2262923046_)))
                                                      (if (gx#stx-null?
                                                           _tl2263123051_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2262523035_)
                                                              (let ((___splice2889928900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2262523035_ '0)))
                        (let ((_tl2263423056_
                               (##vector-ref ___splice2889928900_ '1))
                              (_target2263223054_
                               (##vector-ref ___splice2889928900_ '0)))
                          (if (gx#stx-null? _tl2263423056_)
                              (letrec ((_loop2263523059_
                                        (lambda (_hd2263323062_
                                                 _xarg2263923064_)
                                          (if (gx#stx-pair? _hd2263323062_)
                                              (let ((_e2263623067_
                                                     (gx#stx-e
                                                      _hd2263323062_)))
                                                (let ((_lp-tl2263823072_
                                                       (##cdr _e2263623067_))
                                                      (_lp-hd2263723070_
                                                       (##car _e2263623067_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2263723070_)
                                                      (let ((_e2264123075_
                                                             (gx#stx-e
                                                              _lp-hd2263723070_)))
                                                        (let ((_tl2264323080_
                                                               (##cdr _e2264123075_))
                                                              (_hd2264223078_
                                                               (##car _e2264123075_)))
                                                          (if (gx#identifier?
                                                               _hd2264223078_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2264223078_)
                          (if (gx#stx-pair? _tl2264323080_)
                              (let ((_e2264423083_ (gx#stx-e _tl2264323080_)))
                                (let ((_tl2264623088_ (##cdr _e2264423083_))
                                      (_hd2264523086_ (##car _e2264423083_)))
                                  (if (gx#stx-null? _tl2264623088_)
                                      (_loop2263523059_
                                       _lp-tl2263823072_
                                       (cons _hd2264523086_ _xarg2263923064_))
                                      (___match2893228933_
                                       _e2260522982_
                                       _hd2260622985_
                                       _tl2260722987_
                                       ___splice2889728898_
                                       _target2260822990_
                                       _tl2261022992_))))
                              (___match2893228933_
                               _e2260522982_
                               _hd2260622985_
                               _tl2260722987_
                               ___splice2889728898_
                               _target2260822990_
                               _tl2261022992_))
                          (___match2893228933_
                           _e2260522982_
                           _hd2260622985_
                           _tl2260722987_
                           ___splice2889728898_
                           _target2260822990_
                           _tl2261022992_))
                      (___match2893228933_
                       _e2260522982_
                       _hd2260622985_
                       _tl2260722987_
                       ___splice2889728898_
                       _target2260822990_
                       _tl2261022992_))))
              (___match2893228933_
               _e2260522982_
               _hd2260622985_
               _tl2260722987_
               ___splice2889728898_
               _target2260822990_
               _tl2261022992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2264023091_
                                                     (reverse _xarg2263923064_)))
                                                (if (gx#stx-null?
                                                     _tl2261923019_)
                                                    (___kont2889528896_
                                                     _xarg2264023091_
                                                     _hd2263023049_
                                                     _arg2261623011_)
                                                    (___match2893228933_
                                                     _e2260522982_
                                                     _hd2260622985_
                                                     _tl2260722987_
                                                     ___splice2889728898_
                                                     _target2260822990_
                                                     _tl2261022992_)))))))
                                (_loop2263523059_ _target2263223054_ '()))
                              (___match2893228933_
                               _e2260522982_
                               _hd2260622985_
                               _tl2260722987_
                               ___splice2889728898_
                               _target2260822990_
                               _tl2261022992_))))
                      (___match2893228933_
                       _e2260522982_
                       _hd2260622985_
                       _tl2260722987_
                       ___splice2889728898_
                       _target2260822990_
                       _tl2261022992_))
                  (___match2893228933_
                   _e2260522982_
                   _hd2260622985_
                   _tl2260722987_
                   ___splice2889728898_
                   _target2260822990_
                   _tl2261022992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2893228933_
                                                   _e2260522982_
                                                   _hd2260622985_
                                                   _tl2260722987_
                                                   ___splice2889728898_
                                                   _target2260822990_
                                                   _tl2261022992_))
                                              (___match2893228933_
                                               _e2260522982_
                                               _hd2260622985_
                                               _tl2260722987_
                                               ___splice2889728898_
                                               _target2260822990_
                                               _tl2261022992_))
                                          (___match2893228933_
                                           _e2260522982_
                                           _hd2260622985_
                                           _tl2260722987_
                                           ___splice2889728898_
                                           _target2260822990_
                                           _tl2261022992_))))
                                  (___match2893228933_
                                   _e2260522982_
                                   _hd2260622985_
                                   _tl2260722987_
                                   ___splice2889728898_
                                   _target2260822990_
                                   _tl2261022992_))))
                          (___match2893228933_
                           _e2260522982_
                           _hd2260622985_
                           _tl2260722987_
                           ___splice2889728898_
                           _target2260822990_
                           _tl2261022992_))
                      (___match2893228933_
                       _e2260522982_
                       _hd2260622985_
                       _tl2260722987_
                       ___splice2889728898_
                       _target2260822990_
                       _tl2261022992_))
                  (___match2893228933_
                   _e2260522982_
                   _hd2260622985_
                   _tl2260722987_
                   ___splice2889728898_
                   _target2260822990_
                   _tl2261022992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2893228933_
                                                   _e2260522982_
                                                   _hd2260622985_
                                                   _tl2260722987_
                                                   ___splice2889728898_
                                                   _target2260822990_
                                                   _tl2261022992_))))
                                          (___match2893228933_
                                           _e2260522982_
                                           _hd2260622985_
                                           _tl2260722987_
                                           ___splice2889728898_
                                           _target2260822990_
                                           _tl2261022992_)))))))
                      (_loop2261122995_ _target2260822990_ '())))))
            (if (gx#stx-pair? ___stx2889328894_)
                (let ((_e2260522982_ (gx#stx-e ___stx2889328894_)))
                  (let ((_tl2260722987_ (##cdr _e2260522982_))
                        (_hd2260622985_ (##car _e2260522982_)))
                    (if (gx#stx-pair/null? _hd2260622985_)
                        (let ((___splice2889728898_
                               (gx#syntax-split-splice _hd2260622985_ '0)))
                          (let ((_tl2261022992_
                                 (##vector-ref ___splice2889728898_ '1))
                                (_target2260822990_
                                 (##vector-ref ___splice2889728898_ '0)))
                            (if (gx#stx-null? _tl2261022992_)
                                (___match2892028921_
                                 _e2260522982_
                                 _hd2260622985_
                                 _tl2260722987_
                                 ___splice2889728898_
                                 _target2260822990_
                                 _tl2261022992_)
                                (___match2893228933_
                                 _e2260522982_
                                 _hd2260622985_
                                 _tl2260722987_
                                 ___splice2889728898_
                                 _target2260822990_
                                 _tl2261022992_))))
                        (if (gx#stx-pair? _tl2260722987_)
                            (let ((_e2269322737_ (gx#stx-e _tl2260722987_)))
                              (let ((_tl2269522742_ (##cdr _e2269322737_))
                                    (_hd2269422740_ (##car _e2269322737_)))
                                (if (gx#stx-pair? _hd2269422740_)
                                    (let ((_e2269622745_
                                           (gx#stx-e _hd2269422740_)))
                                      (let ((_tl2269822750_
                                             (##cdr _e2269622745_))
                                            (_hd2269722748_
                                             (##car _e2269622745_)))
                                        (if (gx#identifier? _hd2269722748_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2269722748_)
                                                (if (gx#stx-pair?
                                                     _tl2269822750_)
                                                    (let ((_e2269922753_
                                                           (gx#stx-e
                                                            _tl2269822750_)))
                                                      (let ((_tl2270122758_
                                                             (##cdr _e2269922753_))
                                                            (_hd2270022756_
                                                             (##car _e2269922753_)))
                                                        (if (gx#stx-pair?
                                                             _hd2270022756_)
                                                            (let ((_e2270222761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2270022756_)))
                      (let ((_tl2270422766_ (##cdr _e2270222761_))
                            (_hd2270322764_ (##car _e2270222761_)))
                        (if (gx#identifier? _hd2270322764_)
                            (if (gx#stx-eq? '%#ref _hd2270322764_)
                                (if (gx#stx-pair? _tl2270422766_)
                                    (let ((_e2270522769_
                                           (gx#stx-e _tl2270422766_)))
                                      (let ((_tl2270722774_
                                             (##cdr _e2270522769_))
                                            (_hd2270622772_
                                             (##car _e2270522769_)))
                                        (if (gx#stx-null? _tl2270722774_)
                                            (if (gx#stx-pair? _tl2270122758_)
                                                (let ((_e2270822777_
                                                       (gx#stx-e
                                                        _tl2270122758_)))
                                                  (let ((_tl2271022782_
                                                         (##cdr _e2270822777_))
                                                        (_hd2270922780_
                                                         (##car _e2270822777_)))
                                                    (if (gx#stx-pair?
                                                         _hd2270922780_)
                                                        (let ((_e2271122785_
                                                               (gx#stx-e
                                                                _hd2270922780_)))
                                                          (let ((_tl2271322790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2271122785_))
                        (_hd2271222788_ (##car _e2271122785_)))
                    (if (gx#identifier? _hd2271222788_)
                        (if (gx#stx-eq? '%#ref _hd2271222788_)
                            (if (gx#stx-pair? _tl2271322790_)
                                (let ((_e2271422793_
                                       (gx#stx-e _tl2271322790_)))
                                  (let ((_tl2271622798_ (##cdr _e2271422793_))
                                        (_hd2271522796_ (##car _e2271422793_)))
                                    (if (gx#stx-null? _tl2271622798_)
                                        (if (gx#stx-pair? _tl2271022782_)
                                            (let ((_e2271722801_
                                                   (gx#stx-e _tl2271022782_)))
                                              (let ((_tl2271922806_
                                                     (##cdr _e2271722801_))
                                                    (_hd2271822804_
                                                     (##car _e2271722801_)))
                                                (if (gx#stx-null?
                                                     _tl2271922806_)
                                                    (if (gx#stx-null?
                                                         _tl2269522742_)
                                                        (___kont2890528906_
                                                         _hd2271522796_
                                                         _hd2270622772_
                                                         _hd2260622985_)
                                                        (_g2260022724_))
                                                    (_g2260022724_))))
                                            (_g2260022724_))
                                        (_g2260022724_))))
                                (_g2260022724_))
                            (_g2260022724_))
                        (_g2260022724_))))
                (_g2260022724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2260022724_))
                                            (_g2260022724_))))
                                    (_g2260022724_))
                                (_g2260022724_))
                            (_g2260022724_))))
                    (_g2260022724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2260022724_))
                                                (_g2260022724_))
                                            (_g2260022724_))))
                                    (_g2260022724_))))
                            (_g2260022724_)))))
                (_g2260022724_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form22400_)
      (let* ((_g2240222416_
              (lambda (_g2240322413_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2240322413_)))
             (_g2240122593_
              (lambda (_g2240322419_)
                (if (gx#stx-pair? _g2240322419_)
                    (let ((_e2240622421_ (gx#stx-e _g2240322419_)))
                      (let ((_hd2240722424_ (##car _e2240622421_))
                            (_tl2240822426_ (##cdr _e2240622421_)))
                        (if (gx#stx-pair? _tl2240822426_)
                            (let ((_e2240922429_ (gx#stx-e _tl2240822426_)))
                              (let ((_hd2241022432_ (##car _e2240922429_))
                                    (_tl2241122434_ (##cdr _e2240922429_)))
                                (if (gx#stx-null? _tl2241122434_)
                                    ((lambda (_L22437_ _L22438_)
                                       (let* ((___stx2901529016_ _L22438_)
                                              (_g2245322481_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2901529016_))))
                                         (let ((___kont2901729018_
                                                (lambda (_L22572_)
                                                  (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2258222585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2258322587_)
                              (cons _g2258222585_ _g2258322587_))
                            '()
                            _L22572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2902129022_
                                                (lambda (_L22523_ _L22524_)
                                                  (cons (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2253522538_ _g2253622540_)
                                    (cons _g2253522538_ _g2253622540_))
                                  '()
                                  _L22524_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2902529026_
                                                (lambda (_L22486_)
                                                  (cons '0 '()))))
                                           (let* ((___match2904029041_
                                                   (lambda (___splice2902329024_
                                                            _target2246722499_
                                                            _tl2246922501_)
                                                     (letrec ((_loop2247022504_
                                                               (lambda (_hd2246822507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2247422509_)
                         (if (gx#stx-pair? _hd2246822507_)
                             (let ((_e2247122512_ (gx#stx-e _hd2246822507_)))
                               (let ((_lp-tl2247322517_ (##cdr _e2247122512_))
                                     (_lp-hd2247222515_ (##car _e2247122512_)))
                                 (_loop2247022504_
                                  _lp-tl2247322517_
                                  (cons _lp-hd2247222515_ _arg2247422509_))))
                             (let ((_arg2247522520_ (reverse _arg2247422509_)))
                               (___kont2902129022_
                                _tl2246922501_
                                _arg2247522520_))))))
               (_loop2247022504_ _target2246722499_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2903429035_
                                                   (lambda (___splice2901929020_
                                                            _target2245622548_
                                                            _tl2245822550_)
                                                     (letrec ((_loop2245922553_
                                                               (lambda (_hd2245722556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2246322558_)
                         (if (gx#stx-pair? _hd2245722556_)
                             (let ((_e2246022561_ (gx#stx-e _hd2245722556_)))
                               (let ((_lp-tl2246222566_ (##cdr _e2246022561_))
                                     (_lp-hd2246122564_ (##car _e2246022561_)))
                                 (_loop2245922553_
                                  _lp-tl2246222566_
                                  (cons _lp-hd2246122564_ _arg2246322558_))))
                             (let ((_arg2246422569_ (reverse _arg2246322558_)))
                               (___kont2901729018_ _arg2246422569_))))))
               (_loop2245922553_ _target2245622548_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2901529016_)
                                                 (let ((___splice2901929020_
                                                        (gx#syntax-split-splice
                                                         ___stx2901529016_
                                                         '0)))
                                                   (let ((_tl2245822550_
                                                          (##vector-ref
                                                           ___splice2901929020_
                                                           '1))
                                                         (_target2245622548_
                                                          (##vector-ref
                                                           ___splice2901929020_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2245822550_)
                                                         (___match2903429035_
                                                          ___splice2901929020_
                                                          _target2245622548_
                                                          _tl2245822550_)
                                                         (___match2904029041_
                                                          ___splice2901929020_
                                                          _target2245622548_
                                                          _tl2245822550_))))
                                                 (___kont2902529026_
                                                  ___stx2901529016_))))))
                                     _hd2241022432_
                                     _hd2240722424_)
                                    (_g2240222416_ _g2240322419_))))
                            (_g2240222416_ _g2240322419_))))
                    (_g2240222416_ _g2240322419_)))))
        (_g2240122593_ _form22400_))))
  (define gxc#lambda-expr?
    (lambda (_expr22353_)
      (let* ((___stx2904329044_ _expr22353_)
             (_g2235622366_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2904329044_))))
        (let ((___kont2904529046_ (lambda (_L22386_) '#t))
              (___kont2904729048_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2904329044_)
              (let ((_e2235922378_ (gx#stx-e ___stx2904329044_)))
                (let ((_tl2236122383_ (##cdr _e2235922378_))
                      (_hd2236022381_ (##car _e2235922378_)))
                  (if (gx#identifier? _hd2236022381_)
                      (if (gx#stx-eq? '%#lambda _hd2236022381_)
                          (___kont2904529046_ _tl2236122383_)
                          (___kont2904729048_))
                      (___kont2904729048_))))
              (___kont2904729048_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr22306_)
      (let* ((___stx2906129062_ _expr22306_)
             (_g2230922319_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2906129062_))))
        (let ((___kont2906329064_ (lambda (_L22339_) '#t))
              (___kont2906529066_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2906129062_)
              (let ((_e2231222331_ (gx#stx-e ___stx2906129062_)))
                (let ((_tl2231422336_ (##cdr _e2231222331_))
                      (_hd2231322334_ (##car _e2231222331_)))
                  (if (gx#identifier? _hd2231322334_)
                      (if (gx#stx-eq? '%#case-lambda _hd2231322334_)
                          (___kont2906329064_ _tl2231422336_)
                          (___kont2906529066_))
                      (___kont2906529066_))))
              (___kont2906529066_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr22175_)
      (let* ((___stx2907929080_ _expr22175_)
             (_g2217822208_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2907929080_))))
        (let ((___kont2908129082_
               (lambda (_L22276_ _L22277_ _L22278_)
                 (if (gx#identifier? _L22278_)
                     (if (gxc#lambda-expr? _L22277_)
                         (gxc#case-lambda-expr? _L22276_)
                         '#f)
                     '#f)))
              (___kont2908329084_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2907929080_)
              (let ((_e2218322220_ (gx#stx-e ___stx2907929080_)))
                (let ((_tl2218522225_ (##cdr _e2218322220_))
                      (_hd2218422223_ (##car _e2218322220_)))
                  (if (gx#identifier? _hd2218422223_)
                      (if (gx#stx-eq? '%#let-values _hd2218422223_)
                          (if (gx#stx-pair? _tl2218522225_)
                              (let ((_e2218622228_ (gx#stx-e _tl2218522225_)))
                                (let ((_tl2218822233_ (##cdr _e2218622228_))
                                      (_hd2218722231_ (##car _e2218622228_)))
                                  (if (gx#stx-pair? _hd2218722231_)
                                      (let ((_e2218922236_
                                             (gx#stx-e _hd2218722231_)))
                                        (let ((_tl2219122241_
                                               (##cdr _e2218922236_))
                                              (_hd2219022239_
                                               (##car _e2218922236_)))
                                          (if (gx#stx-pair? _hd2219022239_)
                                              (let ((_e2219222244_
                                                     (gx#stx-e
                                                      _hd2219022239_)))
                                                (let ((_tl2219422249_
                                                       (##cdr _e2219222244_))
                                                      (_hd2219322247_
                                                       (##car _e2219222244_)))
                                                  (if (gx#stx-pair?
                                                       _hd2219322247_)
                                                      (let ((_e2219522252_
                                                             (gx#stx-e
                                                              _hd2219322247_)))
                                                        (let ((_tl2219722257_
                                                               (##cdr _e2219522252_))
                                                              (_hd2219622255_
                                                               (##car _e2219522252_)))
                                                          (if (gx#stx-null?
                                                               _tl2219722257_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2219422249_)
                          (let ((_e2219822260_ (gx#stx-e _tl2219422249_)))
                            (let ((_tl2220022265_ (##cdr _e2219822260_))
                                  (_hd2219922263_ (##car _e2219822260_)))
                              (if (gx#stx-null? _tl2220022265_)
                                  (if (gx#stx-null? _tl2219122241_)
                                      (if (gx#stx-pair? _tl2218822233_)
                                          (let ((_e2220122268_
                                                 (gx#stx-e _tl2218822233_)))
                                            (let ((_tl2220322273_
                                                   (##cdr _e2220122268_))
                                                  (_hd2220222271_
                                                   (##car _e2220122268_)))
                                              (if (gx#stx-null? _tl2220322273_)
                                                  (___kont2908129082_
                                                   _hd2220222271_
                                                   _hd2219922263_
                                                   _hd2219622255_)
                                                  (___kont2908329084_))))
                                          (___kont2908329084_))
                                      (___kont2908329084_))
                                  (___kont2908329084_))))
                          (___kont2908329084_))
                      (___kont2908329084_))))
              (___kont2908329084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2908329084_))))
                                      (___kont2908329084_))))
                              (___kont2908329084_))
                          (___kont2908329084_))
                      (___kont2908329084_))))
              (___kont2908329084_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr21500_)
      (let* ((___stx2914129142_ _expr21500_)
             (_g2150321661_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2914129142_))))
        (let ((___kont2914329144_
               (lambda (_L22049_
                        _L22050_
                        _L22051_
                        _L22052_
                        _L22053_
                        _L22054_
                        _L22055_
                        _L22056_
                        _L22057_
                        _L22058_
                        _L22059_)
                 (if (gxc#runtime-identifier=? _L22056_ 'apply)
                     (if (gxc#runtime-identifier=? _L22052_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L22051_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L22059_ _L22050_)
                                 (if (gx#free-identifier=? _L22058_ _L22055_)
                                     (if (gx#free-identifier=?
                                          _L22053_
                                          _L22049_)
                                         (gx#free-identifier=?
                                          _L22057_
                                          _L22054_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2914529146_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2914129142_)
              (let ((_e2151621673_ (gx#stx-e ___stx2914129142_)))
                (let ((_tl2151821678_ (##cdr _e2151621673_))
                      (_hd2151721676_ (##car _e2151621673_)))
                  (if (gx#identifier? _hd2151721676_)
                      (if (gx#stx-eq? '%#let-values _hd2151721676_)
                          (if (gx#stx-pair? _tl2151821678_)
                              (let ((_e2151921681_ (gx#stx-e _tl2151821678_)))
                                (let ((_tl2152121686_ (##cdr _e2151921681_))
                                      (_hd2152021684_ (##car _e2151921681_)))
                                  (if (gx#stx-pair? _hd2152021684_)
                                      (let ((_e2152221689_
                                             (gx#stx-e _hd2152021684_)))
                                        (let ((_tl2152421694_
                                               (##cdr _e2152221689_))
                                              (_hd2152321692_
                                               (##car _e2152221689_)))
                                          (if (gx#stx-pair? _hd2152321692_)
                                              (let ((_e2152521697_
                                                     (gx#stx-e
                                                      _hd2152321692_)))
                                                (let ((_tl2152721702_
                                                       (##cdr _e2152521697_))
                                                      (_hd2152621700_
                                                       (##car _e2152521697_)))
                                                  (if (gx#stx-pair?
                                                       _hd2152621700_)
                                                      (let ((_e2152821705_
                                                             (gx#stx-e
                                                              _hd2152621700_)))
                                                        (let ((_tl2153021710_
                                                               (##cdr _e2152821705_))
                                                              (_hd2152921708_
                                                               (##car _e2152821705_)))
                                                          (if (gx#stx-null?
                                                               _tl2153021710_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2152721702_)
                          (let ((_e2153121713_ (gx#stx-e _tl2152721702_)))
                            (let ((_tl2153321718_ (##cdr _e2153121713_))
                                  (_hd2153221716_ (##car _e2153121713_)))
                              (if (gx#stx-pair? _hd2153221716_)
                                  (let ((_e2153421721_
                                         (gx#stx-e _hd2153221716_)))
                                    (let ((_tl2153621726_
                                           (##cdr _e2153421721_))
                                          (_hd2153521724_
                                           (##car _e2153421721_)))
                                      (if (gx#identifier? _hd2153521724_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2153521724_)
                                              (if (gx#stx-pair? _tl2153621726_)
                                                  (let ((_e2153721729_
                                                         (gx#stx-e
                                                          _tl2153621726_)))
                                                    (let ((_tl2153921734_
                                                           (##cdr _e2153721729_))
                                                          (_hd2153821732_
                                                           (##car _e2153721729_)))
                                                      (if (gx#stx-pair?
                                                           _hd2153821732_)
                                                          (let ((_e2154021737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2153821732_)))
                    (let ((_tl2154221742_ (##cdr _e2154021737_))
                          (_hd2154121740_ (##car _e2154021737_)))
                      (if (gx#stx-pair? _hd2154121740_)
                          (let ((_e2154321745_ (gx#stx-e _hd2154121740_)))
                            (let ((_tl2154521750_ (##cdr _e2154321745_))
                                  (_hd2154421748_ (##car _e2154321745_)))
                              (if (gx#stx-pair? _hd2154421748_)
                                  (let ((_e2154621753_
                                         (gx#stx-e _hd2154421748_)))
                                    (let ((_tl2154821758_
                                           (##cdr _e2154621753_))
                                          (_hd2154721756_
                                           (##car _e2154621753_)))
                                      (if (gx#stx-null? _tl2154821758_)
                                          (if (gx#stx-pair? _tl2154521750_)
                                              (let ((_e2154921761_
                                                     (gx#stx-e
                                                      _tl2154521750_)))
                                                (let ((_tl2155121766_
                                                       (##cdr _e2154921761_))
                                                      (_hd2155021764_
                                                       (##car _e2154921761_)))
                                                  (if (gx#stx-null?
                                                       _tl2155121766_)
                                                      (if (gx#stx-null?
                                                           _tl2154221742_)
                                                          (if (gx#stx-pair?
                                                               _tl2153921734_)
                                                              (let ((_e2155221769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2153921734_)))
                        (let ((_tl2155421774_ (##cdr _e2155221769_))
                              (_hd2155321772_ (##car _e2155221769_)))
                          (if (gx#stx-pair? _hd2155321772_)
                              (let ((_e2155521777_ (gx#stx-e _hd2155321772_)))
                                (let ((_tl2155721782_ (##cdr _e2155521777_))
                                      (_hd2155621780_ (##car _e2155521777_)))
                                  (if (gx#identifier? _hd2155621780_)
                                      (if (gx#stx-eq? '%#lambda _hd2155621780_)
                                          (if (gx#stx-pair? _tl2155721782_)
                                              (let ((_e2155821785_
                                                     (gx#stx-e
                                                      _tl2155721782_)))
                                                (let ((_tl2156021790_
                                                       (##cdr _e2155821785_))
                                                      (_hd2155921788_
                                                       (##car _e2155821785_)))
                                                  (if (gx#stx-pair?
                                                       _hd2155921788_)
                                                      (let ((_e2156121793_
                                                             (gx#stx-e
                                                              _hd2155921788_)))
                                                        (let ((_tl2156321798_
                                                               (##cdr _e2156121793_))
                                                              (_hd2156221796_
                                                               (##car _e2156121793_)))
                                                          (if (gx#stx-pair?
                                                               _tl2156021790_)
                                                              (let ((_e2156421801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2156021790_)))
                        (let ((_tl2156621806_ (##cdr _e2156421801_))
                              (_hd2156521804_ (##car _e2156421801_)))
                          (if (gx#stx-pair? _hd2156521804_)
                              (let ((_e2156721809_ (gx#stx-e _hd2156521804_)))
                                (let ((_tl2156921814_ (##cdr _e2156721809_))
                                      (_hd2156821812_ (##car _e2156721809_)))
                                  (if (gx#identifier? _hd2156821812_)
                                      (if (gx#stx-eq? '%#call _hd2156821812_)
                                          (if (gx#stx-pair? _tl2156921814_)
                                              (let ((_e2157021817_
                                                     (gx#stx-e
                                                      _tl2156921814_)))
                                                (let ((_tl2157221822_
                                                       (##cdr _e2157021817_))
                                                      (_hd2157121820_
                                                       (##car _e2157021817_)))
                                                  (if (gx#stx-pair?
                                                       _hd2157121820_)
                                                      (let ((_e2157321825_
                                                             (gx#stx-e
                                                              _hd2157121820_)))
                                                        (let ((_tl2157521830_
                                                               (##cdr _e2157321825_))
                                                              (_hd2157421828_
                                                               (##car _e2157321825_)))
                                                          (if (gx#identifier?
                                                               _hd2157421828_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2157421828_)
                          (if (gx#stx-pair? _tl2157521830_)
                              (let ((_e2157621833_ (gx#stx-e _tl2157521830_)))
                                (let ((_tl2157821838_ (##cdr _e2157621833_))
                                      (_hd2157721836_ (##car _e2157621833_)))
                                  (if (gx#stx-null? _tl2157821838_)
                                      (if (gx#stx-pair? _tl2157221822_)
                                          (let ((_e2157921841_
                                                 (gx#stx-e _tl2157221822_)))
                                            (let ((_tl2158121846_
                                                   (##cdr _e2157921841_))
                                                  (_hd2158021844_
                                                   (##car _e2157921841_)))
                                              (if (gx#stx-pair? _hd2158021844_)
                                                  (let ((_e2158221849_
                                                         (gx#stx-e
                                                          _hd2158021844_)))
                                                    (let ((_tl2158421854_
                                                           (##cdr _e2158221849_))
                                                          (_hd2158321852_
                                                           (##car _e2158221849_)))
                                                      (if (gx#identifier?
                                                           _hd2158321852_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2158321852_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2158421854_)
                          (let ((_e2158521857_ (gx#stx-e _tl2158421854_)))
                            (let ((_tl2158721862_ (##cdr _e2158521857_))
                                  (_hd2158621860_ (##car _e2158521857_)))
                              (if (gx#stx-null? _tl2158721862_)
                                  (if (gx#stx-pair? _tl2158121846_)
                                      (let ((_e2158821865_
                                             (gx#stx-e _tl2158121846_)))
                                        (let ((_tl2159021870_
                                               (##cdr _e2158821865_))
                                              (_hd2158921868_
                                               (##car _e2158821865_)))
                                          (if (gx#stx-pair? _hd2158921868_)
                                              (let ((_e2159121873_
                                                     (gx#stx-e
                                                      _hd2158921868_)))
                                                (let ((_tl2159321878_
                                                       (##cdr _e2159121873_))
                                                      (_hd2159221876_
                                                       (##car _e2159121873_)))
                                                  (if (gx#identifier?
                                                       _hd2159221876_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2159221876_)
                                                          (if (gx#stx-pair?
                                                               _tl2159321878_)
                                                              (let ((_e2159421881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2159321878_)))
                        (let ((_tl2159621886_ (##cdr _e2159421881_))
                              (_hd2159521884_ (##car _e2159421881_)))
                          (if (gx#stx-null? _tl2159621886_)
                              (if (gx#stx-null? _tl2156621806_)
                                  (if (gx#stx-null? _tl2155421774_)
                                      (if (gx#stx-null? _tl2153321718_)
                                          (if (gx#stx-null? _tl2152421694_)
                                              (if (gx#stx-pair? _tl2152121686_)
                                                  (let ((_e2159721889_
                                                         (gx#stx-e
                                                          _tl2152121686_)))
                                                    (let ((_tl2159921894_
                                                           (##cdr _e2159721889_))
                                                          (_hd2159821892_
                                                           (##car _e2159721889_)))
                                                      (if (gx#stx-pair?
                                                           _hd2159821892_)
                                                          (let ((_e2160021897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2159821892_)))
                    (let ((_tl2160221902_ (##cdr _e2160021897_))
                          (_hd2160121900_ (##car _e2160021897_)))
                      (if (gx#identifier? _hd2160121900_)
                          (if (gx#stx-eq? '%#lambda _hd2160121900_)
                              (if (gx#stx-pair? _tl2160221902_)
                                  (let ((_e2160321905_
                                         (gx#stx-e _tl2160221902_)))
                                    (let ((_tl2160521910_
                                           (##cdr _e2160321905_))
                                          (_hd2160421908_
                                           (##car _e2160321905_)))
                                      (if (gx#stx-pair? _tl2160521910_)
                                          (let ((_e2160621913_
                                                 (gx#stx-e _tl2160521910_)))
                                            (let ((_tl2160821918_
                                                   (##cdr _e2160621913_))
                                                  (_hd2160721916_
                                                   (##car _e2160621913_)))
                                              (if (gx#stx-pair? _hd2160721916_)
                                                  (let ((_e2160921921_
                                                         (gx#stx-e
                                                          _hd2160721916_)))
                                                    (let ((_tl2161121926_
                                                           (##cdr _e2160921921_))
                                                          (_hd2161021924_
                                                           (##car _e2160921921_)))
                                                      (if (gx#identifier?
                                                           _hd2161021924_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2161021924_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2161121926_)
                          (let ((_e2161221929_ (gx#stx-e _tl2161121926_)))
                            (let ((_tl2161421934_ (##cdr _e2161221929_))
                                  (_hd2161321932_ (##car _e2161221929_)))
                              (if (gx#stx-pair? _hd2161321932_)
                                  (let ((_e2161521937_
                                         (gx#stx-e _hd2161321932_)))
                                    (let ((_tl2161721942_
                                           (##cdr _e2161521937_))
                                          (_hd2161621940_
                                           (##car _e2161521937_)))
                                      (if (gx#identifier? _hd2161621940_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2161621940_)
                                              (if (gx#stx-pair? _tl2161721942_)
                                                  (let ((_e2161821945_
                                                         (gx#stx-e
                                                          _tl2161721942_)))
                                                    (let ((_tl2162021950_
                                                           (##cdr _e2161821945_))
                                                          (_hd2161921948_
                                                           (##car _e2161821945_)))
                                                      (if (gx#stx-null?
                                                           _tl2162021950_)
                                                          (if (gx#stx-pair?
                                                               _tl2161421934_)
                                                              (let ((_e2162121953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2161421934_)))
                        (let ((_tl2162321958_ (##cdr _e2162121953_))
                              (_hd2162221956_ (##car _e2162121953_)))
                          (if (gx#stx-pair? _hd2162221956_)
                              (let ((_e2162421961_ (gx#stx-e _hd2162221956_)))
                                (let ((_tl2162621966_ (##cdr _e2162421961_))
                                      (_hd2162521964_ (##car _e2162421961_)))
                                  (if (gx#identifier? _hd2162521964_)
                                      (if (gx#stx-eq? '%#ref _hd2162521964_)
                                          (if (gx#stx-pair? _tl2162621966_)
                                              (let ((_e2162721969_
                                                     (gx#stx-e
                                                      _tl2162621966_)))
                                                (let ((_tl2162921974_
                                                       (##cdr _e2162721969_))
                                                      (_hd2162821972_
                                                       (##car _e2162721969_)))
                                                  (if (gx#stx-null?
                                                       _tl2162921974_)
                                                      (if (gx#stx-pair?
                                                           _tl2162321958_)
                                                          (let ((_e2163021977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2162321958_)))
                    (let ((_tl2163221982_ (##cdr _e2163021977_))
                          (_hd2163121980_ (##car _e2163021977_)))
                      (if (gx#stx-pair? _hd2163121980_)
                          (let ((_e2163321985_ (gx#stx-e _hd2163121980_)))
                            (let ((_tl2163521990_ (##cdr _e2163321985_))
                                  (_hd2163421988_ (##car _e2163321985_)))
                              (if (gx#identifier? _hd2163421988_)
                                  (if (gx#stx-eq? '%#quote _hd2163421988_)
                                      (if (gx#stx-pair? _tl2163521990_)
                                          (let ((_e2163621993_
                                                 (gx#stx-e _tl2163521990_)))
                                            (let ((_tl2163821998_
                                                   (##cdr _e2163621993_))
                                                  (_hd2163721996_
                                                   (##car _e2163621993_)))
                                              (if (gx#stx-null? _tl2163821998_)
                                                  (if (gx#stx-pair?
                                                       _tl2163221982_)
                                                      (let ((_e2163922001_
                                                             (gx#stx-e
                                                              _tl2163221982_)))
                                                        (let ((_tl2164122006_
                                                               (##cdr _e2163922001_))
                                                              (_hd2164022004_
                                                               (##car _e2163922001_)))
                                                          (if (gx#stx-pair?
                                                               _hd2164022004_)
                                                              (let ((_e2164222009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2164022004_)))
                        (let ((_tl2164422014_ (##cdr _e2164222009_))
                              (_hd2164322012_ (##car _e2164222009_)))
                          (if (gx#identifier? _hd2164322012_)
                              (if (gx#stx-eq? '%#ref _hd2164322012_)
                                  (if (gx#stx-pair? _tl2164422014_)
                                      (let ((_e2164522017_
                                             (gx#stx-e _tl2164422014_)))
                                        (let ((_tl2164722022_
                                               (##cdr _e2164522017_))
                                              (_hd2164622020_
                                               (##car _e2164522017_)))
                                          (if (gx#stx-null? _tl2164722022_)
                                              (if (gx#stx-pair? _tl2164122006_)
                                                  (let ((_e2164822025_
                                                         (gx#stx-e
                                                          _tl2164122006_)))
                                                    (let ((_tl2165022030_
                                                           (##cdr _e2164822025_))
                                                          (_hd2164922028_
                                                           (##car _e2164822025_)))
                                                      (if (gx#stx-pair?
                                                           _hd2164922028_)
                                                          (let ((_e2165122033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2164922028_)))
                    (let ((_tl2165322038_ (##cdr _e2165122033_))
                          (_hd2165222036_ (##car _e2165122033_)))
                      (if (gx#identifier? _hd2165222036_)
                          (if (gx#stx-eq? '%#ref _hd2165222036_)
                              (if (gx#stx-pair? _tl2165322038_)
                                  (let ((_e2165422041_
                                         (gx#stx-e _tl2165322038_)))
                                    (let ((_tl2165622046_
                                           (##cdr _e2165422041_))
                                          (_hd2165522044_
                                           (##car _e2165422041_)))
                                      (if (gx#stx-null? _tl2165622046_)
                                          (if (gx#stx-null? _tl2165022030_)
                                              (if (gx#stx-null? _tl2160821918_)
                                                  (if (gx#stx-null?
                                                       _tl2159921894_)
                                                      (___kont2914329144_
                                                       _hd2165522044_
                                                       _hd2164622020_
                                                       _hd2162821972_
                                                       _hd2161921948_
                                                       _hd2160421908_
                                                       _hd2159521884_
                                                       _hd2158621860_
                                                       _hd2157721836_
                                                       _hd2156221796_
                                                       _hd2154721756_
                                                       _hd2152921708_)
                                                      (___kont2914529146_))
                                                  (___kont2914529146_))
                                              (___kont2914529146_))
                                          (___kont2914529146_))))
                                  (___kont2914529146_))
                              (___kont2914529146_))
                          (___kont2914529146_))))
                  (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914529146_))
                                              (___kont2914529146_))))
                                      (___kont2914529146_))
                                  (___kont2914529146_))
                              (___kont2914529146_))))
                      (___kont2914529146_))))
              (___kont2914529146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914529146_))))
                                          (___kont2914529146_))
                                      (___kont2914529146_))
                                  (___kont2914529146_))))
                          (___kont2914529146_))))
                  (___kont2914529146_))
              (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914529146_))
                                          (___kont2914529146_))
                                      (___kont2914529146_))))
                              (___kont2914529146_))))
                      (___kont2914529146_))
                  (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914529146_))
                                              (___kont2914529146_))
                                          (___kont2914529146_))))
                                  (___kont2914529146_))))
                          (___kont2914529146_))
                      (___kont2914529146_))
                  (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914529146_))))
                                          (___kont2914529146_))))
                                  (___kont2914529146_))
                              (___kont2914529146_))
                          (___kont2914529146_))))
                  (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914529146_))
                                              (___kont2914529146_))
                                          (___kont2914529146_))
                                      (___kont2914529146_))
                                  (___kont2914529146_))
                              (___kont2914529146_))))
                      (___kont2914529146_))
                  (___kont2914529146_))
              (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914529146_))))
                                      (___kont2914529146_))
                                  (___kont2914529146_))))
                          (___kont2914529146_))
                      (___kont2914529146_))
                  (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914529146_))))
                                          (___kont2914529146_))
                                      (___kont2914529146_))))
                              (___kont2914529146_))
                          (___kont2914529146_))
                      (___kont2914529146_))))
              (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914529146_))
                                          (___kont2914529146_))
                                      (___kont2914529146_))))
                              (___kont2914529146_))))
                      (___kont2914529146_))))
              (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914529146_))
                                          (___kont2914529146_))
                                      (___kont2914529146_))))
                              (___kont2914529146_))))
                      (___kont2914529146_))
                  (___kont2914529146_))
              (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914529146_))
                                          (___kont2914529146_))))
                                  (___kont2914529146_))))
                          (___kont2914529146_))))
                  (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2914529146_))
                                              (___kont2914529146_))
                                          (___kont2914529146_))))
                                  (___kont2914529146_))))
                          (___kont2914529146_))
                      (___kont2914529146_))))
              (___kont2914529146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2914529146_))))
                                      (___kont2914529146_))))
                              (___kont2914529146_))
                          (___kont2914529146_))
                      (___kont2914529146_))))
              (___kont2914529146_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx21242_ _id21243_ _clauses21244_ _gensym?21245_)
        (let _lp21247_ ((_rest21249_ _clauses21244_)
                        (_ids21250_ '())
                        (_impls21251_ '())
                        (_clauses21252_ '()))
          (let* ((_rest2125321261_ _rest21249_)
                 (_else2125521269_
                  (lambda ()
                    (values (reverse _ids21250_)
                            (reverse _impls21251_)
                            (reverse _clauses21252_))))
                 (_K2125721474_
                  (lambda (_rest21272_ _clause21273_)
                    (if (gxc#dispatch-lambda-form? _clause21273_)
                        (_lp21247_
                         _rest21272_
                         _ids21250_
                         _impls21251_
                         (cons _clause21273_ _clauses21252_))
                        (let* ((_g2127521286_
                                (lambda (_g2127621283_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2127621283_)))
                               (_g2127421471_
                                (lambda (_g2127621289_)
                                  (if (gx#stx-pair? _g2127621289_)
                                      (let ((_e2127921291_
                                             (gx#stx-e _g2127621289_)))
                                        (let ((_hd2128021294_
                                               (##car _e2127921291_))
                                              (_tl2128121296_
                                               (##cdr _e2127921291_)))
                                          ((lambda (_L21299_ _L21300_)
                                             (let* ((_id21317_
                                                     (make-symbol
                                                      (gx#stx-e _id21243_)
                                                      '"__"
                                                      (length _clauses21252_)
                                                      (if _gensym?21245_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id21319_
                                                     (gx#core-quote-syntax__1
                                                      _id21317_
                                                      (gx#stx-source
                                                       _stx21242_)))
                                                    (_impl21321_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L21300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L21299_))
              _stx21242_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause21468_
                                                     (let* ((___stx2952529526_
                                                             _L21300_)
                                                            (_g2132521353_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx2952529526_))))
                                                       (let ((___kont2952729528_
                                                              (lambda (_L21447_)
                                                                (cons _L21300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id21319_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2145721460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2145821462_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g2145721460_ '()))
                           _g2145821462_))
                   '()
                   _L21447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx21242_)
                                    '()))))
                     (___kont2953129532_
                      (lambda (_L21398_ _L21399_)
                        (cons _L21300_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id21319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L21398_ '()))
                             '())
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2141021413_ _g2141121415_)
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _g2141021413_ '()))
                                         _g2141121415_))
                                 '()
                                 _L21399_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx21242_)
                                    '()))))
                     (___kont2953529536_
                      (lambda (_L21358_)
                        (cons _L21300_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id21319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L21358_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx21242_)
                                    '())))))
                 (let* ((___match2955029551_
                         (lambda (___splice2953329534_
                                  _target2133921374_
                                  _tl2134121376_)
                           (letrec ((_loop2134221379_
                                     (lambda (_hd2134021382_ _arg2134621384_)
                                       (if (gx#stx-pair? _hd2134021382_)
                                           (let ((_e2134321387_
                                                  (gx#stx-e _hd2134021382_)))
                                             (let ((_lp-tl2134521392_
                                                    (##cdr _e2134321387_))
                                                   (_lp-hd2134421390_
                                                    (##car _e2134321387_)))
                                               (_loop2134221379_
                                                _lp-tl2134521392_
                                                (cons _lp-hd2134421390_
                                                      _arg2134621384_))))
                                           (let ((_arg2134721395_
                                                  (reverse _arg2134621384_)))
                                             (___kont2953129532_
                                              _tl2134121376_
                                              _arg2134721395_))))))
                             (_loop2134221379_ _target2133921374_ '()))))
                        (___match2954429545_
                         (lambda (___splice2952929530_
                                  _target2132821423_
                                  _tl2133021425_)
                           (letrec ((_loop2133121428_
                                     (lambda (_hd2132921431_ _arg2133521433_)
                                       (if (gx#stx-pair? _hd2132921431_)
                                           (let ((_e2133221436_
                                                  (gx#stx-e _hd2132921431_)))
                                             (let ((_lp-tl2133421441_
                                                    (##cdr _e2133221436_))
                                                   (_lp-hd2133321439_
                                                    (##car _e2133221436_)))
                                               (_loop2133121428_
                                                _lp-tl2133421441_
                                                (cons _lp-hd2133321439_
                                                      _arg2133521433_))))
                                           (let ((_arg2133621444_
                                                  (reverse _arg2133521433_)))
                                             (___kont2952729528_
                                              _arg2133621444_))))))
                             (_loop2133121428_ _target2132821423_ '())))))
                   (if (gx#stx-pair/null? ___stx2952529526_)
                       (let ((___splice2952929530_
                              (gx#syntax-split-splice ___stx2952529526_ '0)))
                         (let ((_tl2133021425_
                                (##vector-ref ___splice2952929530_ '1))
                               (_target2132821423_
                                (##vector-ref ___splice2952929530_ '0)))
                           (if (gx#stx-null? _tl2133021425_)
                               (___match2954429545_
                                ___splice2952929530_
                                _target2132821423_
                                _tl2133021425_)
                               (___match2955029551_
                                ___splice2952929530_
                                _target2132821423_
                                _tl2133021425_))))
                       (___kont2953529536_ ___stx2952529526_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp21247_
                                                _rest21272_
                                                (cons _id21319_ _ids21250_)
                                                (cons _impl21321_ _impls21251_)
                                                (cons _clause21468_
                                                      _clauses21252_))))
                                           _tl2128121296_
                                           _hd2128021294_)))
                                      (_g2127521286_ _g2127621289_)))))
                          (_g2127421471_ _clause21273_))))))
            (if (##pair? _rest2125321261_)
                (let ((_hd2125821477_ (##car _rest2125321261_))
                      (_tl2125921479_ (##cdr _rest2125321261_)))
                  (let* ((_clause21482_ _hd2125821477_)
                         (_rest21484_ _tl2125921479_))
                    (_K2125721474_ _rest21484_ _clause21482_)))
                (_else2125521269_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx21489_ _id21490_ _clauses21491_)
          (let ((_gensym?21493_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx21489_
             _id21490_
             _clauses21491_
             _gensym?21493_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g30067_
          (let ((_g30066_ (length _g30067_)))
            (cond ((##fx= _g30066_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g30067_))
                  ((##fx= _g30066_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g30067_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g30067_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx20519_)
      (letrec ((_case-lambda-clause-def20521_
                (lambda (_id21238_ _impl21239_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id21238_ '())
                               (cons (gxc#compile-e _impl21239_) '())))
                   _stx20519_)))
               (_opt-lambda-dispatch-name20522_
                (lambda (_id21234_)
                  (if (uninterned-symbol? _id21234_)
                      (let ((_str21236_ (symbol->string _id21234_)))
                        (if (string-prefix? _str21236_ '"opt-lambda")
                            '"%"
                            _id21234_))
                      _id21234_)))
               (_kw-lambda-dispatch-name20523_
                (lambda (_id21229_ _name21230_)
                  (if (uninterned-symbol? _id21229_)
                      (let ((_str21232_ (symbol->string _id21229_)))
                        (if (string-prefix? _str21232_ '"kw-lambda")
                            _name21230_
                            _id21229_))
                      _id21229_))))
        (let* ((___stx2957329574_ _stx20519_)
               (_g2052820587_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2957329574_))))
          (let ((___kont2957529576_
                 (lambda (_L21138_ _L21139_)
                   (let* ((___stx2955329554_ _L21138_)
                          (_g2115621170_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2955329554_))))
                     (let ((___kont2955529556_ (lambda (_L21214_) _stx20519_))
                           (___kont2955729558_
                            (lambda (_L21183_)
                              (let ((_g30068_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx20519_
                                      _L21139_
                                      _L21183_)))
                                (begin
                                  (let ((_g30069_
                                         (if (##values? _g30068_)
                                             (##vector-length _g30068_)
                                             1)))
                                    (if (not (##fx= _g30069_ 3))
                                        (error "Context expects 3 values"
                                               _g30069_)))
                                  (let ((_ids21193_ (##vector-ref _g30068_ 0))
                                        (_impls21194_
                                         (##vector-ref _g30068_ 1))
                                        (_clauses21195_
                                         (##vector-ref _g30068_ 2)))
                                    (let* ((_g30070_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids21193_))
                                           (_defs21198_
                                            (map _case-lambda-clause-def20521_
                                                 _ids21193_
                                                 _impls21194_)))
                                      (begin
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L21139_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids21193_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L21139_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses21195_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx20519_)
                     '())
               _defs21198_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx20519_)))))))))
                       (let ((___match2956429565_
                              (lambda (_e2115921206_
                                       _hd2116021209_
                                       _tl2116121211_)
                                (let ((_L21214_ _tl2116121211_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L21214_)
                                      (___kont2955529556_ _L21214_)
                                      (___kont2955729558_ _tl2116121211_))))))
                         (if (gx#stx-pair? ___stx2955329554_)
                             (let ((_e2115921206_
                                    (gx#stx-e ___stx2955329554_)))
                               (let ((_tl2116121211_ (##cdr _e2115921206_))
                                     (_hd2116021209_ (##car _e2115921206_)))
                                 (___match2956429565_
                                  _e2115921206_
                                  _hd2116021209_
                                  _tl2116121211_)))
                             (_g2115621170_)))))))
                (___kont2957729578_
                 (lambda (_L20956_ _L20957_)
                   (let* ((_g2097321003_
                           (lambda (_g2097421000_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2097421000_)))
                          (_g2097221098_
                           (lambda (_g2097421006_)
                             (if (gx#stx-pair? _g2097421006_)
                                 (let ((_e2097821008_
                                        (gx#stx-e _g2097421006_)))
                                   (let ((_hd2097921011_ (##car _e2097821008_))
                                         (_tl2098021013_
                                          (##cdr _e2097821008_)))
                                     (if (gx#stx-pair? _tl2098021013_)
                                         (let ((_e2098121016_
                                                (gx#stx-e _tl2098021013_)))
                                           (let ((_hd2098221019_
                                                  (##car _e2098121016_))
                                                 (_tl2098321021_
                                                  (##cdr _e2098121016_)))
                                             (if (gx#stx-pair? _hd2098221019_)
                                                 (let ((_e2098421024_
                                                        (gx#stx-e
                                                         _hd2098221019_)))
                                                   (let ((_hd2098521027_
                                                          (##car _e2098421024_))
                                                         (_tl2098621029_
                                                          (##cdr _e2098421024_)))
                                                     (if (gx#stx-pair?
                                                          _hd2098521027_)
                                                         (let ((_e2098721032_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2098521027_)))
                   (let ((_hd2098821035_ (##car _e2098721032_))
                         (_tl2098921037_ (##cdr _e2098721032_)))
                     (if (gx#stx-pair? _hd2098821035_)
                         (let ((_e2099021040_ (gx#stx-e _hd2098821035_)))
                           (let ((_hd2099121043_ (##car _e2099021040_))
                                 (_tl2099221045_ (##cdr _e2099021040_)))
                             (if (gx#stx-null? _tl2099221045_)
                                 (if (gx#stx-pair? _tl2098921037_)
                                     (let ((_e2099321048_
                                            (gx#stx-e _tl2098921037_)))
                                       (let ((_hd2099421051_
                                              (##car _e2099321048_))
                                             (_tl2099521053_
                                              (##cdr _e2099321048_)))
                                         (if (gx#stx-null? _tl2099521053_)
                                             (if (gx#stx-null? _tl2098621029_)
                                                 (if (gx#stx-pair?
                                                      _tl2098321021_)
                                                     (let ((_e2099621056_
                                                            (gx#stx-e
                                                             _tl2098321021_)))
                                                       (let ((_hd2099721059_
                                                              (##car _e2099621056_))
                                                             (_tl2099821061_
                                                              (##cdr _e2099621056_)))
                                                         (if (gx#stx-null?
                                                              _tl2099821061_)
                                                             ((lambda (_L21064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21065_
                               _L21066_)
                        (let* ((_lambda-id21090_
                                (make-symbol
                                 (gx#stx-e _L20957_)
                                 '"__"
                                 (_opt-lambda-dispatch-name20522_
                                  (gx#stx-e _L21066_))))
                               (_lambda-id21092_
                                (gx#core-quote-syntax__1
                                 _lambda-id21090_
                                 (gx#stx-source _stx20519_)))
                               (_g30071_
                                (gx#core-bind-runtime!__0 _lambda-id21092_))
                               (_new-case-lambda-expr21095_
                                (gxc#apply-expression-subst
                                 _L21064_
                                 _L21066_
                                 _lambda-id21092_)))
                          (begin
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L20957_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id21092_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id21092_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L21065_)
                                                            '())))
                                          _stx20519_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L20957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr21095_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx20519_))
                                               '())))
                             _stx20519_))))
                      _hd2099721059_
                      _hd2099421051_
                      _hd2099121043_)
                     (_g2097321003_ _g2097421006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2097321003_
                                                      _g2097421006_))
                                                 (_g2097321003_ _g2097421006_))
                                             (_g2097321003_ _g2097421006_))))
                                     (_g2097321003_ _g2097421006_))
                                 (_g2097321003_ _g2097421006_))))
                         (_g2097321003_ _g2097421006_))))
                 (_g2097321003_ _g2097421006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2097321003_
                                                  _g2097421006_))))
                                         (_g2097321003_ _g2097421006_))))
                                 (_g2097321003_ _g2097421006_)))))
                     (_g2097221098_ _L20956_))))
                (___kont2957929580_
                 (lambda (_L20670_ _L20671_)
                   (let* ((_g2068720740_
                           (lambda (_g2068820737_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2068820737_)))
                          (_g2068620916_
                           (lambda (_g2068820743_)
                             (if (gx#stx-pair? _g2068820743_)
                                 (let ((_e2069420745_
                                        (gx#stx-e _g2068820743_)))
                                   (let ((_hd2069520748_ (##car _e2069420745_))
                                         (_tl2069620750_
                                          (##cdr _e2069420745_)))
                                     (if (gx#stx-pair? _tl2069620750_)
                                         (let ((_e2069720753_
                                                (gx#stx-e _tl2069620750_)))
                                           (let ((_hd2069820756_
                                                  (##car _e2069720753_))
                                                 (_tl2069920758_
                                                  (##cdr _e2069720753_)))
                                             (if (gx#stx-pair? _hd2069820756_)
                                                 (let ((_e2070020761_
                                                        (gx#stx-e
                                                         _hd2069820756_)))
                                                   (let ((_hd2070120764_
                                                          (##car _e2070020761_))
                                                         (_tl2070220766_
                                                          (##cdr _e2070020761_)))
                                                     (if (gx#stx-pair?
                                                          _hd2070120764_)
                                                         (let ((_e2070320769_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2070120764_)))
                   (let ((_hd2070420772_ (##car _e2070320769_))
                         (_tl2070520774_ (##cdr _e2070320769_)))
                     (if (gx#stx-pair? _hd2070420772_)
                         (let ((_e2070620777_ (gx#stx-e _hd2070420772_)))
                           (let ((_hd2070720780_ (##car _e2070620777_))
                                 (_tl2070820782_ (##cdr _e2070620777_)))
                             (if (gx#stx-null? _tl2070820782_)
                                 (if (gx#stx-pair? _tl2070520774_)
                                     (let ((_e2070920785_
                                            (gx#stx-e _tl2070520774_)))
                                       (let ((_hd2071020788_
                                              (##car _e2070920785_))
                                             (_tl2071120790_
                                              (##cdr _e2070920785_)))
                                         (if (gx#stx-pair? _hd2071020788_)
                                             (let ((_e2071220793_
                                                    (gx#stx-e _hd2071020788_)))
                                               (let ((_hd2071320796_
                                                      (##car _e2071220793_))
                                                     (_tl2071420798_
                                                      (##cdr _e2071220793_)))
                                                 (if (gx#stx-pair?
                                                      _tl2071420798_)
                                                     (let ((_e2071520801_
                                                            (gx#stx-e
                                                             _tl2071420798_)))
                                                       (let ((_hd2071620804_
                                                              (##car _e2071520801_))
                                                             (_tl2071720806_
                                                              (##cdr _e2071520801_)))
                                                         (if (gx#stx-pair?
                                                              _hd2071620804_)
                                                             (let ((_e2071820809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd2071620804_)))
                       (let ((_hd2071920812_ (##car _e2071820809_))
                             (_tl2072020814_ (##cdr _e2071820809_)))
                         (if (gx#stx-pair? _hd2071920812_)
                             (let ((_e2072120817_ (gx#stx-e _hd2071920812_)))
                               (let ((_hd2072220820_ (##car _e2072120817_))
                                     (_tl2072320822_ (##cdr _e2072120817_)))
                                 (if (gx#stx-pair? _hd2072220820_)
                                     (let ((_e2072420825_
                                            (gx#stx-e _hd2072220820_)))
                                       (let ((_hd2072520828_
                                              (##car _e2072420825_))
                                             (_tl2072620830_
                                              (##cdr _e2072420825_)))
                                         (if (gx#stx-null? _tl2072620830_)
                                             (if (gx#stx-pair? _tl2072320822_)
                                                 (let ((_e2072720833_
                                                        (gx#stx-e
                                                         _tl2072320822_)))
                                                   (let ((_hd2072820836_
                                                          (##car _e2072720833_))
                                                         (_tl2072920838_
                                                          (##cdr _e2072720833_)))
                                                     (if (gx#stx-null?
                                                          _tl2072920838_)
                                                         (if (gx#stx-null?
                                                              _tl2072020814_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2071720806_)
                         (let ((_e2073020841_ (gx#stx-e _tl2071720806_)))
                           (let ((_hd2073120844_ (##car _e2073020841_))
                                 (_tl2073220846_ (##cdr _e2073020841_)))
                             (if (gx#stx-null? _tl2073220846_)
                                 (if (gx#stx-null? _tl2071120790_)
                                     (if (gx#stx-null? _tl2070220766_)
                                         (if (gx#stx-pair? _tl2069920758_)
                                             (let ((_e2073320849_
                                                    (gx#stx-e _tl2069920758_)))
                                               (let ((_hd2073420852_
                                                      (##car _e2073320849_))
                                                     (_tl2073520854_
                                                      (##cdr _e2073320849_)))
                                                 (if (gx#stx-null?
                                                      _tl2073520854_)
                                                     ((lambda (_L20857_
                                                               _L20858_
                                                               _L20859_
                                                               _L20860_
                                                               _L20861_)
                                                        (let* ((_get-kws-id20901_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L20671_)
                         '"__"
                         (_kw-lambda-dispatch-name20523_
                          (gx#stx-e _L20861_)
                          '"@")))
                       (_get-kws-id20903_
                        (gx#core-quote-syntax__1
                         _get-kws-id20901_
                         (gx#stx-source _stx20519_)))
                       (_main-id20905_
                        (make-symbol
                         (gx#stx-e _L20671_)
                         '"__"
                         (_kw-lambda-dispatch-name20523_
                          (gx#stx-e _L20860_)
                          '"%")))
                       (_main-id20907_
                        (gx#core-quote-syntax__1
                         _main-id20905_
                         (gx#stx-source _stx20519_)))
                       (_g30072_ (gx#core-bind-runtime!__0 _get-kws-id20903_))
                       (_g30073_ (gx#core-bind-runtime!__0 _main-id20907_))
                       (_new-kw-dispatch20911_
                        (gxc#apply-expression-subst
                         _L20857_
                         _L20861_
                         _get-kws-id20903_))
                       (_new-get-kws20913_
                        (gxc#apply-expression-subst
                         _L20858_
                         _L20860_
                         _main-id20907_)))
                  (begin
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L20671_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id20903_)
                     '" => "
                     (gxc#identifier-symbol _main-id20907_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id20907_ '())
                                               (cons _L20859_ '())))
                                   _stx20519_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id20903_
                                                          '())
                                                    (cons _new-get-kws20913_
                                                          '())))
                                        _stx20519_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L20671_ '())
                                                          (cons _new-kw-dispatch20911_
                                                                '())))
                                              _stx20519_)
                                             '()))))
                     _stx20519_))))
              _hd2073420852_
              _hd2073120844_
              _hd2072820836_
              _hd2072520828_
              _hd2070720780_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2068720740_
                                                      _g2068820743_))))
                                             (_g2068720740_ _g2068820743_))
                                         (_g2068720740_ _g2068820743_))
                                     (_g2068720740_ _g2068820743_))
                                 (_g2068720740_ _g2068820743_))))
                         (_g2068720740_ _g2068820743_))
                     (_g2068720740_ _g2068820743_))
                 (_g2068720740_ _g2068820743_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2068720740_ _g2068820743_))
                                             (_g2068720740_ _g2068820743_))))
                                     (_g2068720740_ _g2068820743_))))
                             (_g2068720740_ _g2068820743_))))
                     (_g2068720740_ _g2068820743_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2068720740_
                                                      _g2068820743_))))
                                             (_g2068720740_ _g2068820743_))))
                                     (_g2068720740_ _g2068820743_))
                                 (_g2068720740_ _g2068820743_))))
                         (_g2068720740_ _g2068820743_))))
                 (_g2068720740_ _g2068820743_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2068720740_
                                                  _g2068820743_))))
                                         (_g2068720740_ _g2068820743_))))
                                 (_g2068720740_ _g2068820743_)))))
                     (_g2068620916_ _L20670_))))
                (___kont2958129582_
                 (lambda (_L20616_ _L20617_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L20617_ (cons (gxc#compile-e _L20616_) '())))
                    _stx20519_))))
            (let* ((___match2966629667_
                    (lambda (_e2056020638_
                             _hd2056120641_
                             _tl2056220643_
                             _e2056320646_
                             _hd2056420649_
                             _tl2056520651_
                             _e2056620654_
                             _hd2056720657_
                             _tl2056820659_
                             _e2056920662_
                             _hd2057020665_
                             _tl2057120667_)
                      (let ((_L20670_ _hd2057020665_)
                            (_L20671_ _hd2056720657_))
                        (if (if (gx#identifier? _L20671_)
                                (gxc#kw-lambda-expr? _L20670_)
                                '#f)
                            (___kont2957929580_ _L20670_ _L20671_)
                            (___kont2958129582_
                             _hd2057020665_
                             _hd2056420649_)))))
                   (___match2963829639_
                    (lambda (_e2054620924_
                             _hd2054720927_
                             _tl2054820929_
                             _e2054920932_
                             _hd2055020935_
                             _tl2055120937_
                             _e2055220940_
                             _hd2055320943_
                             _tl2055420945_
                             _e2055520948_
                             _hd2055620951_
                             _tl2055720953_)
                      (let ((_L20956_ _hd2055620951_)
                            (_L20957_ _hd2055320943_))
                        (if (if (gx#identifier? _L20957_)
                                (gxc#opt-lambda-expr? _L20956_)
                                '#f)
                            (___kont2957729578_ _L20956_ _L20957_)
                            (___match2966629667_
                             _e2054620924_
                             _hd2054720927_
                             _tl2054820929_
                             _e2054920932_
                             _hd2055020935_
                             _tl2055120937_
                             _e2055220940_
                             _hd2055320943_
                             _tl2055420945_
                             _e2055520948_
                             _hd2055620951_
                             _tl2055720953_)))))
                   (___match2961029611_
                    (lambda (_e2053221106_
                             _hd2053321109_
                             _tl2053421111_
                             _e2053521114_
                             _hd2053621117_
                             _tl2053721119_
                             _e2053821122_
                             _hd2053921125_
                             _tl2054021127_
                             _e2054121130_
                             _hd2054221133_
                             _tl2054321135_)
                      (let ((_L21138_ _hd2054221133_)
                            (_L21139_ _hd2053921125_))
                        (if (if (gx#identifier? _L21139_)
                                (gxc#case-lambda-expr? _L21138_)
                                '#f)
                            (___kont2957529576_ _L21138_ _L21139_)
                            (___match2963829639_
                             _e2053221106_
                             _hd2053321109_
                             _tl2053421111_
                             _e2053521114_
                             _hd2053621117_
                             _tl2053721119_
                             _e2053821122_
                             _hd2053921125_
                             _tl2054021127_
                             _e2054121130_
                             _hd2054221133_
                             _tl2054321135_))))))
              (if (gx#stx-pair? ___stx2957329574_)
                  (let ((_e2053221106_ (gx#stx-e ___stx2957329574_)))
                    (let ((_tl2053421111_ (##cdr _e2053221106_))
                          (_hd2053321109_ (##car _e2053221106_)))
                      (if (gx#stx-pair? _tl2053421111_)
                          (let ((_e2053521114_ (gx#stx-e _tl2053421111_)))
                            (let ((_tl2053721119_ (##cdr _e2053521114_))
                                  (_hd2053621117_ (##car _e2053521114_)))
                              (if (gx#stx-pair? _hd2053621117_)
                                  (let ((_e2053821122_
                                         (gx#stx-e _hd2053621117_)))
                                    (let ((_tl2054021127_
                                           (##cdr _e2053821122_))
                                          (_hd2053921125_
                                           (##car _e2053821122_)))
                                      (if (gx#stx-null? _tl2054021127_)
                                          (if (gx#stx-pair? _tl2053721119_)
                                              (let ((_e2054121130_
                                                     (gx#stx-e
                                                      _tl2053721119_)))
                                                (let ((_tl2054321135_
                                                       (##cdr _e2054121130_))
                                                      (_hd2054221133_
                                                       (##car _e2054121130_)))
                                                  (if (gx#stx-null?
                                                       _tl2054321135_)
                                                      (___match2961029611_
                                                       _e2053221106_
                                                       _hd2053321109_
                                                       _tl2053421111_
                                                       _e2053521114_
                                                       _hd2053621117_
                                                       _tl2053721119_
                                                       _e2053821122_
                                                       _hd2053921125_
                                                       _tl2054021127_
                                                       _e2054121130_
                                                       _hd2054221133_
                                                       _tl2054321135_)
                                                      (_g2052820587_))))
                                              (_g2052820587_))
                                          (if (gx#stx-pair? _tl2053721119_)
                                              (let ((_e2058020608_
                                                     (gx#stx-e
                                                      _tl2053721119_)))
                                                (let ((_tl2058220613_
                                                       (##cdr _e2058020608_))
                                                      (_hd2058120611_
                                                       (##car _e2058020608_)))
                                                  (if (gx#stx-null?
                                                       _tl2058220613_)
                                                      (___kont2958129582_
                                                       _hd2058120611_
                                                       _hd2053621117_)
                                                      (_g2052820587_))))
                                              (_g2052820587_)))))
                                  (if (gx#stx-pair? _tl2053721119_)
                                      (let ((_e2058020608_
                                             (gx#stx-e _tl2053721119_)))
                                        (let ((_tl2058220613_
                                               (##cdr _e2058020608_))
                                              (_hd2058120611_
                                               (##car _e2058020608_)))
                                          (if (gx#stx-null? _tl2058220613_)
                                              (___kont2958129582_
                                               _hd2058120611_
                                               _hd2053621117_)
                                              (_g2052820587_))))
                                      (_g2052820587_)))))
                          (_g2052820587_))))
                  (_g2052820587_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19451_)
      (letrec* ((_bind-e__2744527446_
                 (lambda (_id20503_ _expr20504_ _compile?20505_)
                   (cons (cons _id20503_ '())
                         (cons (if _compile?20505_
                                   (gxc#compile-e _expr20504_)
                                   _expr20504_)
                               '()))))
                (_bind-e__0__2744727448_
                 (lambda (_id20510_ _expr20511_)
                   (let ((_compile?20513_ '#t))
                     (_bind-e__2744527446_
                      _id20510_
                      _expr20511_
                      _compile?20513_))))
                (_bind-e19453_
                 (lambda _g30075_
                   (let ((_g30074_ (length _g30075_)))
                     (cond ((##fx= _g30074_ 2)
                            (apply _bind-e__0__2744727448_ _g30075_))
                           ((##fx= _g30074_ 3)
                            (apply _bind-e__2744527446_ _g30075_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g30075_))))))
                (_compile-bindings19454_
                 (lambda (_bindings20087_)
                   (let _lp20089_ ((_rest20091_ _bindings20087_)
                                   (_lift120092_ '())
                                   (_lift220093_ '())
                                   (_bind20094_ '()))
                     (let* ((_rest2009520103_ _rest20091_)
                            (_else2009720111_
                             (lambda ()
                               (values (reverse _lift120092_)
                                       (reverse _lift220093_)
                                       (reverse _bind20094_))))
                            (_K2009920490_
                             (lambda (_rest20114_ _hd20115_)
                               (let* ((___stx2970929710_ _hd20115_)
                                      (_g2011920155_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2970929710_))))
                                 (let ((___kont2971129712_
                                        (lambda (_L20397_ _L20398_)
                                          (let* ((___stx2968929690_ _L20397_)
                                                 (_g2041320427_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2968929690_))))
                                            (let ((___kont2969129692_
                                                   (lambda (_L20475_)
                                                     (_lp20089_
                                                      _rest20114_
                                                      _lift120092_
                                                      _lift220093_
                                                      (cons (_bind-e__2744527446_
                                                             _L20398_
                                                             _L20397_
                                                             '#f)
                                                            _bind20094_))))
                                                  (___kont2969329694_
                                                   (lambda (_L20440_)
                                                     (let ((_g30076_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx19451_
                                                             _L20398_
                                                             _L20440_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g30077_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30076_)
                            (##vector-length _g30076_)
                            1)))
                   (if (not (##fx= _g30077_ 3))
                       (error "Context expects 3 values" _g30077_)))
                 (let ((_ids20450_ (##vector-ref _g30076_ 0))
                       (_impls20451_ (##vector-ref _g30076_ 1))
                       (_clauses20452_ (##vector-ref _g30076_ 2)))
                   (let* ((_g30078_
                           (for-each gx#core-bind-runtime! _ids20450_))
                          (_xbind20455_
                           (map _bind-e19453_ _ids20450_ _impls20451_))
                          (_expr*20457_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses20452_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*20459_
                           (_bind-e__2744527446_ _L20398_ _expr*20457_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L20398_)
                        '" => "
                        (map gxc#identifier-symbol _ids20450_))
                       (_lp20089_
                        _rest20114_
                        _lift120092_
                        (foldl1 cons _lift220093_ _xbind20455_)
                        (cons _bind*20459_ _bind20094_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2970029701_
                                                     (lambda (_e2041620467_
                                                              _hd2041720470_
                                                              _tl2041820472_)
                                                       (let ((_L20475_
                                                              _tl2041820472_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L20475_)
                     (___kont2969129692_ _L20475_)
                     (___kont2969329694_ _tl2041820472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2968929690_)
                                                    (let ((_e2041620467_
                                                           (gx#stx-e
                                                            ___stx2968929690_)))
                                                      (let ((_tl2041820472_
                                                             (##cdr _e2041620467_))
                                                            (_hd2041720470_
                                                             (##car _e2041620467_)))
                                                        (___match2970029701_
                                                         _e2041620467_
                                                         _hd2041720470_
                                                         _tl2041820472_)))
                                                    (_g2041320427_)))))))
                                       (___kont2971329714_
                                        (lambda (_L20225_ _L20226_)
                                          (let* ((_g2024020270_
                                                  (lambda (_g2024120267_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2024120267_)))
                                                 (_g2023920365_
                                                  (lambda (_g2024120273_)
                                                    (if (gx#stx-pair?
                                                         _g2024120273_)
                                                        (let ((_e2024520275_
                                                               (gx#stx-e
                                                                _g2024120273_)))
                                                          (let ((_hd2024620278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2024520275_))
                        (_tl2024720280_ (##cdr _e2024520275_)))
                    (if (gx#stx-pair? _tl2024720280_)
                        (let ((_e2024820283_ (gx#stx-e _tl2024720280_)))
                          (let ((_hd2024920286_ (##car _e2024820283_))
                                (_tl2025020288_ (##cdr _e2024820283_)))
                            (if (gx#stx-pair? _hd2024920286_)
                                (let ((_e2025120291_
                                       (gx#stx-e _hd2024920286_)))
                                  (let ((_hd2025220294_ (##car _e2025120291_))
                                        (_tl2025320296_ (##cdr _e2025120291_)))
                                    (if (gx#stx-pair? _hd2025220294_)
                                        (let ((_e2025420299_
                                               (gx#stx-e _hd2025220294_)))
                                          (let ((_hd2025520302_
                                                 (##car _e2025420299_))
                                                (_tl2025620304_
                                                 (##cdr _e2025420299_)))
                                            (if (gx#stx-pair? _hd2025520302_)
                                                (let ((_e2025720307_
                                                       (gx#stx-e
                                                        _hd2025520302_)))
                                                  (let ((_hd2025820310_
                                                         (##car _e2025720307_))
                                                        (_tl2025920312_
                                                         (##cdr _e2025720307_)))
                                                    (if (gx#stx-null?
                                                         _tl2025920312_)
                                                        (if (gx#stx-pair?
                                                             _tl2025620304_)
                                                            (let ((_e2026020315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2025620304_)))
                      (let ((_hd2026120318_ (##car _e2026020315_))
                            (_tl2026220320_ (##cdr _e2026020315_)))
                        (if (gx#stx-null? _tl2026220320_)
                            (if (gx#stx-null? _tl2025320296_)
                                (if (gx#stx-pair? _tl2025020288_)
                                    (let ((_e2026320323_
                                           (gx#stx-e _tl2025020288_)))
                                      (let ((_hd2026420326_
                                             (##car _e2026320323_))
                                            (_tl2026520328_
                                             (##cdr _e2026320323_)))
                                        (if (gx#stx-null? _tl2026520328_)
                                            ((lambda (_L20331_
                                                      _L20332_
                                                      _L20333_)
                                               (let* ((_lambda-id20357_
                                                       (make-symbol
                                                        (gx#stx-e _L20226_)
                                                        (gensym '__)))
                                                      (_lambda-id20359_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id20357_
                                                        (gx#stx-source
                                                         _stx19451_)))
                                                      (_g30079_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id20359_))
                                                      (_new-case-lambda-expr20362_
                                                       (gxc#apply-expression-subst
                                                        _L20331_
                                                        _L20333_
                                                        _lambda-id20359_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L20226_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id20359_))
                                                   (_lp20089_
                                                    (cons (_bind-e__2744527446_
                                                           _L20226_
                                                           _new-case-lambda-expr20362_
                                                           '#f)
                                                          _rest20114_)
                                                    (cons (_bind-e__0__2744727448_
                                                           _lambda-id20359_
                                                           _L20332_)
                                                          _lift120092_)
                                                    _lift220093_
                                                    _bind20094_))))
                                             _hd2026420326_
                                             _hd2026120318_
                                             _hd2025820310_)
                                            (_g2024020270_ _g2024120273_))))
                                    (_g2024020270_ _g2024120273_))
                                (_g2024020270_ _g2024120273_))
                            (_g2024020270_ _g2024120273_))))
                    (_g2024020270_ _g2024120273_))
                (_g2024020270_ _g2024120273_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2024020270_
                                                 _g2024120273_))))
                                        (_g2024020270_ _g2024120273_))))
                                (_g2024020270_ _g2024120273_))))
                        (_g2024020270_ _g2024120273_))))
                (_g2024020270_ _g2024120273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2023920365_ _L20225_))))
                                       (___kont2971529716_
                                        (lambda (_L20176_ _L20177_)
                                          (_lp20089_
                                           _rest20114_
                                           _lift120092_
                                           _lift220093_
                                           (cons (cons _L20177_
                                                       (cons (gxc#compile-e
                                                              _L20176_)
                                                             '()))
                                                 _bind20094_)))))
                                   (let* ((___match2976029761_
                                           (lambda (_e2013420201_
                                                    _hd2013520204_
                                                    _tl2013620206_
                                                    _e2013720209_
                                                    _hd2013820212_
                                                    _tl2013920214_
                                                    _e2014020217_
                                                    _hd2014120220_
                                                    _tl2014220222_)
                                             (let ((_L20225_ _hd2014120220_)
                                                   (_L20226_ _hd2013820212_))
                                               (if (if (gx#identifier?
                                                        _L20226_)
                                                       (gxc#opt-lambda-expr?
                                                        _L20225_)
                                                       '#f)
                                                   (___kont2971329714_
                                                    _L20225_
                                                    _L20226_)
                                                   (___kont2971529716_
                                                    _hd2014120220_
                                                    _hd2013520204_)))))
                                          (___match2973829739_
                                           (lambda (_e2012320373_
                                                    _hd2012420376_
                                                    _tl2012520378_
                                                    _e2012620381_
                                                    _hd2012720384_
                                                    _tl2012820386_
                                                    _e2012920389_
                                                    _hd2013020392_
                                                    _tl2013120394_)
                                             (let ((_L20397_ _hd2013020392_)
                                                   (_L20398_ _hd2012720384_))
                                               (if (if (gx#identifier?
                                                        _L20398_)
                                                       (gxc#case-lambda-expr?
                                                        _L20397_)
                                                       '#f)
                                                   (___kont2971129712_
                                                    _L20397_
                                                    _L20398_)
                                                   (___match2976029761_
                                                    _e2012320373_
                                                    _hd2012420376_
                                                    _tl2012520378_
                                                    _e2012620381_
                                                    _hd2012720384_
                                                    _tl2012820386_
                                                    _e2012920389_
                                                    _hd2013020392_
                                                    _tl2013120394_))))))
                                     (if (gx#stx-pair? ___stx2970929710_)
                                         (let ((_e2012320373_
                                                (gx#stx-e ___stx2970929710_)))
                                           (let ((_tl2012520378_
                                                  (##cdr _e2012320373_))
                                                 (_hd2012420376_
                                                  (##car _e2012320373_)))
                                             (if (gx#stx-pair? _hd2012420376_)
                                                 (let ((_e2012620381_
                                                        (gx#stx-e
                                                         _hd2012420376_)))
                                                   (let ((_tl2012820386_
                                                          (##cdr _e2012620381_))
                                                         (_hd2012720384_
                                                          (##car _e2012620381_)))
                                                     (if (gx#stx-null?
                                                          _tl2012820386_)
                                                         (if (gx#stx-pair?
                                                              _tl2012520378_)
                                                             (let ((_e2012920389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl2012520378_)))
                       (let ((_tl2013120394_ (##cdr _e2012920389_))
                             (_hd2013020392_ (##car _e2012920389_)))
                         (if (gx#stx-null? _tl2013120394_)
                             (___match2973829739_
                              _e2012320373_
                              _hd2012420376_
                              _tl2012520378_
                              _e2012620381_
                              _hd2012720384_
                              _tl2012820386_
                              _e2012920389_
                              _hd2013020392_
                              _tl2013120394_)
                             (_g2011920155_))))
                     (_g2011920155_))
                 (if (gx#stx-pair? _tl2012520378_)
                     (let ((_e2014820168_ (gx#stx-e _tl2012520378_)))
                       (let ((_tl2015020173_ (##cdr _e2014820168_))
                             (_hd2014920171_ (##car _e2014820168_)))
                         (if (gx#stx-null? _tl2015020173_)
                             (___kont2971529716_ _hd2014920171_ _hd2012420376_)
                             (_g2011920155_))))
                     (_g2011920155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl2012520378_)
                                                     (let ((_e2014820168_
                                                            (gx#stx-e
                                                             _tl2012520378_)))
                                                       (let ((_tl2015020173_
                                                              (##cdr _e2014820168_))
                                                             (_hd2014920171_
                                                              (##car _e2014820168_)))
                                                         (if (gx#stx-null?
                                                              _tl2015020173_)
                                                             (___kont2971529716_
                                                              _hd2014920171_
                                                              _hd2012420376_)
                                                             (_g2011920155_))))
                                                     (_g2011920155_)))))
                                         (_g2011920155_))))))))
                       (if (##pair? _rest2009520103_)
                           (let ((_hd2010020493_ (##car _rest2009520103_))
                                 (_tl2010120495_ (##cdr _rest2009520103_)))
                             (let* ((_hd20498_ _hd2010020493_)
                                    (_rest20500_ _tl2010120495_))
                               (_K2009920490_ _rest20500_ _hd20498_)))
                           (_else2009720111_))))))
                (_lift-kw-lambda?19455_
                 (lambda (_bind20011_)
                   (let* ((___stx2977729778_ _bind20011_)
                          (_g2001420031_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2977729778_))))
                     (let ((___kont2977929780_
                            (lambda (_L20067_ _L20068_)
                              (if (gx#identifier? _L20068_)
                                  (gxc#kw-lambda-expr? _L20067_)
                                  '#f)))
                           (___kont2978129782_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx2977729778_)
                           (let ((_e2001820043_ (gx#stx-e ___stx2977729778_)))
                             (let ((_tl2002020048_ (##cdr _e2001820043_))
                                   (_hd2001920046_ (##car _e2001820043_)))
                               (if (gx#stx-pair? _hd2001920046_)
                                   (let ((_e2002120051_
                                          (gx#stx-e _hd2001920046_)))
                                     (let ((_tl2002320056_
                                            (##cdr _e2002120051_))
                                           (_hd2002220054_
                                            (##car _e2002120051_)))
                                       (if (gx#stx-null? _tl2002320056_)
                                           (if (gx#stx-pair? _tl2002020048_)
                                               (let ((_e2002420059_
                                                      (gx#stx-e
                                                       _tl2002020048_)))
                                                 (let ((_tl2002620064_
                                                        (##cdr _e2002420059_))
                                                       (_hd2002520062_
                                                        (##car _e2002420059_)))
                                                   (if (gx#stx-null?
                                                        _tl2002620064_)
                                                       (___kont2977929780_
                                                        _hd2002520062_
                                                        _hd2002220054_)
                                                       (___kont2978129782_))))
                                               (___kont2978129782_))
                                           (___kont2978129782_))))
                                   (___kont2978129782_))))
                           (___kont2978129782_))))))
                (_lift-kw-lambda-bindings19456_
                 (lambda (_bindings19623_)
                   (let _lp19625_ ((_rest19627_ _bindings19623_)
                                   (_lift119628_ '())
                                   (_lift219629_ '())
                                   (_bind19630_ '()))
                     (let* ((_rest1963119639_ _rest19627_)
                            (_else1963319647_
                             (lambda ()
                               (values (reverse _lift119628_)
                                       (reverse _lift219629_)
                                       (reverse _bind19630_))))
                            (_K1963519999_
                             (lambda (_rest19650_ _hd19651_)
                               (let* ((___stx2980729808_ _hd19651_)
                                      (_g1965419679_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2980729808_))))
                                 (let ((___kont2980929810_
                                        (lambda (_L19749_ _L19750_)
                                          (let* ((_g1976419817_
                                                  (lambda (_g1976519814_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1976519814_)))
                                                 (_g1976319993_
                                                  (lambda (_g1976519820_)
                                                    (if (gx#stx-pair?
                                                         _g1976519820_)
                                                        (let ((_e1977119822_
                                                               (gx#stx-e
                                                                _g1976519820_)))
                                                          (let ((_hd1977219825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1977119822_))
                        (_tl1977319827_ (##cdr _e1977119822_)))
                    (if (gx#stx-pair? _tl1977319827_)
                        (let ((_e1977419830_ (gx#stx-e _tl1977319827_)))
                          (let ((_hd1977519833_ (##car _e1977419830_))
                                (_tl1977619835_ (##cdr _e1977419830_)))
                            (if (gx#stx-pair? _hd1977519833_)
                                (let ((_e1977719838_
                                       (gx#stx-e _hd1977519833_)))
                                  (let ((_hd1977819841_ (##car _e1977719838_))
                                        (_tl1977919843_ (##cdr _e1977719838_)))
                                    (if (gx#stx-pair? _hd1977819841_)
                                        (let ((_e1978019846_
                                               (gx#stx-e _hd1977819841_)))
                                          (let ((_hd1978119849_
                                                 (##car _e1978019846_))
                                                (_tl1978219851_
                                                 (##cdr _e1978019846_)))
                                            (if (gx#stx-pair? _hd1978119849_)
                                                (let ((_e1978319854_
                                                       (gx#stx-e
                                                        _hd1978119849_)))
                                                  (let ((_hd1978419857_
                                                         (##car _e1978319854_))
                                                        (_tl1978519859_
                                                         (##cdr _e1978319854_)))
                                                    (if (gx#stx-null?
                                                         _tl1978519859_)
                                                        (if (gx#stx-pair?
                                                             _tl1978219851_)
                                                            (let ((_e1978619862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1978219851_)))
                      (let ((_hd1978719865_ (##car _e1978619862_))
                            (_tl1978819867_ (##cdr _e1978619862_)))
                        (if (gx#stx-pair? _hd1978719865_)
                            (let ((_e1978919870_ (gx#stx-e _hd1978719865_)))
                              (let ((_hd1979019873_ (##car _e1978919870_))
                                    (_tl1979119875_ (##cdr _e1978919870_)))
                                (if (gx#stx-pair? _tl1979119875_)
                                    (let ((_e1979219878_
                                           (gx#stx-e _tl1979119875_)))
                                      (let ((_hd1979319881_
                                             (##car _e1979219878_))
                                            (_tl1979419883_
                                             (##cdr _e1979219878_)))
                                        (if (gx#stx-pair? _hd1979319881_)
                                            (let ((_e1979519886_
                                                   (gx#stx-e _hd1979319881_)))
                                              (let ((_hd1979619889_
                                                     (##car _e1979519886_))
                                                    (_tl1979719891_
                                                     (##cdr _e1979519886_)))
                                                (if (gx#stx-pair?
                                                     _hd1979619889_)
                                                    (let ((_e1979819894_
                                                           (gx#stx-e
                                                            _hd1979619889_)))
                                                      (let ((_hd1979919897_
                                                             (##car _e1979819894_))
                                                            (_tl1980019899_
                                                             (##cdr _e1979819894_)))
                                                        (if (gx#stx-pair?
                                                             _hd1979919897_)
                                                            (let ((_e1980119902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1979919897_)))
                      (let ((_hd1980219905_ (##car _e1980119902_))
                            (_tl1980319907_ (##cdr _e1980119902_)))
                        (if (gx#stx-null? _tl1980319907_)
                            (if (gx#stx-pair? _tl1980019899_)
                                (let ((_e1980419910_
                                       (gx#stx-e _tl1980019899_)))
                                  (let ((_hd1980519913_ (##car _e1980419910_))
                                        (_tl1980619915_ (##cdr _e1980419910_)))
                                    (if (gx#stx-null? _tl1980619915_)
                                        (if (gx#stx-null? _tl1979719891_)
                                            (if (gx#stx-pair? _tl1979419883_)
                                                (let ((_e1980719918_
                                                       (gx#stx-e
                                                        _tl1979419883_)))
                                                  (let ((_hd1980819921_
                                                         (##car _e1980719918_))
                                                        (_tl1980919923_
                                                         (##cdr _e1980719918_)))
                                                    (if (gx#stx-null?
                                                         _tl1980919923_)
                                                        (if (gx#stx-null?
                                                             _tl1978819867_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1977919843_)
                        (if (gx#stx-pair? _tl1977619835_)
                            (let ((_e1981019926_ (gx#stx-e _tl1977619835_)))
                              (let ((_hd1981119929_ (##car _e1981019926_))
                                    (_tl1981219931_ (##cdr _e1981019926_)))
                                (if (gx#stx-null? _tl1981219931_)
                                    ((lambda (_L19934_
                                              _L19935_
                                              _L19936_
                                              _L19937_
                                              _L19938_)
                                       (let* ((_get-kws-id19978_
                                               (make-symbol
                                                (gx#stx-e _L19750_)
                                                (gensym '__)))
                                              (_get-kws-id19980_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id19978_
                                                (gx#stx-source _stx19451_)))
                                              (_main-id19982_
                                               (make-symbol
                                                (gx#stx-e _L19750_)
                                                (gensym '__)))
                                              (_main-id19984_
                                               (gx#core-quote-syntax__1
                                                _main-id19982_
                                                (gx#stx-source _stx19451_)))
                                              (_g30080_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id19980_))
                                              (_g30081_
                                               (gx#core-bind-runtime!__0
                                                _main-id19984_))
                                              (_new-kw-dispatch19988_
                                               (gxc#apply-expression-subst
                                                _L19934_
                                                _L19938_
                                                _get-kws-id19980_))
                                              (_new-get-kws19990_
                                               (gxc#apply-expression-subst
                                                _L19935_
                                                _L19937_
                                                _main-id19984_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L19750_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id19980_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id19984_))
                                           (_lp19625_
                                            _rest19650_
                                            (cons (_bind-e__2744527446_
                                                   _main-id19984_
                                                   _L19936_
                                                   '#f)
                                                  _lift119628_)
                                            (cons (_bind-e__2744527446_
                                                   _get-kws-id19980_
                                                   _new-get-kws19990_
                                                   '#f)
                                                  _lift219629_)
                                            (cons (_bind-e__2744527446_
                                                   _L19750_
                                                   _new-kw-dispatch19988_
                                                   '#f)
                                                  _bind19630_)))))
                                     _hd1981119929_
                                     _hd1980819921_
                                     _hd1980519913_
                                     _hd1980219905_
                                     _hd1978419857_)
                                    (_g1976419817_ _g1976519820_))))
                            (_g1976419817_ _g1976519820_))
                        (_g1976419817_ _g1976519820_))
                    (_g1976419817_ _g1976519820_))
                (_g1976419817_ _g1976519820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1976419817_ _g1976519820_))
                                            (_g1976419817_ _g1976519820_))
                                        (_g1976419817_ _g1976519820_))))
                                (_g1976419817_ _g1976519820_))
                            (_g1976419817_ _g1976519820_))))
                    (_g1976419817_ _g1976519820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1976419817_
                                                     _g1976519820_))))
                                            (_g1976419817_ _g1976519820_))))
                                    (_g1976419817_ _g1976519820_))))
                            (_g1976419817_ _g1976519820_))))
                    (_g1976419817_ _g1976519820_))
                (_g1976419817_ _g1976519820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1976419817_
                                                 _g1976519820_))))
                                        (_g1976419817_ _g1976519820_))))
                                (_g1976419817_ _g1976519820_))))
                        (_g1976419817_ _g1976519820_))))
                (_g1976419817_ _g1976519820_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1976319993_ _L19749_))))
                                       (___kont2981129812_
                                        (lambda (_L19700_ _L19701_)
                                          (_lp19625_
                                           _rest19650_
                                           _lift119628_
                                           _lift219629_
                                           (cons (cons _L19701_
                                                       (cons _L19700_ '()))
                                                 _bind19630_)))))
                                   (let ((___match2983429835_
                                          (lambda (_e1965819725_
                                                   _hd1965919728_
                                                   _tl1966019730_
                                                   _e1966119733_
                                                   _hd1966219736_
                                                   _tl1966319738_
                                                   _e1966419741_
                                                   _hd1966519744_
                                                   _tl1966619746_)
                                            (let ((_L19749_ _hd1966519744_)
                                                  (_L19750_ _hd1966219736_))
                                              (if (if (gx#identifier? _L19750_)
                                                      (gxc#kw-lambda-expr?
                                                       _L19749_)
                                                      '#f)
                                                  (___kont2980929810_
                                                   _L19749_
                                                   _L19750_)
                                                  (___kont2981129812_
                                                   _hd1966519744_
                                                   _hd1965919728_))))))
                                     (if (gx#stx-pair? ___stx2980729808_)
                                         (let ((_e1965819725_
                                                (gx#stx-e ___stx2980729808_)))
                                           (let ((_tl1966019730_
                                                  (##cdr _e1965819725_))
                                                 (_hd1965919728_
                                                  (##car _e1965819725_)))
                                             (if (gx#stx-pair? _hd1965919728_)
                                                 (let ((_e1966119733_
                                                        (gx#stx-e
                                                         _hd1965919728_)))
                                                   (let ((_tl1966319738_
                                                          (##cdr _e1966119733_))
                                                         (_hd1966219736_
                                                          (##car _e1966119733_)))
                                                     (if (gx#stx-null?
                                                          _tl1966319738_)
                                                         (if (gx#stx-pair?
                                                              _tl1966019730_)
                                                             (let ((_e1966419741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1966019730_)))
                       (let ((_tl1966619746_ (##cdr _e1966419741_))
                             (_hd1966519744_ (##car _e1966419741_)))
                         (if (gx#stx-null? _tl1966619746_)
                             (___match2983429835_
                              _e1965819725_
                              _hd1965919728_
                              _tl1966019730_
                              _e1966119733_
                              _hd1966219736_
                              _tl1966319738_
                              _e1966419741_
                              _hd1966519744_
                              _tl1966619746_)
                             (_g1965419679_))))
                     (_g1965419679_))
                 (if (gx#stx-pair? _tl1966019730_)
                     (let ((_e1967219692_ (gx#stx-e _tl1966019730_)))
                       (let ((_tl1967419697_ (##cdr _e1967219692_))
                             (_hd1967319695_ (##car _e1967219692_)))
                         (if (gx#stx-null? _tl1967419697_)
                             (___kont2981129812_ _hd1967319695_ _hd1965919728_)
                             (_g1965419679_))))
                     (_g1965419679_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1966019730_)
                                                     (let ((_e1967219692_
                                                            (gx#stx-e
                                                             _tl1966019730_)))
                                                       (let ((_tl1967419697_
                                                              (##cdr _e1967219692_))
                                                             (_hd1967319695_
                                                              (##car _e1967219692_)))
                                                         (if (gx#stx-null?
                                                              _tl1967419697_)
                                                             (___kont2981129812_
                                                              _hd1967319695_
                                                              _hd1965919728_)
                                                             (_g1965419679_))))
                                                     (_g1965419679_)))))
                                         (_g1965419679_))))))))
                       (if (##pair? _rest1963119639_)
                           (let ((_hd1963620002_ (##car _rest1963119639_))
                                 (_tl1963720004_ (##cdr _rest1963119639_)))
                             (let* ((_hd20007_ _hd1963620002_)
                                    (_rest20009_ _tl1963720004_))
                               (_K1963519999_ _rest20009_ _hd20007_)))
                           (_else1963319647_)))))))
        (let* ((___stx2985129852_ _stx19451_)
               (_g1945919485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2985129852_))))
          (let ((___kont2985329854_
                 (lambda (_L19545_ _L19546_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?19455_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1957419577_
                                                     _g1957519579_)
                                              (cons _g1957419577_
                                                    _g1957519579_))
                                            '()
                                            _L19546_)))
                          (let ((_g30082_
                                 (_lift-kw-lambda-bindings19456_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1958119584_
                                                     _g1958219586_)
                                              (cons _g1958119584_
                                                    _g1958219586_))
                                            '()
                                            _L19546_)))))
                            (begin
                              (let ((_g30083_
                                     (if (##values? _g30082_)
                                         (##vector-length _g30082_)
                                         1)))
                                (if (not (##fx= _g30083_ 3))
                                    (error "Context expects 3 values"
                                           _g30083_)))
                              (let ((_lift119589_ (##vector-ref _g30082_ 0))
                                    (_lift219590_ (##vector-ref _g30082_ 1))
                                    (_hd19591_ (##vector-ref _g30082_ 2)))
                                (let* ((_expr19593_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd19591_
                                                     (cons _L19545_ '())))
                                         _stx19451_))
                                       (_expr19595_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift219590_
                                                     (cons _expr19593_ '())))
                                         _stx19451_))
                                       (_expr19597_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift119589_
                                                     (cons _expr19595_ '())))
                                         _stx19451_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr19597_)))))
                          (let ((_g30084_
                                 (_compile-bindings19454_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1959919602_
                                                     _g1960019604_)
                                              (cons _g1959919602_
                                                    _g1960019604_))
                                            '()
                                            _L19546_)))))
                            (begin
                              (let ((_g30085_
                                     (if (##values? _g30084_)
                                         (##vector-length _g30084_)
                                         1)))
                                (if (not (##fx= _g30085_ 3))
                                    (error "Context expects 3 values"
                                           _g30085_)))
                              (let ((_lift119607_ (##vector-ref _g30084_ 0))
                                    (_lift219608_ (##vector-ref _g30084_ 1))
                                    (_hd19609_ (##vector-ref _g30084_ 2)))
                                (let* ((_body19611_ (gxc#compile-e _L19545_))
                                       (_expr19613_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd19609_
                                                     (cons _body19611_ '())))
                                         _stx19451_))
                                       (_expr19615_
                                        (if (null? _lift219608_)
                                            _expr19613_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift219608_
                                                         (cons _expr19613_
                                                               '())))
                                             _stx19451_)))
                                       (_expr19617_
                                        (if (null? _lift119607_)
                                            _expr19615_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift119607_
                                                         (cons _expr19615_
                                                               '())))
                                             _stx19451_))))
                                  _expr19617_))))))
                    gx#current-expander-context
                    (let ((__obj30058 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj30058)
                        __obj30058)))))
                (___kont2985729858_
                 (lambda () (gxc#xform-let-values% _stx19451_))))
            (let ((___match2987829879_
                   (lambda (_e1946319497_
                            _hd1946419500_
                            _tl1946519502_
                            _e1946619505_
                            _hd1946719508_
                            _tl1946819510_
                            ___splice2985529856_
                            _target1946919513_
                            _tl1947119515_)
                     (letrec ((_loop1947219518_
                               (lambda (_hd1947019521_ _bind1947619523_)
                                 (if (gx#stx-pair? _hd1947019521_)
                                     (let ((_e1947319526_
                                            (gx#stx-e _hd1947019521_)))
                                       (let ((_lp-tl1947519531_
                                              (##cdr _e1947319526_))
                                             (_lp-hd1947419529_
                                              (##car _e1947319526_)))
                                         (_loop1947219518_
                                          _lp-tl1947519531_
                                          (cons _lp-hd1947419529_
                                                _bind1947619523_))))
                                     (let ((_bind1947719534_
                                            (reverse _bind1947619523_)))
                                       (if (gx#stx-pair? _tl1946819510_)
                                           (let ((_e1947819537_
                                                  (gx#stx-e _tl1946819510_)))
                                             (let ((_tl1948019542_
                                                    (##cdr _e1947819537_))
                                                   (_hd1947919540_
                                                    (##car _e1947819537_)))
                                               (if (gx#stx-null?
                                                    _tl1948019542_)
                                                   (let ((_L19545_
                                                          _hd1947919540_)
                                                         (_L19546_
                                                          _bind1947719534_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1956619569_ _g1956719571_)
                                     (cons _g1956619569_ _g1956719571_))
                                   '()
                                   _L19546_)))
                 (___kont2985329854_ _L19545_ _L19546_)
                 (___kont2985729858_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2985729858_))))
                                           (___kont2985729858_)))))))
                       (_loop1947219518_ _target1946919513_ '())))))
              (if (gx#stx-pair? ___stx2985129852_)
                  (let ((_e1946319497_ (gx#stx-e ___stx2985129852_)))
                    (let ((_tl1946519502_ (##cdr _e1946319497_))
                          (_hd1946419500_ (##car _e1946319497_)))
                      (if (gx#stx-pair? _tl1946519502_)
                          (let ((_e1946619505_ (gx#stx-e _tl1946519502_)))
                            (let ((_tl1946819510_ (##cdr _e1946619505_))
                                  (_hd1946719508_ (##car _e1946619505_)))
                              (if (gx#stx-pair/null? _hd1946719508_)
                                  (let ((___splice2985529856_
                                         (gx#syntax-split-splice
                                          _hd1946719508_
                                          '0)))
                                    (let ((_tl1947119515_
                                           (##vector-ref
                                            ___splice2985529856_
                                            '1))
                                          (_target1946919513_
                                           (##vector-ref
                                            ___splice2985529856_
                                            '0)))
                                      (if (gx#stx-null? _tl1947119515_)
                                          (___match2987829879_
                                           _e1946319497_
                                           _hd1946419500_
                                           _tl1946519502_
                                           _e1946619505_
                                           _hd1946719508_
                                           _tl1946819510_
                                           ___splice2985529856_
                                           _target1946919513_
                                           _tl1947119515_)
                                          (___kont2985729858_))))
                                  (___kont2985729858_))))
                          (___kont2985729858_))))
                  (___kont2985729858_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx18595_)
      (letrec* ((_bind-e__2745027451_
                 (lambda (_id19435_ _expr19436_ _compile?19437_)
                   (cons (cons _id19435_ '())
                         (cons (if _compile?19437_
                                   (gxc#compile-e _expr19436_)
                                   _expr19436_)
                               '()))))
                (_bind-e__0__2745227453_
                 (lambda (_id19442_ _expr19443_)
                   (let ((_compile?19445_ '#t))
                     (_bind-e__2745027451_
                      _id19442_
                      _expr19443_
                      _compile?19445_))))
                (_bind-e18597_
                 (lambda _g30087_
                   (let ((_g30086_ (length _g30087_)))
                     (cond ((##fx= _g30086_ 2)
                            (apply _bind-e__0__2745227453_ _g30087_))
                           ((##fx= _g30086_ 3)
                            (apply _bind-e__2745027451_ _g30087_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g30087_))))))
                (_compile-bindings18598_
                 (lambda (_rest18733_)
                   (let _lp18735_ ((_rest18737_ _rest18733_) (_bind18738_ '()))
                     (let* ((_rest1873918747_ _rest18737_)
                            (_else1874118755_
                             (lambda () (reverse _bind18738_)))
                            (_K1874319422_
                             (lambda (_rest18758_ _hd18759_)
                               (let* ((___stx2990129902_ _hd18759_)
                                      (_g1876418811_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2990129902_))))
                                 (let ((___kont2990329904_
                                        (lambda (_L19329_ _L19330_)
                                          (let* ((___stx2988129882_ _L19329_)
                                                 (_g1934519359_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2988129882_))))
                                            (let ((___kont2988329884_
                                                   (lambda (_L19407_)
                                                     (_lp18735_
                                                      _rest18758_
                                                      (cons (_bind-e__2745027451_
                                                             _L19330_
                                                             _L19329_
                                                             '#f)
                                                            _bind18738_))))
                                                  (___kont2988529886_
                                                   (lambda (_L19372_)
                                                     (let ((_g30088_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx18595_
                                                             _L19330_
                                                             _L19372_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g30089_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30088_)
                            (##vector-length _g30088_)
                            1)))
                   (if (not (##fx= _g30089_ 3))
                       (error "Context expects 3 values" _g30089_)))
                 (let ((_ids19382_ (##vector-ref _g30088_ 0))
                       (_impls19383_ (##vector-ref _g30088_ 1))
                       (_clauses19384_ (##vector-ref _g30088_ 2)))
                   (let* ((_g30090_
                           (for-each gx#core-bind-runtime! _ids19382_))
                          (_xbind19387_
                           (map _bind-e18597_ _ids19382_ _impls19383_))
                          (_expr*19389_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses19384_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*19391_
                           (_bind-e__2745027451_ _L19330_ _expr*19389_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L19330_)
                        '" => "
                        (map gxc#identifier-symbol _ids19382_))
                       (_lp18735_
                        _rest18758_
                        (cons _bind*19391_
                              (foldl1 cons _bind18738_ _xbind19387_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2989229893_
                                                     (lambda (_e1934819399_
                                                              _hd1934919402_
                                                              _tl1935019404_)
                                                       (let ((_L19407_
                                                              _tl1935019404_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19407_)
                     (___kont2988329884_ _L19407_)
                     (___kont2988529886_ _tl1935019404_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2988129882_)
                                                    (let ((_e1934819399_
                                                           (gx#stx-e
                                                            ___stx2988129882_)))
                                                      (let ((_tl1935019404_
                                                             (##cdr _e1934819399_))
                                                            (_hd1934919402_
                                                             (##car _e1934819399_)))
                                                        (___match2989229893_
                                                         _e1934819399_
                                                         _hd1934919402_
                                                         _tl1935019404_)))
                                                    (_g1934519359_)))))))
                                       (___kont2990529906_
                                        (lambda (_L19157_ _L19158_)
                                          (let* ((_g1917219202_
                                                  (lambda (_g1917319199_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1917319199_)))
                                                 (_g1917119297_
                                                  (lambda (_g1917319205_)
                                                    (if (gx#stx-pair?
                                                         _g1917319205_)
                                                        (let ((_e1917719207_
                                                               (gx#stx-e
                                                                _g1917319205_)))
                                                          (let ((_hd1917819210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1917719207_))
                        (_tl1917919212_ (##cdr _e1917719207_)))
                    (if (gx#stx-pair? _tl1917919212_)
                        (let ((_e1918019215_ (gx#stx-e _tl1917919212_)))
                          (let ((_hd1918119218_ (##car _e1918019215_))
                                (_tl1918219220_ (##cdr _e1918019215_)))
                            (if (gx#stx-pair? _hd1918119218_)
                                (let ((_e1918319223_
                                       (gx#stx-e _hd1918119218_)))
                                  (let ((_hd1918419226_ (##car _e1918319223_))
                                        (_tl1918519228_ (##cdr _e1918319223_)))
                                    (if (gx#stx-pair? _hd1918419226_)
                                        (let ((_e1918619231_
                                               (gx#stx-e _hd1918419226_)))
                                          (let ((_hd1918719234_
                                                 (##car _e1918619231_))
                                                (_tl1918819236_
                                                 (##cdr _e1918619231_)))
                                            (if (gx#stx-pair? _hd1918719234_)
                                                (let ((_e1918919239_
                                                       (gx#stx-e
                                                        _hd1918719234_)))
                                                  (let ((_hd1919019242_
                                                         (##car _e1918919239_))
                                                        (_tl1919119244_
                                                         (##cdr _e1918919239_)))
                                                    (if (gx#stx-null?
                                                         _tl1919119244_)
                                                        (if (gx#stx-pair?
                                                             _tl1918819236_)
                                                            (let ((_e1919219247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1918819236_)))
                      (let ((_hd1919319250_ (##car _e1919219247_))
                            (_tl1919419252_ (##cdr _e1919219247_)))
                        (if (gx#stx-null? _tl1919419252_)
                            (if (gx#stx-null? _tl1918519228_)
                                (if (gx#stx-pair? _tl1918219220_)
                                    (let ((_e1919519255_
                                           (gx#stx-e _tl1918219220_)))
                                      (let ((_hd1919619258_
                                             (##car _e1919519255_))
                                            (_tl1919719260_
                                             (##cdr _e1919519255_)))
                                        (if (gx#stx-null? _tl1919719260_)
                                            ((lambda (_L19263_
                                                      _L19264_
                                                      _L19265_)
                                               (let* ((_lambda-id19289_
                                                       (make-symbol
                                                        (gx#stx-e _L19158_)
                                                        (gensym '__)))
                                                      (_lambda-id19291_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id19289_
                                                        (gx#stx-source
                                                         _stx18595_)))
                                                      (_g30091_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id19291_))
                                                      (_new-case-lambda-expr19294_
                                                       (gxc#apply-expression-subst
                                                        _L19263_
                                                        _L19265_
                                                        _lambda-id19291_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L19158_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id19291_))
                                                   (_lp18735_
                                                    (cons (_bind-e__2745027451_
                                                           _L19158_
                                                           _new-case-lambda-expr19294_
                                                           '#f)
                                                          _rest18758_)
                                                    (cons (_bind-e__0__2745227453_
                                                           _lambda-id19291_
                                                           _L19264_)
                                                          _bind18738_)))))
                                             _hd1919619258_
                                             _hd1919319250_
                                             _hd1919019242_)
                                            (_g1917219202_ _g1917319205_))))
                                    (_g1917219202_ _g1917319205_))
                                (_g1917219202_ _g1917319205_))
                            (_g1917219202_ _g1917319205_))))
                    (_g1917219202_ _g1917319205_))
                (_g1917219202_ _g1917319205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1917219202_
                                                 _g1917319205_))))
                                        (_g1917219202_ _g1917319205_))))
                                (_g1917219202_ _g1917319205_))))
                        (_g1917219202_ _g1917319205_))))
                (_g1917219202_ _g1917319205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1917119297_ _L19157_))))
                                       (___kont2990729908_
                                        (lambda (_L18881_ _L18882_)
                                          (let* ((_g1889618949_
                                                  (lambda (_g1889718946_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1889718946_)))
                                                 (_g1889519125_
                                                  (lambda (_g1889718952_)
                                                    (if (gx#stx-pair?
                                                         _g1889718952_)
                                                        (let ((_e1890318954_
                                                               (gx#stx-e
                                                                _g1889718952_)))
                                                          (let ((_hd1890418957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1890318954_))
                        (_tl1890518959_ (##cdr _e1890318954_)))
                    (if (gx#stx-pair? _tl1890518959_)
                        (let ((_e1890618962_ (gx#stx-e _tl1890518959_)))
                          (let ((_hd1890718965_ (##car _e1890618962_))
                                (_tl1890818967_ (##cdr _e1890618962_)))
                            (if (gx#stx-pair? _hd1890718965_)
                                (let ((_e1890918970_
                                       (gx#stx-e _hd1890718965_)))
                                  (let ((_hd1891018973_ (##car _e1890918970_))
                                        (_tl1891118975_ (##cdr _e1890918970_)))
                                    (if (gx#stx-pair? _hd1891018973_)
                                        (let ((_e1891218978_
                                               (gx#stx-e _hd1891018973_)))
                                          (let ((_hd1891318981_
                                                 (##car _e1891218978_))
                                                (_tl1891418983_
                                                 (##cdr _e1891218978_)))
                                            (if (gx#stx-pair? _hd1891318981_)
                                                (let ((_e1891518986_
                                                       (gx#stx-e
                                                        _hd1891318981_)))
                                                  (let ((_hd1891618989_
                                                         (##car _e1891518986_))
                                                        (_tl1891718991_
                                                         (##cdr _e1891518986_)))
                                                    (if (gx#stx-null?
                                                         _tl1891718991_)
                                                        (if (gx#stx-pair?
                                                             _tl1891418983_)
                                                            (let ((_e1891818994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1891418983_)))
                      (let ((_hd1891918997_ (##car _e1891818994_))
                            (_tl1892018999_ (##cdr _e1891818994_)))
                        (if (gx#stx-pair? _hd1891918997_)
                            (let ((_e1892119002_ (gx#stx-e _hd1891918997_)))
                              (let ((_hd1892219005_ (##car _e1892119002_))
                                    (_tl1892319007_ (##cdr _e1892119002_)))
                                (if (gx#stx-pair? _tl1892319007_)
                                    (let ((_e1892419010_
                                           (gx#stx-e _tl1892319007_)))
                                      (let ((_hd1892519013_
                                             (##car _e1892419010_))
                                            (_tl1892619015_
                                             (##cdr _e1892419010_)))
                                        (if (gx#stx-pair? _hd1892519013_)
                                            (let ((_e1892719018_
                                                   (gx#stx-e _hd1892519013_)))
                                              (let ((_hd1892819021_
                                                     (##car _e1892719018_))
                                                    (_tl1892919023_
                                                     (##cdr _e1892719018_)))
                                                (if (gx#stx-pair?
                                                     _hd1892819021_)
                                                    (let ((_e1893019026_
                                                           (gx#stx-e
                                                            _hd1892819021_)))
                                                      (let ((_hd1893119029_
                                                             (##car _e1893019026_))
                                                            (_tl1893219031_
                                                             (##cdr _e1893019026_)))
                                                        (if (gx#stx-pair?
                                                             _hd1893119029_)
                                                            (let ((_e1893319034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1893119029_)))
                      (let ((_hd1893419037_ (##car _e1893319034_))
                            (_tl1893519039_ (##cdr _e1893319034_)))
                        (if (gx#stx-null? _tl1893519039_)
                            (if (gx#stx-pair? _tl1893219031_)
                                (let ((_e1893619042_
                                       (gx#stx-e _tl1893219031_)))
                                  (let ((_hd1893719045_ (##car _e1893619042_))
                                        (_tl1893819047_ (##cdr _e1893619042_)))
                                    (if (gx#stx-null? _tl1893819047_)
                                        (if (gx#stx-null? _tl1892919023_)
                                            (if (gx#stx-pair? _tl1892619015_)
                                                (let ((_e1893919050_
                                                       (gx#stx-e
                                                        _tl1892619015_)))
                                                  (let ((_hd1894019053_
                                                         (##car _e1893919050_))
                                                        (_tl1894119055_
                                                         (##cdr _e1893919050_)))
                                                    (if (gx#stx-null?
                                                         _tl1894119055_)
                                                        (if (gx#stx-null?
                                                             _tl1892018999_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1891118975_)
                        (if (gx#stx-pair? _tl1890818967_)
                            (let ((_e1894219058_ (gx#stx-e _tl1890818967_)))
                              (let ((_hd1894319061_ (##car _e1894219058_))
                                    (_tl1894419063_ (##cdr _e1894219058_)))
                                (if (gx#stx-null? _tl1894419063_)
                                    ((lambda (_L19066_
                                              _L19067_
                                              _L19068_
                                              _L19069_
                                              _L19070_)
                                       (let* ((_get-kws-id19110_
                                               (make-symbol
                                                (gx#stx-e _L18882_)
                                                (gensym '__)))
                                              (_get-kws-id19112_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id19110_
                                                (gx#stx-source _stx18595_)))
                                              (_main-id19114_
                                               (make-symbol
                                                (gx#stx-e _L18882_)
                                                (gensym '__)))
                                              (_main-id19116_
                                               (gx#core-quote-syntax__1
                                                _main-id19114_
                                                (gx#stx-source _stx18595_)))
                                              (_g30092_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id19112_))
                                              (_g30093_
                                               (gx#core-bind-runtime!__0
                                                _main-id19116_))
                                              (_new-kw-dispatch19120_
                                               (gxc#apply-expression-subst
                                                _L19066_
                                                _L19070_
                                                _get-kws-id19112_))
                                              (_new-get-kws19122_
                                               (gxc#apply-expression-subst
                                                _L19067_
                                                _L19069_
                                                _main-id19116_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L18882_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id19112_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id19116_))
                                           (_lp18735_
                                            (cons (_bind-e__2745027451_
                                                   _main-id19116_
                                                   _L19068_
                                                   '#f)
                                                  (cons (_bind-e__2745027451_
                                                         _get-kws-id19112_
                                                         _new-get-kws19122_
                                                         '#f)
                                                        (cons (_bind-e__2745027451_
                                                               _L18882_
                                                               _new-kw-dispatch19120_
                                                               '#f)
                                                              _rest18758_)))
                                            _bind18738_))))
                                     _hd1894319061_
                                     _hd1894019053_
                                     _hd1893719045_
                                     _hd1893419037_
                                     _hd1891618989_)
                                    (_g1889618949_ _g1889718952_))))
                            (_g1889618949_ _g1889718952_))
                        (_g1889618949_ _g1889718952_))
                    (_g1889618949_ _g1889718952_))
                (_g1889618949_ _g1889718952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1889618949_ _g1889718952_))
                                            (_g1889618949_ _g1889718952_))
                                        (_g1889618949_ _g1889718952_))))
                                (_g1889618949_ _g1889718952_))
                            (_g1889618949_ _g1889718952_))))
                    (_g1889618949_ _g1889718952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1889618949_
                                                     _g1889718952_))))
                                            (_g1889618949_ _g1889718952_))))
                                    (_g1889618949_ _g1889718952_))))
                            (_g1889618949_ _g1889718952_))))
                    (_g1889618949_ _g1889718952_))
                (_g1889618949_ _g1889718952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1889618949_
                                                 _g1889718952_))))
                                        (_g1889618949_ _g1889718952_))))
                                (_g1889618949_ _g1889718952_))))
                        (_g1889618949_ _g1889718952_))))
                (_g1889618949_ _g1889718952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1889519125_ _L18881_))))
                                       (___kont2990929910_
                                        (lambda (_L18832_ _L18833_)
                                          (_lp18735_
                                           _rest18758_
                                           (cons (cons _L18833_
                                                       (cons (gxc#compile-e
                                                              _L18832_)
                                                             '()))
                                                 _bind18738_)))))
                                   (let* ((___match2997629977_
                                           (lambda (_e1879018857_
                                                    _hd1879118860_
                                                    _tl1879218862_
                                                    _e1879318865_
                                                    _hd1879418868_
                                                    _tl1879518870_
                                                    _e1879618873_
                                                    _hd1879718876_
                                                    _tl1879818878_)
                                             (let ((_L18881_ _hd1879718876_)
                                                   (_L18882_ _hd1879418868_))
                                               (if (if (gx#identifier?
                                                        _L18882_)
                                                       (gxc#kw-lambda-expr?
                                                        _L18881_)
                                                       '#f)
                                                   (___kont2990729908_
                                                    _L18881_
                                                    _L18882_)
                                                   (___kont2990929910_
                                                    _hd1879718876_
                                                    _hd1879118860_)))))
                                          (___match2995429955_
                                           (lambda (_e1877919133_
                                                    _hd1878019136_
                                                    _tl1878119138_
                                                    _e1878219141_
                                                    _hd1878319144_
                                                    _tl1878419146_
                                                    _e1878519149_
                                                    _hd1878619152_
                                                    _tl1878719154_)
                                             (let ((_L19157_ _hd1878619152_)
                                                   (_L19158_ _hd1878319144_))
                                               (if (if (gx#identifier?
                                                        _L19158_)
                                                       (gxc#opt-lambda-expr?
                                                        _L19157_)
                                                       '#f)
                                                   (___kont2990529906_
                                                    _L19157_
                                                    _L19158_)
                                                   (___match2997629977_
                                                    _e1877919133_
                                                    _hd1878019136_
                                                    _tl1878119138_
                                                    _e1878219141_
                                                    _hd1878319144_
                                                    _tl1878419146_
                                                    _e1878519149_
                                                    _hd1878619152_
                                                    _tl1878719154_)))))
                                          (___match2993229933_
                                           (lambda (_e1876819305_
                                                    _hd1876919308_
                                                    _tl1877019310_
                                                    _e1877119313_
                                                    _hd1877219316_
                                                    _tl1877319318_
                                                    _e1877419321_
                                                    _hd1877519324_
                                                    _tl1877619326_)
                                             (let ((_L19329_ _hd1877519324_)
                                                   (_L19330_ _hd1877219316_))
                                               (if (if (gx#identifier?
                                                        _L19330_)
                                                       (gxc#case-lambda-expr?
                                                        _L19329_)
                                                       '#f)
                                                   (___kont2990329904_
                                                    _L19329_
                                                    _L19330_)
                                                   (___match2995429955_
                                                    _e1876819305_
                                                    _hd1876919308_
                                                    _tl1877019310_
                                                    _e1877119313_
                                                    _hd1877219316_
                                                    _tl1877319318_
                                                    _e1877419321_
                                                    _hd1877519324_
                                                    _tl1877619326_))))))
                                     (if (gx#stx-pair? ___stx2990129902_)
                                         (let ((_e1876819305_
                                                (gx#stx-e ___stx2990129902_)))
                                           (let ((_tl1877019310_
                                                  (##cdr _e1876819305_))
                                                 (_hd1876919308_
                                                  (##car _e1876819305_)))
                                             (if (gx#stx-pair? _hd1876919308_)
                                                 (let ((_e1877119313_
                                                        (gx#stx-e
                                                         _hd1876919308_)))
                                                   (let ((_tl1877319318_
                                                          (##cdr _e1877119313_))
                                                         (_hd1877219316_
                                                          (##car _e1877119313_)))
                                                     (if (gx#stx-null?
                                                          _tl1877319318_)
                                                         (if (gx#stx-pair?
                                                              _tl1877019310_)
                                                             (let ((_e1877419321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1877019310_)))
                       (let ((_tl1877619326_ (##cdr _e1877419321_))
                             (_hd1877519324_ (##car _e1877419321_)))
                         (if (gx#stx-null? _tl1877619326_)
                             (___match2993229933_
                              _e1876819305_
                              _hd1876919308_
                              _tl1877019310_
                              _e1877119313_
                              _hd1877219316_
                              _tl1877319318_
                              _e1877419321_
                              _hd1877519324_
                              _tl1877619326_)
                             (_g1876418811_))))
                     (_g1876418811_))
                 (if (gx#stx-pair? _tl1877019310_)
                     (let ((_e1880418824_ (gx#stx-e _tl1877019310_)))
                       (let ((_tl1880618829_ (##cdr _e1880418824_))
                             (_hd1880518827_ (##car _e1880418824_)))
                         (if (gx#stx-null? _tl1880618829_)
                             (___kont2990929910_ _hd1880518827_ _hd1876919308_)
                             (_g1876418811_))))
                     (_g1876418811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1877019310_)
                                                     (let ((_e1880418824_
                                                            (gx#stx-e
                                                             _tl1877019310_)))
                                                       (let ((_tl1880618829_
                                                              (##cdr _e1880418824_))
                                                             (_hd1880518827_
                                                              (##car _e1880418824_)))
                                                         (if (gx#stx-null?
                                                              _tl1880618829_)
                                                             (___kont2990929910_
                                                              _hd1880518827_
                                                              _hd1876919308_)
                                                             (_g1876418811_))))
                                                     (_g1876418811_)))))
                                         (_g1876418811_))))))))
                       (if (##pair? _rest1873918747_)
                           (let ((_hd1874419425_ (##car _rest1873918747_))
                                 (_tl1874519427_ (##cdr _rest1873918747_)))
                             (let* ((_hd19430_ _hd1874419425_)
                                    (_rest19432_ _tl1874519427_))
                               (_K1874319422_ _rest19432_ _hd19430_)))
                           (_else1874118755_)))))))
        (let* ((___stx2999329994_ _stx18595_)
               (_g1860118628_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2999329994_))))
          (let ((___kont2999529996_
                 (lambda (_L18688_ _L18689_ _L18690_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd18727_
                             (_compile-bindings18598_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1871918722_ _g1872018724_)
                                          (cons _g1871918722_ _g1872018724_))
                                        '()
                                        _L18689_))))
                            (_body18728_ (gxc#compile-e _L18688_)))
                        (gxc#xform-wrap-source
                         (cons _L18690_
                               (cons _hd18727_ (cons _body18728_ '())))
                         _stx18595_)))
                    gx#current-expander-context
                    (let ((__obj30059 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj30059)
                        __obj30059)))))
                (___kont2999930000_
                 (lambda () (gxc#xform-let-values% _stx18595_))))
            (let ((___match3002030021_
                   (lambda (_e1860618640_
                            _hd1860718643_
                            _tl1860818645_
                            _e1860918648_
                            _hd1861018651_
                            _tl1861118653_
                            ___splice2999729998_
                            _target1861218656_
                            _tl1861418658_)
                     (letrec ((_loop1861518661_
                               (lambda (_hd1861318664_ _bind1861918666_)
                                 (if (gx#stx-pair? _hd1861318664_)
                                     (let ((_e1861618669_
                                            (gx#stx-e _hd1861318664_)))
                                       (let ((_lp-tl1861818674_
                                              (##cdr _e1861618669_))
                                             (_lp-hd1861718672_
                                              (##car _e1861618669_)))
                                         (_loop1861518661_
                                          _lp-tl1861818674_
                                          (cons _lp-hd1861718672_
                                                _bind1861918666_))))
                                     (let ((_bind1862018677_
                                            (reverse _bind1861918666_)))
                                       (if (gx#stx-pair? _tl1861118653_)
                                           (let ((_e1862118680_
                                                  (gx#stx-e _tl1861118653_)))
                                             (let ((_tl1862318685_
                                                    (##cdr _e1862118680_))
                                                   (_hd1862218683_
                                                    (##car _e1862118680_)))
                                               (if (gx#stx-null?
                                                    _tl1862318685_)
                                                   (let ((_L18688_
                                                          _hd1862218683_)
                                                         (_L18689_
                                                          _bind1862018677_)
                                                         (_L18690_
                                                          _hd1860718643_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1871118714_ _g1871218716_)
                                     (cons _g1871118714_ _g1871218716_))
                                   '()
                                   _L18689_)))
                 (___kont2999529996_ _L18688_ _L18689_ _L18690_)
                 (___kont2999930000_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2999930000_))))
                                           (___kont2999930000_)))))))
                       (_loop1861518661_ _target1861218656_ '())))))
              (if (gx#stx-pair? ___stx2999329994_)
                  (let ((_e1860618640_ (gx#stx-e ___stx2999329994_)))
                    (let ((_tl1860818645_ (##cdr _e1860618640_))
                          (_hd1860718643_ (##car _e1860618640_)))
                      (if (gx#stx-pair? _tl1860818645_)
                          (let ((_e1860918648_ (gx#stx-e _tl1860818645_)))
                            (let ((_tl1861118653_ (##cdr _e1860918648_))
                                  (_hd1861018651_ (##car _e1860918648_)))
                              (if (gx#stx-pair/null? _hd1861018651_)
                                  (let ((___splice2999729998_
                                         (gx#syntax-split-splice
                                          _hd1861018651_
                                          '0)))
                                    (let ((_tl1861418658_
                                           (##vector-ref
                                            ___splice2999729998_
                                            '1))
                                          (_target1861218656_
                                           (##vector-ref
                                            ___splice2999729998_
                                            '0)))
                                      (if (gx#stx-null? _tl1861418658_)
                                          (___match3002030021_
                                           _e1860618640_
                                           _hd1860718643_
                                           _tl1860818645_
                                           _e1860918648_
                                           _hd1861018651_
                                           _tl1861118653_
                                           ___splice2999729998_
                                           _target1861218656_
                                           _tl1861418658_)
                                          (___kont2999930000_))))
                                  (___kont2999930000_))))
                          (___kont2999930000_))))
                  (___kont2999930000_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind18513_)
      (let* ((___stx3002330024_ _bind18513_)
             (_g1851618533_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx3002330024_))))
        (let ((___kont3002530026_
               (lambda (_L18569_ _L18570_)
                 (if (gx#identifier? _L18570_)
                     (let ((_$e18586_ (gxc#case-lambda-expr? _L18569_)))
                       (if _$e18586_
                           _$e18586_
                           (let ((_$e18589_ (gxc#opt-lambda-expr? _L18569_)))
                             (if _$e18589_
                                 _$e18589_
                                 (gxc#kw-lambda-expr? _L18569_)))))
                     '#f)))
              (___kont3002730028_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx3002330024_)
              (let ((_e1852018545_ (gx#stx-e ___stx3002330024_)))
                (let ((_tl1852218550_ (##cdr _e1852018545_))
                      (_hd1852118548_ (##car _e1852018545_)))
                  (if (gx#stx-pair? _hd1852118548_)
                      (let ((_e1852318553_ (gx#stx-e _hd1852118548_)))
                        (let ((_tl1852518558_ (##cdr _e1852318553_))
                              (_hd1852418556_ (##car _e1852318553_)))
                          (if (gx#stx-null? _tl1852518558_)
                              (if (gx#stx-pair? _tl1852218550_)
                                  (let ((_e1852618561_
                                         (gx#stx-e _tl1852218550_)))
                                    (let ((_tl1852818566_
                                           (##cdr _e1852618561_))
                                          (_hd1852718564_
                                           (##car _e1852618561_)))
                                      (if (gx#stx-null? _tl1852818566_)
                                          (___kont3002530026_
                                           _hd1852718564_
                                           _hd1852418556_)
                                          (___kont3002730028_))))
                                  (___kont3002730028_))
                              (___kont3002730028_))))
                      (___kont3002730028_))))
              (___kont3002730028_)))))))
