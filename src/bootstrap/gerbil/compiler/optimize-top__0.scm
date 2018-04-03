(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (##make-promise
     (lambda ()
       (let ((_tbl26083_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26083_ (force gxc#&void))
           (table-set! _tbl26083_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26083_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl26083_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26083_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl26083_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26083_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26083_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26083_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl26083_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl26083_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl26083_ '%#call gxc#collect-type-call%)
           (table-set! _tbl26083_ '%#if gxc#collect-operands)
           (table-set! _tbl26083_ '%#set! gxc#collect-body-setq%)
           _tbl26083_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx26076_ . _args26078_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26076_ _args26078_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (##make-promise
     (lambda ()
       (let ((_tbl26073_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26073_ (force gxc#&false))
           (table-set! _tbl26073_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl26073_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl26073_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl26073_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set!
            _tbl26073_
            '%#let-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl26073_
            '%#letrec-values
            gxc#basic-expression-type-let-values%)
           (table-set!
            _tbl26073_
            '%#letrec*-values
            gxc#basic-expression-type-let-values%)
           (table-set! _tbl26073_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl26073_ '%#ref gxc#basic-expression-type-ref%)
           _tbl26073_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx26066_ . _args26068_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26066_ _args26068_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (##make-promise
     (lambda ()
       (let ((_tbl26063_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26063_ (force gxc#&basic-xform))
           (table-set!
            _tbl26063_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl26063_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl26063_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl26063_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl26063_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx26056_ . _args26058_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26056_ _args26058_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx25912_)
      (let* ((___stx2609626097_ _stx25912_)
             (_g2591525946_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2609626097_))))
        (let ((___kont2609826099_
               (lambda (_L26028_ _L26029_)
                 (let ((_sym26045_ (gxc#identifier-symbol _L26029_)))
                   (begin
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym26045_
                          '#f)
                         (gxc#verbose
                          '"skipping type declaration for mutable binding "
                          _sym26045_)
                         (let ((_type2604626048_
                                (gxc#apply-basic-expression-type _L26028_)))
                           (if _type2604626048_
                               (let ((_type26051_ _type2604626048_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym26045_
                                  _type26051_))
                               '#f)))
                     (gxc#compile-e _L26028_)))))
              (___kont2610026101_
               (lambda (_L25975_ _L25976_) (gxc#compile-e _L25975_))))
          (let ((___match2612926130_
                 (lambda (_e2591925996_
                          _hd2592025999_
                          _tl2592126001_
                          _e2592226004_
                          _hd2592326007_
                          _tl2592426009_
                          _e2592526012_
                          _hd2592626015_
                          _tl2592726017_
                          _e2592826020_
                          _hd2592926023_
                          _tl2593026025_)
                   (let ((_L26028_ _hd2592926023_) (_L26029_ _hd2592626015_))
                     (if (gx#identifier? _L26029_)
                         (___kont2609826099_ _L26028_ _L26029_)
                         (___kont2610026101_
                          _hd2592926023_
                          _hd2592326007_))))))
            (if (gx#stx-pair? ___stx2609626097_)
                (let ((_e2591925996_ (gx#stx-e ___stx2609626097_)))
                  (let ((_tl2592126001_ (##cdr _e2591925996_))
                        (_hd2592025999_ (##car _e2591925996_)))
                    (if (gx#stx-pair? _tl2592126001_)
                        (let ((_e2592226004_ (gx#stx-e _tl2592126001_)))
                          (let ((_tl2592426009_ (##cdr _e2592226004_))
                                (_hd2592326007_ (##car _e2592226004_)))
                            (if (gx#stx-pair? _hd2592326007_)
                                (let ((_e2592526012_
                                       (gx#stx-e _hd2592326007_)))
                                  (let ((_tl2592726017_ (##cdr _e2592526012_))
                                        (_hd2592626015_ (##car _e2592526012_)))
                                    (if (gx#stx-null? _tl2592726017_)
                                        (if (gx#stx-pair? _tl2592426009_)
                                            (let ((_e2592826020_
                                                   (gx#stx-e _tl2592426009_)))
                                              (let ((_tl2593026025_
                                                     (##cdr _e2592826020_))
                                                    (_hd2592926023_
                                                     (##car _e2592826020_)))
                                                (if (gx#stx-null?
                                                     _tl2593026025_)
                                                    (___match2612926130_
                                                     _e2591925996_
                                                     _hd2592025999_
                                                     _tl2592126001_
                                                     _e2592226004_
                                                     _hd2592326007_
                                                     _tl2592426009_
                                                     _e2592526012_
                                                     _hd2592626015_
                                                     _tl2592726017_
                                                     _e2592826020_
                                                     _hd2592926023_
                                                     _tl2593026025_)
                                                    (_g2591525946_))))
                                            (_g2591525946_))
                                        (if (gx#stx-pair? _tl2592426009_)
                                            (let ((_e2593925967_
                                                   (gx#stx-e _tl2592426009_)))
                                              (let ((_tl2594125972_
                                                     (##cdr _e2593925967_))
                                                    (_hd2594025970_
                                                     (##car _e2593925967_)))
                                                (if (gx#stx-null?
                                                     _tl2594125972_)
                                                    (___kont2610026101_
                                                     _hd2594025970_
                                                     _hd2592326007_)
                                                    (_g2591525946_))))
                                            (_g2591525946_)))))
                                (if (gx#stx-pair? _tl2592426009_)
                                    (let ((_e2593925967_
                                           (gx#stx-e _tl2592426009_)))
                                      (let ((_tl2594125972_
                                             (##cdr _e2593925967_))
                                            (_hd2594025970_
                                             (##car _e2593925967_)))
                                        (if (gx#stx-null? _tl2594125972_)
                                            (___kont2610026101_
                                             _hd2594025970_
                                             _hd2592326007_)
                                            (_g2591525946_))))
                                    (_g2591525946_)))))
                        (_g2591525946_))))
                (_g2591525946_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx25697_)
      (letrec ((_collect-e25699_
                (lambda (_hd25856_ _expr25857_)
                  (let* ((___stx2615226153_ _hd25856_)
                         (_g2586025870_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2615226153_))))
                    (let ((___kont2615426155_
                           (lambda (_L25890_)
                             (let ((_sym25901_
                                    (gxc#identifier-symbol _L25890_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym25901_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym25901_)
                                   (let ((_type2590225904_
                                          (gxc#apply-basic-expression-type
                                           _expr25857_)))
                                     (if _type2590225904_
                                         (let ((_type25907_ _type2590225904_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym25901_
                                            _type25907_
                                            '#t))
                                         '#f))))))
                          (___kont2615626157_ (lambda () '#!void)))
                      (let ((___match2616526166_
                             (lambda (_e2586325882_
                                      _hd2586425885_
                                      _tl2586525887_)
                               (let ((_L25890_ _hd2586425885_))
                                 (if (gx#identifier? _L25890_)
                                     (___kont2615426155_ _L25890_)
                                     (___kont2615626157_))))))
                        (if (gx#stx-pair? ___stx2615226153_)
                            (let ((_e2586325882_ (gx#stx-e ___stx2615226153_)))
                              (let ((_tl2586525887_ (##cdr _e2586325882_))
                                    (_hd2586425885_ (##car _e2586325882_)))
                                (if (gx#stx-null? _tl2586525887_)
                                    (___match2616526166_
                                     _e2586325882_
                                     _hd2586425885_
                                     _tl2586525887_)
                                    (___kont2615626157_))))
                            (___kont2615626157_))))))))
        (let* ((_g2570125736_
                (lambda (_g2570225733_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2570225733_)))
               (_g2570025853_
                (lambda (_g2570225739_)
                  (if (gx#stx-pair? _g2570225739_)
                      (let ((_e2570625741_ (gx#stx-e _g2570225739_)))
                        (let ((_hd2570725744_ (##car _e2570625741_))
                              (_tl2570825746_ (##cdr _e2570625741_)))
                          (if (gx#stx-pair? _tl2570825746_)
                              (let ((_e2570925749_ (gx#stx-e _tl2570825746_)))
                                (let ((_hd2571025752_ (##car _e2570925749_))
                                      (_tl2571125754_ (##cdr _e2570925749_)))
                                  (if (gx#stx-pair/null? _hd2571025752_)
                                      (let ((_g28701_
                                             (gx#syntax-split-splice
                                              _hd2571025752_
                                              '0)))
                                        (begin
                                          (let ((_g28702_
                                                 (if (##values? _g28701_)
                                                     (##vector-length _g28701_)
                                                     1)))
                                            (if (not (##fx= _g28702_ 2))
                                                (error "Context expects 2 values"
                                                       _g28702_)))
                                          (let ((_target2571225757_
                                                 (##vector-ref _g28701_ 0))
                                                (_tl2571425759_
                                                 (##vector-ref _g28701_ 1)))
                                            (if (gx#stx-null? _tl2571425759_)
                                                (letrec ((_loop2571525762_
                                                          (lambda (_hd2571325765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2571925767_
                           _hd2572025769_)
                    (if (gx#stx-pair? _hd2571325765_)
                        (let ((_e2571625772_ (gx#stx-e _hd2571325765_)))
                          (let ((_lp-hd2571725775_ (##car _e2571625772_))
                                (_lp-tl2571825777_ (##cdr _e2571625772_)))
                            (if (gx#stx-pair? _lp-hd2571725775_)
                                (let ((_e2572325780_
                                       (gx#stx-e _lp-hd2571725775_)))
                                  (let ((_hd2572425783_ (##car _e2572325780_))
                                        (_tl2572525785_ (##cdr _e2572325780_)))
                                    (if (gx#stx-pair? _tl2572525785_)
                                        (let ((_e2572625788_
                                               (gx#stx-e _tl2572525785_)))
                                          (let ((_hd2572725791_
                                                 (##car _e2572625788_))
                                                (_tl2572825793_
                                                 (##cdr _e2572625788_)))
                                            (if (gx#stx-null? _tl2572825793_)
                                                (_loop2571525762_
                                                 _lp-tl2571825777_
                                                 (cons _hd2572725791_
                                                       _expr2571925767_)
                                                 (cons _hd2572425783_
                                                       _hd2572025769_))
                                                (_g2570125736_
                                                 _g2570225739_))))
                                        (_g2570125736_ _g2570225739_))))
                                (_g2570125736_ _g2570225739_))))
                        (let ((_expr2572125796_ (reverse _expr2571925767_))
                              (_hd2572225798_ (reverse _hd2572025769_)))
                          (if (gx#stx-pair? _tl2571125754_)
                              (let ((_e2572925801_ (gx#stx-e _tl2571125754_)))
                                (let ((_hd2573025804_ (##car _e2572925801_))
                                      (_tl2573125806_ (##cdr _e2572925801_)))
                                  (if (gx#stx-null? _tl2573125806_)
                                      ((lambda (_L25809_ _L25810_ _L25811_)
                                         (begin
                                           (for-each
                                            _collect-e25699_
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2583125834_
                                                               _g2583225836_)
                                                        (cons _g2583125834_
                                                              _g2583225836_))
                                                      '()
                                                      _L25811_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2583825841_
                                                               _g2583925843_)
                                                        (cons _g2583825841_
                                                              _g2583925843_))
                                                      '()
                                                      _L25810_)))
                                           (for-each
                                            gxc#compile-e
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2584525848_
                                                               _g2584625850_)
                                                        (cons _g2584525848_
                                                              _g2584625850_))
                                                      '()
                                                      _L25810_)))
                                           (gxc#compile-e _L25809_)))
                                       _hd2573025804_
                                       _expr2572125796_
                                       _hd2572225798_)
                                      (_g2570125736_ _g2570225739_))))
                              (_g2570125736_ _g2570225739_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2571525762_
                                                   _target2571225757_
                                                   '()
                                                   '()))
                                                (_g2570125736_
                                                 _g2570225739_)))))
                                      (_g2570125736_ _g2570225739_))))
                              (_g2570125736_ _g2570225739_))))
                      (_g2570125736_ _g2570225739_)))))
          (_g2570025853_ _stx25697_)))))
  (define gxc#collect-type-call%
    (lambda (_stx25189_)
      (let* ((___stx2616826169_ _stx25189_)
             (_g2519325308_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2616826169_))))
        (let ((___kont2617026171_
               (lambda (_L25647_ _L25648_ _L25649_ _L25650_ _L25651_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25650_)
                  (gx#stx-e _L25649_)
                  (gxc#identifier-symbol _L25648_)
                  (gx#stx-e _L25647_))))
              (___kont2617226173_
               (lambda (_L25475_ _L25476_ _L25477_ _L25478_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25477_)
                  (gx#stx-e _L25476_)
                  (gxc#identifier-symbol _L25475_)
                  '#f)))
              (___kont2617426175_
               (lambda (_L25345_)
                 (for-each
                  gxc#compile-e
                  (begin
                    '#!void
                    (foldr1 (lambda (_g2535825361_ _g2535925363_)
                              (cons _g2535825361_ _g2535925363_))
                            '()
                            _L25345_))))))
          (let* ((___match2642526426_
                  (lambda (_e2529225313_
                           _hd2529325316_
                           _tl2529425318_
                           ___splice2617626177_
                           _target2529525321_
                           _tl2529725323_)
                    (letrec ((_loop2529825326_
                              (lambda (_hd2529625329_ _expr2530225331_)
                                (if (gx#stx-pair? _hd2529625329_)
                                    (let ((_e2529925334_
                                           (gx#stx-e _hd2529625329_)))
                                      (let ((_lp-tl2530125339_
                                             (##cdr _e2529925334_))
                                            (_lp-hd2530025337_
                                             (##car _e2529925334_)))
                                        (_loop2529825326_
                                         _lp-tl2530125339_
                                         (cons _lp-hd2530025337_
                                               _expr2530225331_))))
                                    (let ((_expr2530325342_
                                           (reverse _expr2530225331_)))
                                      (___kont2617426175_
                                       _expr2530325342_))))))
                      (_loop2529825326_ _target2529525321_ '()))))
                 (___match2630526306_
                  (lambda (_e2520025519_
                           _hd2520125522_
                           _tl2520225524_
                           _e2520325527_
                           _hd2520425530_
                           _tl2520525532_
                           _e2520625535_
                           _hd2520725538_
                           _tl2520825540_
                           _e2520925543_
                           _hd2521025546_
                           _tl2521125548_
                           _e2521225551_
                           _hd2521325554_
                           _tl2521425556_
                           _e2521525559_
                           _hd2521625562_
                           _tl2521725564_
                           _e2521825567_
                           _hd2521925570_
                           _tl2522025572_
                           _e2522125575_
                           _hd2522225578_
                           _tl2522325580_
                           _e2522425583_
                           _hd2522525586_
                           _tl2522625588_
                           _e2522725591_
                           _hd2522825594_
                           _tl2522925596_
                           _e2523025599_
                           _hd2523125602_
                           _tl2523225604_
                           _e2523325607_
                           _hd2523425610_
                           _tl2523525612_
                           _e2523625615_
                           _hd2523725618_
                           _tl2523825620_
                           _e2523925623_
                           _hd2524025626_
                           _tl2524125628_
                           _e2524225631_
                           _hd2524325634_
                           _tl2524425636_
                           _e2524525639_
                           _hd2524625642_
                           _tl2524725644_)
                    (let ((_L25647_ _hd2524625642_)
                          (_L25648_ _hd2523725618_)
                          (_L25649_ _hd2522825594_)
                          (_L25650_ _hd2521925570_)
                          (_L25651_ _hd2521025546_))
                      (if (gxc#runtime-identifier=? _L25651_ 'bind-method!)
                          (___kont2617026171_
                           _L25647_
                           _L25648_
                           _L25649_
                           _L25650_
                           _L25651_)
                          (if (gx#stx-pair/null? _tl2520225524_)
                              (let ((___splice2617626177_
                                     (gx#syntax-split-splice
                                      _tl2520225524_
                                      '0)))
                                (let ((_tl2529725323_
                                       (##vector-ref ___splice2617626177_ '1))
                                      (_target2529525321_
                                       (##vector-ref ___splice2617626177_ '0)))
                                  (if (gx#stx-null? _tl2529725323_)
                                      (___match2642526426_
                                       _e2520025519_
                                       _hd2520125522_
                                       _tl2520225524_
                                       ___splice2617626177_
                                       _target2529525321_
                                       _tl2529725323_)
                                      (_g2519325308_))))
                              (_g2519325308_)))))))
            (if (gx#stx-pair? ___stx2616826169_)
                (let ((_e2520025519_ (gx#stx-e ___stx2616826169_)))
                  (let ((_tl2520225524_ (##cdr _e2520025519_))
                        (_hd2520125522_ (##car _e2520025519_)))
                    (if (gx#stx-pair? _tl2520225524_)
                        (let ((_e2520325527_ (gx#stx-e _tl2520225524_)))
                          (let ((_tl2520525532_ (##cdr _e2520325527_))
                                (_hd2520425530_ (##car _e2520325527_)))
                            (if (gx#stx-pair? _hd2520425530_)
                                (let ((_e2520625535_
                                       (gx#stx-e _hd2520425530_)))
                                  (let ((_tl2520825540_ (##cdr _e2520625535_))
                                        (_hd2520725538_ (##car _e2520625535_)))
                                    (if (gx#identifier? _hd2520725538_)
                                        (if (gx#stx-eq? '%#ref _hd2520725538_)
                                            (if (gx#stx-pair? _tl2520825540_)
                                                (let ((_e2520925543_
                                                       (gx#stx-e
                                                        _tl2520825540_)))
                                                  (let ((_tl2521125548_
                                                         (##cdr _e2520925543_))
                                                        (_hd2521025546_
                                                         (##car _e2520925543_)))
                                                    (if (gx#stx-null?
                                                         _tl2521125548_)
                                                        (if (gx#stx-pair?
                                                             _tl2520525532_)
                                                            (let ((_e2521225551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2520525532_)))
                      (let ((_tl2521425556_ (##cdr _e2521225551_))
                            (_hd2521325554_ (##car _e2521225551_)))
                        (if (gx#stx-pair? _hd2521325554_)
                            (let ((_e2521525559_ (gx#stx-e _hd2521325554_)))
                              (let ((_tl2521725564_ (##cdr _e2521525559_))
                                    (_hd2521625562_ (##car _e2521525559_)))
                                (if (gx#identifier? _hd2521625562_)
                                    (if (gx#stx-eq? '%#ref _hd2521625562_)
                                        (if (gx#stx-pair? _tl2521725564_)
                                            (let ((_e2521825567_
                                                   (gx#stx-e _tl2521725564_)))
                                              (let ((_tl2522025572_
                                                     (##cdr _e2521825567_))
                                                    (_hd2521925570_
                                                     (##car _e2521825567_)))
                                                (if (gx#stx-null?
                                                     _tl2522025572_)
                                                    (if (gx#stx-pair?
                                                         _tl2521425556_)
                                                        (let ((_e2522125575_
                                                               (gx#stx-e
                                                                _tl2521425556_)))
                                                          (let ((_tl2522325580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2522125575_))
                        (_hd2522225578_ (##car _e2522125575_)))
                    (if (gx#stx-pair? _hd2522225578_)
                        (let ((_e2522425583_ (gx#stx-e _hd2522225578_)))
                          (let ((_tl2522625588_ (##cdr _e2522425583_))
                                (_hd2522525586_ (##car _e2522425583_)))
                            (if (gx#identifier? _hd2522525586_)
                                (if (gx#stx-eq? '%#quote _hd2522525586_)
                                    (if (gx#stx-pair? _tl2522625588_)
                                        (let ((_e2522725591_
                                               (gx#stx-e _tl2522625588_)))
                                          (let ((_tl2522925596_
                                                 (##cdr _e2522725591_))
                                                (_hd2522825594_
                                                 (##car _e2522725591_)))
                                            (if (gx#stx-null? _tl2522925596_)
                                                (if (gx#stx-pair?
                                                     _tl2522325580_)
                                                    (let ((_e2523025599_
                                                           (gx#stx-e
                                                            _tl2522325580_)))
                                                      (let ((_tl2523225604_
                                                             (##cdr _e2523025599_))
                                                            (_hd2523125602_
                                                             (##car _e2523025599_)))
                                                        (if (gx#stx-pair?
                                                             _hd2523125602_)
                                                            (let ((_e2523325607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2523125602_)))
                      (let ((_tl2523525612_ (##cdr _e2523325607_))
                            (_hd2523425610_ (##car _e2523325607_)))
                        (if (gx#identifier? _hd2523425610_)
                            (if (gx#stx-eq? '%#ref _hd2523425610_)
                                (if (gx#stx-pair? _tl2523525612_)
                                    (let ((_e2523625615_
                                           (gx#stx-e _tl2523525612_)))
                                      (let ((_tl2523825620_
                                             (##cdr _e2523625615_))
                                            (_hd2523725618_
                                             (##car _e2523625615_)))
                                        (if (gx#stx-null? _tl2523825620_)
                                            (if (gx#stx-pair? _tl2523225604_)
                                                (let ((_e2523925623_
                                                       (gx#stx-e
                                                        _tl2523225604_)))
                                                  (let ((_tl2524125628_
                                                         (##cdr _e2523925623_))
                                                        (_hd2524025626_
                                                         (##car _e2523925623_)))
                                                    (if (gx#stx-pair?
                                                         _hd2524025626_)
                                                        (let ((_e2524225631_
                                                               (gx#stx-e
                                                                _hd2524025626_)))
                                                          (let ((_tl2524425636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2524225631_))
                        (_hd2524325634_ (##car _e2524225631_)))
                    (if (gx#identifier? _hd2524325634_)
                        (if (gx#stx-eq? '%#quote _hd2524325634_)
                            (if (gx#stx-pair? _tl2524425636_)
                                (let ((_e2524525639_
                                       (gx#stx-e _tl2524425636_)))
                                  (let ((_tl2524725644_ (##cdr _e2524525639_))
                                        (_hd2524625642_ (##car _e2524525639_)))
                                    (if (gx#stx-null? _tl2524725644_)
                                        (if (gx#stx-null? _tl2524125628_)
                                            (___match2630526306_
                                             _e2520025519_
                                             _hd2520125522_
                                             _tl2520225524_
                                             _e2520325527_
                                             _hd2520425530_
                                             _tl2520525532_
                                             _e2520625535_
                                             _hd2520725538_
                                             _tl2520825540_
                                             _e2520925543_
                                             _hd2521025546_
                                             _tl2521125548_
                                             _e2521225551_
                                             _hd2521325554_
                                             _tl2521425556_
                                             _e2521525559_
                                             _hd2521625562_
                                             _tl2521725564_
                                             _e2521825567_
                                             _hd2521925570_
                                             _tl2522025572_
                                             _e2522125575_
                                             _hd2522225578_
                                             _tl2522325580_
                                             _e2522425583_
                                             _hd2522525586_
                                             _tl2522625588_
                                             _e2522725591_
                                             _hd2522825594_
                                             _tl2522925596_
                                             _e2523025599_
                                             _hd2523125602_
                                             _tl2523225604_
                                             _e2523325607_
                                             _hd2523425610_
                                             _tl2523525612_
                                             _e2523625615_
                                             _hd2523725618_
                                             _tl2523825620_
                                             _e2523925623_
                                             _hd2524025626_
                                             _tl2524125628_
                                             _e2524225631_
                                             _hd2524325634_
                                             _tl2524425636_
                                             _e2524525639_
                                             _hd2524625642_
                                             _tl2524725644_)
                                            (if (gx#stx-pair/null?
                                                 _tl2520225524_)
                                                (let ((___splice2617626177_
                                                       (gx#syntax-split-splice
                                                        _tl2520225524_
                                                        '0)))
                                                  (let ((_tl2529725323_
                                                         (##vector-ref
                                                          ___splice2617626177_
                                                          '1))
                                                        (_target2529525321_
                                                         (##vector-ref
                                                          ___splice2617626177_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2529725323_)
                                                        (___match2642526426_
                                                         _e2520025519_
                                                         _hd2520125522_
                                                         _tl2520225524_
                                                         ___splice2617626177_
                                                         _target2529525321_
                                                         _tl2529725323_)
                                                        (_g2519325308_))))
                                                (_g2519325308_)))
                                        (if (gx#stx-pair/null? _tl2520225524_)
                                            (let ((___splice2617626177_
                                                   (gx#syntax-split-splice
                                                    _tl2520225524_
                                                    '0)))
                                              (let ((_tl2529725323_
                                                     (##vector-ref
                                                      ___splice2617626177_
                                                      '1))
                                                    (_target2529525321_
                                                     (##vector-ref
                                                      ___splice2617626177_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2529725323_)
                                                    (___match2642526426_
                                                     _e2520025519_
                                                     _hd2520125522_
                                                     _tl2520225524_
                                                     ___splice2617626177_
                                                     _target2529525321_
                                                     _tl2529725323_)
                                                    (_g2519325308_))))
                                            (_g2519325308_)))))
                                (if (gx#stx-pair/null? _tl2520225524_)
                                    (let ((___splice2617626177_
                                           (gx#syntax-split-splice
                                            _tl2520225524_
                                            '0)))
                                      (let ((_tl2529725323_
                                             (##vector-ref
                                              ___splice2617626177_
                                              '1))
                                            (_target2529525321_
                                             (##vector-ref
                                              ___splice2617626177_
                                              '0)))
                                        (if (gx#stx-null? _tl2529725323_)
                                            (___match2642526426_
                                             _e2520025519_
                                             _hd2520125522_
                                             _tl2520225524_
                                             ___splice2617626177_
                                             _target2529525321_
                                             _tl2529725323_)
                                            (_g2519325308_))))
                                    (_g2519325308_)))
                            (if (gx#stx-pair/null? _tl2520225524_)
                                (let ((___splice2617626177_
                                       (gx#syntax-split-splice
                                        _tl2520225524_
                                        '0)))
                                  (let ((_tl2529725323_
                                         (##vector-ref
                                          ___splice2617626177_
                                          '1))
                                        (_target2529525321_
                                         (##vector-ref
                                          ___splice2617626177_
                                          '0)))
                                    (if (gx#stx-null? _tl2529725323_)
                                        (___match2642526426_
                                         _e2520025519_
                                         _hd2520125522_
                                         _tl2520225524_
                                         ___splice2617626177_
                                         _target2529525321_
                                         _tl2529725323_)
                                        (_g2519325308_))))
                                (_g2519325308_)))
                        (if (gx#stx-pair/null? _tl2520225524_)
                            (let ((___splice2617626177_
                                   (gx#syntax-split-splice _tl2520225524_ '0)))
                              (let ((_tl2529725323_
                                     (##vector-ref ___splice2617626177_ '1))
                                    (_target2529525321_
                                     (##vector-ref ___splice2617626177_ '0)))
                                (if (gx#stx-null? _tl2529725323_)
                                    (___match2642526426_
                                     _e2520025519_
                                     _hd2520125522_
                                     _tl2520225524_
                                     ___splice2617626177_
                                     _target2529525321_
                                     _tl2529725323_)
                                    (_g2519325308_))))
                            (_g2519325308_)))))
                (if (gx#stx-pair/null? _tl2520225524_)
                    (let ((___splice2617626177_
                           (gx#syntax-split-splice _tl2520225524_ '0)))
                      (let ((_tl2529725323_
                             (##vector-ref ___splice2617626177_ '1))
                            (_target2529525321_
                             (##vector-ref ___splice2617626177_ '0)))
                        (if (gx#stx-null? _tl2529725323_)
                            (___match2642526426_
                             _e2520025519_
                             _hd2520125522_
                             _tl2520225524_
                             ___splice2617626177_
                             _target2529525321_
                             _tl2529725323_)
                            (_g2519325308_))))
                    (_g2519325308_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2523225604_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L25475_
                                                               _hd2523725618_)
                                                              (_L25476_
                                                               _hd2522825594_)
                                                              (_L25477_
                                                               _hd2521925570_)
                                                              (_L25478_
                                                               _hd2521025546_))
                                                          (___kont2617226173_
                                                           _L25475_
                                                           _L25476_
                                                           _L25477_
                                                           _L25478_))
                                                        (if (gx#stx-pair/null?
                                                             _tl2520225524_)
                                                            (let ((___splice2617626177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl2520225524_ '0)))
                      (let ((_tl2529725323_
                             (##vector-ref ___splice2617626177_ '1))
                            (_target2529525321_
                             (##vector-ref ___splice2617626177_ '0)))
                        (if (gx#stx-null? _tl2529725323_)
                            (___match2642526426_
                             _e2520025519_
                             _hd2520125522_
                             _tl2520225524_
                             ___splice2617626177_
                             _target2529525321_
                             _tl2529725323_)
                            (_g2519325308_))))
                    (_g2519325308_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2520225524_)
                                                        (let ((___splice2617626177_
                                                               (gx#syntax-split-splice
                                                                _tl2520225524_
                                                                '0)))
                                                          (let ((_tl2529725323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2617626177_ '1))
                        (_target2529525321_
                         (##vector-ref ___splice2617626177_ '0)))
                    (if (gx#stx-null? _tl2529725323_)
                        (___match2642526426_
                         _e2520025519_
                         _hd2520125522_
                         _tl2520225524_
                         ___splice2617626177_
                         _target2529525321_
                         _tl2529725323_)
                        (_g2519325308_))))
                (_g2519325308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2520225524_)
                                                (let ((___splice2617626177_
                                                       (gx#syntax-split-splice
                                                        _tl2520225524_
                                                        '0)))
                                                  (let ((_tl2529725323_
                                                         (##vector-ref
                                                          ___splice2617626177_
                                                          '1))
                                                        (_target2529525321_
                                                         (##vector-ref
                                                          ___splice2617626177_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2529725323_)
                                                        (___match2642526426_
                                                         _e2520025519_
                                                         _hd2520125522_
                                                         _tl2520225524_
                                                         ___splice2617626177_
                                                         _target2529525321_
                                                         _tl2529725323_)
                                                        (_g2519325308_))))
                                                (_g2519325308_)))))
                                    (if (gx#stx-pair/null? _tl2520225524_)
                                        (let ((___splice2617626177_
                                               (gx#syntax-split-splice
                                                _tl2520225524_
                                                '0)))
                                          (let ((_tl2529725323_
                                                 (##vector-ref
                                                  ___splice2617626177_
                                                  '1))
                                                (_target2529525321_
                                                 (##vector-ref
                                                  ___splice2617626177_
                                                  '0)))
                                            (if (gx#stx-null? _tl2529725323_)
                                                (___match2642526426_
                                                 _e2520025519_
                                                 _hd2520125522_
                                                 _tl2520225524_
                                                 ___splice2617626177_
                                                 _target2529525321_
                                                 _tl2529725323_)
                                                (_g2519325308_))))
                                        (_g2519325308_)))
                                (if (gx#stx-pair/null? _tl2520225524_)
                                    (let ((___splice2617626177_
                                           (gx#syntax-split-splice
                                            _tl2520225524_
                                            '0)))
                                      (let ((_tl2529725323_
                                             (##vector-ref
                                              ___splice2617626177_
                                              '1))
                                            (_target2529525321_
                                             (##vector-ref
                                              ___splice2617626177_
                                              '0)))
                                        (if (gx#stx-null? _tl2529725323_)
                                            (___match2642526426_
                                             _e2520025519_
                                             _hd2520125522_
                                             _tl2520225524_
                                             ___splice2617626177_
                                             _target2529525321_
                                             _tl2529725323_)
                                            (_g2519325308_))))
                                    (_g2519325308_)))
                            (if (gx#stx-pair/null? _tl2520225524_)
                                (let ((___splice2617626177_
                                       (gx#syntax-split-splice
                                        _tl2520225524_
                                        '0)))
                                  (let ((_tl2529725323_
                                         (##vector-ref
                                          ___splice2617626177_
                                          '1))
                                        (_target2529525321_
                                         (##vector-ref
                                          ___splice2617626177_
                                          '0)))
                                    (if (gx#stx-null? _tl2529725323_)
                                        (___match2642526426_
                                         _e2520025519_
                                         _hd2520125522_
                                         _tl2520225524_
                                         ___splice2617626177_
                                         _target2529525321_
                                         _tl2529725323_)
                                        (_g2519325308_))))
                                (_g2519325308_)))))
                    (if (gx#stx-pair/null? _tl2520225524_)
                        (let ((___splice2617626177_
                               (gx#syntax-split-splice _tl2520225524_ '0)))
                          (let ((_tl2529725323_
                                 (##vector-ref ___splice2617626177_ '1))
                                (_target2529525321_
                                 (##vector-ref ___splice2617626177_ '0)))
                            (if (gx#stx-null? _tl2529725323_)
                                (___match2642526426_
                                 _e2520025519_
                                 _hd2520125522_
                                 _tl2520225524_
                                 ___splice2617626177_
                                 _target2529525321_
                                 _tl2529725323_)
                                (_g2519325308_))))
                        (_g2519325308_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2520225524_)
                                                        (let ((___splice2617626177_
                                                               (gx#syntax-split-splice
                                                                _tl2520225524_
                                                                '0)))
                                                          (let ((_tl2529725323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2617626177_ '1))
                        (_target2529525321_
                         (##vector-ref ___splice2617626177_ '0)))
                    (if (gx#stx-null? _tl2529725323_)
                        (___match2642526426_
                         _e2520025519_
                         _hd2520125522_
                         _tl2520225524_
                         ___splice2617626177_
                         _target2529525321_
                         _tl2529725323_)
                        (_g2519325308_))))
                (_g2519325308_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2520225524_)
                                                    (let ((___splice2617626177_
                                                           (gx#syntax-split-splice
                                                            _tl2520225524_
                                                            '0)))
                                                      (let ((_tl2529725323_
                                                             (##vector-ref
                                                              ___splice2617626177_
                                                              '1))
                                                            (_target2529525321_
                                                             (##vector-ref
                                                              ___splice2617626177_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2529725323_)
                                                            (___match2642526426_
                                                             _e2520025519_
                                                             _hd2520125522_
                                                             _tl2520225524_
                                                             ___splice2617626177_
                                                             _target2529525321_
                                                             _tl2529725323_)
                                                            (_g2519325308_))))
                                                    (_g2519325308_)))))
                                        (if (gx#stx-pair/null? _tl2520225524_)
                                            (let ((___splice2617626177_
                                                   (gx#syntax-split-splice
                                                    _tl2520225524_
                                                    '0)))
                                              (let ((_tl2529725323_
                                                     (##vector-ref
                                                      ___splice2617626177_
                                                      '1))
                                                    (_target2529525321_
                                                     (##vector-ref
                                                      ___splice2617626177_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2529725323_)
                                                    (___match2642526426_
                                                     _e2520025519_
                                                     _hd2520125522_
                                                     _tl2520225524_
                                                     ___splice2617626177_
                                                     _target2529525321_
                                                     _tl2529725323_)
                                                    (_g2519325308_))))
                                            (_g2519325308_)))
                                    (if (gx#stx-pair/null? _tl2520225524_)
                                        (let ((___splice2617626177_
                                               (gx#syntax-split-splice
                                                _tl2520225524_
                                                '0)))
                                          (let ((_tl2529725323_
                                                 (##vector-ref
                                                  ___splice2617626177_
                                                  '1))
                                                (_target2529525321_
                                                 (##vector-ref
                                                  ___splice2617626177_
                                                  '0)))
                                            (if (gx#stx-null? _tl2529725323_)
                                                (___match2642526426_
                                                 _e2520025519_
                                                 _hd2520125522_
                                                 _tl2520225524_
                                                 ___splice2617626177_
                                                 _target2529525321_
                                                 _tl2529725323_)
                                                (_g2519325308_))))
                                        (_g2519325308_)))
                                (if (gx#stx-pair/null? _tl2520225524_)
                                    (let ((___splice2617626177_
                                           (gx#syntax-split-splice
                                            _tl2520225524_
                                            '0)))
                                      (let ((_tl2529725323_
                                             (##vector-ref
                                              ___splice2617626177_
                                              '1))
                                            (_target2529525321_
                                             (##vector-ref
                                              ___splice2617626177_
                                              '0)))
                                        (if (gx#stx-null? _tl2529725323_)
                                            (___match2642526426_
                                             _e2520025519_
                                             _hd2520125522_
                                             _tl2520225524_
                                             ___splice2617626177_
                                             _target2529525321_
                                             _tl2529725323_)
                                            (_g2519325308_))))
                                    (_g2519325308_)))))
                        (if (gx#stx-pair/null? _tl2520225524_)
                            (let ((___splice2617626177_
                                   (gx#syntax-split-splice _tl2520225524_ '0)))
                              (let ((_tl2529725323_
                                     (##vector-ref ___splice2617626177_ '1))
                                    (_target2529525321_
                                     (##vector-ref ___splice2617626177_ '0)))
                                (if (gx#stx-null? _tl2529725323_)
                                    (___match2642526426_
                                     _e2520025519_
                                     _hd2520125522_
                                     _tl2520225524_
                                     ___splice2617626177_
                                     _target2529525321_
                                     _tl2529725323_)
                                    (_g2519325308_))))
                            (_g2519325308_)))))
                (if (gx#stx-pair/null? _tl2520225524_)
                    (let ((___splice2617626177_
                           (gx#syntax-split-splice _tl2520225524_ '0)))
                      (let ((_tl2529725323_
                             (##vector-ref ___splice2617626177_ '1))
                            (_target2529525321_
                             (##vector-ref ___splice2617626177_ '0)))
                        (if (gx#stx-null? _tl2529725323_)
                            (___match2642526426_
                             _e2520025519_
                             _hd2520125522_
                             _tl2520225524_
                             ___splice2617626177_
                             _target2529525321_
                             _tl2529725323_)
                            (_g2519325308_))))
                    (_g2519325308_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2520225524_)
                                                        (let ((___splice2617626177_
                                                               (gx#syntax-split-splice
                                                                _tl2520225524_
                                                                '0)))
                                                          (let ((_tl2529725323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2617626177_ '1))
                        (_target2529525321_
                         (##vector-ref ___splice2617626177_ '0)))
                    (if (gx#stx-null? _tl2529725323_)
                        (___match2642526426_
                         _e2520025519_
                         _hd2520125522_
                         _tl2520225524_
                         ___splice2617626177_
                         _target2529525321_
                         _tl2529725323_)
                        (_g2519325308_))))
                (_g2519325308_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2520225524_)
                                                (let ((___splice2617626177_
                                                       (gx#syntax-split-splice
                                                        _tl2520225524_
                                                        '0)))
                                                  (let ((_tl2529725323_
                                                         (##vector-ref
                                                          ___splice2617626177_
                                                          '1))
                                                        (_target2529525321_
                                                         (##vector-ref
                                                          ___splice2617626177_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2529725323_)
                                                        (___match2642526426_
                                                         _e2520025519_
                                                         _hd2520125522_
                                                         _tl2520225524_
                                                         ___splice2617626177_
                                                         _target2529525321_
                                                         _tl2529725323_)
                                                        (_g2519325308_))))
                                                (_g2519325308_)))
                                        (if (gx#stx-pair/null? _tl2520225524_)
                                            (let ((___splice2617626177_
                                                   (gx#syntax-split-splice
                                                    _tl2520225524_
                                                    '0)))
                                              (let ((_tl2529725323_
                                                     (##vector-ref
                                                      ___splice2617626177_
                                                      '1))
                                                    (_target2529525321_
                                                     (##vector-ref
                                                      ___splice2617626177_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2529725323_)
                                                    (___match2642526426_
                                                     _e2520025519_
                                                     _hd2520125522_
                                                     _tl2520225524_
                                                     ___splice2617626177_
                                                     _target2529525321_
                                                     _tl2529725323_)
                                                    (_g2519325308_))))
                                            (_g2519325308_)))
                                    (if (gx#stx-pair/null? _tl2520225524_)
                                        (let ((___splice2617626177_
                                               (gx#syntax-split-splice
                                                _tl2520225524_
                                                '0)))
                                          (let ((_tl2529725323_
                                                 (##vector-ref
                                                  ___splice2617626177_
                                                  '1))
                                                (_target2529525321_
                                                 (##vector-ref
                                                  ___splice2617626177_
                                                  '0)))
                                            (if (gx#stx-null? _tl2529725323_)
                                                (___match2642526426_
                                                 _e2520025519_
                                                 _hd2520125522_
                                                 _tl2520225524_
                                                 ___splice2617626177_
                                                 _target2529525321_
                                                 _tl2529725323_)
                                                (_g2519325308_))))
                                        (_g2519325308_)))))
                            (if (gx#stx-pair/null? _tl2520225524_)
                                (let ((___splice2617626177_
                                       (gx#syntax-split-splice
                                        _tl2520225524_
                                        '0)))
                                  (let ((_tl2529725323_
                                         (##vector-ref
                                          ___splice2617626177_
                                          '1))
                                        (_target2529525321_
                                         (##vector-ref
                                          ___splice2617626177_
                                          '0)))
                                    (if (gx#stx-null? _tl2529725323_)
                                        (___match2642526426_
                                         _e2520025519_
                                         _hd2520125522_
                                         _tl2520225524_
                                         ___splice2617626177_
                                         _target2529525321_
                                         _tl2529725323_)
                                        (_g2519325308_))))
                                (_g2519325308_)))))
                    (if (gx#stx-pair/null? _tl2520225524_)
                        (let ((___splice2617626177_
                               (gx#syntax-split-splice _tl2520225524_ '0)))
                          (let ((_tl2529725323_
                                 (##vector-ref ___splice2617626177_ '1))
                                (_target2529525321_
                                 (##vector-ref ___splice2617626177_ '0)))
                            (if (gx#stx-null? _tl2529725323_)
                                (___match2642526426_
                                 _e2520025519_
                                 _hd2520125522_
                                 _tl2520225524_
                                 ___splice2617626177_
                                 _target2529525321_
                                 _tl2529725323_)
                                (_g2519325308_))))
                        (_g2519325308_)))
                (if (gx#stx-pair/null? _tl2520225524_)
                    (let ((___splice2617626177_
                           (gx#syntax-split-splice _tl2520225524_ '0)))
                      (let ((_tl2529725323_
                             (##vector-ref ___splice2617626177_ '1))
                            (_target2529525321_
                             (##vector-ref ___splice2617626177_ '0)))
                        (if (gx#stx-null? _tl2529725323_)
                            (___match2642526426_
                             _e2520025519_
                             _hd2520125522_
                             _tl2520225524_
                             ___splice2617626177_
                             _target2529525321_
                             _tl2529725323_)
                            (_g2519325308_))))
                    (_g2519325308_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2520225524_)
                                                    (let ((___splice2617626177_
                                                           (gx#syntax-split-splice
                                                            _tl2520225524_
                                                            '0)))
                                                      (let ((_tl2529725323_
                                                             (##vector-ref
                                                              ___splice2617626177_
                                                              '1))
                                                            (_target2529525321_
                                                             (##vector-ref
                                                              ___splice2617626177_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2529725323_)
                                                            (___match2642526426_
                                                             _e2520025519_
                                                             _hd2520125522_
                                                             _tl2520225524_
                                                             ___splice2617626177_
                                                             _target2529525321_
                                                             _tl2529725323_)
                                                            (_g2519325308_))))
                                                    (_g2519325308_)))
                                            (if (gx#stx-pair/null?
                                                 _tl2520225524_)
                                                (let ((___splice2617626177_
                                                       (gx#syntax-split-splice
                                                        _tl2520225524_
                                                        '0)))
                                                  (let ((_tl2529725323_
                                                         (##vector-ref
                                                          ___splice2617626177_
                                                          '1))
                                                        (_target2529525321_
                                                         (##vector-ref
                                                          ___splice2617626177_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2529725323_)
                                                        (___match2642526426_
                                                         _e2520025519_
                                                         _hd2520125522_
                                                         _tl2520225524_
                                                         ___splice2617626177_
                                                         _target2529525321_
                                                         _tl2529725323_)
                                                        (_g2519325308_))))
                                                (_g2519325308_)))
                                        (if (gx#stx-pair/null? _tl2520225524_)
                                            (let ((___splice2617626177_
                                                   (gx#syntax-split-splice
                                                    _tl2520225524_
                                                    '0)))
                                              (let ((_tl2529725323_
                                                     (##vector-ref
                                                      ___splice2617626177_
                                                      '1))
                                                    (_target2529525321_
                                                     (##vector-ref
                                                      ___splice2617626177_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2529725323_)
                                                    (___match2642526426_
                                                     _e2520025519_
                                                     _hd2520125522_
                                                     _tl2520225524_
                                                     ___splice2617626177_
                                                     _target2529525321_
                                                     _tl2529725323_)
                                                    (_g2519325308_))))
                                            (_g2519325308_)))))
                                (if (gx#stx-pair/null? _tl2520225524_)
                                    (let ((___splice2617626177_
                                           (gx#syntax-split-splice
                                            _tl2520225524_
                                            '0)))
                                      (let ((_tl2529725323_
                                             (##vector-ref
                                              ___splice2617626177_
                                              '1))
                                            (_target2529525321_
                                             (##vector-ref
                                              ___splice2617626177_
                                              '0)))
                                        (if (gx#stx-null? _tl2529725323_)
                                            (___match2642526426_
                                             _e2520025519_
                                             _hd2520125522_
                                             _tl2520225524_
                                             ___splice2617626177_
                                             _target2529525321_
                                             _tl2529725323_)
                                            (_g2519325308_))))
                                    (_g2519325308_)))))
                        (if (gx#stx-pair/null? _tl2520225524_)
                            (let ((___splice2617626177_
                                   (gx#syntax-split-splice _tl2520225524_ '0)))
                              (let ((_tl2529725323_
                                     (##vector-ref ___splice2617626177_ '1))
                                    (_target2529525321_
                                     (##vector-ref ___splice2617626177_ '0)))
                                (if (gx#stx-null? _tl2529725323_)
                                    (___match2642526426_
                                     _e2520025519_
                                     _hd2520125522_
                                     _tl2520225524_
                                     ___splice2617626177_
                                     _target2529525321_
                                     _tl2529725323_)
                                    (_g2519325308_))))
                            (_g2519325308_)))))
                (_g2519325308_)))))))
  (define gxc#current-compile-type-closure (make-parameter '#f))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx25129_)
      (let* ((___stx2642826429_ _stx25129_)
             (_g2513225145_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2642826429_))))
        (let ((___kont2643026431_ (lambda (_L25173_) (gxc#compile-e _L25173_)))
              (___kont2643226433_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2642826429_)
              (let ((_e2513525157_ (gx#stx-e ___stx2642826429_)))
                (let ((_tl2513725162_ (##cdr _e2513525157_))
                      (_hd2513625160_ (##car _e2513525157_)))
                  (if (gx#stx-pair? _tl2513725162_)
                      (let ((_e2513825165_ (gx#stx-e _tl2513725162_)))
                        (let ((_tl2514025170_ (##cdr _e2513825165_))
                              (_hd2513925168_ (##car _e2513825165_)))
                          (if (gx#stx-null? _tl2514025170_)
                              (___kont2643026431_ _hd2513925168_)
                              (___kont2643226433_))))
                      (___kont2643226433_))))
              (___kont2643226433_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx25062_)
      (let* ((_g2506425081_
              (lambda (_g2506525078_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2506525078_)))
             (_g2506325126_
              (lambda (_g2506525084_)
                (if (gx#stx-pair? _g2506525084_)
                    (let ((_e2506825086_ (gx#stx-e _g2506525084_)))
                      (let ((_hd2506925089_ (##car _e2506825086_))
                            (_tl2507025091_ (##cdr _e2506825086_)))
                        (if (gx#stx-pair? _tl2507025091_)
                            (let ((_e2507125094_ (gx#stx-e _tl2507025091_)))
                              (let ((_hd2507225097_ (##car _e2507125094_))
                                    (_tl2507325099_ (##cdr _e2507125094_)))
                                (if (gx#stx-pair? _tl2507325099_)
                                    (let ((_e2507425102_
                                           (gx#stx-e _tl2507325099_)))
                                      (let ((_hd2507525105_
                                             (##car _e2507425102_))
                                            (_tl2507625107_
                                             (##cdr _e2507425102_)))
                                        (if (gx#stx-null? _tl2507625107_)
                                            ((lambda (_L25110_ _L25111_)
                                               (gxc#compile-e _L25110_))
                                             _hd2507525105_
                                             _hd2507225097_)
                                            (_g2506425081_ _g2506525084_))))
                                    (_g2506425081_ _g2506525084_))))
                            (_g2506425081_ _g2506525084_))))
                    (_g2506425081_ _g2506525084_)))))
        (_g2506325126_ _stx25062_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx23654_)
      (let* ((___stx2645026451_ _stx23654_)
             (_g2366223969_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2645026451_))))
        (let ((___kont2645226453_
               (lambda (_L25050_)
                 (let ((__obj28693 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj28693
                      'lambda
                      (gxc#lambda-form-arity _L25050_)
                      '#f)
                     __obj28693))))
              (___kont2645426455_
               (lambda (_L24985_ _L24986_ _L24987_ _L24988_ _L24989_)
                 (let* ((_type-t25032_ (gxc#identifier-symbol _L24986_))
                        (_type25034_
                         (gxc#optimizer-resolve-type _type-t25032_)))
                   (if (##structure-instance-of?
                        _type25034_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t25032_)
                       '#f))))
              (___kont2645626457_
               (lambda (_L24771_ _L24772_ _L24773_ _L24774_)
                 (let* ((_type-t24847_ (gxc#identifier-symbol _L24772_))
                        (_type24849_
                         (gxc#optimizer-resolve-type _type-t24847_)))
                   (if (##structure-instance-of?
                        _type24849_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t24847_)
                       '#f))))
              (___kont2646226463_
               (lambda (_L24562_ _L24563_ _L24564_ _L24565_ _L24566_ _L24567_)
                 (let* ((_tab24617_ (gx#stx-e _L24564_))
                        (_keys24619_
                         (if _tab24617_
                             (filter values (vector->list _tab24617_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys24619_
                    (gxc#identifier-symbol _L24563_)))))
              (___kont2646426465_
               (lambda (_L24295_
                        _L24296_
                        _L24297_
                        _L24298_
                        _L24299_
                        _L24300_
                        _L24301_
                        _L24302_
                        _L24303_
                        _L24304_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2439724400_ _g2439824402_)
                                   (cons _g2439724400_ _g2439824402_))
                                 '()
                                 _L24297_)))
                  (gxc#identifier-symbol _L24301_))))
              (___kont2646826469_
               (lambda (_L24005_)
                 (let ((__obj28694 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj28694
                      'lambda
                      (gxc#lambda-form-arity _L24005_)
                      (gxc#dispatch-lambda-form-delegate _L24005_))
                     __obj28694))))
              (___kont2647026471_
               (lambda (_L23982_)
                 (let ((__obj28695 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj28695
                      'lambda
                      (gxc#lambda-form-arity _L23982_)
                      '#f)
                     __obj28695)))))
          (let* ((___match2692526926_
                  (lambda (_e2395823997_ _hd2395924000_ _tl2396024002_)
                    (let ((_L24005_ _tl2396024002_))
                      (if (gxc#dispatch-lambda-form? _L24005_)
                          (___kont2646826469_ _L24005_)
                          (___kont2647026471_ _tl2396024002_)))))
                 (___match2691926920_
                  (lambda (_e2385224019_
                           _hd2385324022_
                           _tl2385424024_
                           _e2385524027_
                           _hd2385624030_
                           _tl2385724032_
                           _e2385824035_
                           _hd2385924038_
                           _tl2386024040_
                           _e2386124043_
                           _hd2386224046_
                           _tl2386324048_
                           _e2386424051_
                           _hd2386524054_
                           _tl2386624056_
                           _e2386724059_
                           _hd2386824062_
                           _tl2386924064_
                           _e2387024067_
                           _hd2387124070_
                           _tl2387224072_
                           _e2387324075_
                           _hd2387424078_
                           _tl2387524080_
                           _e2387624083_
                           _hd2387724086_
                           _tl2387824088_
                           _e2387924091_
                           _hd2388024094_
                           _tl2388124096_
                           _e2388224099_
                           _hd2388324102_
                           _tl2388424104_
                           _e2388524107_
                           _hd2388624110_
                           _tl2388724112_
                           _e2388824115_
                           _hd2388924118_
                           _tl2389024120_
                           _e2389124123_
                           _hd2389224126_
                           _tl2389324128_
                           ___splice2646626467_
                           _target2389424131_
                           _tl2389624133_
                           _e2390924136_
                           _hd2391024139_
                           _tl2391124141_
                           _e2391224144_
                           _hd2391324147_
                           _tl2391424149_
                           _e2391524152_
                           _hd2391624155_
                           _tl2391724157_)
                    (letrec ((_loop2389724160_
                              (lambda (_hd2389524163_
                                       _-absent-value2390124165_
                                       _key2390224167_
                                       _-xkwvar2390324169_
                                       _-hash-ref2390424171_)
                                (if (gx#stx-pair? _hd2389524163_)
                                    (let ((_e2389824174_
                                           (gx#stx-e _hd2389524163_)))
                                      (let ((_lp-tl2390024179_
                                             (##cdr _e2389824174_))
                                            (_lp-hd2389924177_
                                             (##car _e2389824174_)))
                                        (if (gx#stx-pair? _lp-hd2389924177_)
                                            (let ((_e2391824182_
                                                   (gx#stx-e
                                                    _lp-hd2389924177_)))
                                              (let ((_tl2392024187_
                                                     (##cdr _e2391824182_))
                                                    (_hd2391924185_
                                                     (##car _e2391824182_)))
                                                (if (gx#identifier?
                                                     _hd2391924185_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2391924185_)
                                                        (if (gx#stx-pair?
                                                             _tl2392024187_)
                                                            (let ((_e2392124190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2392024187_)))
                      (let ((_tl2392324195_ (##cdr _e2392124190_))
                            (_hd2392224193_ (##car _e2392124190_)))
                        (if (gx#stx-pair? _hd2392224193_)
                            (let ((_e2392424198_ (gx#stx-e _hd2392224193_)))
                              (let ((_tl2392624203_ (##cdr _e2392424198_))
                                    (_hd2392524201_ (##car _e2392424198_)))
                                (if (gx#identifier? _hd2392524201_)
                                    (if (gx#stx-eq? '%#ref _hd2392524201_)
                                        (if (gx#stx-pair? _tl2392624203_)
                                            (let ((_e2392724206_
                                                   (gx#stx-e _tl2392624203_)))
                                              (let ((_tl2392924211_
                                                     (##cdr _e2392724206_))
                                                    (_hd2392824209_
                                                     (##car _e2392724206_)))
                                                (if (gx#stx-null?
                                                     _tl2392924211_)
                                                    (if (gx#stx-pair?
                                                         _tl2392324195_)
                                                        (let ((_e2393024214_
                                                               (gx#stx-e
                                                                _tl2392324195_)))
                                                          (let ((_tl2393224219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2393024214_))
                        (_hd2393124217_ (##car _e2393024214_)))
                    (if (gx#stx-pair? _hd2393124217_)
                        (let ((_e2393324222_ (gx#stx-e _hd2393124217_)))
                          (let ((_tl2393524227_ (##cdr _e2393324222_))
                                (_hd2393424225_ (##car _e2393324222_)))
                            (if (gx#identifier? _hd2393424225_)
                                (if (gx#stx-eq? '%#ref _hd2393424225_)
                                    (if (gx#stx-pair? _tl2393524227_)
                                        (let ((_e2393624230_
                                               (gx#stx-e _tl2393524227_)))
                                          (let ((_tl2393824235_
                                                 (##cdr _e2393624230_))
                                                (_hd2393724233_
                                                 (##car _e2393624230_)))
                                            (if (gx#stx-null? _tl2393824235_)
                                                (if (gx#stx-pair?
                                                     _tl2393224219_)
                                                    (let ((_e2393924238_
                                                           (gx#stx-e
                                                            _tl2393224219_)))
                                                      (let ((_tl2394124243_
                                                             (##cdr _e2393924238_))
                                                            (_hd2394024241_
                                                             (##car _e2393924238_)))
                                                        (if (gx#stx-pair?
                                                             _hd2394024241_)
                                                            (let ((_e2394224246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2394024241_)))
                      (let ((_tl2394424251_ (##cdr _e2394224246_))
                            (_hd2394324249_ (##car _e2394224246_)))
                        (if (gx#identifier? _hd2394324249_)
                            (if (gx#stx-eq? '%#quote _hd2394324249_)
                                (if (gx#stx-pair? _tl2394424251_)
                                    (let ((_e2394524254_
                                           (gx#stx-e _tl2394424251_)))
                                      (let ((_tl2394724259_
                                             (##cdr _e2394524254_))
                                            (_hd2394624257_
                                             (##car _e2394524254_)))
                                        (if (gx#stx-null? _tl2394724259_)
                                            (if (gx#stx-pair? _tl2394124243_)
                                                (let ((_e2394824262_
                                                       (gx#stx-e
                                                        _tl2394124243_)))
                                                  (let ((_tl2395024267_
                                                         (##cdr _e2394824262_))
                                                        (_hd2394924265_
                                                         (##car _e2394824262_)))
                                                    (if (gx#stx-pair?
                                                         _hd2394924265_)
                                                        (let ((_e2395124270_
                                                               (gx#stx-e
                                                                _hd2394924265_)))
                                                          (let ((_tl2395324275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2395124270_))
                        (_hd2395224273_ (##car _e2395124270_)))
                    (if (gx#identifier? _hd2395224273_)
                        (if (gx#stx-eq? '%#ref _hd2395224273_)
                            (if (gx#stx-pair? _tl2395324275_)
                                (let ((_e2395424278_
                                       (gx#stx-e _tl2395324275_)))
                                  (let ((_tl2395624283_ (##cdr _e2395424278_))
                                        (_hd2395524281_ (##car _e2395424278_)))
                                    (if (gx#stx-null? _tl2395624283_)
                                        (if (gx#stx-null? _tl2395024267_)
                                            (_loop2389724160_
                                             _lp-tl2390024179_
                                             (cons _hd2395524281_
                                                   _-absent-value2390124165_)
                                             (cons _hd2394624257_
                                                   _key2390224167_)
                                             (cons _hd2393724233_
                                                   _-xkwvar2390324169_)
                                             (cons _hd2392824209_
                                                   _-hash-ref2390424171_))
                                            (___match2692526926_
                                             _e2385224019_
                                             _hd2385324022_
                                             _tl2385424024_))
                                        (___match2692526926_
                                         _e2385224019_
                                         _hd2385324022_
                                         _tl2385424024_))))
                                (___match2692526926_
                                 _e2385224019_
                                 _hd2385324022_
                                 _tl2385424024_))
                            (___match2692526926_
                             _e2385224019_
                             _hd2385324022_
                             _tl2385424024_))
                        (___match2692526926_
                         _e2385224019_
                         _hd2385324022_
                         _tl2385424024_))))
                (___match2692526926_
                 _e2385224019_
                 _hd2385324022_
                 _tl2385424024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2692526926_
                                                 _e2385224019_
                                                 _hd2385324022_
                                                 _tl2385424024_))
                                            (___match2692526926_
                                             _e2385224019_
                                             _hd2385324022_
                                             _tl2385424024_))))
                                    (___match2692526926_
                                     _e2385224019_
                                     _hd2385324022_
                                     _tl2385424024_))
                                (___match2692526926_
                                 _e2385224019_
                                 _hd2385324022_
                                 _tl2385424024_))
                            (___match2692526926_
                             _e2385224019_
                             _hd2385324022_
                             _tl2385424024_))))
                    (___match2692526926_
                     _e2385224019_
                     _hd2385324022_
                     _tl2385424024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2692526926_
                                                     _e2385224019_
                                                     _hd2385324022_
                                                     _tl2385424024_))
                                                (___match2692526926_
                                                 _e2385224019_
                                                 _hd2385324022_
                                                 _tl2385424024_))))
                                        (___match2692526926_
                                         _e2385224019_
                                         _hd2385324022_
                                         _tl2385424024_))
                                    (___match2692526926_
                                     _e2385224019_
                                     _hd2385324022_
                                     _tl2385424024_))
                                (___match2692526926_
                                 _e2385224019_
                                 _hd2385324022_
                                 _tl2385424024_))))
                        (___match2692526926_
                         _e2385224019_
                         _hd2385324022_
                         _tl2385424024_))))
                (___match2692526926_
                 _e2385224019_
                 _hd2385324022_
                 _tl2385424024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2692526926_
                                                     _e2385224019_
                                                     _hd2385324022_
                                                     _tl2385424024_))))
                                            (___match2692526926_
                                             _e2385224019_
                                             _hd2385324022_
                                             _tl2385424024_))
                                        (___match2692526926_
                                         _e2385224019_
                                         _hd2385324022_
                                         _tl2385424024_))
                                    (___match2692526926_
                                     _e2385224019_
                                     _hd2385324022_
                                     _tl2385424024_))))
                            (___match2692526926_
                             _e2385224019_
                             _hd2385324022_
                             _tl2385424024_))))
                    (___match2692526926_
                     _e2385224019_
                     _hd2385324022_
                     _tl2385424024_))
                (___match2692526926_
                 _e2385224019_
                 _hd2385324022_
                 _tl2385424024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2692526926_
                                                     _e2385224019_
                                                     _hd2385324022_
                                                     _tl2385424024_))))
                                            (___match2692526926_
                                             _e2385224019_
                                             _hd2385324022_
                                             _tl2385424024_))))
                                    (let ((_-hash-ref2390824292_
                                           (reverse _-hash-ref2390424171_))
                                          (_-xkwvar2390724290_
                                           (reverse _-xkwvar2390324169_))
                                          (_key2390624288_
                                           (reverse _key2390224167_))
                                          (_-absent-value2390524286_
                                           (reverse _-absent-value2390124165_)))
                                      (if (gx#stx-null? _tl2386324048_)
                                          (let ((_L24295_ _hd2391624155_)
                                                (_L24296_
                                                 _-absent-value2390524286_)
                                                (_L24297_ _key2390624288_)
                                                (_L24298_ _-xkwvar2390724290_)
                                                (_L24299_
                                                 _-hash-ref2390824292_)
                                                (_L24300_ _hd2389224126_)
                                                (_L24301_ _hd2388324102_)
                                                (_L24302_ _hd2387424078_)
                                                (_L24303_ _tl2386024040_)
                                                (_L24304_ _hd2385924038_))
                                            (if (if (gx#identifier? _L24304_)
                                                    (if (gx#identifier?
                                                         _L24303_)
                                                        (if (gxc#runtime-identifier=?
                                                             _L24302_
                                                             'apply)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24304_
                         _L24300_)
                        (if (andmap1 gx#stx-keyword?
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g2435724360_
                                                        _g2435824362_)
                                                 (cons _g2435724360_
                                                       _g2435824362_))
                                               '()
                                               _L24297_)))
                            (if (andmap1 (lambda (_g2436424366_)
                                           (gxc#runtime-identifier=?
                                            _g2436424366_
                                            'hash-ref))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2436824371_
                                                            _g2436924373_)
                                                     (cons _g2436824371_
                                                           _g2436924373_))
                                                   '()
                                                   _L24299_)))
                                (if (andmap1 (lambda (_g2437524377_)
                                               (gxc#runtime-identifier=?
                                                _g2437524377_
                                                'absent-value))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2437924382_
                                                                _g2438024384_)
                                                         (cons _g2437924382_
                                                               _g2438024384_))
                                                       '()
                                                       _L24296_)))
                                    (andmap1 (lambda (_g2438624388_)
                                               (gx#free-identifier=?
                                                _g2438624388_
                                                _L24304_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2439024393_
                                                                _g2439124395_)
                                                         (cons _g2439024393_
                                                               _g2439124395_))
                                                       '()
                                                       _L24298_)))
                                    '#f)
                                '#f)
                            '#f)
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (___kont2646426465_
                                                 _L24295_
                                                 _L24296_
                                                 _L24297_
                                                 _L24298_
                                                 _L24299_
                                                 _L24300_
                                                 _L24301_
                                                 _L24302_
                                                 _L24303_
                                                 _L24304_)
                                                (___match2692526926_
                                                 _e2385224019_
                                                 _hd2385324022_
                                                 _tl2385424024_)))
                                          (___match2692526926_
                                           _e2385224019_
                                           _hd2385324022_
                                           _tl2385424024_)))))))
                      (_loop2389724160_ _target2389424131_ '() '() '() '()))))
                 (___match2679126792_
                  (lambda (_e2385224019_
                           _hd2385324022_
                           _tl2385424024_
                           _e2385524027_
                           _hd2385624030_
                           _tl2385724032_)
                    (if (gx#stx-pair? _hd2385624030_)
                        (let ((_e2385824035_ (gx#stx-e _hd2385624030_)))
                          (let ((_tl2386024040_ (##cdr _e2385824035_))
                                (_hd2385924038_ (##car _e2385824035_)))
                            (if (gx#stx-pair? _tl2385724032_)
                                (let ((_e2386124043_
                                       (gx#stx-e _tl2385724032_)))
                                  (let ((_tl2386324048_ (##cdr _e2386124043_))
                                        (_hd2386224046_ (##car _e2386124043_)))
                                    (if (gx#stx-pair? _hd2386224046_)
                                        (let ((_e2386424051_
                                               (gx#stx-e _hd2386224046_)))
                                          (let ((_tl2386624056_
                                                 (##cdr _e2386424051_))
                                                (_hd2386524054_
                                                 (##car _e2386424051_)))
                                            (if (gx#identifier? _hd2386524054_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2386524054_)
                                                    (if (gx#stx-pair?
                                                         _tl2386624056_)
                                                        (let ((_e2386724059_
                                                               (gx#stx-e
                                                                _tl2386624056_)))
                                                          (let ((_tl2386924064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2386724059_))
                        (_hd2386824062_ (##car _e2386724059_)))
                    (if (gx#stx-pair? _hd2386824062_)
                        (let ((_e2387024067_ (gx#stx-e _hd2386824062_)))
                          (let ((_tl2387224072_ (##cdr _e2387024067_))
                                (_hd2387124070_ (##car _e2387024067_)))
                            (if (gx#identifier? _hd2387124070_)
                                (if (gx#stx-eq? '%#ref _hd2387124070_)
                                    (if (gx#stx-pair? _tl2387224072_)
                                        (let ((_e2387324075_
                                               (gx#stx-e _tl2387224072_)))
                                          (let ((_tl2387524080_
                                                 (##cdr _e2387324075_))
                                                (_hd2387424078_
                                                 (##car _e2387324075_)))
                                            (if (gx#stx-null? _tl2387524080_)
                                                (if (gx#stx-pair?
                                                     _tl2386924064_)
                                                    (let ((_e2387624083_
                                                           (gx#stx-e
                                                            _tl2386924064_)))
                                                      (let ((_tl2387824088_
                                                             (##cdr _e2387624083_))
                                                            (_hd2387724086_
                                                             (##car _e2387624083_)))
                                                        (if (gx#stx-pair?
                                                             _hd2387724086_)
                                                            (let ((_e2387924091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2387724086_)))
                      (let ((_tl2388124096_ (##cdr _e2387924091_))
                            (_hd2388024094_ (##car _e2387924091_)))
                        (if (gx#identifier? _hd2388024094_)
                            (if (gx#stx-eq? '%#ref _hd2388024094_)
                                (if (gx#stx-pair? _tl2388124096_)
                                    (let ((_e2388224099_
                                           (gx#stx-e _tl2388124096_)))
                                      (let ((_tl2388424104_
                                             (##cdr _e2388224099_))
                                            (_hd2388324102_
                                             (##car _e2388224099_)))
                                        (if (gx#stx-null? _tl2388424104_)
                                            (if (gx#stx-pair? _tl2387824088_)
                                                (let ((_e2388524107_
                                                       (gx#stx-e
                                                        _tl2387824088_)))
                                                  (let ((_tl2388724112_
                                                         (##cdr _e2388524107_))
                                                        (_hd2388624110_
                                                         (##car _e2388524107_)))
                                                    (if (gx#stx-pair?
                                                         _hd2388624110_)
                                                        (let ((_e2388824115_
                                                               (gx#stx-e
                                                                _hd2388624110_)))
                                                          (let ((_tl2389024120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2388824115_))
                        (_hd2388924118_ (##car _e2388824115_)))
                    (if (gx#identifier? _hd2388924118_)
                        (if (gx#stx-eq? '%#ref _hd2388924118_)
                            (if (gx#stx-pair? _tl2389024120_)
                                (let ((_e2389124123_
                                       (gx#stx-e _tl2389024120_)))
                                  (let ((_tl2389324128_ (##cdr _e2389124123_))
                                        (_hd2389224126_ (##car _e2389124123_)))
                                    (if (gx#stx-null? _tl2389324128_)
                                        (if (gx#stx-pair/null? _tl2388724112_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2388724112_)
                                                      '1)
                                                (let ((___splice2646626467_
                                                       (gx#syntax-split-splice
                                                        _tl2388724112_
                                                        '1)))
                                                  (let ((_tl2389624133_
                                                         (##vector-ref
                                                          ___splice2646626467_
                                                          '1))
                                                        (_target2389424131_
                                                         (##vector-ref
                                                          ___splice2646626467_
                                                          '0)))
                                                    (if (gx#stx-pair?
                                                         _tl2389624133_)
                                                        (let ((_e2390924136_
                                                               (gx#stx-e
                                                                _tl2389624133_)))
                                                          (let ((_tl2391124141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2390924136_))
                        (_hd2391024139_ (##car _e2390924136_)))
                    (if (gx#stx-pair? _hd2391024139_)
                        (let ((_e2391224144_ (gx#stx-e _hd2391024139_)))
                          (let ((_tl2391424149_ (##cdr _e2391224144_))
                                (_hd2391324147_ (##car _e2391224144_)))
                            (if (gx#identifier? _hd2391324147_)
                                (if (gx#stx-eq? '%#ref _hd2391324147_)
                                    (if (gx#stx-pair? _tl2391424149_)
                                        (let ((_e2391524152_
                                               (gx#stx-e _tl2391424149_)))
                                          (let ((_tl2391724157_
                                                 (##cdr _e2391524152_))
                                                (_hd2391624155_
                                                 (##car _e2391524152_)))
                                            (if (gx#stx-null? _tl2391724157_)
                                                (if (gx#stx-null?
                                                     _tl2391124141_)
                                                    (___match2691926920_
                                                     _e2385224019_
                                                     _hd2385324022_
                                                     _tl2385424024_
                                                     _e2385524027_
                                                     _hd2385624030_
                                                     _tl2385724032_
                                                     _e2385824035_
                                                     _hd2385924038_
                                                     _tl2386024040_
                                                     _e2386124043_
                                                     _hd2386224046_
                                                     _tl2386324048_
                                                     _e2386424051_
                                                     _hd2386524054_
                                                     _tl2386624056_
                                                     _e2386724059_
                                                     _hd2386824062_
                                                     _tl2386924064_
                                                     _e2387024067_
                                                     _hd2387124070_
                                                     _tl2387224072_
                                                     _e2387324075_
                                                     _hd2387424078_
                                                     _tl2387524080_
                                                     _e2387624083_
                                                     _hd2387724086_
                                                     _tl2387824088_
                                                     _e2387924091_
                                                     _hd2388024094_
                                                     _tl2388124096_
                                                     _e2388224099_
                                                     _hd2388324102_
                                                     _tl2388424104_
                                                     _e2388524107_
                                                     _hd2388624110_
                                                     _tl2388724112_
                                                     _e2388824115_
                                                     _hd2388924118_
                                                     _tl2389024120_
                                                     _e2389124123_
                                                     _hd2389224126_
                                                     _tl2389324128_
                                                     ___splice2646626467_
                                                     _target2389424131_
                                                     _tl2389624133_
                                                     _e2390924136_
                                                     _hd2391024139_
                                                     _tl2391124141_
                                                     _e2391224144_
                                                     _hd2391324147_
                                                     _tl2391424149_
                                                     _e2391524152_
                                                     _hd2391624155_
                                                     _tl2391724157_)
                                                    (___match2692526926_
                                                     _e2385224019_
                                                     _hd2385324022_
                                                     _tl2385424024_))
                                                (___match2692526926_
                                                 _e2385224019_
                                                 _hd2385324022_
                                                 _tl2385424024_))))
                                        (___match2692526926_
                                         _e2385224019_
                                         _hd2385324022_
                                         _tl2385424024_))
                                    (___match2692526926_
                                     _e2385224019_
                                     _hd2385324022_
                                     _tl2385424024_))
                                (___match2692526926_
                                 _e2385224019_
                                 _hd2385324022_
                                 _tl2385424024_))))
                        (___match2692526926_
                         _e2385224019_
                         _hd2385324022_
                         _tl2385424024_))))
                (___match2692526926_
                 _e2385224019_
                 _hd2385324022_
                 _tl2385424024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2692526926_
                                                 _e2385224019_
                                                 _hd2385324022_
                                                 _tl2385424024_))
                                            (___match2692526926_
                                             _e2385224019_
                                             _hd2385324022_
                                             _tl2385424024_))
                                        (___match2692526926_
                                         _e2385224019_
                                         _hd2385324022_
                                         _tl2385424024_))))
                                (___match2692526926_
                                 _e2385224019_
                                 _hd2385324022_
                                 _tl2385424024_))
                            (___match2692526926_
                             _e2385224019_
                             _hd2385324022_
                             _tl2385424024_))
                        (___match2692526926_
                         _e2385224019_
                         _hd2385324022_
                         _tl2385424024_))))
                (___match2692526926_
                 _e2385224019_
                 _hd2385324022_
                 _tl2385424024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2692526926_
                                                 _e2385224019_
                                                 _hd2385324022_
                                                 _tl2385424024_))
                                            (___match2692526926_
                                             _e2385224019_
                                             _hd2385324022_
                                             _tl2385424024_))))
                                    (___match2692526926_
                                     _e2385224019_
                                     _hd2385324022_
                                     _tl2385424024_))
                                (___match2692526926_
                                 _e2385224019_
                                 _hd2385324022_
                                 _tl2385424024_))
                            (___match2692526926_
                             _e2385224019_
                             _hd2385324022_
                             _tl2385424024_))))
                    (___match2692526926_
                     _e2385224019_
                     _hd2385324022_
                     _tl2385424024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2692526926_
                                                     _e2385224019_
                                                     _hd2385324022_
                                                     _tl2385424024_))
                                                (___match2692526926_
                                                 _e2385224019_
                                                 _hd2385324022_
                                                 _tl2385424024_))))
                                        (___match2692526926_
                                         _e2385224019_
                                         _hd2385324022_
                                         _tl2385424024_))
                                    (___match2692526926_
                                     _e2385224019_
                                     _hd2385324022_
                                     _tl2385424024_))
                                (___match2692526926_
                                 _e2385224019_
                                 _hd2385324022_
                                 _tl2385424024_))))
                        (___match2692526926_
                         _e2385224019_
                         _hd2385324022_
                         _tl2385424024_))))
                (___match2692526926_
                 _e2385224019_
                 _hd2385324022_
                 _tl2385424024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2692526926_
                                                     _e2385224019_
                                                     _hd2385324022_
                                                     _tl2385424024_))
                                                (___match2692526926_
                                                 _e2385224019_
                                                 _hd2385324022_
                                                 _tl2385424024_))))
                                        (___match2692526926_
                                         _e2385224019_
                                         _hd2385324022_
                                         _tl2385424024_))))
                                (___match2692526926_
                                 _e2385224019_
                                 _hd2385324022_
                                 _tl2385424024_))))
                        (___match2692526926_
                         _e2385224019_
                         _hd2385324022_
                         _tl2385424024_))))
                 (___match2677926780_
                  (lambda (_e2378524410_
                           _hd2378624413_
                           _tl2378724415_
                           _e2378824418_
                           _hd2378924421_
                           _tl2379024423_
                           _e2379124426_
                           _hd2379224429_
                           _tl2379324431_
                           _e2379424434_
                           _hd2379524437_
                           _tl2379624439_
                           _e2379724442_
                           _hd2379824445_
                           _tl2379924447_
                           _e2380024450_
                           _hd2380124453_
                           _tl2380224455_
                           _e2380324458_
                           _hd2380424461_
                           _tl2380524463_
                           _e2380624466_
                           _hd2380724469_
                           _tl2380824471_
                           _e2380924474_
                           _hd2381024477_
                           _tl2381124479_
                           _e2381224482_
                           _hd2381324485_
                           _tl2381424487_
                           _e2381524490_
                           _hd2381624493_
                           _tl2381724495_
                           _e2381824498_
                           _hd2381924501_
                           _tl2382024503_
                           _e2382124506_
                           _hd2382224509_
                           _tl2382324511_
                           _e2382424514_
                           _hd2382524517_
                           _tl2382624519_
                           _e2382724522_
                           _hd2382824525_
                           _tl2382924527_
                           _e2383024530_
                           _hd2383124533_
                           _tl2383224535_
                           _e2383324538_
                           _hd2383424541_
                           _tl2383524543_
                           _e2383624546_
                           _hd2383724549_
                           _tl2383824551_
                           _e2383924554_
                           _hd2384024557_
                           _tl2384124559_)
                    (let ((_L24562_ _hd2384024557_)
                          (_L24563_ _hd2383124533_)
                          (_L24564_ _hd2382224509_)
                          (_L24565_ _hd2381324485_)
                          (_L24566_ _hd2380424461_)
                          (_L24567_ _hd2378924421_))
                      (if (if (gx#identifier? _L24567_)
                              (if (gxc#runtime-identifier=? _L24566_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24565_
                                       'keyword-dispatch)
                                      (gx#free-identifier=? _L24567_ _L24562_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2646226463_
                           _L24562_
                           _L24563_
                           _L24564_
                           _L24565_
                           _L24566_
                           _L24567_)
                          (___match2679126792_
                           _e2378524410_
                           _hd2378624413_
                           _tl2378724415_
                           _e2378824418_
                           _hd2378924421_
                           _tl2379024423_)))))
                 (___match2670326704_
                  (lambda (_e2378524410_
                           _hd2378624413_
                           _tl2378724415_
                           _e2378824418_
                           _hd2378924421_
                           _tl2379024423_
                           _e2379124426_
                           _hd2379224429_
                           _tl2379324431_
                           _e2379424434_
                           _hd2379524437_
                           _tl2379624439_
                           _e2379724442_
                           _hd2379824445_
                           _tl2379924447_
                           _e2380024450_
                           _hd2380124453_
                           _tl2380224455_
                           _e2380324458_
                           _hd2380424461_
                           _tl2380524463_
                           _e2380624466_
                           _hd2380724469_
                           _tl2380824471_
                           _e2380924474_
                           _hd2381024477_
                           _tl2381124479_
                           _e2381224482_
                           _hd2381324485_
                           _tl2381424487_)
                    (if (gx#stx-pair? _tl2380824471_)
                        (let ((_e2381524490_ (gx#stx-e _tl2380824471_)))
                          (let ((_tl2381724495_ (##cdr _e2381524490_))
                                (_hd2381624493_ (##car _e2381524490_)))
                            (if (gx#stx-pair? _hd2381624493_)
                                (let ((_e2381824498_
                                       (gx#stx-e _hd2381624493_)))
                                  (let ((_tl2382024503_ (##cdr _e2381824498_))
                                        (_hd2381924501_ (##car _e2381824498_)))
                                    (if (gx#identifier? _hd2381924501_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2381924501_)
                                            (if (gx#stx-pair? _tl2382024503_)
                                                (let ((_e2382124506_
                                                       (gx#stx-e
                                                        _tl2382024503_)))
                                                  (let ((_tl2382324511_
                                                         (##cdr _e2382124506_))
                                                        (_hd2382224509_
                                                         (##car _e2382124506_)))
                                                    (if (gx#stx-null?
                                                         _tl2382324511_)
                                                        (if (gx#stx-pair?
                                                             _tl2381724495_)
                                                            (let ((_e2382424514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2381724495_)))
                      (let ((_tl2382624519_ (##cdr _e2382424514_))
                            (_hd2382524517_ (##car _e2382424514_)))
                        (if (gx#stx-pair? _hd2382524517_)
                            (let ((_e2382724522_ (gx#stx-e _hd2382524517_)))
                              (let ((_tl2382924527_ (##cdr _e2382724522_))
                                    (_hd2382824525_ (##car _e2382724522_)))
                                (if (gx#identifier? _hd2382824525_)
                                    (if (gx#stx-eq? '%#ref _hd2382824525_)
                                        (if (gx#stx-pair? _tl2382924527_)
                                            (let ((_e2383024530_
                                                   (gx#stx-e _tl2382924527_)))
                                              (let ((_tl2383224535_
                                                     (##cdr _e2383024530_))
                                                    (_hd2383124533_
                                                     (##car _e2383024530_)))
                                                (if (gx#stx-null?
                                                     _tl2383224535_)
                                                    (if (gx#stx-pair?
                                                         _tl2382624519_)
                                                        (let ((_e2383324538_
                                                               (gx#stx-e
                                                                _tl2382624519_)))
                                                          (let ((_tl2383524543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2383324538_))
                        (_hd2383424541_ (##car _e2383324538_)))
                    (if (gx#stx-pair? _hd2383424541_)
                        (let ((_e2383624546_ (gx#stx-e _hd2383424541_)))
                          (let ((_tl2383824551_ (##cdr _e2383624546_))
                                (_hd2383724549_ (##car _e2383624546_)))
                            (if (gx#identifier? _hd2383724549_)
                                (if (gx#stx-eq? '%#ref _hd2383724549_)
                                    (if (gx#stx-pair? _tl2383824551_)
                                        (let ((_e2383924554_
                                               (gx#stx-e _tl2383824551_)))
                                          (let ((_tl2384124559_
                                                 (##cdr _e2383924554_))
                                                (_hd2384024557_
                                                 (##car _e2383924554_)))
                                            (if (gx#stx-null? _tl2384124559_)
                                                (if (gx#stx-null?
                                                     _tl2383524543_)
                                                    (if (gx#stx-null?
                                                         _tl2379324431_)
                                                        (___match2677926780_
                                                         _e2378524410_
                                                         _hd2378624413_
                                                         _tl2378724415_
                                                         _e2378824418_
                                                         _hd2378924421_
                                                         _tl2379024423_
                                                         _e2379124426_
                                                         _hd2379224429_
                                                         _tl2379324431_
                                                         _e2379424434_
                                                         _hd2379524437_
                                                         _tl2379624439_
                                                         _e2379724442_
                                                         _hd2379824445_
                                                         _tl2379924447_
                                                         _e2380024450_
                                                         _hd2380124453_
                                                         _tl2380224455_
                                                         _e2380324458_
                                                         _hd2380424461_
                                                         _tl2380524463_
                                                         _e2380624466_
                                                         _hd2380724469_
                                                         _tl2380824471_
                                                         _e2380924474_
                                                         _hd2381024477_
                                                         _tl2381124479_
                                                         _e2381224482_
                                                         _hd2381324485_
                                                         _tl2381424487_
                                                         _e2381524490_
                                                         _hd2381624493_
                                                         _tl2381724495_
                                                         _e2381824498_
                                                         _hd2381924501_
                                                         _tl2382024503_
                                                         _e2382124506_
                                                         _hd2382224509_
                                                         _tl2382324511_
                                                         _e2382424514_
                                                         _hd2382524517_
                                                         _tl2382624519_
                                                         _e2382724522_
                                                         _hd2382824525_
                                                         _tl2382924527_
                                                         _e2383024530_
                                                         _hd2383124533_
                                                         _tl2383224535_
                                                         _e2383324538_
                                                         _hd2383424541_
                                                         _tl2383524543_
                                                         _e2383624546_
                                                         _hd2383724549_
                                                         _tl2383824551_
                                                         _e2383924554_
                                                         _hd2384024557_
                                                         _tl2384124559_)
                                                        (___match2679126792_
                                                         _e2378524410_
                                                         _hd2378624413_
                                                         _tl2378724415_
                                                         _e2378824418_
                                                         _hd2378924421_
                                                         _tl2379024423_))
                                                    (___match2679126792_
                                                     _e2378524410_
                                                     _hd2378624413_
                                                     _tl2378724415_
                                                     _e2378824418_
                                                     _hd2378924421_
                                                     _tl2379024423_))
                                                (___match2679126792_
                                                 _e2378524410_
                                                 _hd2378624413_
                                                 _tl2378724415_
                                                 _e2378824418_
                                                 _hd2378924421_
                                                 _tl2379024423_))))
                                        (___match2679126792_
                                         _e2378524410_
                                         _hd2378624413_
                                         _tl2378724415_
                                         _e2378824418_
                                         _hd2378924421_
                                         _tl2379024423_))
                                    (___match2679126792_
                                     _e2378524410_
                                     _hd2378624413_
                                     _tl2378724415_
                                     _e2378824418_
                                     _hd2378924421_
                                     _tl2379024423_))
                                (___match2679126792_
                                 _e2378524410_
                                 _hd2378624413_
                                 _tl2378724415_
                                 _e2378824418_
                                 _hd2378924421_
                                 _tl2379024423_))))
                        (___match2679126792_
                         _e2378524410_
                         _hd2378624413_
                         _tl2378724415_
                         _e2378824418_
                         _hd2378924421_
                         _tl2379024423_))))
                (___match2679126792_
                 _e2378524410_
                 _hd2378624413_
                 _tl2378724415_
                 _e2378824418_
                 _hd2378924421_
                 _tl2379024423_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2679126792_
                                                     _e2378524410_
                                                     _hd2378624413_
                                                     _tl2378724415_
                                                     _e2378824418_
                                                     _hd2378924421_
                                                     _tl2379024423_))))
                                            (___match2679126792_
                                             _e2378524410_
                                             _hd2378624413_
                                             _tl2378724415_
                                             _e2378824418_
                                             _hd2378924421_
                                             _tl2379024423_))
                                        (___match2679126792_
                                         _e2378524410_
                                         _hd2378624413_
                                         _tl2378724415_
                                         _e2378824418_
                                         _hd2378924421_
                                         _tl2379024423_))
                                    (___match2679126792_
                                     _e2378524410_
                                     _hd2378624413_
                                     _tl2378724415_
                                     _e2378824418_
                                     _hd2378924421_
                                     _tl2379024423_))))
                            (___match2679126792_
                             _e2378524410_
                             _hd2378624413_
                             _tl2378724415_
                             _e2378824418_
                             _hd2378924421_
                             _tl2379024423_))))
                    (___match2679126792_
                     _e2378524410_
                     _hd2378624413_
                     _tl2378724415_
                     _e2378824418_
                     _hd2378924421_
                     _tl2379024423_))
                (___match2679126792_
                 _e2378524410_
                 _hd2378624413_
                 _tl2378724415_
                 _e2378824418_
                 _hd2378924421_
                 _tl2379024423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2679126792_
                                                 _e2378524410_
                                                 _hd2378624413_
                                                 _tl2378724415_
                                                 _e2378824418_
                                                 _hd2378924421_
                                                 _tl2379024423_))
                                            (___match2679126792_
                                             _e2378524410_
                                             _hd2378624413_
                                             _tl2378724415_
                                             _e2378824418_
                                             _hd2378924421_
                                             _tl2379024423_))
                                        (___match2679126792_
                                         _e2378524410_
                                         _hd2378624413_
                                         _tl2378724415_
                                         _e2378824418_
                                         _hd2378924421_
                                         _tl2379024423_))))
                                (___match2679126792_
                                 _e2378524410_
                                 _hd2378624413_
                                 _tl2378724415_
                                 _e2378824418_
                                 _hd2378924421_
                                 _tl2379024423_))))
                        (___match2679126792_
                         _e2378524410_
                         _hd2378624413_
                         _tl2378724415_
                         _e2378824418_
                         _hd2378924421_
                         _tl2379024423_))))
                 (___match2663926640_
                  (lambda (_e2378524410_
                           _hd2378624413_
                           _tl2378724415_
                           _e2378824418_
                           _hd2378924421_
                           _tl2379024423_)
                    (if (gx#stx-pair? _tl2379024423_)
                        (let ((_e2379124426_ (gx#stx-e _tl2379024423_)))
                          (let ((_tl2379324431_ (##cdr _e2379124426_))
                                (_hd2379224429_ (##car _e2379124426_)))
                            (if (gx#stx-pair? _hd2379224429_)
                                (let ((_e2379424434_
                                       (gx#stx-e _hd2379224429_)))
                                  (let ((_tl2379624439_ (##cdr _e2379424434_))
                                        (_hd2379524437_ (##car _e2379424434_)))
                                    (if (gx#identifier? _hd2379524437_)
                                        (if (gx#stx-eq? '%#call _hd2379524437_)
                                            (if (gx#stx-pair? _tl2379624439_)
                                                (let ((_e2379724442_
                                                       (gx#stx-e
                                                        _tl2379624439_)))
                                                  (let ((_tl2379924447_
                                                         (##cdr _e2379724442_))
                                                        (_hd2379824445_
                                                         (##car _e2379724442_)))
                                                    (if (gx#stx-pair?
                                                         _hd2379824445_)
                                                        (let ((_e2380024450_
                                                               (gx#stx-e
                                                                _hd2379824445_)))
                                                          (let ((_tl2380224455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2380024450_))
                        (_hd2380124453_ (##car _e2380024450_)))
                    (if (gx#identifier? _hd2380124453_)
                        (if (gx#stx-eq? '%#ref _hd2380124453_)
                            (if (gx#stx-pair? _tl2380224455_)
                                (let ((_e2380324458_
                                       (gx#stx-e _tl2380224455_)))
                                  (let ((_tl2380524463_ (##cdr _e2380324458_))
                                        (_hd2380424461_ (##car _e2380324458_)))
                                    (if (gx#stx-null? _tl2380524463_)
                                        (if (gx#stx-pair? _tl2379924447_)
                                            (let ((_e2380624466_
                                                   (gx#stx-e _tl2379924447_)))
                                              (let ((_tl2380824471_
                                                     (##cdr _e2380624466_))
                                                    (_hd2380724469_
                                                     (##car _e2380624466_)))
                                                (if (gx#stx-pair?
                                                     _hd2380724469_)
                                                    (let ((_e2380924474_
                                                           (gx#stx-e
                                                            _hd2380724469_)))
                                                      (let ((_tl2381124479_
                                                             (##cdr _e2380924474_))
                                                            (_hd2381024477_
                                                             (##car _e2380924474_)))
                                                        (if (gx#identifier?
                                                             _hd2381024477_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2381024477_)
                        (if (gx#stx-pair? _tl2381124479_)
                            (let ((_e2381224482_ (gx#stx-e _tl2381124479_)))
                              (let ((_tl2381424487_ (##cdr _e2381224482_))
                                    (_hd2381324485_ (##car _e2381224482_)))
                                (if (gx#stx-null? _tl2381424487_)
                                    (if (gx#stx-pair? _tl2380824471_)
                                        (let ((_e2381524490_
                                               (gx#stx-e _tl2380824471_)))
                                          (let ((_tl2381724495_
                                                 (##cdr _e2381524490_))
                                                (_hd2381624493_
                                                 (##car _e2381524490_)))
                                            (if (gx#stx-pair? _hd2381624493_)
                                                (let ((_e2381824498_
                                                       (gx#stx-e
                                                        _hd2381624493_)))
                                                  (let ((_tl2382024503_
                                                         (##cdr _e2381824498_))
                                                        (_hd2381924501_
                                                         (##car _e2381824498_)))
                                                    (if (gx#identifier?
                                                         _hd2381924501_)
                                                        (if (gx#stx-eq?
                                                             '%#quote
                                                             _hd2381924501_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2382024503_)
                        (let ((_e2382124506_ (gx#stx-e _tl2382024503_)))
                          (let ((_tl2382324511_ (##cdr _e2382124506_))
                                (_hd2382224509_ (##car _e2382124506_)))
                            (if (gx#stx-null? _tl2382324511_)
                                (if (gx#stx-pair? _tl2381724495_)
                                    (let ((_e2382424514_
                                           (gx#stx-e _tl2381724495_)))
                                      (let ((_tl2382624519_
                                             (##cdr _e2382424514_))
                                            (_hd2382524517_
                                             (##car _e2382424514_)))
                                        (if (gx#stx-pair? _hd2382524517_)
                                            (let ((_e2382724522_
                                                   (gx#stx-e _hd2382524517_)))
                                              (let ((_tl2382924527_
                                                     (##cdr _e2382724522_))
                                                    (_hd2382824525_
                                                     (##car _e2382724522_)))
                                                (if (gx#identifier?
                                                     _hd2382824525_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd2382824525_)
                                                        (if (gx#stx-pair?
                                                             _tl2382924527_)
                                                            (let ((_e2383024530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2382924527_)))
                      (let ((_tl2383224535_ (##cdr _e2383024530_))
                            (_hd2383124533_ (##car _e2383024530_)))
                        (if (gx#stx-null? _tl2383224535_)
                            (if (gx#stx-pair? _tl2382624519_)
                                (let ((_e2383324538_
                                       (gx#stx-e _tl2382624519_)))
                                  (let ((_tl2383524543_ (##cdr _e2383324538_))
                                        (_hd2383424541_ (##car _e2383324538_)))
                                    (if (gx#stx-pair? _hd2383424541_)
                                        (let ((_e2383624546_
                                               (gx#stx-e _hd2383424541_)))
                                          (let ((_tl2383824551_
                                                 (##cdr _e2383624546_))
                                                (_hd2383724549_
                                                 (##car _e2383624546_)))
                                            (if (gx#identifier? _hd2383724549_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2383724549_)
                                                    (if (gx#stx-pair?
                                                         _tl2383824551_)
                                                        (let ((_e2383924554_
                                                               (gx#stx-e
                                                                _tl2383824551_)))
                                                          (let ((_tl2384124559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2383924554_))
                        (_hd2384024557_ (##car _e2383924554_)))
                    (if (gx#stx-null? _tl2384124559_)
                        (if (gx#stx-null? _tl2383524543_)
                            (if (gx#stx-null? _tl2379324431_)
                                (___match2677926780_
                                 _e2378524410_
                                 _hd2378624413_
                                 _tl2378724415_
                                 _e2378824418_
                                 _hd2378924421_
                                 _tl2379024423_
                                 _e2379124426_
                                 _hd2379224429_
                                 _tl2379324431_
                                 _e2379424434_
                                 _hd2379524437_
                                 _tl2379624439_
                                 _e2379724442_
                                 _hd2379824445_
                                 _tl2379924447_
                                 _e2380024450_
                                 _hd2380124453_
                                 _tl2380224455_
                                 _e2380324458_
                                 _hd2380424461_
                                 _tl2380524463_
                                 _e2380624466_
                                 _hd2380724469_
                                 _tl2380824471_
                                 _e2380924474_
                                 _hd2381024477_
                                 _tl2381124479_
                                 _e2381224482_
                                 _hd2381324485_
                                 _tl2381424487_
                                 _e2381524490_
                                 _hd2381624493_
                                 _tl2381724495_
                                 _e2381824498_
                                 _hd2381924501_
                                 _tl2382024503_
                                 _e2382124506_
                                 _hd2382224509_
                                 _tl2382324511_
                                 _e2382424514_
                                 _hd2382524517_
                                 _tl2382624519_
                                 _e2382724522_
                                 _hd2382824525_
                                 _tl2382924527_
                                 _e2383024530_
                                 _hd2383124533_
                                 _tl2383224535_
                                 _e2383324538_
                                 _hd2383424541_
                                 _tl2383524543_
                                 _e2383624546_
                                 _hd2383724549_
                                 _tl2383824551_
                                 _e2383924554_
                                 _hd2384024557_
                                 _tl2384124559_)
                                (___match2679126792_
                                 _e2378524410_
                                 _hd2378624413_
                                 _tl2378724415_
                                 _e2378824418_
                                 _hd2378924421_
                                 _tl2379024423_))
                            (___match2679126792_
                             _e2378524410_
                             _hd2378624413_
                             _tl2378724415_
                             _e2378824418_
                             _hd2378924421_
                             _tl2379024423_))
                        (___match2679126792_
                         _e2378524410_
                         _hd2378624413_
                         _tl2378724415_
                         _e2378824418_
                         _hd2378924421_
                         _tl2379024423_))))
                (___match2679126792_
                 _e2378524410_
                 _hd2378624413_
                 _tl2378724415_
                 _e2378824418_
                 _hd2378924421_
                 _tl2379024423_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2679126792_
                                                     _e2378524410_
                                                     _hd2378624413_
                                                     _tl2378724415_
                                                     _e2378824418_
                                                     _hd2378924421_
                                                     _tl2379024423_))
                                                (___match2679126792_
                                                 _e2378524410_
                                                 _hd2378624413_
                                                 _tl2378724415_
                                                 _e2378824418_
                                                 _hd2378924421_
                                                 _tl2379024423_))))
                                        (___match2679126792_
                                         _e2378524410_
                                         _hd2378624413_
                                         _tl2378724415_
                                         _e2378824418_
                                         _hd2378924421_
                                         _tl2379024423_))))
                                (___match2679126792_
                                 _e2378524410_
                                 _hd2378624413_
                                 _tl2378724415_
                                 _e2378824418_
                                 _hd2378924421_
                                 _tl2379024423_))
                            (___match2679126792_
                             _e2378524410_
                             _hd2378624413_
                             _tl2378724415_
                             _e2378824418_
                             _hd2378924421_
                             _tl2379024423_))))
                    (___match2679126792_
                     _e2378524410_
                     _hd2378624413_
                     _tl2378724415_
                     _e2378824418_
                     _hd2378924421_
                     _tl2379024423_))
                (___match2679126792_
                 _e2378524410_
                 _hd2378624413_
                 _tl2378724415_
                 _e2378824418_
                 _hd2378924421_
                 _tl2379024423_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2679126792_
                                                     _e2378524410_
                                                     _hd2378624413_
                                                     _tl2378724415_
                                                     _e2378824418_
                                                     _hd2378924421_
                                                     _tl2379024423_))))
                                            (___match2679126792_
                                             _e2378524410_
                                             _hd2378624413_
                                             _tl2378724415_
                                             _e2378824418_
                                             _hd2378924421_
                                             _tl2379024423_))))
                                    (___match2679126792_
                                     _e2378524410_
                                     _hd2378624413_
                                     _tl2378724415_
                                     _e2378824418_
                                     _hd2378924421_
                                     _tl2379024423_))
                                (___match2679126792_
                                 _e2378524410_
                                 _hd2378624413_
                                 _tl2378724415_
                                 _e2378824418_
                                 _hd2378924421_
                                 _tl2379024423_))))
                        (___match2679126792_
                         _e2378524410_
                         _hd2378624413_
                         _tl2378724415_
                         _e2378824418_
                         _hd2378924421_
                         _tl2379024423_))
                    (___match2679126792_
                     _e2378524410_
                     _hd2378624413_
                     _tl2378724415_
                     _e2378824418_
                     _hd2378924421_
                     _tl2379024423_))
                (___match2679126792_
                 _e2378524410_
                 _hd2378624413_
                 _tl2378724415_
                 _e2378824418_
                 _hd2378924421_
                 _tl2379024423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2679126792_
                                                 _e2378524410_
                                                 _hd2378624413_
                                                 _tl2378724415_
                                                 _e2378824418_
                                                 _hd2378924421_
                                                 _tl2379024423_))))
                                        (___match2679126792_
                                         _e2378524410_
                                         _hd2378624413_
                                         _tl2378724415_
                                         _e2378824418_
                                         _hd2378924421_
                                         _tl2379024423_))
                                    (___match2679126792_
                                     _e2378524410_
                                     _hd2378624413_
                                     _tl2378724415_
                                     _e2378824418_
                                     _hd2378924421_
                                     _tl2379024423_))))
                            (___match2679126792_
                             _e2378524410_
                             _hd2378624413_
                             _tl2378724415_
                             _e2378824418_
                             _hd2378924421_
                             _tl2379024423_))
                        (___match2679126792_
                         _e2378524410_
                         _hd2378624413_
                         _tl2378724415_
                         _e2378824418_
                         _hd2378924421_
                         _tl2379024423_))
                    (___match2679126792_
                     _e2378524410_
                     _hd2378624413_
                     _tl2378724415_
                     _e2378824418_
                     _hd2378924421_
                     _tl2379024423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2679126792_
                                                     _e2378524410_
                                                     _hd2378624413_
                                                     _tl2378724415_
                                                     _e2378824418_
                                                     _hd2378924421_
                                                     _tl2379024423_))))
                                            (___match2679126792_
                                             _e2378524410_
                                             _hd2378624413_
                                             _tl2378724415_
                                             _e2378824418_
                                             _hd2378924421_
                                             _tl2379024423_))
                                        (___match2679126792_
                                         _e2378524410_
                                         _hd2378624413_
                                         _tl2378724415_
                                         _e2378824418_
                                         _hd2378924421_
                                         _tl2379024423_))))
                                (___match2679126792_
                                 _e2378524410_
                                 _hd2378624413_
                                 _tl2378724415_
                                 _e2378824418_
                                 _hd2378924421_
                                 _tl2379024423_))
                            (___match2679126792_
                             _e2378524410_
                             _hd2378624413_
                             _tl2378724415_
                             _e2378824418_
                             _hd2378924421_
                             _tl2379024423_))
                        (___match2679126792_
                         _e2378524410_
                         _hd2378624413_
                         _tl2378724415_
                         _e2378824418_
                         _hd2378924421_
                         _tl2379024423_))))
                (___match2679126792_
                 _e2378524410_
                 _hd2378624413_
                 _tl2378724415_
                 _e2378824418_
                 _hd2378924421_
                 _tl2379024423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2679126792_
                                                 _e2378524410_
                                                 _hd2378624413_
                                                 _tl2378724415_
                                                 _e2378824418_
                                                 _hd2378924421_
                                                 _tl2379024423_))
                                            (___match2679126792_
                                             _e2378524410_
                                             _hd2378624413_
                                             _tl2378724415_
                                             _e2378824418_
                                             _hd2378924421_
                                             _tl2379024423_))
                                        (___match2679126792_
                                         _e2378524410_
                                         _hd2378624413_
                                         _tl2378724415_
                                         _e2378824418_
                                         _hd2378924421_
                                         _tl2379024423_))))
                                (___match2679126792_
                                 _e2378524410_
                                 _hd2378624413_
                                 _tl2378724415_
                                 _e2378824418_
                                 _hd2378924421_
                                 _tl2379024423_))))
                        (___match2679126792_
                         _e2378524410_
                         _hd2378624413_
                         _tl2378724415_
                         _e2378824418_
                         _hd2378924421_
                         _tl2379024423_))))
                 (___match2662726628_
                  (lambda (_e2372524627_
                           _hd2372624630_
                           _tl2372724632_
                           _e2372824635_
                           _hd2372924638_
                           _tl2373024640_
                           ___splice2645826459_
                           _target2373124643_
                           _tl2373324645_)
                    (letrec ((_loop2373424648_
                              (lambda (_hd2373224651_ _arg2373824653_)
                                (if (gx#stx-pair? _hd2373224651_)
                                    (let ((_e2373524656_
                                           (gx#stx-e _hd2373224651_)))
                                      (let ((_lp-tl2373724661_
                                             (##cdr _e2373524656_))
                                            (_lp-hd2373624659_
                                             (##car _e2373524656_)))
                                        (_loop2373424648_
                                         _lp-tl2373724661_
                                         (cons _lp-hd2373624659_
                                               _arg2373824653_))))
                                    (let ((_arg2373924664_
                                           (reverse _arg2373824653_)))
                                      (if (gx#stx-pair? _tl2373024640_)
                                          (let ((_e2374024667_
                                                 (gx#stx-e _tl2373024640_)))
                                            (let ((_tl2374224672_
                                                   (##cdr _e2374024667_))
                                                  (_hd2374124670_
                                                   (##car _e2374024667_)))
                                              (if (gx#stx-pair? _hd2374124670_)
                                                  (let ((_e2374324675_
                                                         (gx#stx-e
                                                          _hd2374124670_)))
                                                    (let ((_tl2374524680_
                                                           (##cdr _e2374324675_))
                                                          (_hd2374424678_
                                                           (##car _e2374324675_)))
                                                      (if (gx#identifier?
                                                           _hd2374424678_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2374424678_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2374524680_)
                          (let ((_e2374624683_ (gx#stx-e _tl2374524680_)))
                            (let ((_tl2374824688_ (##cdr _e2374624683_))
                                  (_hd2374724686_ (##car _e2374624683_)))
                              (if (gx#stx-pair? _hd2374724686_)
                                  (let ((_e2374924691_
                                         (gx#stx-e _hd2374724686_)))
                                    (let ((_tl2375124696_
                                           (##cdr _e2374924691_))
                                          (_hd2375024694_
                                           (##car _e2374924691_)))
                                      (if (gx#identifier? _hd2375024694_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2375024694_)
                                              (if (gx#stx-pair? _tl2375124696_)
                                                  (let ((_e2375224699_
                                                         (gx#stx-e
                                                          _tl2375124696_)))
                                                    (let ((_tl2375424704_
                                                           (##cdr _e2375224699_))
                                                          (_hd2375324702_
                                                           (##car _e2375224699_)))
                                                      (if (gx#stx-null?
                                                           _tl2375424704_)
                                                          (if (gx#stx-pair?
                                                               _tl2374824688_)
                                                              (let ((_e2375524707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2374824688_)))
                        (let ((_tl2375724712_ (##cdr _e2375524707_))
                              (_hd2375624710_ (##car _e2375524707_)))
                          (if (gx#stx-pair? _hd2375624710_)
                              (let ((_e2375824715_ (gx#stx-e _hd2375624710_)))
                                (let ((_tl2376024720_ (##cdr _e2375824715_))
                                      (_hd2375924718_ (##car _e2375824715_)))
                                  (if (gx#identifier? _hd2375924718_)
                                      (if (gx#stx-eq? '%#ref _hd2375924718_)
                                          (if (gx#stx-pair? _tl2376024720_)
                                              (let ((_e2376124723_
                                                     (gx#stx-e
                                                      _tl2376024720_)))
                                                (let ((_tl2376324728_
                                                       (##cdr _e2376124723_))
                                                      (_hd2376224726_
                                                       (##car _e2376124723_)))
                                                  (if (gx#stx-null?
                                                       _tl2376324728_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2375724712_)
                                                          (let ((___splice2646026461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2375724712_ '0)))
                    (let ((_tl2376624733_
                           (##vector-ref ___splice2646026461_ '1))
                          (_target2376424731_
                           (##vector-ref ___splice2646026461_ '0)))
                      (if (gx#stx-null? _tl2376624733_)
                          (letrec ((_loop2376724736_
                                    (lambda (_hd2376524739_ _xarg2377124741_)
                                      (if (gx#stx-pair? _hd2376524739_)
                                          (let ((_e2376824744_
                                                 (gx#stx-e _hd2376524739_)))
                                            (let ((_lp-tl2377024749_
                                                   (##cdr _e2376824744_))
                                                  (_lp-hd2376924747_
                                                   (##car _e2376824744_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2376924747_)
                                                  (let ((_e2377324752_
                                                         (gx#stx-e
                                                          _lp-hd2376924747_)))
                                                    (let ((_tl2377524757_
                                                           (##cdr _e2377324752_))
                                                          (_hd2377424755_
                                                           (##car _e2377324752_)))
                                                      (if (gx#identifier?
                                                           _hd2377424755_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2377424755_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2377524757_)
                          (let ((_e2377624760_ (gx#stx-e _tl2377524757_)))
                            (let ((_tl2377824765_ (##cdr _e2377624760_))
                                  (_hd2377724763_ (##car _e2377624760_)))
                              (if (gx#stx-null? _tl2377824765_)
                                  (_loop2376724736_
                                   _lp-tl2377024749_
                                   (cons _hd2377724763_ _xarg2377124741_))
                                  (___match2670326704_
                                   _e2372524627_
                                   _hd2372624630_
                                   _tl2372724632_
                                   _e2372824635_
                                   _hd2372924638_
                                   _tl2373024640_
                                   _e2374024667_
                                   _hd2374124670_
                                   _tl2374224672_
                                   _e2374324675_
                                   _hd2374424678_
                                   _tl2374524680_
                                   _e2374624683_
                                   _hd2374724686_
                                   _tl2374824688_
                                   _e2374924691_
                                   _hd2375024694_
                                   _tl2375124696_
                                   _e2375224699_
                                   _hd2375324702_
                                   _tl2375424704_
                                   _e2375524707_
                                   _hd2375624710_
                                   _tl2375724712_
                                   _e2375824715_
                                   _hd2375924718_
                                   _tl2376024720_
                                   _e2376124723_
                                   _hd2376224726_
                                   _tl2376324728_))))
                          (___match2670326704_
                           _e2372524627_
                           _hd2372624630_
                           _tl2372724632_
                           _e2372824635_
                           _hd2372924638_
                           _tl2373024640_
                           _e2374024667_
                           _hd2374124670_
                           _tl2374224672_
                           _e2374324675_
                           _hd2374424678_
                           _tl2374524680_
                           _e2374624683_
                           _hd2374724686_
                           _tl2374824688_
                           _e2374924691_
                           _hd2375024694_
                           _tl2375124696_
                           _e2375224699_
                           _hd2375324702_
                           _tl2375424704_
                           _e2375524707_
                           _hd2375624710_
                           _tl2375724712_
                           _e2375824715_
                           _hd2375924718_
                           _tl2376024720_
                           _e2376124723_
                           _hd2376224726_
                           _tl2376324728_))
                      (___match2670326704_
                       _e2372524627_
                       _hd2372624630_
                       _tl2372724632_
                       _e2372824635_
                       _hd2372924638_
                       _tl2373024640_
                       _e2374024667_
                       _hd2374124670_
                       _tl2374224672_
                       _e2374324675_
                       _hd2374424678_
                       _tl2374524680_
                       _e2374624683_
                       _hd2374724686_
                       _tl2374824688_
                       _e2374924691_
                       _hd2375024694_
                       _tl2375124696_
                       _e2375224699_
                       _hd2375324702_
                       _tl2375424704_
                       _e2375524707_
                       _hd2375624710_
                       _tl2375724712_
                       _e2375824715_
                       _hd2375924718_
                       _tl2376024720_
                       _e2376124723_
                       _hd2376224726_
                       _tl2376324728_))
                  (___match2670326704_
                   _e2372524627_
                   _hd2372624630_
                   _tl2372724632_
                   _e2372824635_
                   _hd2372924638_
                   _tl2373024640_
                   _e2374024667_
                   _hd2374124670_
                   _tl2374224672_
                   _e2374324675_
                   _hd2374424678_
                   _tl2374524680_
                   _e2374624683_
                   _hd2374724686_
                   _tl2374824688_
                   _e2374924691_
                   _hd2375024694_
                   _tl2375124696_
                   _e2375224699_
                   _hd2375324702_
                   _tl2375424704_
                   _e2375524707_
                   _hd2375624710_
                   _tl2375724712_
                   _e2375824715_
                   _hd2375924718_
                   _tl2376024720_
                   _e2376124723_
                   _hd2376224726_
                   _tl2376324728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2670326704_
                                                   _e2372524627_
                                                   _hd2372624630_
                                                   _tl2372724632_
                                                   _e2372824635_
                                                   _hd2372924638_
                                                   _tl2373024640_
                                                   _e2374024667_
                                                   _hd2374124670_
                                                   _tl2374224672_
                                                   _e2374324675_
                                                   _hd2374424678_
                                                   _tl2374524680_
                                                   _e2374624683_
                                                   _hd2374724686_
                                                   _tl2374824688_
                                                   _e2374924691_
                                                   _hd2375024694_
                                                   _tl2375124696_
                                                   _e2375224699_
                                                   _hd2375324702_
                                                   _tl2375424704_
                                                   _e2375524707_
                                                   _hd2375624710_
                                                   _tl2375724712_
                                                   _e2375824715_
                                                   _hd2375924718_
                                                   _tl2376024720_
                                                   _e2376124723_
                                                   _hd2376224726_
                                                   _tl2376324728_))))
                                          (let ((_xarg2377224768_
                                                 (reverse _xarg2377124741_)))
                                            (if (gx#stx-null? _tl2374224672_)
                                                (let ((_L24771_
                                                       _xarg2377224768_)
                                                      (_L24772_ _hd2376224726_)
                                                      (_L24773_ _hd2375324702_)
                                                      (_L24774_
                                                       _arg2373924664_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2481124814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2481224816_)
                               (cons _g2481124814_ _g2481224816_))
                             '()
                             _L24774_)))
                  (if (gxc#runtime-identifier=? _L24773_ 'make-struct-instance)
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2481824821_
                                                          _g2481924823_)
                                                   (cons _g2481824821_
                                                         _g2481924823_))
                                                 '()
                                                 _L24774_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2482524828_
                                                          _g2482624830_)
                                                   (cons _g2482524828_
                                                         _g2482624830_))
                                                 '()
                                                 _L24771_))))
                          (andmap2 gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2483224835_
                                                      _g2483324837_)
                                               (cons _g2483224835_
                                                     _g2483324837_))
                                             '()
                                             _L24774_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2483924842_
                                                      _g2484024844_)
                                               (cons _g2483924842_
                                                     _g2484024844_))
                                             '()
                                             _L24771_)))
                          '#f)
                      '#f)
                  '#f)
              (___kont2645626457_ _L24771_ _L24772_ _L24773_ _L24774_)
              (___match2670326704_
               _e2372524627_
               _hd2372624630_
               _tl2372724632_
               _e2372824635_
               _hd2372924638_
               _tl2373024640_
               _e2374024667_
               _hd2374124670_
               _tl2374224672_
               _e2374324675_
               _hd2374424678_
               _tl2374524680_
               _e2374624683_
               _hd2374724686_
               _tl2374824688_
               _e2374924691_
               _hd2375024694_
               _tl2375124696_
               _e2375224699_
               _hd2375324702_
               _tl2375424704_
               _e2375524707_
               _hd2375624710_
               _tl2375724712_
               _e2375824715_
               _hd2375924718_
               _tl2376024720_
               _e2376124723_
               _hd2376224726_
               _tl2376324728_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2670326704_
                                                 _e2372524627_
                                                 _hd2372624630_
                                                 _tl2372724632_
                                                 _e2372824635_
                                                 _hd2372924638_
                                                 _tl2373024640_
                                                 _e2374024667_
                                                 _hd2374124670_
                                                 _tl2374224672_
                                                 _e2374324675_
                                                 _hd2374424678_
                                                 _tl2374524680_
                                                 _e2374624683_
                                                 _hd2374724686_
                                                 _tl2374824688_
                                                 _e2374924691_
                                                 _hd2375024694_
                                                 _tl2375124696_
                                                 _e2375224699_
                                                 _hd2375324702_
                                                 _tl2375424704_
                                                 _e2375524707_
                                                 _hd2375624710_
                                                 _tl2375724712_
                                                 _e2375824715_
                                                 _hd2375924718_
                                                 _tl2376024720_
                                                 _e2376124723_
                                                 _hd2376224726_
                                                 _tl2376324728_)))))))
                            (_loop2376724736_ _target2376424731_ '()))
                          (___match2670326704_
                           _e2372524627_
                           _hd2372624630_
                           _tl2372724632_
                           _e2372824635_
                           _hd2372924638_
                           _tl2373024640_
                           _e2374024667_
                           _hd2374124670_
                           _tl2374224672_
                           _e2374324675_
                           _hd2374424678_
                           _tl2374524680_
                           _e2374624683_
                           _hd2374724686_
                           _tl2374824688_
                           _e2374924691_
                           _hd2375024694_
                           _tl2375124696_
                           _e2375224699_
                           _hd2375324702_
                           _tl2375424704_
                           _e2375524707_
                           _hd2375624710_
                           _tl2375724712_
                           _e2375824715_
                           _hd2375924718_
                           _tl2376024720_
                           _e2376124723_
                           _hd2376224726_
                           _tl2376324728_))))
                  (___match2670326704_
                   _e2372524627_
                   _hd2372624630_
                   _tl2372724632_
                   _e2372824635_
                   _hd2372924638_
                   _tl2373024640_
                   _e2374024667_
                   _hd2374124670_
                   _tl2374224672_
                   _e2374324675_
                   _hd2374424678_
                   _tl2374524680_
                   _e2374624683_
                   _hd2374724686_
                   _tl2374824688_
                   _e2374924691_
                   _hd2375024694_
                   _tl2375124696_
                   _e2375224699_
                   _hd2375324702_
                   _tl2375424704_
                   _e2375524707_
                   _hd2375624710_
                   _tl2375724712_
                   _e2375824715_
                   _hd2375924718_
                   _tl2376024720_
                   _e2376124723_
                   _hd2376224726_
                   _tl2376324728_))
              (___match2679126792_
               _e2372524627_
               _hd2372624630_
               _tl2372724632_
               _e2372824635_
               _hd2372924638_
               _tl2373024640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2679126792_
                                               _e2372524627_
                                               _hd2372624630_
                                               _tl2372724632_
                                               _e2372824635_
                                               _hd2372924638_
                                               _tl2373024640_))
                                          (___match2679126792_
                                           _e2372524627_
                                           _hd2372624630_
                                           _tl2372724632_
                                           _e2372824635_
                                           _hd2372924638_
                                           _tl2373024640_))
                                      (___match2679126792_
                                       _e2372524627_
                                       _hd2372624630_
                                       _tl2372724632_
                                       _e2372824635_
                                       _hd2372924638_
                                       _tl2373024640_))))
                              (___match2679126792_
                               _e2372524627_
                               _hd2372624630_
                               _tl2372724632_
                               _e2372824635_
                               _hd2372924638_
                               _tl2373024640_))))
                      (___match2679126792_
                       _e2372524627_
                       _hd2372624630_
                       _tl2372724632_
                       _e2372824635_
                       _hd2372924638_
                       _tl2373024640_))
                  (___match2679126792_
                   _e2372524627_
                   _hd2372624630_
                   _tl2372724632_
                   _e2372824635_
                   _hd2372924638_
                   _tl2373024640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2679126792_
                                                   _e2372524627_
                                                   _hd2372624630_
                                                   _tl2372724632_
                                                   _e2372824635_
                                                   _hd2372924638_
                                                   _tl2373024640_))
                                              (___match2679126792_
                                               _e2372524627_
                                               _hd2372624630_
                                               _tl2372724632_
                                               _e2372824635_
                                               _hd2372924638_
                                               _tl2373024640_))
                                          (___match2679126792_
                                           _e2372524627_
                                           _hd2372624630_
                                           _tl2372724632_
                                           _e2372824635_
                                           _hd2372924638_
                                           _tl2373024640_))))
                                  (___match2679126792_
                                   _e2372524627_
                                   _hd2372624630_
                                   _tl2372724632_
                                   _e2372824635_
                                   _hd2372924638_
                                   _tl2373024640_))))
                          (___match2679126792_
                           _e2372524627_
                           _hd2372624630_
                           _tl2372724632_
                           _e2372824635_
                           _hd2372924638_
                           _tl2373024640_))
                      (___match2679126792_
                       _e2372524627_
                       _hd2372624630_
                       _tl2372724632_
                       _e2372824635_
                       _hd2372924638_
                       _tl2373024640_))
                  (___match2679126792_
                   _e2372524627_
                   _hd2372624630_
                   _tl2372724632_
                   _e2372824635_
                   _hd2372924638_
                   _tl2373024640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2679126792_
                                                   _e2372524627_
                                                   _hd2372624630_
                                                   _tl2372724632_
                                                   _e2372824635_
                                                   _hd2372924638_
                                                   _tl2373024640_))))
                                          (___match2679126792_
                                           _e2372524627_
                                           _hd2372624630_
                                           _tl2372724632_
                                           _e2372824635_
                                           _hd2372924638_
                                           _tl2373024640_)))))))
                      (_loop2373424648_ _target2373124643_ '()))))
                 (___match2661926620_
                  (lambda (_e2372524627_
                           _hd2372624630_
                           _tl2372724632_
                           _e2372824635_
                           _hd2372924638_
                           _tl2373024640_)
                    (if (gx#stx-pair/null? _hd2372924638_)
                        (let ((___splice2645826459_
                               (gx#syntax-split-splice _hd2372924638_ '0)))
                          (let ((_tl2373324645_
                                 (##vector-ref ___splice2645826459_ '1))
                                (_target2373124643_
                                 (##vector-ref ___splice2645826459_ '0)))
                            (if (gx#stx-null? _tl2373324645_)
                                (___match2662726628_
                                 _e2372524627_
                                 _hd2372624630_
                                 _tl2372724632_
                                 _e2372824635_
                                 _hd2372924638_
                                 _tl2373024640_
                                 ___splice2645826459_
                                 _target2373124643_
                                 _tl2373324645_)
                                (___match2663926640_
                                 _e2372524627_
                                 _hd2372624630_
                                 _tl2372724632_
                                 _e2372824635_
                                 _hd2372924638_
                                 _tl2373024640_))))
                        (___match2663926640_
                         _e2372524627_
                         _hd2372624630_
                         _tl2372724632_
                         _e2372824635_
                         _hd2372924638_
                         _tl2373024640_))))
                 (___match2660726608_
                  (lambda (_e2367324857_
                           _hd2367424860_
                           _tl2367524862_
                           _e2367624865_
                           _hd2367724868_
                           _tl2367824870_
                           _e2367924873_
                           _hd2368024876_
                           _tl2368124878_
                           _e2368224881_
                           _hd2368324884_
                           _tl2368424886_
                           _e2368524889_
                           _hd2368624892_
                           _tl2368724894_
                           _e2368824897_
                           _hd2368924900_
                           _tl2369024902_
                           _e2369124905_
                           _hd2369224908_
                           _tl2369324910_
                           _e2369424913_
                           _hd2369524916_
                           _tl2369624918_
                           _e2369724921_
                           _hd2369824924_
                           _tl2369924926_
                           _e2370024929_
                           _hd2370124932_
                           _tl2370224934_
                           _e2370324937_
                           _hd2370424940_
                           _tl2370524942_
                           _e2370624945_
                           _hd2370724948_
                           _tl2370824950_
                           _e2370924953_
                           _hd2371024956_
                           _tl2371124958_
                           _e2371224961_
                           _hd2371324964_
                           _tl2371424966_
                           _e2371524969_
                           _hd2371624972_
                           _tl2371724974_
                           _e2371824977_
                           _hd2371924980_
                           _tl2372024982_)
                    (let ((_L24985_ _hd2371924980_)
                          (_L24986_ _hd2371024956_)
                          (_L24987_ _hd2370124932_)
                          (_L24988_ _hd2369224908_)
                          (_L24989_ _hd2367724868_))
                      (if (if (gx#identifier? _L24989_)
                              (if (gxc#runtime-identifier=? _L24988_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24987_
                                       'make-struct-instance)
                                      (gx#free-identifier=? _L24989_ _L24985_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2645426455_
                           _L24985_
                           _L24986_
                           _L24987_
                           _L24988_
                           _L24989_)
                          (___match2661926620_
                           _e2367324857_
                           _hd2367424860_
                           _tl2367524862_
                           _e2367624865_
                           _hd2367724868_
                           _tl2367824870_)))))
                 (___match2648526486_
                  (lambda (_e2367324857_ _hd2367424860_ _tl2367524862_)
                    (if (gx#stx-pair? _tl2367524862_)
                        (let ((_e2367624865_ (gx#stx-e _tl2367524862_)))
                          (let ((_tl2367824870_ (##cdr _e2367624865_))
                                (_hd2367724868_ (##car _e2367624865_)))
                            (if (gx#stx-pair? _tl2367824870_)
                                (let ((_e2367924873_
                                       (gx#stx-e _tl2367824870_)))
                                  (let ((_tl2368124878_ (##cdr _e2367924873_))
                                        (_hd2368024876_ (##car _e2367924873_)))
                                    (if (gx#stx-pair? _hd2368024876_)
                                        (let ((_e2368224881_
                                               (gx#stx-e _hd2368024876_)))
                                          (let ((_tl2368424886_
                                                 (##cdr _e2368224881_))
                                                (_hd2368324884_
                                                 (##car _e2368224881_)))
                                            (if (gx#identifier? _hd2368324884_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2368324884_)
                                                    (if (gx#stx-pair?
                                                         _tl2368424886_)
                                                        (let ((_e2368524889_
                                                               (gx#stx-e
                                                                _tl2368424886_)))
                                                          (let ((_tl2368724894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2368524889_))
                        (_hd2368624892_ (##car _e2368524889_)))
                    (if (gx#stx-pair? _hd2368624892_)
                        (let ((_e2368824897_ (gx#stx-e _hd2368624892_)))
                          (let ((_tl2369024902_ (##cdr _e2368824897_))
                                (_hd2368924900_ (##car _e2368824897_)))
                            (if (gx#identifier? _hd2368924900_)
                                (if (gx#stx-eq? '%#ref _hd2368924900_)
                                    (if (gx#stx-pair? _tl2369024902_)
                                        (let ((_e2369124905_
                                               (gx#stx-e _tl2369024902_)))
                                          (let ((_tl2369324910_
                                                 (##cdr _e2369124905_))
                                                (_hd2369224908_
                                                 (##car _e2369124905_)))
                                            (if (gx#stx-null? _tl2369324910_)
                                                (if (gx#stx-pair?
                                                     _tl2368724894_)
                                                    (let ((_e2369424913_
                                                           (gx#stx-e
                                                            _tl2368724894_)))
                                                      (let ((_tl2369624918_
                                                             (##cdr _e2369424913_))
                                                            (_hd2369524916_
                                                             (##car _e2369424913_)))
                                                        (if (gx#stx-pair?
                                                             _hd2369524916_)
                                                            (let ((_e2369724921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2369524916_)))
                      (let ((_tl2369924926_ (##cdr _e2369724921_))
                            (_hd2369824924_ (##car _e2369724921_)))
                        (if (gx#identifier? _hd2369824924_)
                            (if (gx#stx-eq? '%#ref _hd2369824924_)
                                (if (gx#stx-pair? _tl2369924926_)
                                    (let ((_e2370024929_
                                           (gx#stx-e _tl2369924926_)))
                                      (let ((_tl2370224934_
                                             (##cdr _e2370024929_))
                                            (_hd2370124932_
                                             (##car _e2370024929_)))
                                        (if (gx#stx-null? _tl2370224934_)
                                            (if (gx#stx-pair? _tl2369624918_)
                                                (let ((_e2370324937_
                                                       (gx#stx-e
                                                        _tl2369624918_)))
                                                  (let ((_tl2370524942_
                                                         (##cdr _e2370324937_))
                                                        (_hd2370424940_
                                                         (##car _e2370324937_)))
                                                    (if (gx#stx-pair?
                                                         _hd2370424940_)
                                                        (let ((_e2370624945_
                                                               (gx#stx-e
                                                                _hd2370424940_)))
                                                          (let ((_tl2370824950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2370624945_))
                        (_hd2370724948_ (##car _e2370624945_)))
                    (if (gx#identifier? _hd2370724948_)
                        (if (gx#stx-eq? '%#ref _hd2370724948_)
                            (if (gx#stx-pair? _tl2370824950_)
                                (let ((_e2370924953_
                                       (gx#stx-e _tl2370824950_)))
                                  (let ((_tl2371124958_ (##cdr _e2370924953_))
                                        (_hd2371024956_ (##car _e2370924953_)))
                                    (if (gx#stx-null? _tl2371124958_)
                                        (if (gx#stx-pair? _tl2370524942_)
                                            (let ((_e2371224961_
                                                   (gx#stx-e _tl2370524942_)))
                                              (let ((_tl2371424966_
                                                     (##cdr _e2371224961_))
                                                    (_hd2371324964_
                                                     (##car _e2371224961_)))
                                                (if (gx#stx-pair?
                                                     _hd2371324964_)
                                                    (let ((_e2371524969_
                                                           (gx#stx-e
                                                            _hd2371324964_)))
                                                      (let ((_tl2371724974_
                                                             (##cdr _e2371524969_))
                                                            (_hd2371624972_
                                                             (##car _e2371524969_)))
                                                        (if (gx#identifier?
                                                             _hd2371624972_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2371624972_)
                        (if (gx#stx-pair? _tl2371724974_)
                            (let ((_e2371824977_ (gx#stx-e _tl2371724974_)))
                              (let ((_tl2372024982_ (##cdr _e2371824977_))
                                    (_hd2371924980_ (##car _e2371824977_)))
                                (if (gx#stx-null? _tl2372024982_)
                                    (if (gx#stx-null? _tl2371424966_)
                                        (if (gx#stx-null? _tl2368124878_)
                                            (___match2660726608_
                                             _e2367324857_
                                             _hd2367424860_
                                             _tl2367524862_
                                             _e2367624865_
                                             _hd2367724868_
                                             _tl2367824870_
                                             _e2367924873_
                                             _hd2368024876_
                                             _tl2368124878_
                                             _e2368224881_
                                             _hd2368324884_
                                             _tl2368424886_
                                             _e2368524889_
                                             _hd2368624892_
                                             _tl2368724894_
                                             _e2368824897_
                                             _hd2368924900_
                                             _tl2369024902_
                                             _e2369124905_
                                             _hd2369224908_
                                             _tl2369324910_
                                             _e2369424913_
                                             _hd2369524916_
                                             _tl2369624918_
                                             _e2369724921_
                                             _hd2369824924_
                                             _tl2369924926_
                                             _e2370024929_
                                             _hd2370124932_
                                             _tl2370224934_
                                             _e2370324937_
                                             _hd2370424940_
                                             _tl2370524942_
                                             _e2370624945_
                                             _hd2370724948_
                                             _tl2370824950_
                                             _e2370924953_
                                             _hd2371024956_
                                             _tl2371124958_
                                             _e2371224961_
                                             _hd2371324964_
                                             _tl2371424966_
                                             _e2371524969_
                                             _hd2371624972_
                                             _tl2371724974_
                                             _e2371824977_
                                             _hd2371924980_
                                             _tl2372024982_)
                                            (___match2661926620_
                                             _e2367324857_
                                             _hd2367424860_
                                             _tl2367524862_
                                             _e2367624865_
                                             _hd2367724868_
                                             _tl2367824870_))
                                        (___match2661926620_
                                         _e2367324857_
                                         _hd2367424860_
                                         _tl2367524862_
                                         _e2367624865_
                                         _hd2367724868_
                                         _tl2367824870_))
                                    (___match2661926620_
                                     _e2367324857_
                                     _hd2367424860_
                                     _tl2367524862_
                                     _e2367624865_
                                     _hd2367724868_
                                     _tl2367824870_))))
                            (___match2661926620_
                             _e2367324857_
                             _hd2367424860_
                             _tl2367524862_
                             _e2367624865_
                             _hd2367724868_
                             _tl2367824870_))
                        (___match2661926620_
                         _e2367324857_
                         _hd2367424860_
                         _tl2367524862_
                         _e2367624865_
                         _hd2367724868_
                         _tl2367824870_))
                    (___match2661926620_
                     _e2367324857_
                     _hd2367424860_
                     _tl2367524862_
                     _e2367624865_
                     _hd2367724868_
                     _tl2367824870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2661926620_
                                                     _e2367324857_
                                                     _hd2367424860_
                                                     _tl2367524862_
                                                     _e2367624865_
                                                     _hd2367724868_
                                                     _tl2367824870_))))
                                            (___match2661926620_
                                             _e2367324857_
                                             _hd2367424860_
                                             _tl2367524862_
                                             _e2367624865_
                                             _hd2367724868_
                                             _tl2367824870_))
                                        (___match2661926620_
                                         _e2367324857_
                                         _hd2367424860_
                                         _tl2367524862_
                                         _e2367624865_
                                         _hd2367724868_
                                         _tl2367824870_))))
                                (___match2661926620_
                                 _e2367324857_
                                 _hd2367424860_
                                 _tl2367524862_
                                 _e2367624865_
                                 _hd2367724868_
                                 _tl2367824870_))
                            (___match2661926620_
                             _e2367324857_
                             _hd2367424860_
                             _tl2367524862_
                             _e2367624865_
                             _hd2367724868_
                             _tl2367824870_))
                        (___match2661926620_
                         _e2367324857_
                         _hd2367424860_
                         _tl2367524862_
                         _e2367624865_
                         _hd2367724868_
                         _tl2367824870_))))
                (___match2661926620_
                 _e2367324857_
                 _hd2367424860_
                 _tl2367524862_
                 _e2367624865_
                 _hd2367724868_
                 _tl2367824870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2661926620_
                                                 _e2367324857_
                                                 _hd2367424860_
                                                 _tl2367524862_
                                                 _e2367624865_
                                                 _hd2367724868_
                                                 _tl2367824870_))
                                            (___match2661926620_
                                             _e2367324857_
                                             _hd2367424860_
                                             _tl2367524862_
                                             _e2367624865_
                                             _hd2367724868_
                                             _tl2367824870_))))
                                    (___match2661926620_
                                     _e2367324857_
                                     _hd2367424860_
                                     _tl2367524862_
                                     _e2367624865_
                                     _hd2367724868_
                                     _tl2367824870_))
                                (___match2661926620_
                                 _e2367324857_
                                 _hd2367424860_
                                 _tl2367524862_
                                 _e2367624865_
                                 _hd2367724868_
                                 _tl2367824870_))
                            (___match2661926620_
                             _e2367324857_
                             _hd2367424860_
                             _tl2367524862_
                             _e2367624865_
                             _hd2367724868_
                             _tl2367824870_))))
                    (___match2661926620_
                     _e2367324857_
                     _hd2367424860_
                     _tl2367524862_
                     _e2367624865_
                     _hd2367724868_
                     _tl2367824870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2661926620_
                                                     _e2367324857_
                                                     _hd2367424860_
                                                     _tl2367524862_
                                                     _e2367624865_
                                                     _hd2367724868_
                                                     _tl2367824870_))
                                                (___match2661926620_
                                                 _e2367324857_
                                                 _hd2367424860_
                                                 _tl2367524862_
                                                 _e2367624865_
                                                 _hd2367724868_
                                                 _tl2367824870_))))
                                        (___match2661926620_
                                         _e2367324857_
                                         _hd2367424860_
                                         _tl2367524862_
                                         _e2367624865_
                                         _hd2367724868_
                                         _tl2367824870_))
                                    (___match2661926620_
                                     _e2367324857_
                                     _hd2367424860_
                                     _tl2367524862_
                                     _e2367624865_
                                     _hd2367724868_
                                     _tl2367824870_))
                                (___match2661926620_
                                 _e2367324857_
                                 _hd2367424860_
                                 _tl2367524862_
                                 _e2367624865_
                                 _hd2367724868_
                                 _tl2367824870_))))
                        (___match2661926620_
                         _e2367324857_
                         _hd2367424860_
                         _tl2367524862_
                         _e2367624865_
                         _hd2367724868_
                         _tl2367824870_))))
                (___match2661926620_
                 _e2367324857_
                 _hd2367424860_
                 _tl2367524862_
                 _e2367624865_
                 _hd2367724868_
                 _tl2367824870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2661926620_
                                                     _e2367324857_
                                                     _hd2367424860_
                                                     _tl2367524862_
                                                     _e2367624865_
                                                     _hd2367724868_
                                                     _tl2367824870_))
                                                (___match2661926620_
                                                 _e2367324857_
                                                 _hd2367424860_
                                                 _tl2367524862_
                                                 _e2367624865_
                                                 _hd2367724868_
                                                 _tl2367824870_))))
                                        (___match2661926620_
                                         _e2367324857_
                                         _hd2367424860_
                                         _tl2367524862_
                                         _e2367624865_
                                         _hd2367724868_
                                         _tl2367824870_))))
                                (___match2661926620_
                                 _e2367324857_
                                 _hd2367424860_
                                 _tl2367524862_
                                 _e2367624865_
                                 _hd2367724868_
                                 _tl2367824870_))))
                        (___match2692526926_
                         _e2367324857_
                         _hd2367424860_
                         _tl2367524862_)))))
            (if (gx#stx-pair? ___stx2645026451_)
                (let ((_e2366525042_ (gx#stx-e ___stx2645026451_)))
                  (let ((_tl2366725047_ (##cdr _e2366525042_))
                        (_hd2366625045_ (##car _e2366525042_)))
                    (if (gxc#current-compile-type-closure)
                        (let ((_L25050_ _tl2366725047_))
                          (___kont2645226453_ _L25050_))
                        (___match2648526486_
                         _e2366525042_
                         _hd2366625045_
                         _tl2366725047_))))
                (_g2366223969_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx23609_)
      (letrec ((_clause-e23611_
                (lambda (_form23652_)
                  (let ((__obj28696 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj28696
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form23652_)
                       (if (not (gxc#current-compile-type-closure))
                           (if (gxc#dispatch-lambda-form? _form23652_)
                               (gxc#dispatch-lambda-form-delegate _form23652_)
                               '#f)
                           '#f))
                      __obj28696)))))
        (let* ((_g2361323623_
                (lambda (_g2361423620_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2361423620_)))
               (_g2361223649_
                (lambda (_g2361423626_)
                  (if (gx#stx-pair? _g2361423626_)
                      (let ((_e2361623628_ (gx#stx-e _g2361423626_)))
                        (let ((_hd2361723631_ (##car _e2361623628_))
                              (_tl2361823633_ (##cdr _e2361623628_)))
                          ((lambda (_L23636_)
                             (let ((_clauses23647_
                                    (map _clause-e23611_ _L23636_)))
                               (##structure
                                gxc#!case-lambda::t
                                'case-lambda
                                _clauses23647_)))
                           _tl2361823633_)))
                      (_g2361323623_ _g2361423626_)))))
          (_g2361223649_ _stx23609_)))))
  (define gxc#basic-expression-type-let-values%
    (lambda (_stx23541_)
      (let* ((_g2354323560_
              (lambda (_g2354423557_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2354423557_)))
             (_g2354223606_
              (lambda (_g2354423563_)
                (if (gx#stx-pair? _g2354423563_)
                    (let ((_e2354723565_ (gx#stx-e _g2354423563_)))
                      (let ((_hd2354823568_ (##car _e2354723565_))
                            (_tl2354923570_ (##cdr _e2354723565_)))
                        (if (gx#stx-pair? _tl2354923570_)
                            (let ((_e2355023573_ (gx#stx-e _tl2354923570_)))
                              (let ((_hd2355123576_ (##car _e2355023573_))
                                    (_tl2355223578_ (##cdr _e2355023573_)))
                                (if (gx#stx-pair? _tl2355223578_)
                                    (let ((_e2355323581_
                                           (gx#stx-e _tl2355223578_)))
                                      (let ((_hd2355423584_
                                             (##car _e2355323581_))
                                            (_tl2355523586_
                                             (##cdr _e2355323581_)))
                                        (if (gx#stx-null? _tl2355523586_)
                                            ((lambda (_L23589_ _L23590_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (gxc#compile-e _L23589_))
                                                gxc#current-compile-type-closure
                                                '#t))
                                             _hd2355423584_
                                             _hd2355123576_)
                                            (_g2354323560_ _g2354423563_))))
                                    (_g2354323560_ _g2354423563_))))
                            (_g2354323560_ _g2354423563_))))
                    (_g2354323560_ _g2354423563_)))))
        (_g2354223606_ _stx23541_))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx23446_)
      (let* ((___stx2693426935_ _stx23446_)
             (_g2344923469_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2693426935_))))
        (let ((___kont2693626937_
               (lambda (_L23513_ _L23514_)
                 (let ((_type-e2353123533_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L23514_)
                         '#f)))
                   (if _type-e2353123533_
                       (let ((_type-e23536_ _type-e2353123533_))
                         (_type-e23536_ _stx23446_ _L23513_))
                       '#f))))
              (___kont2693826939_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2693426935_)
              (let ((_e2345323481_ (gx#stx-e ___stx2693426935_)))
                (let ((_tl2345523486_ (##cdr _e2345323481_))
                      (_hd2345423484_ (##car _e2345323481_)))
                  (if (gx#stx-pair? _tl2345523486_)
                      (let ((_e2345623489_ (gx#stx-e _tl2345523486_)))
                        (let ((_tl2345823494_ (##cdr _e2345623489_))
                              (_hd2345723492_ (##car _e2345623489_)))
                          (if (gx#stx-pair? _hd2345723492_)
                              (let ((_e2345923497_ (gx#stx-e _hd2345723492_)))
                                (let ((_tl2346123502_ (##cdr _e2345923497_))
                                      (_hd2346023500_ (##car _e2345923497_)))
                                  (if (gx#identifier? _hd2346023500_)
                                      (if (gx#stx-eq? '%#ref _hd2346023500_)
                                          (if (gx#stx-pair? _tl2346123502_)
                                              (let ((_e2346223505_
                                                     (gx#stx-e
                                                      _tl2346123502_)))
                                                (let ((_tl2346423510_
                                                       (##cdr _e2346223505_))
                                                      (_hd2346323508_
                                                       (##car _e2346223505_)))
                                                  (if (gx#stx-null?
                                                       _tl2346423510_)
                                                      (___kont2693626937_
                                                       _tl2345823494_
                                                       _hd2346323508_)
                                                      (___kont2693826939_))))
                                              (___kont2693826939_))
                                          (___kont2693826939_))
                                      (___kont2693826939_))))
                              (___kont2693826939_))))
                      (___kont2693826939_))))
              (___kont2693826939_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx22926_ _args22927_)
      (let* ((___stx2697226973_ _args22927_)
             (_g2293123045_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2697226973_))))
        (let ((___kont2697426975_
               (lambda (_L23395_ _L23396_ _L23397_ _L23398_ _L23399_)
                 (let ((__obj28697 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj28697
                      (gx#stx-e _L23399_)
                      '#f
                      (gx#stx-e _L23398_)
                      '0
                      (gx#stx-e _L23395_)
                      (gx#stx-e _L23396_))
                     __obj28697))))
              (___kont2697626977_
               (lambda (_L23185_ _L23186_ _L23187_ _L23188_ _L23189_ _L23190_)
                 (let* ((_super-t23236_
                         (if (gx#stx-e _L23189_)
                             (gxc#identifier-symbol _L23189_)
                             '#f))
                        (_super-type23238_
                         (if _super-t23236_
                             (gxc#optimizer-resolve-type _super-t23236_)
                             '#f)))
                   (begin
                     (if (if _super-type23238_
                             (not (##structure-instance-of?
                                   _super-type23238_
                                   'gxc#!struct-type::t))
                             '#f)
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx22926_
                          _L23189_)
                         '#!void)
                     (let ((_fields23254_ (gx#stx-e _L23188_))
                           (_xfields23255_
                            (if _super-type23238_
                                (let ((_super-fields2324023243_
                                       (##structure-ref
                                        _super-type23238_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2324123245_
                                       (##structure-ref
                                        _super-type23238_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2324023243_
                                      (if _super-xfields2324123245_
                                          (let ((_super-fields23248_
                                                 _super-fields2324023243_)
                                                (_super-xfields23249_
                                                 _super-xfields2324123245_))
                                            (fx+ _super-fields23248_
                                                 _super-xfields23249_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist23256_ (gx#stx-e _L23186_))
                           (_ctor23257_
                            (let ((_$e23251_ (gx#stx-e _L23185_)))
                              (if _$e23251_
                                  (values _$e23251_)
                                  (if _super-type23238_
                                      (##structure-ref
                                       _super-type23238_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t23236_ '#!void '#f))))))
                       (let ((__obj28698 (make-object gxc#!struct-type::t '7)))
                         (begin
                           (gxc#!struct-type:::init!
                            __obj28698
                            (gx#stx-e _L23190_)
                            _super-t23236_
                            _fields23254_
                            _xfields23255_
                            _ctor23257_
                            _plist23256_)
                           __obj28698)))))))
              (___kont2697826979_
               (lambda ()
                 (begin
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx22926_))
                   '#f))))
          (if (gx#stx-pair? ___stx2697226973_)
              (let ((_e2293823264_ (gx#stx-e ___stx2697226973_)))
                (let ((_tl2294023269_ (##cdr _e2293823264_))
                      (_hd2293923267_ (##car _e2293823264_)))
                  (if (gx#stx-pair? _hd2293923267_)
                      (let ((_e2294123272_ (gx#stx-e _hd2293923267_)))
                        (let ((_tl2294323277_ (##cdr _e2294123272_))
                              (_hd2294223275_ (##car _e2294123272_)))
                          (if (gx#identifier? _hd2294223275_)
                              (if (gx#stx-eq? '%#quote _hd2294223275_)
                                  (if (gx#stx-pair? _tl2294323277_)
                                      (let ((_e2294423280_
                                             (gx#stx-e _tl2294323277_)))
                                        (let ((_tl2294623285_
                                               (##cdr _e2294423280_))
                                              (_hd2294523283_
                                               (##car _e2294423280_)))
                                          (if (gx#stx-null? _tl2294623285_)
                                              (if (gx#stx-pair? _tl2294023269_)
                                                  (let ((_e2294723288_
                                                         (gx#stx-e
                                                          _tl2294023269_)))
                                                    (let ((_tl2294923293_
                                                           (##cdr _e2294723288_))
                                                          (_hd2294823291_
                                                           (##car _e2294723288_)))
                                                      (if (gx#stx-pair?
                                                           _hd2294823291_)
                                                          (let ((_e2295023296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2294823291_)))
                    (let ((_tl2295223301_ (##cdr _e2295023296_))
                          (_hd2295123299_ (##car _e2295023296_)))
                      (if (gx#identifier? _hd2295123299_)
                          (if (gx#stx-eq? '%#quote _hd2295123299_)
                              (if (gx#stx-pair? _tl2295223301_)
                                  (let ((_e2295323304_
                                         (gx#stx-e _tl2295223301_)))
                                    (let ((_tl2295523309_
                                           (##cdr _e2295323304_))
                                          (_hd2295423307_
                                           (##car _e2295323304_)))
                                      (if (gx#stx-datum? _hd2295423307_)
                                          (let ((_e2295623312_
                                                 (gx#stx-e _hd2295423307_)))
                                            (if (equal? _e2295623312_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2295523309_)
                                                    (if (gx#stx-pair?
                                                         _tl2294923293_)
                                                        (let ((_e2295723315_
                                                               (gx#stx-e
                                                                _tl2294923293_)))
                                                          (let ((_tl2295923320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2295723315_))
                        (_hd2295823318_ (##car _e2295723315_)))
                    (if (gx#stx-pair? _hd2295823318_)
                        (let ((_e2296023323_ (gx#stx-e _hd2295823318_)))
                          (let ((_tl2296223328_ (##cdr _e2296023323_))
                                (_hd2296123326_ (##car _e2296023323_)))
                            (if (gx#identifier? _hd2296123326_)
                                (if (gx#stx-eq? '%#quote _hd2296123326_)
                                    (if (gx#stx-pair? _tl2296223328_)
                                        (let ((_e2296323331_
                                               (gx#stx-e _tl2296223328_)))
                                          (let ((_tl2296523336_
                                                 (##cdr _e2296323331_))
                                                (_hd2296423334_
                                                 (##car _e2296323331_)))
                                            (if (gx#stx-null? _tl2296523336_)
                                                (if (gx#stx-pair?
                                                     _tl2295923320_)
                                                    (let ((_e2296623339_
                                                           (gx#stx-e
                                                            _tl2295923320_)))
                                                      (let ((_tl2296823344_
                                                             (##cdr _e2296623339_))
                                                            (_hd2296723342_
                                                             (##car _e2296623339_)))
                                                        (if (gx#stx-pair?
                                                             _tl2296823344_)
                                                            (let ((_e2296923347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2296823344_)))
                      (let ((_tl2297123352_ (##cdr _e2296923347_))
                            (_hd2297023350_ (##car _e2296923347_)))
                        (if (gx#stx-pair? _hd2297023350_)
                            (let ((_e2297223355_ (gx#stx-e _hd2297023350_)))
                              (let ((_tl2297423360_ (##cdr _e2297223355_))
                                    (_hd2297323358_ (##car _e2297223355_)))
                                (if (gx#identifier? _hd2297323358_)
                                    (if (gx#stx-eq? '%#quote _hd2297323358_)
                                        (if (gx#stx-pair? _tl2297423360_)
                                            (let ((_e2297523363_
                                                   (gx#stx-e _tl2297423360_)))
                                              (let ((_tl2297723368_
                                                     (##cdr _e2297523363_))
                                                    (_hd2297623366_
                                                     (##car _e2297523363_)))
                                                (if (gx#stx-null?
                                                     _tl2297723368_)
                                                    (if (gx#stx-pair?
                                                         _tl2297123352_)
                                                        (let ((_e2297823371_
                                                               (gx#stx-e
                                                                _tl2297123352_)))
                                                          (let ((_tl2298023376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2297823371_))
                        (_hd2297923374_ (##car _e2297823371_)))
                    (if (gx#stx-pair? _hd2297923374_)
                        (let ((_e2298123379_ (gx#stx-e _hd2297923374_)))
                          (let ((_tl2298323384_ (##cdr _e2298123379_))
                                (_hd2298223382_ (##car _e2298123379_)))
                            (if (gx#identifier? _hd2298223382_)
                                (if (gx#stx-eq? '%#quote _hd2298223382_)
                                    (if (gx#stx-pair? _tl2298323384_)
                                        (let ((_e2298423387_
                                               (gx#stx-e _tl2298323384_)))
                                          (let ((_tl2298623392_
                                                 (##cdr _e2298423387_))
                                                (_hd2298523390_
                                                 (##car _e2298423387_)))
                                            (if (gx#stx-null? _tl2298623392_)
                                                (___kont2697426975_
                                                 _hd2298523390_
                                                 _hd2297623366_
                                                 _hd2296723342_
                                                 _hd2296423334_
                                                 _hd2294523283_)
                                                (___kont2697826979_))))
                                        (___kont2697826979_))
                                    (___kont2697826979_))
                                (___kont2697826979_))))
                        (___kont2697826979_))))
                (___kont2697826979_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2697826979_))))
                                            (___kont2697826979_))
                                        (___kont2697826979_))
                                    (___kont2697826979_))))
                            (___kont2697826979_))))
                    (___kont2697826979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2697826979_))
                                                (___kont2697826979_))))
                                        (___kont2697826979_))
                                    (___kont2697826979_))
                                (___kont2697826979_))))
                        (___kont2697826979_))))
                (___kont2697826979_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2697826979_))
                                                (___kont2697826979_)))
                                          (___kont2697826979_))))
                                  (___kont2697826979_))
                              (if (gx#stx-eq? '%#ref _hd2295123299_)
                                  (if (gx#stx-pair? _tl2295223301_)
                                      (let ((_e2300823097_
                                             (gx#stx-e _tl2295223301_)))
                                        (let ((_tl2301023102_
                                               (##cdr _e2300823097_))
                                              (_hd2300923100_
                                               (##car _e2300823097_)))
                                          (if (gx#stx-null? _tl2301023102_)
                                              (if (gx#stx-pair? _tl2294923293_)
                                                  (let ((_e2301123105_
                                                         (gx#stx-e
                                                          _tl2294923293_)))
                                                    (let ((_tl2301323110_
                                                           (##cdr _e2301123105_))
                                                          (_hd2301223108_
                                                           (##car _e2301123105_)))
                                                      (if (gx#stx-pair?
                                                           _hd2301223108_)
                                                          (let ((_e2301423113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2301223108_)))
                    (let ((_tl2301623118_ (##cdr _e2301423113_))
                          (_hd2301523116_ (##car _e2301423113_)))
                      (if (gx#identifier? _hd2301523116_)
                          (if (gx#stx-eq? '%#quote _hd2301523116_)
                              (if (gx#stx-pair? _tl2301623118_)
                                  (let ((_e2301723121_
                                         (gx#stx-e _tl2301623118_)))
                                    (let ((_tl2301923126_
                                           (##cdr _e2301723121_))
                                          (_hd2301823124_
                                           (##car _e2301723121_)))
                                      (if (gx#stx-null? _tl2301923126_)
                                          (if (gx#stx-pair? _tl2301323110_)
                                              (let ((_e2302023129_
                                                     (gx#stx-e
                                                      _tl2301323110_)))
                                                (let ((_tl2302223134_
                                                       (##cdr _e2302023129_))
                                                      (_hd2302123132_
                                                       (##car _e2302023129_)))
                                                  (if (gx#stx-pair?
                                                       _tl2302223134_)
                                                      (let ((_e2302323137_
                                                             (gx#stx-e
                                                              _tl2302223134_)))
                                                        (let ((_tl2302523142_
                                                               (##cdr _e2302323137_))
                                                              (_hd2302423140_
                                                               (##car _e2302323137_)))
                                                          (if (gx#stx-pair?
                                                               _hd2302423140_)
                                                              (let ((_e2302623145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2302423140_)))
                        (let ((_tl2302823150_ (##cdr _e2302623145_))
                              (_hd2302723148_ (##car _e2302623145_)))
                          (if (gx#identifier? _hd2302723148_)
                              (if (gx#stx-eq? '%#quote _hd2302723148_)
                                  (if (gx#stx-pair? _tl2302823150_)
                                      (let ((_e2302923153_
                                             (gx#stx-e _tl2302823150_)))
                                        (let ((_tl2303123158_
                                               (##cdr _e2302923153_))
                                              (_hd2303023156_
                                               (##car _e2302923153_)))
                                          (if (gx#stx-null? _tl2303123158_)
                                              (if (gx#stx-pair? _tl2302523142_)
                                                  (let ((_e2303223161_
                                                         (gx#stx-e
                                                          _tl2302523142_)))
                                                    (let ((_tl2303423166_
                                                           (##cdr _e2303223161_))
                                                          (_hd2303323164_
                                                           (##car _e2303223161_)))
                                                      (if (gx#stx-pair?
                                                           _hd2303323164_)
                                                          (let ((_e2303523169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2303323164_)))
                    (let ((_tl2303723174_ (##cdr _e2303523169_))
                          (_hd2303623172_ (##car _e2303523169_)))
                      (if (gx#identifier? _hd2303623172_)
                          (if (gx#stx-eq? '%#quote _hd2303623172_)
                              (if (gx#stx-pair? _tl2303723174_)
                                  (let ((_e2303823177_
                                         (gx#stx-e _tl2303723174_)))
                                    (let ((_tl2304023182_
                                           (##cdr _e2303823177_))
                                          (_hd2303923180_
                                           (##car _e2303823177_)))
                                      (if (gx#stx-null? _tl2304023182_)
                                          (___kont2697626977_
                                           _hd2303923180_
                                           _hd2303023156_
                                           _hd2302123132_
                                           _hd2301823124_
                                           _hd2300923100_
                                           _hd2294523283_)
                                          (___kont2697826979_))))
                                  (___kont2697826979_))
                              (___kont2697826979_))
                          (___kont2697826979_))))
                  (___kont2697826979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2697826979_))
                                              (___kont2697826979_))))
                                      (___kont2697826979_))
                                  (___kont2697826979_))
                              (___kont2697826979_))))
                      (___kont2697826979_))))
              (___kont2697826979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2697826979_))
                                          (___kont2697826979_))))
                                  (___kont2697826979_))
                              (___kont2697826979_))
                          (___kont2697826979_))))
                  (___kont2697826979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2697826979_))
                                              (___kont2697826979_))))
                                      (___kont2697826979_))
                                  (___kont2697826979_)))
                          (___kont2697826979_))))
                  (___kont2697826979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2697826979_))
                                              (___kont2697826979_))))
                                      (___kont2697826979_))
                                  (___kont2697826979_))
                              (___kont2697826979_))))
                      (___kont2697826979_))))
              (___kont2697826979_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx22852_ _args22853_)
      (let* ((___stx2724027241_ _args22853_)
             (_g2285622872_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2724027241_))))
        (let ((___kont2724227243_
               (lambda (_L22908_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L22908_))))
              (___kont2724427245_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2724027241_)
              (let ((_e2285922884_ (gx#stx-e ___stx2724027241_)))
                (let ((_tl2286122889_ (##cdr _e2285922884_))
                      (_hd2286022887_ (##car _e2285922884_)))
                  (if (gx#stx-pair? _hd2286022887_)
                      (let ((_e2286222892_ (gx#stx-e _hd2286022887_)))
                        (let ((_tl2286422897_ (##cdr _e2286222892_))
                              (_hd2286322895_ (##car _e2286222892_)))
                          (if (gx#identifier? _hd2286322895_)
                              (if (gx#stx-eq? '%#ref _hd2286322895_)
                                  (if (gx#stx-pair? _tl2286422897_)
                                      (let ((_e2286522900_
                                             (gx#stx-e _tl2286422897_)))
                                        (let ((_tl2286722905_
                                               (##cdr _e2286522900_))
                                              (_hd2286622903_
                                               (##car _e2286522900_)))
                                          (if (gx#stx-null? _tl2286722905_)
                                              (if (gx#stx-null? _tl2286122889_)
                                                  (___kont2724227243_
                                                   _hd2286622903_)
                                                  (___kont2724427245_))
                                              (___kont2724427245_))))
                                      (___kont2724427245_))
                                  (___kont2724427245_))
                              (___kont2724427245_))))
                      (___kont2724427245_))))
              (___kont2724427245_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx22723_ _args22724_ _unchecked?22725_)
        (let* ((___stx2727427275_ _args22724_)
               (_g2272822754_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2727427275_))))
          (let ((___kont2727627277_
                 (lambda (_L22814_ _L22815_)
                   (##structure
                    gxc#!struct-getf::t
                    (gxc#identifier-symbol _L22815_)
                    (gx#stx-e _L22814_)
                    _unchecked?22725_)))
                (___kont2727827279_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2727427275_)
                (let ((_e2273222766_ (gx#stx-e ___stx2727427275_)))
                  (let ((_tl2273422771_ (##cdr _e2273222766_))
                        (_hd2273322769_ (##car _e2273222766_)))
                    (if (gx#stx-pair? _hd2273322769_)
                        (let ((_e2273522774_ (gx#stx-e _hd2273322769_)))
                          (let ((_tl2273722779_ (##cdr _e2273522774_))
                                (_hd2273622777_ (##car _e2273522774_)))
                            (if (gx#identifier? _hd2273622777_)
                                (if (gx#stx-eq? '%#ref _hd2273622777_)
                                    (if (gx#stx-pair? _tl2273722779_)
                                        (let ((_e2273822782_
                                               (gx#stx-e _tl2273722779_)))
                                          (let ((_tl2274022787_
                                                 (##cdr _e2273822782_))
                                                (_hd2273922785_
                                                 (##car _e2273822782_)))
                                            (if (gx#stx-null? _tl2274022787_)
                                                (if (gx#stx-pair?
                                                     _tl2273422771_)
                                                    (let ((_e2274122790_
                                                           (gx#stx-e
                                                            _tl2273422771_)))
                                                      (let ((_tl2274322795_
                                                             (##cdr _e2274122790_))
                                                            (_hd2274222793_
                                                             (##car _e2274122790_)))
                                                        (if (gx#stx-pair?
                                                             _hd2274222793_)
                                                            (let ((_e2274422798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2274222793_)))
                      (let ((_tl2274622803_ (##cdr _e2274422798_))
                            (_hd2274522801_ (##car _e2274422798_)))
                        (if (gx#identifier? _hd2274522801_)
                            (if (gx#stx-eq? '%#quote _hd2274522801_)
                                (if (gx#stx-pair? _tl2274622803_)
                                    (let ((_e2274722806_
                                           (gx#stx-e _tl2274622803_)))
                                      (let ((_tl2274922811_
                                             (##cdr _e2274722806_))
                                            (_hd2274822809_
                                             (##car _e2274722806_)))
                                        (if (gx#stx-null? _tl2274922811_)
                                            (if (gx#stx-null? _tl2274322795_)
                                                (___kont2727627277_
                                                 _hd2274822809_
                                                 _hd2273922785_)
                                                (___kont2727827279_))
                                            (___kont2727827279_))))
                                    (___kont2727827279_))
                                (___kont2727827279_))
                            (___kont2727827279_))))
                    (___kont2727827279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2727827279_))
                                                (___kont2727827279_))))
                                        (___kont2727827279_))
                                    (___kont2727827279_))
                                (___kont2727827279_))))
                        (___kont2727827279_))))
                (___kont2727827279_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx22843_ _args22844_)
          (let ((_unchecked?22846_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx22843_
             _args22844_
             _unchecked?22846_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g28704_
          (let ((_g28703_ (length _g28704_)))
            (cond ((##fx= _g28703_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g28704_))
                  ((##fx= _g28703_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g28704_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g28704_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx22593_ _args22594_ _unchecked?22595_)
        (let* ((___stx2733227333_ _args22594_)
               (_g2259822624_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2733227333_))))
          (let ((___kont2733427335_
                 (lambda (_L22684_ _L22685_)
                   (##structure
                    gxc#!struct-setf::t
                    (gxc#identifier-symbol _L22685_)
                    (gx#stx-e _L22684_)
                    _unchecked?22595_)))
                (___kont2733627337_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2733227333_)
                (let ((_e2260222636_ (gx#stx-e ___stx2733227333_)))
                  (let ((_tl2260422641_ (##cdr _e2260222636_))
                        (_hd2260322639_ (##car _e2260222636_)))
                    (if (gx#stx-pair? _hd2260322639_)
                        (let ((_e2260522644_ (gx#stx-e _hd2260322639_)))
                          (let ((_tl2260722649_ (##cdr _e2260522644_))
                                (_hd2260622647_ (##car _e2260522644_)))
                            (if (gx#identifier? _hd2260622647_)
                                (if (gx#stx-eq? '%#ref _hd2260622647_)
                                    (if (gx#stx-pair? _tl2260722649_)
                                        (let ((_e2260822652_
                                               (gx#stx-e _tl2260722649_)))
                                          (let ((_tl2261022657_
                                                 (##cdr _e2260822652_))
                                                (_hd2260922655_
                                                 (##car _e2260822652_)))
                                            (if (gx#stx-null? _tl2261022657_)
                                                (if (gx#stx-pair?
                                                     _tl2260422641_)
                                                    (let ((_e2261122660_
                                                           (gx#stx-e
                                                            _tl2260422641_)))
                                                      (let ((_tl2261322665_
                                                             (##cdr _e2261122660_))
                                                            (_hd2261222663_
                                                             (##car _e2261122660_)))
                                                        (if (gx#stx-pair?
                                                             _hd2261222663_)
                                                            (let ((_e2261422668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2261222663_)))
                      (let ((_tl2261622673_ (##cdr _e2261422668_))
                            (_hd2261522671_ (##car _e2261422668_)))
                        (if (gx#identifier? _hd2261522671_)
                            (if (gx#stx-eq? '%#quote _hd2261522671_)
                                (if (gx#stx-pair? _tl2261622673_)
                                    (let ((_e2261722676_
                                           (gx#stx-e _tl2261622673_)))
                                      (let ((_tl2261922681_
                                             (##cdr _e2261722676_))
                                            (_hd2261822679_
                                             (##car _e2261722676_)))
                                        (if (gx#stx-null? _tl2261922681_)
                                            (if (gx#stx-null? _tl2261322665_)
                                                (___kont2733427335_
                                                 _hd2261822679_
                                                 _hd2260922655_)
                                                (___kont2733627337_))
                                            (___kont2733627337_))))
                                    (___kont2733627337_))
                                (___kont2733627337_))
                            (___kont2733627337_))))
                    (___kont2733627337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2733627337_))
                                                (___kont2733627337_))))
                                        (___kont2733627337_))
                                    (___kont2733627337_))
                                (___kont2733627337_))))
                        (___kont2733627337_))))
                (___kont2733627337_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx22713_ _args22714_)
          (let ((_unchecked?22716_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx22713_
             _args22714_
             _unchecked?22716_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g28706_
          (let ((_g28705_ (length _g28706_)))
            (cond ((##fx= _g28705_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g28706_))
                  ((##fx= _g28705_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g28706_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g28706_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx22589_ _args22590_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx22589_
       _args22590_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx22586_ _args22587_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx22586_
       _args22587_
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
    (lambda (_stx22535_)
      (let* ((_g2253722550_
              (lambda (_g2253822547_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2253822547_)))
             (_g2253622583_
              (lambda (_g2253822553_)
                (if (gx#stx-pair? _g2253822553_)
                    (let ((_e2254022555_ (gx#stx-e _g2253822553_)))
                      (let ((_hd2254122558_ (##car _e2254022555_))
                            (_tl2254222560_ (##cdr _e2254022555_)))
                        (if (gx#stx-pair? _tl2254222560_)
                            (let ((_e2254322563_ (gx#stx-e _tl2254222560_)))
                              (let ((_hd2254422566_ (##car _e2254322563_))
                                    (_tl2254522568_ (##cdr _e2254322563_)))
                                (if (gx#stx-null? _tl2254522568_)
                                    ((lambda (_L22571_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L22571_)))
                                     _hd2254422566_)
                                    (_g2253722550_ _g2253822553_))))
                            (_g2253722550_ _g2253822553_))))
                    (_g2253722550_ _g2253822553_)))))
        (_g2253622583_ _stx22535_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21769_)
      (let* ((___stx2739027391_ _form21769_)
             (_g2177421931_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2739027391_))))
        (let ((___kont2739227393_ (lambda (_L22455_ _L22456_ _L22457_) '#t))
              (___kont2739827399_
               (lambda (_L22243_ _L22244_ _L22245_ _L22246_ _L22247_ _L22248_)
                 '#t))
              (___kont2740427405_
               (lambda (_L22039_ _L22040_ _L22041_ _L22042_) '#t))
              (___kont2740627407_ (lambda () '#f)))
          (let* ((___match2753127532_
                  (lambda (_e2189121943_
                           _hd2189221946_
                           _tl2189321948_
                           _e2189421951_
                           _hd2189521954_
                           _tl2189621956_
                           _e2189721959_
                           _hd2189821962_
                           _tl2189921964_
                           _e2190021967_
                           _hd2190121970_
                           _tl2190221972_
                           _e2190321975_
                           _hd2190421978_
                           _tl2190521980_
                           _e2190621983_
                           _hd2190721986_
                           _tl2190821988_
                           _e2190921991_
                           _hd2191021994_
                           _tl2191121996_
                           _e2191221999_
                           _hd2191322002_
                           _tl2191422004_
                           _e2191522007_
                           _hd2191622010_
                           _tl2191722012_
                           _e2191822015_
                           _hd2191922018_
                           _tl2192022020_
                           _e2192122023_
                           _hd2192222026_
                           _tl2192322028_
                           _e2192422031_
                           _hd2192522034_
                           _tl2192622036_)
                    (let ((_L22039_ _hd2192522034_)
                          (_L22040_ _hd2191622010_)
                          (_L22041_ _hd2190721986_)
                          (_L22042_ _hd2189221946_))
                      (if (if (gx#identifier? _L22042_)
                              (if (gxc#runtime-identifier=? _L22041_ 'apply)
                                  (if (gx#free-identifier=? _L22042_ _L22039_)
                                      (not (gx#free-identifier=?
                                            _L22040_
                                            _L22042_))
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2740427405_
                           _L22039_
                           _L22040_
                           _L22041_
                           _L22042_)
                          (___kont2740627407_)))))
                 (___match2750327504_
                  (lambda (_e2189121943_
                           _hd2189221946_
                           _tl2189321948_
                           _e2189421951_
                           _hd2189521954_
                           _tl2189621956_
                           _e2189721959_
                           _hd2189821962_
                           _tl2189921964_
                           _e2190021967_
                           _hd2190121970_
                           _tl2190221972_
                           _e2190321975_
                           _hd2190421978_
                           _tl2190521980_
                           _e2190621983_
                           _hd2190721986_
                           _tl2190821988_
                           _e2190921991_
                           _hd2191021994_
                           _tl2191121996_
                           _e2191221999_
                           _hd2191322002_
                           _tl2191422004_
                           _e2191522007_
                           _hd2191622010_
                           _tl2191722012_)
                    (if (gx#stx-pair? _tl2191121996_)
                        (let ((_e2191822015_ (gx#stx-e _tl2191121996_)))
                          (let ((_tl2192022020_ (##cdr _e2191822015_))
                                (_hd2191922018_ (##car _e2191822015_)))
                            (if (gx#stx-pair? _hd2191922018_)
                                (let ((_e2192122023_
                                       (gx#stx-e _hd2191922018_)))
                                  (let ((_tl2192322028_ (##cdr _e2192122023_))
                                        (_hd2192222026_ (##car _e2192122023_)))
                                    (if (gx#identifier? _hd2192222026_)
                                        (if (gx#stx-eq? '%#ref _hd2192222026_)
                                            (if (gx#stx-pair? _tl2192322028_)
                                                (let ((_e2192422031_
                                                       (gx#stx-e
                                                        _tl2192322028_)))
                                                  (let ((_tl2192622036_
                                                         (##cdr _e2192422031_))
                                                        (_hd2192522034_
                                                         (##car _e2192422031_)))
                                                    (if (gx#stx-null?
                                                         _tl2192622036_)
                                                        (if (gx#stx-null?
                                                             _tl2192022020_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2189621956_)
                        (___match2753127532_
                         _e2189121943_
                         _hd2189221946_
                         _tl2189321948_
                         _e2189421951_
                         _hd2189521954_
                         _tl2189621956_
                         _e2189721959_
                         _hd2189821962_
                         _tl2189921964_
                         _e2190021967_
                         _hd2190121970_
                         _tl2190221972_
                         _e2190321975_
                         _hd2190421978_
                         _tl2190521980_
                         _e2190621983_
                         _hd2190721986_
                         _tl2190821988_
                         _e2190921991_
                         _hd2191021994_
                         _tl2191121996_
                         _e2191221999_
                         _hd2191322002_
                         _tl2191422004_
                         _e2191522007_
                         _hd2191622010_
                         _tl2191722012_
                         _e2191822015_
                         _hd2191922018_
                         _tl2192022020_
                         _e2192122023_
                         _hd2192222026_
                         _tl2192322028_
                         _e2192422031_
                         _hd2192522034_
                         _tl2192622036_)
                        (___kont2740627407_))
                    (___kont2740627407_))
                (___kont2740627407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2740627407_))
                                            (___kont2740627407_))
                                        (___kont2740627407_))))
                                (___kont2740627407_))))
                        (___kont2740627407_))))
                 (___match2743327434_
                  (lambda (_e2182722083_
                           _hd2182822086_
                           _tl2182922088_
                           ___splice2740027401_
                           _target2183022091_
                           _tl2183222093_)
                    (letrec ((_loop2183322096_
                              (lambda (_hd2183122099_ _arg2183722101_)
                                (if (gx#stx-pair? _hd2183122099_)
                                    (let ((_e2183422104_
                                           (gx#stx-e _hd2183122099_)))
                                      (let ((_lp-tl2183622109_
                                             (##cdr _e2183422104_))
                                            (_lp-hd2183522107_
                                             (##car _e2183422104_)))
                                        (_loop2183322096_
                                         _lp-tl2183622109_
                                         (cons _lp-hd2183522107_
                                               _arg2183722101_))))
                                    (let ((_arg2183822112_
                                           (reverse _arg2183722101_)))
                                      (if (gx#stx-pair? _tl2182922088_)
                                          (let ((_e2183922115_
                                                 (gx#stx-e _tl2182922088_)))
                                            (let ((_tl2184122120_
                                                   (##cdr _e2183922115_))
                                                  (_hd2184022118_
                                                   (##car _e2183922115_)))
                                              (if (gx#stx-pair? _hd2184022118_)
                                                  (let ((_e2184222123_
                                                         (gx#stx-e
                                                          _hd2184022118_)))
                                                    (let ((_tl2184422128_
                                                           (##cdr _e2184222123_))
                                                          (_hd2184322126_
                                                           (##car _e2184222123_)))
                                                      (if (gx#identifier?
                                                           _hd2184322126_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2184322126_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2184422128_)
                          (let ((_e2184522131_ (gx#stx-e _tl2184422128_)))
                            (let ((_tl2184722136_ (##cdr _e2184522131_))
                                  (_hd2184622134_ (##car _e2184522131_)))
                              (if (gx#stx-pair? _hd2184622134_)
                                  (let ((_e2184822139_
                                         (gx#stx-e _hd2184622134_)))
                                    (let ((_tl2185022144_
                                           (##cdr _e2184822139_))
                                          (_hd2184922142_
                                           (##car _e2184822139_)))
                                      (if (gx#identifier? _hd2184922142_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2184922142_)
                                              (if (gx#stx-pair? _tl2185022144_)
                                                  (let ((_e2185122147_
                                                         (gx#stx-e
                                                          _tl2185022144_)))
                                                    (let ((_tl2185322152_
                                                           (##cdr _e2185122147_))
                                                          (_hd2185222150_
                                                           (##car _e2185122147_)))
                                                      (if (gx#stx-null?
                                                           _tl2185322152_)
                                                          (if (gx#stx-pair?
                                                               _tl2184722136_)
                                                              (let ((_e2185422155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2184722136_)))
                        (let ((_tl2185622160_ (##cdr _e2185422155_))
                              (_hd2185522158_ (##car _e2185422155_)))
                          (if (gx#stx-pair? _hd2185522158_)
                              (let ((_e2185722163_ (gx#stx-e _hd2185522158_)))
                                (let ((_tl2185922168_ (##cdr _e2185722163_))
                                      (_hd2185822166_ (##car _e2185722163_)))
                                  (if (gx#identifier? _hd2185822166_)
                                      (if (gx#stx-eq? '%#ref _hd2185822166_)
                                          (if (gx#stx-pair? _tl2185922168_)
                                              (let ((_e2186022171_
                                                     (gx#stx-e
                                                      _tl2185922168_)))
                                                (let ((_tl2186222176_
                                                       (##cdr _e2186022171_))
                                                      (_hd2186122174_
                                                       (##car _e2186022171_)))
                                                  (if (gx#stx-null?
                                                       _tl2186222176_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2185622160_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2185622160_)
                            '1)
                      (let ((___splice2740227403_
                             (gx#syntax-split-splice _tl2185622160_ '1)))
                        (let ((_tl2186522181_
                               (##vector-ref ___splice2740227403_ '1))
                              (_target2186322179_
                               (##vector-ref ___splice2740227403_ '0)))
                          (if (gx#stx-pair? _tl2186522181_)
                              (let ((_e2187222184_ (gx#stx-e _tl2186522181_)))
                                (let ((_tl2187422189_ (##cdr _e2187222184_))
                                      (_hd2187322187_ (##car _e2187222184_)))
                                  (if (gx#stx-pair? _hd2187322187_)
                                      (let ((_e2187522192_
                                             (gx#stx-e _hd2187322187_)))
                                        (let ((_tl2187722197_
                                               (##cdr _e2187522192_))
                                              (_hd2187622195_
                                               (##car _e2187522192_)))
                                          (if (gx#identifier? _hd2187622195_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2187622195_)
                                                  (if (gx#stx-pair?
                                                       _tl2187722197_)
                                                      (let ((_e2187822200_
                                                             (gx#stx-e
                                                              _tl2187722197_)))
                                                        (let ((_tl2188022205_
                                                               (##cdr _e2187822200_))
                                                              (_hd2187922203_
                                                               (##car _e2187822200_)))
                                                          (if (gx#stx-null?
                                                               _tl2188022205_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2187422189_)
                          (letrec ((_loop2186622208_
                                    (lambda (_hd2186422211_ _xarg2187022213_)
                                      (if (gx#stx-pair? _hd2186422211_)
                                          (let ((_e2186722216_
                                                 (gx#stx-e _hd2186422211_)))
                                            (let ((_lp-tl2186922221_
                                                   (##cdr _e2186722216_))
                                                  (_lp-hd2186822219_
                                                   (##car _e2186722216_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2186822219_)
                                                  (let ((_e2188122224_
                                                         (gx#stx-e
                                                          _lp-hd2186822219_)))
                                                    (let ((_tl2188322229_
                                                           (##cdr _e2188122224_))
                                                          (_hd2188222227_
                                                           (##car _e2188122224_)))
                                                      (if (gx#identifier?
                                                           _hd2188222227_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2188222227_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2188322229_)
                          (let ((_e2188422232_ (gx#stx-e _tl2188322229_)))
                            (let ((_tl2188622237_ (##cdr _e2188422232_))
                                  (_hd2188522235_ (##car _e2188422232_)))
                              (if (gx#stx-null? _tl2188622237_)
                                  (_loop2186622208_
                                   _lp-tl2186922221_
                                   (cons _hd2188522235_ _xarg2187022213_))
                                  (___match2750327504_
                                   _e2182722083_
                                   _hd2182822086_
                                   _tl2182922088_
                                   _e2183922115_
                                   _hd2184022118_
                                   _tl2184122120_
                                   _e2184222123_
                                   _hd2184322126_
                                   _tl2184422128_
                                   _e2184522131_
                                   _hd2184622134_
                                   _tl2184722136_
                                   _e2184822139_
                                   _hd2184922142_
                                   _tl2185022144_
                                   _e2185122147_
                                   _hd2185222150_
                                   _tl2185322152_
                                   _e2185422155_
                                   _hd2185522158_
                                   _tl2185622160_
                                   _e2185722163_
                                   _hd2185822166_
                                   _tl2185922168_
                                   _e2186022171_
                                   _hd2186122174_
                                   _tl2186222176_))))
                          (___match2750327504_
                           _e2182722083_
                           _hd2182822086_
                           _tl2182922088_
                           _e2183922115_
                           _hd2184022118_
                           _tl2184122120_
                           _e2184222123_
                           _hd2184322126_
                           _tl2184422128_
                           _e2184522131_
                           _hd2184622134_
                           _tl2184722136_
                           _e2184822139_
                           _hd2184922142_
                           _tl2185022144_
                           _e2185122147_
                           _hd2185222150_
                           _tl2185322152_
                           _e2185422155_
                           _hd2185522158_
                           _tl2185622160_
                           _e2185722163_
                           _hd2185822166_
                           _tl2185922168_
                           _e2186022171_
                           _hd2186122174_
                           _tl2186222176_))
                      (___match2750327504_
                       _e2182722083_
                       _hd2182822086_
                       _tl2182922088_
                       _e2183922115_
                       _hd2184022118_
                       _tl2184122120_
                       _e2184222123_
                       _hd2184322126_
                       _tl2184422128_
                       _e2184522131_
                       _hd2184622134_
                       _tl2184722136_
                       _e2184822139_
                       _hd2184922142_
                       _tl2185022144_
                       _e2185122147_
                       _hd2185222150_
                       _tl2185322152_
                       _e2185422155_
                       _hd2185522158_
                       _tl2185622160_
                       _e2185722163_
                       _hd2185822166_
                       _tl2185922168_
                       _e2186022171_
                       _hd2186122174_
                       _tl2186222176_))
                  (___match2750327504_
                   _e2182722083_
                   _hd2182822086_
                   _tl2182922088_
                   _e2183922115_
                   _hd2184022118_
                   _tl2184122120_
                   _e2184222123_
                   _hd2184322126_
                   _tl2184422128_
                   _e2184522131_
                   _hd2184622134_
                   _tl2184722136_
                   _e2184822139_
                   _hd2184922142_
                   _tl2185022144_
                   _e2185122147_
                   _hd2185222150_
                   _tl2185322152_
                   _e2185422155_
                   _hd2185522158_
                   _tl2185622160_
                   _e2185722163_
                   _hd2185822166_
                   _tl2185922168_
                   _e2186022171_
                   _hd2186122174_
                   _tl2186222176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2750327504_
                                                   _e2182722083_
                                                   _hd2182822086_
                                                   _tl2182922088_
                                                   _e2183922115_
                                                   _hd2184022118_
                                                   _tl2184122120_
                                                   _e2184222123_
                                                   _hd2184322126_
                                                   _tl2184422128_
                                                   _e2184522131_
                                                   _hd2184622134_
                                                   _tl2184722136_
                                                   _e2184822139_
                                                   _hd2184922142_
                                                   _tl2185022144_
                                                   _e2185122147_
                                                   _hd2185222150_
                                                   _tl2185322152_
                                                   _e2185422155_
                                                   _hd2185522158_
                                                   _tl2185622160_
                                                   _e2185722163_
                                                   _hd2185822166_
                                                   _tl2185922168_
                                                   _e2186022171_
                                                   _hd2186122174_
                                                   _tl2186222176_))))
                                          (let ((_xarg2187122240_
                                                 (reverse _xarg2187022213_)))
                                            (if (gx#stx-null? _tl2184122120_)
                                                (let ((_L22243_ _hd2187922203_)
                                                      (_L22244_
                                                       _xarg2187122240_)
                                                      (_L22245_ _hd2186122174_)
                                                      (_L22246_ _hd2185222150_)
                                                      (_L22247_ _tl2183222093_)
                                                      (_L22248_
                                                       _arg2183822112_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2229122294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2229222296_)
                               (cons _g2229122294_ _g2229222296_))
                             '()
                             _L22248_)))
                  (if (gx#identifier? _L22247_)
                      (if (gxc#runtime-identifier=? _L22246_ 'apply)
                          (if (fx= (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2229822301_
                                                              _g2229922303_)
                                                       (cons _g2229822301_
                                                             _g2229922303_))
                                                     '()
                                                     _L22248_)))
                                   (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2230522308_
                                                              _g2230622310_)
                                                       (cons _g2230522308_
                                                             _g2230622310_))
                                                     '()
                                                     _L22244_))))
                              (if (andmap2 gx#free-identifier=?
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2231222315_
                                                              _g2231322317_)
                                                       (cons _g2231222315_
                                                             _g2231322317_))
                                                     '()
                                                     _L22248_))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2231922322_
                                                              _g2232022324_)
                                                       (cons _g2231922322_
                                                             _g2232022324_))
                                                     '()
                                                     _L22244_)))
                                  (if (gx#free-identifier=? _L22247_ _L22243_)
                                      (not (find (lambda (_g2232622328_)
                                                   (gx#free-identifier=?
                                                    _g2232622328_
                                                    _L22245_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2233022333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2233122335_)
                     (cons _g2233022333_ _g2233122335_))
                   (cons _L22247_ '())
                   _L22248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '#f)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  '#f)
              (___kont2739827399_
               _L22243_
               _L22244_
               _L22245_
               _L22246_
               _L22247_
               _L22248_)
              (___match2750327504_
               _e2182722083_
               _hd2182822086_
               _tl2182922088_
               _e2183922115_
               _hd2184022118_
               _tl2184122120_
               _e2184222123_
               _hd2184322126_
               _tl2184422128_
               _e2184522131_
               _hd2184622134_
               _tl2184722136_
               _e2184822139_
               _hd2184922142_
               _tl2185022144_
               _e2185122147_
               _hd2185222150_
               _tl2185322152_
               _e2185422155_
               _hd2185522158_
               _tl2185622160_
               _e2185722163_
               _hd2185822166_
               _tl2185922168_
               _e2186022171_
               _hd2186122174_
               _tl2186222176_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2750327504_
                                                 _e2182722083_
                                                 _hd2182822086_
                                                 _tl2182922088_
                                                 _e2183922115_
                                                 _hd2184022118_
                                                 _tl2184122120_
                                                 _e2184222123_
                                                 _hd2184322126_
                                                 _tl2184422128_
                                                 _e2184522131_
                                                 _hd2184622134_
                                                 _tl2184722136_
                                                 _e2184822139_
                                                 _hd2184922142_
                                                 _tl2185022144_
                                                 _e2185122147_
                                                 _hd2185222150_
                                                 _tl2185322152_
                                                 _e2185422155_
                                                 _hd2185522158_
                                                 _tl2185622160_
                                                 _e2185722163_
                                                 _hd2185822166_
                                                 _tl2185922168_
                                                 _e2186022171_
                                                 _hd2186122174_
                                                 _tl2186222176_)))))))
                            (_loop2186622208_ _target2186322179_ '()))
                          (___match2750327504_
                           _e2182722083_
                           _hd2182822086_
                           _tl2182922088_
                           _e2183922115_
                           _hd2184022118_
                           _tl2184122120_
                           _e2184222123_
                           _hd2184322126_
                           _tl2184422128_
                           _e2184522131_
                           _hd2184622134_
                           _tl2184722136_
                           _e2184822139_
                           _hd2184922142_
                           _tl2185022144_
                           _e2185122147_
                           _hd2185222150_
                           _tl2185322152_
                           _e2185422155_
                           _hd2185522158_
                           _tl2185622160_
                           _e2185722163_
                           _hd2185822166_
                           _tl2185922168_
                           _e2186022171_
                           _hd2186122174_
                           _tl2186222176_))
                      (___match2750327504_
                       _e2182722083_
                       _hd2182822086_
                       _tl2182922088_
                       _e2183922115_
                       _hd2184022118_
                       _tl2184122120_
                       _e2184222123_
                       _hd2184322126_
                       _tl2184422128_
                       _e2184522131_
                       _hd2184622134_
                       _tl2184722136_
                       _e2184822139_
                       _hd2184922142_
                       _tl2185022144_
                       _e2185122147_
                       _hd2185222150_
                       _tl2185322152_
                       _e2185422155_
                       _hd2185522158_
                       _tl2185622160_
                       _e2185722163_
                       _hd2185822166_
                       _tl2185922168_
                       _e2186022171_
                       _hd2186122174_
                       _tl2186222176_))))
              (___match2750327504_
               _e2182722083_
               _hd2182822086_
               _tl2182922088_
               _e2183922115_
               _hd2184022118_
               _tl2184122120_
               _e2184222123_
               _hd2184322126_
               _tl2184422128_
               _e2184522131_
               _hd2184622134_
               _tl2184722136_
               _e2184822139_
               _hd2184922142_
               _tl2185022144_
               _e2185122147_
               _hd2185222150_
               _tl2185322152_
               _e2185422155_
               _hd2185522158_
               _tl2185622160_
               _e2185722163_
               _hd2185822166_
               _tl2185922168_
               _e2186022171_
               _hd2186122174_
               _tl2186222176_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2750327504_
                                                   _e2182722083_
                                                   _hd2182822086_
                                                   _tl2182922088_
                                                   _e2183922115_
                                                   _hd2184022118_
                                                   _tl2184122120_
                                                   _e2184222123_
                                                   _hd2184322126_
                                                   _tl2184422128_
                                                   _e2184522131_
                                                   _hd2184622134_
                                                   _tl2184722136_
                                                   _e2184822139_
                                                   _hd2184922142_
                                                   _tl2185022144_
                                                   _e2185122147_
                                                   _hd2185222150_
                                                   _tl2185322152_
                                                   _e2185422155_
                                                   _hd2185522158_
                                                   _tl2185622160_
                                                   _e2185722163_
                                                   _hd2185822166_
                                                   _tl2185922168_
                                                   _e2186022171_
                                                   _hd2186122174_
                                                   _tl2186222176_))
                                              (___match2750327504_
                                               _e2182722083_
                                               _hd2182822086_
                                               _tl2182922088_
                                               _e2183922115_
                                               _hd2184022118_
                                               _tl2184122120_
                                               _e2184222123_
                                               _hd2184322126_
                                               _tl2184422128_
                                               _e2184522131_
                                               _hd2184622134_
                                               _tl2184722136_
                                               _e2184822139_
                                               _hd2184922142_
                                               _tl2185022144_
                                               _e2185122147_
                                               _hd2185222150_
                                               _tl2185322152_
                                               _e2185422155_
                                               _hd2185522158_
                                               _tl2185622160_
                                               _e2185722163_
                                               _hd2185822166_
                                               _tl2185922168_
                                               _e2186022171_
                                               _hd2186122174_
                                               _tl2186222176_))))
                                      (___match2750327504_
                                       _e2182722083_
                                       _hd2182822086_
                                       _tl2182922088_
                                       _e2183922115_
                                       _hd2184022118_
                                       _tl2184122120_
                                       _e2184222123_
                                       _hd2184322126_
                                       _tl2184422128_
                                       _e2184522131_
                                       _hd2184622134_
                                       _tl2184722136_
                                       _e2184822139_
                                       _hd2184922142_
                                       _tl2185022144_
                                       _e2185122147_
                                       _hd2185222150_
                                       _tl2185322152_
                                       _e2185422155_
                                       _hd2185522158_
                                       _tl2185622160_
                                       _e2185722163_
                                       _hd2185822166_
                                       _tl2185922168_
                                       _e2186022171_
                                       _hd2186122174_
                                       _tl2186222176_))))
                              (___match2750327504_
                               _e2182722083_
                               _hd2182822086_
                               _tl2182922088_
                               _e2183922115_
                               _hd2184022118_
                               _tl2184122120_
                               _e2184222123_
                               _hd2184322126_
                               _tl2184422128_
                               _e2184522131_
                               _hd2184622134_
                               _tl2184722136_
                               _e2184822139_
                               _hd2184922142_
                               _tl2185022144_
                               _e2185122147_
                               _hd2185222150_
                               _tl2185322152_
                               _e2185422155_
                               _hd2185522158_
                               _tl2185622160_
                               _e2185722163_
                               _hd2185822166_
                               _tl2185922168_
                               _e2186022171_
                               _hd2186122174_
                               _tl2186222176_))))
                      (___match2750327504_
                       _e2182722083_
                       _hd2182822086_
                       _tl2182922088_
                       _e2183922115_
                       _hd2184022118_
                       _tl2184122120_
                       _e2184222123_
                       _hd2184322126_
                       _tl2184422128_
                       _e2184522131_
                       _hd2184622134_
                       _tl2184722136_
                       _e2184822139_
                       _hd2184922142_
                       _tl2185022144_
                       _e2185122147_
                       _hd2185222150_
                       _tl2185322152_
                       _e2185422155_
                       _hd2185522158_
                       _tl2185622160_
                       _e2185722163_
                       _hd2185822166_
                       _tl2185922168_
                       _e2186022171_
                       _hd2186122174_
                       _tl2186222176_))
                  (___match2750327504_
                   _e2182722083_
                   _hd2182822086_
                   _tl2182922088_
                   _e2183922115_
                   _hd2184022118_
                   _tl2184122120_
                   _e2184222123_
                   _hd2184322126_
                   _tl2184422128_
                   _e2184522131_
                   _hd2184622134_
                   _tl2184722136_
                   _e2184822139_
                   _hd2184922142_
                   _tl2185022144_
                   _e2185122147_
                   _hd2185222150_
                   _tl2185322152_
                   _e2185422155_
                   _hd2185522158_
                   _tl2185622160_
                   _e2185722163_
                   _hd2185822166_
                   _tl2185922168_
                   _e2186022171_
                   _hd2186122174_
                   _tl2186222176_))
              (___kont2740627407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2740627407_))
                                          (___kont2740627407_))
                                      (___kont2740627407_))))
                              (___kont2740627407_))))
                      (___kont2740627407_))
                  (___kont2740627407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2740627407_))
                                              (___kont2740627407_))
                                          (___kont2740627407_))))
                                  (___kont2740627407_))))
                          (___kont2740627407_))
                      (___kont2740627407_))
                  (___kont2740627407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2740627407_))))
                                          (___kont2740627407_)))))))
                      (_loop2183322096_ _target2183022091_ '()))))
                 (___match2742127422_
                  (lambda (_e2177922343_
                           _hd2178022346_
                           _tl2178122348_
                           ___splice2739427395_
                           _target2178222351_
                           _tl2178422353_)
                    (letrec ((_loop2178522356_
                              (lambda (_hd2178322359_ _arg2178922361_)
                                (if (gx#stx-pair? _hd2178322359_)
                                    (let ((_e2178622364_
                                           (gx#stx-e _hd2178322359_)))
                                      (let ((_lp-tl2178822369_
                                             (##cdr _e2178622364_))
                                            (_lp-hd2178722367_
                                             (##car _e2178622364_)))
                                        (_loop2178522356_
                                         _lp-tl2178822369_
                                         (cons _lp-hd2178722367_
                                               _arg2178922361_))))
                                    (let ((_arg2179022372_
                                           (reverse _arg2178922361_)))
                                      (if (gx#stx-pair? _tl2178122348_)
                                          (let ((_e2179122375_
                                                 (gx#stx-e _tl2178122348_)))
                                            (let ((_tl2179322380_
                                                   (##cdr _e2179122375_))
                                                  (_hd2179222378_
                                                   (##car _e2179122375_)))
                                              (if (gx#stx-pair? _hd2179222378_)
                                                  (let ((_e2179422383_
                                                         (gx#stx-e
                                                          _hd2179222378_)))
                                                    (let ((_tl2179622388_
                                                           (##cdr _e2179422383_))
                                                          (_hd2179522386_
                                                           (##car _e2179422383_)))
                                                      (if (gx#identifier?
                                                           _hd2179522386_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2179522386_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2179622388_)
                          (let ((_e2179722391_ (gx#stx-e _tl2179622388_)))
                            (let ((_tl2179922396_ (##cdr _e2179722391_))
                                  (_hd2179822394_ (##car _e2179722391_)))
                              (if (gx#stx-pair? _hd2179822394_)
                                  (let ((_e2180022399_
                                         (gx#stx-e _hd2179822394_)))
                                    (let ((_tl2180222404_
                                           (##cdr _e2180022399_))
                                          (_hd2180122402_
                                           (##car _e2180022399_)))
                                      (if (gx#identifier? _hd2180122402_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2180122402_)
                                              (if (gx#stx-pair? _tl2180222404_)
                                                  (let ((_e2180322407_
                                                         (gx#stx-e
                                                          _tl2180222404_)))
                                                    (let ((_tl2180522412_
                                                           (##cdr _e2180322407_))
                                                          (_hd2180422410_
                                                           (##car _e2180322407_)))
                                                      (if (gx#stx-null?
                                                           _tl2180522412_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2179922396_)
                                                              (let ((___splice2739627397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2179922396_ '0)))
                        (let ((_tl2180822417_
                               (##vector-ref ___splice2739627397_ '1))
                              (_target2180622415_
                               (##vector-ref ___splice2739627397_ '0)))
                          (if (gx#stx-null? _tl2180822417_)
                              (letrec ((_loop2180922420_
                                        (lambda (_hd2180722423_
                                                 _xarg2181322425_)
                                          (if (gx#stx-pair? _hd2180722423_)
                                              (let ((_e2181022428_
                                                     (gx#stx-e
                                                      _hd2180722423_)))
                                                (let ((_lp-tl2181222433_
                                                       (##cdr _e2181022428_))
                                                      (_lp-hd2181122431_
                                                       (##car _e2181022428_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2181122431_)
                                                      (let ((_e2181522436_
                                                             (gx#stx-e
                                                              _lp-hd2181122431_)))
                                                        (let ((_tl2181722441_
                                                               (##cdr _e2181522436_))
                                                              (_hd2181622439_
                                                               (##car _e2181522436_)))
                                                          (if (gx#identifier?
                                                               _hd2181622439_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2181622439_)
                          (if (gx#stx-pair? _tl2181722441_)
                              (let ((_e2181822444_ (gx#stx-e _tl2181722441_)))
                                (let ((_tl2182022449_ (##cdr _e2181822444_))
                                      (_hd2181922447_ (##car _e2181822444_)))
                                  (if (gx#stx-null? _tl2182022449_)
                                      (_loop2180922420_
                                       _lp-tl2181222433_
                                       (cons _hd2181922447_ _xarg2181322425_))
                                      (___match2743327434_
                                       _e2177922343_
                                       _hd2178022346_
                                       _tl2178122348_
                                       ___splice2739427395_
                                       _target2178222351_
                                       _tl2178422353_))))
                              (___match2743327434_
                               _e2177922343_
                               _hd2178022346_
                               _tl2178122348_
                               ___splice2739427395_
                               _target2178222351_
                               _tl2178422353_))
                          (___match2743327434_
                           _e2177922343_
                           _hd2178022346_
                           _tl2178122348_
                           ___splice2739427395_
                           _target2178222351_
                           _tl2178422353_))
                      (___match2743327434_
                       _e2177922343_
                       _hd2178022346_
                       _tl2178122348_
                       ___splice2739427395_
                       _target2178222351_
                       _tl2178422353_))))
              (___match2743327434_
               _e2177922343_
               _hd2178022346_
               _tl2178122348_
               ___splice2739427395_
               _target2178222351_
               _tl2178422353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2181422452_
                                                     (reverse _xarg2181322425_)))
                                                (if (gx#stx-null?
                                                     _tl2179322380_)
                                                    (let ((_L22455_
                                                           _xarg2181422452_)
                                                          (_L22456_
                                                           _hd2180422410_)
                                                          (_L22457_
                                                           _arg2179022372_))
                                                      (if (if (gx#identifier-list?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2248522488_ _g2248622490_)
                                   (cons _g2248522488_ _g2248622490_))
                                 '()
                                 _L22457_)))
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2249222495_
                                                          _g2249322497_)
                                                   (cons _g2249222495_
                                                         _g2249322497_))
                                                 '()
                                                 _L22457_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2249922502_
                                                          _g2250022504_)
                                                   (cons _g2249922502_
                                                         _g2250022504_))
                                                 '()
                                                 _L22455_))))
                          (if (andmap2 gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2250622509_
                                                          _g2250722511_)
                                                   (cons _g2250622509_
                                                         _g2250722511_))
                                                 '()
                                                 _L22457_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2251322516_
                                                          _g2251422518_)
                                                   (cons _g2251322516_
                                                         _g2251422518_))
                                                 '()
                                                 _L22455_)))
                              (not (find (lambda (_g2252022522_)
                                           (gx#free-identifier=?
                                            _g2252022522_
                                            _L22456_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2252422527_
                                                            _g2252522529_)
                                                     (cons _g2252422527_
                                                           _g2252522529_))
                                                   '()
                                                   _L22457_))))
                              '#f)
                          '#f)
                      '#f)
                  (___kont2739227393_ _L22455_ _L22456_ _L22457_)
                  (___match2743327434_
                   _e2177922343_
                   _hd2178022346_
                   _tl2178122348_
                   ___splice2739427395_
                   _target2178222351_
                   _tl2178422353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2743327434_
                                                     _e2177922343_
                                                     _hd2178022346_
                                                     _tl2178122348_
                                                     ___splice2739427395_
                                                     _target2178222351_
                                                     _tl2178422353_)))))))
                                (_loop2180922420_ _target2180622415_ '()))
                              (___match2743327434_
                               _e2177922343_
                               _hd2178022346_
                               _tl2178122348_
                               ___splice2739427395_
                               _target2178222351_
                               _tl2178422353_))))
                      (___match2743327434_
                       _e2177922343_
                       _hd2178022346_
                       _tl2178122348_
                       ___splice2739427395_
                       _target2178222351_
                       _tl2178422353_))
                  (___match2743327434_
                   _e2177922343_
                   _hd2178022346_
                   _tl2178122348_
                   ___splice2739427395_
                   _target2178222351_
                   _tl2178422353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2743327434_
                                                   _e2177922343_
                                                   _hd2178022346_
                                                   _tl2178122348_
                                                   ___splice2739427395_
                                                   _target2178222351_
                                                   _tl2178422353_))
                                              (___match2743327434_
                                               _e2177922343_
                                               _hd2178022346_
                                               _tl2178122348_
                                               ___splice2739427395_
                                               _target2178222351_
                                               _tl2178422353_))
                                          (___match2743327434_
                                           _e2177922343_
                                           _hd2178022346_
                                           _tl2178122348_
                                           ___splice2739427395_
                                           _target2178222351_
                                           _tl2178422353_))))
                                  (___match2743327434_
                                   _e2177922343_
                                   _hd2178022346_
                                   _tl2178122348_
                                   ___splice2739427395_
                                   _target2178222351_
                                   _tl2178422353_))))
                          (___match2743327434_
                           _e2177922343_
                           _hd2178022346_
                           _tl2178122348_
                           ___splice2739427395_
                           _target2178222351_
                           _tl2178422353_))
                      (___match2743327434_
                       _e2177922343_
                       _hd2178022346_
                       _tl2178122348_
                       ___splice2739427395_
                       _target2178222351_
                       _tl2178422353_))
                  (___match2743327434_
                   _e2177922343_
                   _hd2178022346_
                   _tl2178122348_
                   ___splice2739427395_
                   _target2178222351_
                   _tl2178422353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2743327434_
                                                   _e2177922343_
                                                   _hd2178022346_
                                                   _tl2178122348_
                                                   ___splice2739427395_
                                                   _target2178222351_
                                                   _tl2178422353_))))
                                          (___match2743327434_
                                           _e2177922343_
                                           _hd2178022346_
                                           _tl2178122348_
                                           ___splice2739427395_
                                           _target2178222351_
                                           _tl2178422353_)))))))
                      (_loop2178522356_ _target2178222351_ '())))))
            (if (gx#stx-pair? ___stx2739027391_)
                (let ((_e2177922343_ (gx#stx-e ___stx2739027391_)))
                  (let ((_tl2178122348_ (##cdr _e2177922343_))
                        (_hd2178022346_ (##car _e2177922343_)))
                    (if (gx#stx-pair/null? _hd2178022346_)
                        (let ((___splice2739427395_
                               (gx#syntax-split-splice _hd2178022346_ '0)))
                          (let ((_tl2178422353_
                                 (##vector-ref ___splice2739427395_ '1))
                                (_target2178222351_
                                 (##vector-ref ___splice2739427395_ '0)))
                            (if (gx#stx-null? _tl2178422353_)
                                (___match2742127422_
                                 _e2177922343_
                                 _hd2178022346_
                                 _tl2178122348_
                                 ___splice2739427395_
                                 _target2178222351_
                                 _tl2178422353_)
                                (___match2743327434_
                                 _e2177922343_
                                 _hd2178022346_
                                 _tl2178122348_
                                 ___splice2739427395_
                                 _target2178222351_
                                 _tl2178422353_))))
                        (if (gx#stx-pair? _tl2178122348_)
                            (let ((_e2189421951_ (gx#stx-e _tl2178122348_)))
                              (let ((_tl2189621956_ (##cdr _e2189421951_))
                                    (_hd2189521954_ (##car _e2189421951_)))
                                (if (gx#stx-pair? _hd2189521954_)
                                    (let ((_e2189721959_
                                           (gx#stx-e _hd2189521954_)))
                                      (let ((_tl2189921964_
                                             (##cdr _e2189721959_))
                                            (_hd2189821962_
                                             (##car _e2189721959_)))
                                        (if (gx#identifier? _hd2189821962_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2189821962_)
                                                (if (gx#stx-pair?
                                                     _tl2189921964_)
                                                    (let ((_e2190021967_
                                                           (gx#stx-e
                                                            _tl2189921964_)))
                                                      (let ((_tl2190221972_
                                                             (##cdr _e2190021967_))
                                                            (_hd2190121970_
                                                             (##car _e2190021967_)))
                                                        (if (gx#stx-pair?
                                                             _hd2190121970_)
                                                            (let ((_e2190321975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2190121970_)))
                      (let ((_tl2190521980_ (##cdr _e2190321975_))
                            (_hd2190421978_ (##car _e2190321975_)))
                        (if (gx#identifier? _hd2190421978_)
                            (if (gx#stx-eq? '%#ref _hd2190421978_)
                                (if (gx#stx-pair? _tl2190521980_)
                                    (let ((_e2190621983_
                                           (gx#stx-e _tl2190521980_)))
                                      (let ((_tl2190821988_
                                             (##cdr _e2190621983_))
                                            (_hd2190721986_
                                             (##car _e2190621983_)))
                                        (if (gx#stx-null? _tl2190821988_)
                                            (if (gx#stx-pair? _tl2190221972_)
                                                (let ((_e2190921991_
                                                       (gx#stx-e
                                                        _tl2190221972_)))
                                                  (let ((_tl2191121996_
                                                         (##cdr _e2190921991_))
                                                        (_hd2191021994_
                                                         (##car _e2190921991_)))
                                                    (if (gx#stx-pair?
                                                         _hd2191021994_)
                                                        (let ((_e2191221999_
                                                               (gx#stx-e
                                                                _hd2191021994_)))
                                                          (let ((_tl2191422004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2191221999_))
                        (_hd2191322002_ (##car _e2191221999_)))
                    (if (gx#identifier? _hd2191322002_)
                        (if (gx#stx-eq? '%#ref _hd2191322002_)
                            (if (gx#stx-pair? _tl2191422004_)
                                (let ((_e2191522007_
                                       (gx#stx-e _tl2191422004_)))
                                  (let ((_tl2191722012_ (##cdr _e2191522007_))
                                        (_hd2191622010_ (##car _e2191522007_)))
                                    (if (gx#stx-null? _tl2191722012_)
                                        (if (gx#stx-pair? _tl2191121996_)
                                            (let ((_e2191822015_
                                                   (gx#stx-e _tl2191121996_)))
                                              (let ((_tl2192022020_
                                                     (##cdr _e2191822015_))
                                                    (_hd2191922018_
                                                     (##car _e2191822015_)))
                                                (if (gx#stx-pair?
                                                     _hd2191922018_)
                                                    (let ((_e2192122023_
                                                           (gx#stx-e
                                                            _hd2191922018_)))
                                                      (let ((_tl2192322028_
                                                             (##cdr _e2192122023_))
                                                            (_hd2192222026_
                                                             (##car _e2192122023_)))
                                                        (if (gx#identifier?
                                                             _hd2192222026_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2192222026_)
                        (if (gx#stx-pair? _tl2192322028_)
                            (let ((_e2192422031_ (gx#stx-e _tl2192322028_)))
                              (let ((_tl2192622036_ (##cdr _e2192422031_))
                                    (_hd2192522034_ (##car _e2192422031_)))
                                (if (gx#stx-null? _tl2192622036_)
                                    (if (gx#stx-null? _tl2192022020_)
                                        (if (gx#stx-null? _tl2189621956_)
                                            (___match2753127532_
                                             _e2177922343_
                                             _hd2178022346_
                                             _tl2178122348_
                                             _e2189421951_
                                             _hd2189521954_
                                             _tl2189621956_
                                             _e2189721959_
                                             _hd2189821962_
                                             _tl2189921964_
                                             _e2190021967_
                                             _hd2190121970_
                                             _tl2190221972_
                                             _e2190321975_
                                             _hd2190421978_
                                             _tl2190521980_
                                             _e2190621983_
                                             _hd2190721986_
                                             _tl2190821988_
                                             _e2190921991_
                                             _hd2191021994_
                                             _tl2191121996_
                                             _e2191221999_
                                             _hd2191322002_
                                             _tl2191422004_
                                             _e2191522007_
                                             _hd2191622010_
                                             _tl2191722012_
                                             _e2191822015_
                                             _hd2191922018_
                                             _tl2192022020_
                                             _e2192122023_
                                             _hd2192222026_
                                             _tl2192322028_
                                             _e2192422031_
                                             _hd2192522034_
                                             _tl2192622036_)
                                            (___kont2740627407_))
                                        (___kont2740627407_))
                                    (___kont2740627407_))))
                            (___kont2740627407_))
                        (___kont2740627407_))
                    (___kont2740627407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2740627407_))))
                                            (___kont2740627407_))
                                        (___kont2740627407_))))
                                (___kont2740627407_))
                            (___kont2740627407_))
                        (___kont2740627407_))))
                (___kont2740627407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2740627407_))
                                            (___kont2740627407_))))
                                    (___kont2740627407_))
                                (___kont2740627407_))
                            (___kont2740627407_))))
                    (___kont2740627407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2740627407_))
                                                (___kont2740627407_))
                                            (___kont2740627407_))))
                                    (___kont2740627407_))))
                            (___kont2740627407_)))))
                (___kont2740627407_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form21237_)
      (let* ((___stx2753427535_ _form21237_)
             (_g2124121365_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2753427535_))))
        (let ((___kont2753627537_
               (lambda (_L21735_ _L21736_ _L21737_)
                 (gxc#identifier-symbol _L21736_)))
              (___kont2754227543_
               (lambda (_L21583_ _L21584_ _L21585_ _L21586_)
                 (gxc#identifier-symbol _L21583_)))
              (___kont2754627547_
               (lambda (_L21450_ _L21451_ _L21452_)
                 (gxc#identifier-symbol _L21450_))))
          (let* ((___match2764327644_
                  (lambda (_e2133121370_
                           _hd2133221373_
                           _tl2133321375_
                           _e2133421378_
                           _hd2133521381_
                           _tl2133621383_
                           _e2133721386_
                           _hd2133821389_
                           _tl2133921391_
                           _e2134021394_
                           _hd2134121397_
                           _tl2134221399_
                           _e2134321402_
                           _hd2134421405_
                           _tl2134521407_
                           _e2134621410_
                           _hd2134721413_
                           _tl2134821415_
                           _e2134921418_
                           _hd2135021421_
                           _tl2135121423_
                           _e2135221426_
                           _hd2135321429_
                           _tl2135421431_
                           _e2135521434_
                           _hd2135621437_
                           _tl2135721439_)
                    (if (gx#stx-pair? _tl2135121423_)
                        (let ((_e2135821442_ (gx#stx-e _tl2135121423_)))
                          (let ((_tl2136021447_ (##cdr _e2135821442_))
                                (_hd2135921445_ (##car _e2135821442_)))
                            (if (gx#stx-null? _tl2136021447_)
                                (if (gx#stx-null? _tl2133621383_)
                                    (___kont2754627547_
                                     _hd2135621437_
                                     _hd2134721413_
                                     _hd2133221373_)
                                    (_g2124121365_))
                                (_g2124121365_))))
                        (_g2124121365_))))
                 (___match2757327574_
                  (lambda (_e2129221487_
                           _hd2129321490_
                           _tl2129421492_
                           ___splice2754427545_
                           _target2129521495_
                           _tl2129721497_)
                    (letrec ((_loop2129821500_
                              (lambda (_hd2129621503_ _arg2130221505_)
                                (if (gx#stx-pair? _hd2129621503_)
                                    (let ((_e2129921508_
                                           (gx#stx-e _hd2129621503_)))
                                      (let ((_lp-tl2130121513_
                                             (##cdr _e2129921508_))
                                            (_lp-hd2130021511_
                                             (##car _e2129921508_)))
                                        (_loop2129821500_
                                         _lp-tl2130121513_
                                         (cons _lp-hd2130021511_
                                               _arg2130221505_))))
                                    (let ((_arg2130321516_
                                           (reverse _arg2130221505_)))
                                      (if (gx#stx-pair? _tl2129421492_)
                                          (let ((_e2130421519_
                                                 (gx#stx-e _tl2129421492_)))
                                            (let ((_tl2130621524_
                                                   (##cdr _e2130421519_))
                                                  (_hd2130521522_
                                                   (##car _e2130421519_)))
                                              (if (gx#stx-pair? _hd2130521522_)
                                                  (let ((_e2130721527_
                                                         (gx#stx-e
                                                          _hd2130521522_)))
                                                    (let ((_tl2130921532_
                                                           (##cdr _e2130721527_))
                                                          (_hd2130821530_
                                                           (##car _e2130721527_)))
                                                      (if (gx#identifier?
                                                           _hd2130821530_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2130821530_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2130921532_)
                          (let ((_e2131021535_ (gx#stx-e _tl2130921532_)))
                            (let ((_tl2131221540_ (##cdr _e2131021535_))
                                  (_hd2131121538_ (##car _e2131021535_)))
                              (if (gx#stx-pair? _hd2131121538_)
                                  (let ((_e2131321543_
                                         (gx#stx-e _hd2131121538_)))
                                    (let ((_tl2131521548_
                                           (##cdr _e2131321543_))
                                          (_hd2131421546_
                                           (##car _e2131321543_)))
                                      (if (gx#identifier? _hd2131421546_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2131421546_)
                                              (if (gx#stx-pair? _tl2131521548_)
                                                  (let ((_e2131621551_
                                                         (gx#stx-e
                                                          _tl2131521548_)))
                                                    (let ((_tl2131821556_
                                                           (##cdr _e2131621551_))
                                                          (_hd2131721554_
                                                           (##car _e2131621551_)))
                                                      (if (gx#stx-null?
                                                           _tl2131821556_)
                                                          (if (gx#stx-pair?
                                                               _tl2131221540_)
                                                              (let ((_e2131921559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2131221540_)))
                        (let ((_tl2132121564_ (##cdr _e2131921559_))
                              (_hd2132021562_ (##car _e2131921559_)))
                          (if (gx#stx-pair? _hd2132021562_)
                              (let ((_e2132221567_ (gx#stx-e _hd2132021562_)))
                                (let ((_tl2132421572_ (##cdr _e2132221567_))
                                      (_hd2132321570_ (##car _e2132221567_)))
                                  (if (gx#identifier? _hd2132321570_)
                                      (if (gx#stx-eq? '%#ref _hd2132321570_)
                                          (if (gx#stx-pair? _tl2132421572_)
                                              (let ((_e2132521575_
                                                     (gx#stx-e
                                                      _tl2132421572_)))
                                                (let ((_tl2132721580_
                                                       (##cdr _e2132521575_))
                                                      (_hd2132621578_
                                                       (##car _e2132521575_)))
                                                  (if (gx#stx-null?
                                                       _tl2132721580_)
                                                      (if (gx#stx-null?
                                                           _tl2130621524_)
                                                          (___kont2754227543_
                                                           _hd2132621578_
                                                           _hd2131721554_
                                                           _tl2129721497_
                                                           _arg2130321516_)
                                                          (___match2764327644_
                                                           _e2129221487_
                                                           _hd2129321490_
                                                           _tl2129421492_
                                                           _e2130421519_
                                                           _hd2130521522_
                                                           _tl2130621524_
                                                           _e2130721527_
                                                           _hd2130821530_
                                                           _tl2130921532_
                                                           _e2131021535_
                                                           _hd2131121538_
                                                           _tl2131221540_
                                                           _e2131321543_
                                                           _hd2131421546_
                                                           _tl2131521548_
                                                           _e2131621551_
                                                           _hd2131721554_
                                                           _tl2131821556_
                                                           _e2131921559_
                                                           _hd2132021562_
                                                           _tl2132121564_
                                                           _e2132221567_
                                                           _hd2132321570_
                                                           _tl2132421572_
                                                           _e2132521575_
                                                           _hd2132621578_
                                                           _tl2132721580_))
                                                      (_g2124121365_))))
                                              (_g2124121365_))
                                          (_g2124121365_))
                                      (_g2124121365_))))
                              (_g2124121365_))))
                      (_g2124121365_))
                  (_g2124121365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2124121365_))
                                              (_g2124121365_))
                                          (_g2124121365_))))
                                  (_g2124121365_))))
                          (_g2124121365_))
                      (_g2124121365_))
                  (_g2124121365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2124121365_))))
                                          (_g2124121365_)))))))
                      (_loop2129821500_ _target2129521495_ '()))))
                 (___match2756127562_
                  (lambda (_e2124621623_
                           _hd2124721626_
                           _tl2124821628_
                           ___splice2753827539_
                           _target2124921631_
                           _tl2125121633_)
                    (letrec ((_loop2125221636_
                              (lambda (_hd2125021639_ _arg2125621641_)
                                (if (gx#stx-pair? _hd2125021639_)
                                    (let ((_e2125321644_
                                           (gx#stx-e _hd2125021639_)))
                                      (let ((_lp-tl2125521649_
                                             (##cdr _e2125321644_))
                                            (_lp-hd2125421647_
                                             (##car _e2125321644_)))
                                        (_loop2125221636_
                                         _lp-tl2125521649_
                                         (cons _lp-hd2125421647_
                                               _arg2125621641_))))
                                    (let ((_arg2125721652_
                                           (reverse _arg2125621641_)))
                                      (if (gx#stx-pair? _tl2124821628_)
                                          (let ((_e2125821655_
                                                 (gx#stx-e _tl2124821628_)))
                                            (let ((_tl2126021660_
                                                   (##cdr _e2125821655_))
                                                  (_hd2125921658_
                                                   (##car _e2125821655_)))
                                              (if (gx#stx-pair? _hd2125921658_)
                                                  (let ((_e2126121663_
                                                         (gx#stx-e
                                                          _hd2125921658_)))
                                                    (let ((_tl2126321668_
                                                           (##cdr _e2126121663_))
                                                          (_hd2126221666_
                                                           (##car _e2126121663_)))
                                                      (if (gx#identifier?
                                                           _hd2126221666_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2126221666_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2126321668_)
                          (let ((_e2126421671_ (gx#stx-e _tl2126321668_)))
                            (let ((_tl2126621676_ (##cdr _e2126421671_))
                                  (_hd2126521674_ (##car _e2126421671_)))
                              (if (gx#stx-pair? _hd2126521674_)
                                  (let ((_e2126721679_
                                         (gx#stx-e _hd2126521674_)))
                                    (let ((_tl2126921684_
                                           (##cdr _e2126721679_))
                                          (_hd2126821682_
                                           (##car _e2126721679_)))
                                      (if (gx#identifier? _hd2126821682_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2126821682_)
                                              (if (gx#stx-pair? _tl2126921684_)
                                                  (let ((_e2127021687_
                                                         (gx#stx-e
                                                          _tl2126921684_)))
                                                    (let ((_tl2127221692_
                                                           (##cdr _e2127021687_))
                                                          (_hd2127121690_
                                                           (##car _e2127021687_)))
                                                      (if (gx#stx-null?
                                                           _tl2127221692_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2126621676_)
                                                              (let ((___splice2754027541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2126621676_ '0)))
                        (let ((_tl2127521697_
                               (##vector-ref ___splice2754027541_ '1))
                              (_target2127321695_
                               (##vector-ref ___splice2754027541_ '0)))
                          (if (gx#stx-null? _tl2127521697_)
                              (letrec ((_loop2127621700_
                                        (lambda (_hd2127421703_
                                                 _xarg2128021705_)
                                          (if (gx#stx-pair? _hd2127421703_)
                                              (let ((_e2127721708_
                                                     (gx#stx-e
                                                      _hd2127421703_)))
                                                (let ((_lp-tl2127921713_
                                                       (##cdr _e2127721708_))
                                                      (_lp-hd2127821711_
                                                       (##car _e2127721708_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2127821711_)
                                                      (let ((_e2128221716_
                                                             (gx#stx-e
                                                              _lp-hd2127821711_)))
                                                        (let ((_tl2128421721_
                                                               (##cdr _e2128221716_))
                                                              (_hd2128321719_
                                                               (##car _e2128221716_)))
                                                          (if (gx#identifier?
                                                               _hd2128321719_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2128321719_)
                          (if (gx#stx-pair? _tl2128421721_)
                              (let ((_e2128521724_ (gx#stx-e _tl2128421721_)))
                                (let ((_tl2128721729_ (##cdr _e2128521724_))
                                      (_hd2128621727_ (##car _e2128521724_)))
                                  (if (gx#stx-null? _tl2128721729_)
                                      (_loop2127621700_
                                       _lp-tl2127921713_
                                       (cons _hd2128621727_ _xarg2128021705_))
                                      (___match2757327574_
                                       _e2124621623_
                                       _hd2124721626_
                                       _tl2124821628_
                                       ___splice2753827539_
                                       _target2124921631_
                                       _tl2125121633_))))
                              (___match2757327574_
                               _e2124621623_
                               _hd2124721626_
                               _tl2124821628_
                               ___splice2753827539_
                               _target2124921631_
                               _tl2125121633_))
                          (___match2757327574_
                           _e2124621623_
                           _hd2124721626_
                           _tl2124821628_
                           ___splice2753827539_
                           _target2124921631_
                           _tl2125121633_))
                      (___match2757327574_
                       _e2124621623_
                       _hd2124721626_
                       _tl2124821628_
                       ___splice2753827539_
                       _target2124921631_
                       _tl2125121633_))))
              (___match2757327574_
               _e2124621623_
               _hd2124721626_
               _tl2124821628_
               ___splice2753827539_
               _target2124921631_
               _tl2125121633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2128121732_
                                                     (reverse _xarg2128021705_)))
                                                (if (gx#stx-null?
                                                     _tl2126021660_)
                                                    (___kont2753627537_
                                                     _xarg2128121732_
                                                     _hd2127121690_
                                                     _arg2125721652_)
                                                    (___match2757327574_
                                                     _e2124621623_
                                                     _hd2124721626_
                                                     _tl2124821628_
                                                     ___splice2753827539_
                                                     _target2124921631_
                                                     _tl2125121633_)))))))
                                (_loop2127621700_ _target2127321695_ '()))
                              (___match2757327574_
                               _e2124621623_
                               _hd2124721626_
                               _tl2124821628_
                               ___splice2753827539_
                               _target2124921631_
                               _tl2125121633_))))
                      (___match2757327574_
                       _e2124621623_
                       _hd2124721626_
                       _tl2124821628_
                       ___splice2753827539_
                       _target2124921631_
                       _tl2125121633_))
                  (___match2757327574_
                   _e2124621623_
                   _hd2124721626_
                   _tl2124821628_
                   ___splice2753827539_
                   _target2124921631_
                   _tl2125121633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2757327574_
                                                   _e2124621623_
                                                   _hd2124721626_
                                                   _tl2124821628_
                                                   ___splice2753827539_
                                                   _target2124921631_
                                                   _tl2125121633_))
                                              (___match2757327574_
                                               _e2124621623_
                                               _hd2124721626_
                                               _tl2124821628_
                                               ___splice2753827539_
                                               _target2124921631_
                                               _tl2125121633_))
                                          (___match2757327574_
                                           _e2124621623_
                                           _hd2124721626_
                                           _tl2124821628_
                                           ___splice2753827539_
                                           _target2124921631_
                                           _tl2125121633_))))
                                  (___match2757327574_
                                   _e2124621623_
                                   _hd2124721626_
                                   _tl2124821628_
                                   ___splice2753827539_
                                   _target2124921631_
                                   _tl2125121633_))))
                          (___match2757327574_
                           _e2124621623_
                           _hd2124721626_
                           _tl2124821628_
                           ___splice2753827539_
                           _target2124921631_
                           _tl2125121633_))
                      (___match2757327574_
                       _e2124621623_
                       _hd2124721626_
                       _tl2124821628_
                       ___splice2753827539_
                       _target2124921631_
                       _tl2125121633_))
                  (___match2757327574_
                   _e2124621623_
                   _hd2124721626_
                   _tl2124821628_
                   ___splice2753827539_
                   _target2124921631_
                   _tl2125121633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2757327574_
                                                   _e2124621623_
                                                   _hd2124721626_
                                                   _tl2124821628_
                                                   ___splice2753827539_
                                                   _target2124921631_
                                                   _tl2125121633_))))
                                          (___match2757327574_
                                           _e2124621623_
                                           _hd2124721626_
                                           _tl2124821628_
                                           ___splice2753827539_
                                           _target2124921631_
                                           _tl2125121633_)))))))
                      (_loop2125221636_ _target2124921631_ '())))))
            (if (gx#stx-pair? ___stx2753427535_)
                (let ((_e2124621623_ (gx#stx-e ___stx2753427535_)))
                  (let ((_tl2124821628_ (##cdr _e2124621623_))
                        (_hd2124721626_ (##car _e2124621623_)))
                    (if (gx#stx-pair/null? _hd2124721626_)
                        (let ((___splice2753827539_
                               (gx#syntax-split-splice _hd2124721626_ '0)))
                          (let ((_tl2125121633_
                                 (##vector-ref ___splice2753827539_ '1))
                                (_target2124921631_
                                 (##vector-ref ___splice2753827539_ '0)))
                            (if (gx#stx-null? _tl2125121633_)
                                (___match2756127562_
                                 _e2124621623_
                                 _hd2124721626_
                                 _tl2124821628_
                                 ___splice2753827539_
                                 _target2124921631_
                                 _tl2125121633_)
                                (___match2757327574_
                                 _e2124621623_
                                 _hd2124721626_
                                 _tl2124821628_
                                 ___splice2753827539_
                                 _target2124921631_
                                 _tl2125121633_))))
                        (if (gx#stx-pair? _tl2124821628_)
                            (let ((_e2133421378_ (gx#stx-e _tl2124821628_)))
                              (let ((_tl2133621383_ (##cdr _e2133421378_))
                                    (_hd2133521381_ (##car _e2133421378_)))
                                (if (gx#stx-pair? _hd2133521381_)
                                    (let ((_e2133721386_
                                           (gx#stx-e _hd2133521381_)))
                                      (let ((_tl2133921391_
                                             (##cdr _e2133721386_))
                                            (_hd2133821389_
                                             (##car _e2133721386_)))
                                        (if (gx#identifier? _hd2133821389_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2133821389_)
                                                (if (gx#stx-pair?
                                                     _tl2133921391_)
                                                    (let ((_e2134021394_
                                                           (gx#stx-e
                                                            _tl2133921391_)))
                                                      (let ((_tl2134221399_
                                                             (##cdr _e2134021394_))
                                                            (_hd2134121397_
                                                             (##car _e2134021394_)))
                                                        (if (gx#stx-pair?
                                                             _hd2134121397_)
                                                            (let ((_e2134321402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2134121397_)))
                      (let ((_tl2134521407_ (##cdr _e2134321402_))
                            (_hd2134421405_ (##car _e2134321402_)))
                        (if (gx#identifier? _hd2134421405_)
                            (if (gx#stx-eq? '%#ref _hd2134421405_)
                                (if (gx#stx-pair? _tl2134521407_)
                                    (let ((_e2134621410_
                                           (gx#stx-e _tl2134521407_)))
                                      (let ((_tl2134821415_
                                             (##cdr _e2134621410_))
                                            (_hd2134721413_
                                             (##car _e2134621410_)))
                                        (if (gx#stx-null? _tl2134821415_)
                                            (if (gx#stx-pair? _tl2134221399_)
                                                (let ((_e2134921418_
                                                       (gx#stx-e
                                                        _tl2134221399_)))
                                                  (let ((_tl2135121423_
                                                         (##cdr _e2134921418_))
                                                        (_hd2135021421_
                                                         (##car _e2134921418_)))
                                                    (if (gx#stx-pair?
                                                         _hd2135021421_)
                                                        (let ((_e2135221426_
                                                               (gx#stx-e
                                                                _hd2135021421_)))
                                                          (let ((_tl2135421431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2135221426_))
                        (_hd2135321429_ (##car _e2135221426_)))
                    (if (gx#identifier? _hd2135321429_)
                        (if (gx#stx-eq? '%#ref _hd2135321429_)
                            (if (gx#stx-pair? _tl2135421431_)
                                (let ((_e2135521434_
                                       (gx#stx-e _tl2135421431_)))
                                  (let ((_tl2135721439_ (##cdr _e2135521434_))
                                        (_hd2135621437_ (##car _e2135521434_)))
                                    (if (gx#stx-null? _tl2135721439_)
                                        (if (gx#stx-pair? _tl2135121423_)
                                            (let ((_e2135821442_
                                                   (gx#stx-e _tl2135121423_)))
                                              (let ((_tl2136021447_
                                                     (##cdr _e2135821442_))
                                                    (_hd2135921445_
                                                     (##car _e2135821442_)))
                                                (if (gx#stx-null?
                                                     _tl2136021447_)
                                                    (if (gx#stx-null?
                                                         _tl2133621383_)
                                                        (___kont2754627547_
                                                         _hd2135621437_
                                                         _hd2134721413_
                                                         _hd2124721626_)
                                                        (_g2124121365_))
                                                    (_g2124121365_))))
                                            (_g2124121365_))
                                        (_g2124121365_))))
                                (_g2124121365_))
                            (_g2124121365_))
                        (_g2124121365_))))
                (_g2124121365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2124121365_))
                                            (_g2124121365_))))
                                    (_g2124121365_))
                                (_g2124121365_))
                            (_g2124121365_))))
                    (_g2124121365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2124121365_))
                                                (_g2124121365_))
                                            (_g2124121365_))))
                                    (_g2124121365_))))
                            (_g2124121365_)))))
                (_g2124121365_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form21041_)
      (let* ((_g2104321057_
              (lambda (_g2104421054_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2104421054_)))
             (_g2104221234_
              (lambda (_g2104421060_)
                (if (gx#stx-pair? _g2104421060_)
                    (let ((_e2104721062_ (gx#stx-e _g2104421060_)))
                      (let ((_hd2104821065_ (##car _e2104721062_))
                            (_tl2104921067_ (##cdr _e2104721062_)))
                        (if (gx#stx-pair? _tl2104921067_)
                            (let ((_e2105021070_ (gx#stx-e _tl2104921067_)))
                              (let ((_hd2105121073_ (##car _e2105021070_))
                                    (_tl2105221075_ (##cdr _e2105021070_)))
                                (if (gx#stx-null? _tl2105221075_)
                                    ((lambda (_L21078_ _L21079_)
                                       (let* ((___stx2765627657_ _L21079_)
                                              (_g2109421122_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2765627657_))))
                                         (let ((___kont2765827659_
                                                (lambda (_L21213_)
                                                  (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2122321226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2122421228_)
                              (cons _g2122321226_ _g2122421228_))
                            '()
                            _L21213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2766227663_
                                                (lambda (_L21164_ _L21165_)
                                                  (cons (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2117621179_ _g2117721181_)
                                    (cons _g2117621179_ _g2117721181_))
                                  '()
                                  _L21165_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2766627667_
                                                (lambda (_L21127_)
                                                  (cons '0 '()))))
                                           (let* ((___match2768127682_
                                                   (lambda (___splice2766427665_
                                                            _target2110821140_
                                                            _tl2111021142_)
                                                     (letrec ((_loop2111121145_
                                                               (lambda (_hd2110921148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2111521150_)
                         (if (gx#stx-pair? _hd2110921148_)
                             (let ((_e2111221153_ (gx#stx-e _hd2110921148_)))
                               (let ((_lp-tl2111421158_ (##cdr _e2111221153_))
                                     (_lp-hd2111321156_ (##car _e2111221153_)))
                                 (_loop2111121145_
                                  _lp-tl2111421158_
                                  (cons _lp-hd2111321156_ _arg2111521150_))))
                             (let ((_arg2111621161_ (reverse _arg2111521150_)))
                               (___kont2766227663_
                                _tl2111021142_
                                _arg2111621161_))))))
               (_loop2111121145_ _target2110821140_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2767527676_
                                                   (lambda (___splice2766027661_
                                                            _target2109721189_
                                                            _tl2109921191_)
                                                     (letrec ((_loop2110021194_
                                                               (lambda (_hd2109821197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2110421199_)
                         (if (gx#stx-pair? _hd2109821197_)
                             (let ((_e2110121202_ (gx#stx-e _hd2109821197_)))
                               (let ((_lp-tl2110321207_ (##cdr _e2110121202_))
                                     (_lp-hd2110221205_ (##car _e2110121202_)))
                                 (_loop2110021194_
                                  _lp-tl2110321207_
                                  (cons _lp-hd2110221205_ _arg2110421199_))))
                             (let ((_arg2110521210_ (reverse _arg2110421199_)))
                               (___kont2765827659_ _arg2110521210_))))))
               (_loop2110021194_ _target2109721189_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2765627657_)
                                                 (let ((___splice2766027661_
                                                        (gx#syntax-split-splice
                                                         ___stx2765627657_
                                                         '0)))
                                                   (let ((_tl2109921191_
                                                          (##vector-ref
                                                           ___splice2766027661_
                                                           '1))
                                                         (_target2109721189_
                                                          (##vector-ref
                                                           ___splice2766027661_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2109921191_)
                                                         (___match2767527676_
                                                          ___splice2766027661_
                                                          _target2109721189_
                                                          _tl2109921191_)
                                                         (___match2768127682_
                                                          ___splice2766027661_
                                                          _target2109721189_
                                                          _tl2109921191_))))
                                                 (___kont2766627667_
                                                  ___stx2765627657_))))))
                                     _hd2105121073_
                                     _hd2104821065_)
                                    (_g2104321057_ _g2104421060_))))
                            (_g2104321057_ _g2104421060_))))
                    (_g2104321057_ _g2104421060_)))))
        (_g2104221234_ _form21041_))))
  (define gxc#lambda-expr?
    (lambda (_expr20994_)
      (let* ((___stx2768427685_ _expr20994_)
             (_g2099721007_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2768427685_))))
        (let ((___kont2768627687_ (lambda (_L21027_) '#t))
              (___kont2768827689_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2768427685_)
              (let ((_e2100021019_ (gx#stx-e ___stx2768427685_)))
                (let ((_tl2100221024_ (##cdr _e2100021019_))
                      (_hd2100121022_ (##car _e2100021019_)))
                  (if (gx#identifier? _hd2100121022_)
                      (if (gx#stx-eq? '%#lambda _hd2100121022_)
                          (___kont2768627687_ _tl2100221024_)
                          (___kont2768827689_))
                      (___kont2768827689_))))
              (___kont2768827689_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20947_)
      (let* ((___stx2770227703_ _expr20947_)
             (_g2095020960_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2770227703_))))
        (let ((___kont2770427705_ (lambda (_L20980_) '#t))
              (___kont2770627707_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2770227703_)
              (let ((_e2095320972_ (gx#stx-e ___stx2770227703_)))
                (let ((_tl2095520977_ (##cdr _e2095320972_))
                      (_hd2095420975_ (##car _e2095320972_)))
                  (if (gx#identifier? _hd2095420975_)
                      (if (gx#stx-eq? '%#case-lambda _hd2095420975_)
                          (___kont2770427705_ _tl2095520977_)
                          (___kont2770627707_))
                      (___kont2770627707_))))
              (___kont2770627707_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20816_)
      (let* ((___stx2772027721_ _expr20816_)
             (_g2081920849_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2772027721_))))
        (let ((___kont2772227723_
               (lambda (_L20917_ _L20918_ _L20919_)
                 (if (gx#identifier? _L20919_)
                     (if (gxc#lambda-expr? _L20918_)
                         (gxc#case-lambda-expr? _L20917_)
                         '#f)
                     '#f)))
              (___kont2772427725_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2772027721_)
              (let ((_e2082420861_ (gx#stx-e ___stx2772027721_)))
                (let ((_tl2082620866_ (##cdr _e2082420861_))
                      (_hd2082520864_ (##car _e2082420861_)))
                  (if (gx#identifier? _hd2082520864_)
                      (if (gx#stx-eq? '%#let-values _hd2082520864_)
                          (if (gx#stx-pair? _tl2082620866_)
                              (let ((_e2082720869_ (gx#stx-e _tl2082620866_)))
                                (let ((_tl2082920874_ (##cdr _e2082720869_))
                                      (_hd2082820872_ (##car _e2082720869_)))
                                  (if (gx#stx-pair? _hd2082820872_)
                                      (let ((_e2083020877_
                                             (gx#stx-e _hd2082820872_)))
                                        (let ((_tl2083220882_
                                               (##cdr _e2083020877_))
                                              (_hd2083120880_
                                               (##car _e2083020877_)))
                                          (if (gx#stx-pair? _hd2083120880_)
                                              (let ((_e2083320885_
                                                     (gx#stx-e
                                                      _hd2083120880_)))
                                                (let ((_tl2083520890_
                                                       (##cdr _e2083320885_))
                                                      (_hd2083420888_
                                                       (##car _e2083320885_)))
                                                  (if (gx#stx-pair?
                                                       _hd2083420888_)
                                                      (let ((_e2083620893_
                                                             (gx#stx-e
                                                              _hd2083420888_)))
                                                        (let ((_tl2083820898_
                                                               (##cdr _e2083620893_))
                                                              (_hd2083720896_
                                                               (##car _e2083620893_)))
                                                          (if (gx#stx-null?
                                                               _tl2083820898_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2083520890_)
                          (let ((_e2083920901_ (gx#stx-e _tl2083520890_)))
                            (let ((_tl2084120906_ (##cdr _e2083920901_))
                                  (_hd2084020904_ (##car _e2083920901_)))
                              (if (gx#stx-null? _tl2084120906_)
                                  (if (gx#stx-null? _tl2083220882_)
                                      (if (gx#stx-pair? _tl2082920874_)
                                          (let ((_e2084220909_
                                                 (gx#stx-e _tl2082920874_)))
                                            (let ((_tl2084420914_
                                                   (##cdr _e2084220909_))
                                                  (_hd2084320912_
                                                   (##car _e2084220909_)))
                                              (if (gx#stx-null? _tl2084420914_)
                                                  (___kont2772227723_
                                                   _hd2084320912_
                                                   _hd2084020904_
                                                   _hd2083720896_)
                                                  (___kont2772427725_))))
                                          (___kont2772427725_))
                                      (___kont2772427725_))
                                  (___kont2772427725_))))
                          (___kont2772427725_))
                      (___kont2772427725_))))
              (___kont2772427725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2772427725_))))
                                      (___kont2772427725_))))
                              (___kont2772427725_))
                          (___kont2772427725_))
                      (___kont2772427725_))))
              (___kont2772427725_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr20141_)
      (let* ((___stx2778227783_ _expr20141_)
             (_g2014420302_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2778227783_))))
        (let ((___kont2778427785_
               (lambda (_L20690_
                        _L20691_
                        _L20692_
                        _L20693_
                        _L20694_
                        _L20695_
                        _L20696_
                        _L20697_
                        _L20698_
                        _L20699_
                        _L20700_)
                 (if (gxc#runtime-identifier=? _L20697_ 'apply)
                     (if (gxc#runtime-identifier=? _L20693_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L20692_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L20700_ _L20691_)
                                 (if (gx#free-identifier=? _L20699_ _L20696_)
                                     (if (gx#free-identifier=?
                                          _L20694_
                                          _L20690_)
                                         (gx#free-identifier=?
                                          _L20698_
                                          _L20695_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2778627787_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2778227783_)
              (let ((_e2015720314_ (gx#stx-e ___stx2778227783_)))
                (let ((_tl2015920319_ (##cdr _e2015720314_))
                      (_hd2015820317_ (##car _e2015720314_)))
                  (if (gx#identifier? _hd2015820317_)
                      (if (gx#stx-eq? '%#let-values _hd2015820317_)
                          (if (gx#stx-pair? _tl2015920319_)
                              (let ((_e2016020322_ (gx#stx-e _tl2015920319_)))
                                (let ((_tl2016220327_ (##cdr _e2016020322_))
                                      (_hd2016120325_ (##car _e2016020322_)))
                                  (if (gx#stx-pair? _hd2016120325_)
                                      (let ((_e2016320330_
                                             (gx#stx-e _hd2016120325_)))
                                        (let ((_tl2016520335_
                                               (##cdr _e2016320330_))
                                              (_hd2016420333_
                                               (##car _e2016320330_)))
                                          (if (gx#stx-pair? _hd2016420333_)
                                              (let ((_e2016620338_
                                                     (gx#stx-e
                                                      _hd2016420333_)))
                                                (let ((_tl2016820343_
                                                       (##cdr _e2016620338_))
                                                      (_hd2016720341_
                                                       (##car _e2016620338_)))
                                                  (if (gx#stx-pair?
                                                       _hd2016720341_)
                                                      (let ((_e2016920346_
                                                             (gx#stx-e
                                                              _hd2016720341_)))
                                                        (let ((_tl2017120351_
                                                               (##cdr _e2016920346_))
                                                              (_hd2017020349_
                                                               (##car _e2016920346_)))
                                                          (if (gx#stx-null?
                                                               _tl2017120351_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2016820343_)
                          (let ((_e2017220354_ (gx#stx-e _tl2016820343_)))
                            (let ((_tl2017420359_ (##cdr _e2017220354_))
                                  (_hd2017320357_ (##car _e2017220354_)))
                              (if (gx#stx-pair? _hd2017320357_)
                                  (let ((_e2017520362_
                                         (gx#stx-e _hd2017320357_)))
                                    (let ((_tl2017720367_
                                           (##cdr _e2017520362_))
                                          (_hd2017620365_
                                           (##car _e2017520362_)))
                                      (if (gx#identifier? _hd2017620365_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2017620365_)
                                              (if (gx#stx-pair? _tl2017720367_)
                                                  (let ((_e2017820370_
                                                         (gx#stx-e
                                                          _tl2017720367_)))
                                                    (let ((_tl2018020375_
                                                           (##cdr _e2017820370_))
                                                          (_hd2017920373_
                                                           (##car _e2017820370_)))
                                                      (if (gx#stx-pair?
                                                           _hd2017920373_)
                                                          (let ((_e2018120378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2017920373_)))
                    (let ((_tl2018320383_ (##cdr _e2018120378_))
                          (_hd2018220381_ (##car _e2018120378_)))
                      (if (gx#stx-pair? _hd2018220381_)
                          (let ((_e2018420386_ (gx#stx-e _hd2018220381_)))
                            (let ((_tl2018620391_ (##cdr _e2018420386_))
                                  (_hd2018520389_ (##car _e2018420386_)))
                              (if (gx#stx-pair? _hd2018520389_)
                                  (let ((_e2018720394_
                                         (gx#stx-e _hd2018520389_)))
                                    (let ((_tl2018920399_
                                           (##cdr _e2018720394_))
                                          (_hd2018820397_
                                           (##car _e2018720394_)))
                                      (if (gx#stx-null? _tl2018920399_)
                                          (if (gx#stx-pair? _tl2018620391_)
                                              (let ((_e2019020402_
                                                     (gx#stx-e
                                                      _tl2018620391_)))
                                                (let ((_tl2019220407_
                                                       (##cdr _e2019020402_))
                                                      (_hd2019120405_
                                                       (##car _e2019020402_)))
                                                  (if (gx#stx-null?
                                                       _tl2019220407_)
                                                      (if (gx#stx-null?
                                                           _tl2018320383_)
                                                          (if (gx#stx-pair?
                                                               _tl2018020375_)
                                                              (let ((_e2019320410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2018020375_)))
                        (let ((_tl2019520415_ (##cdr _e2019320410_))
                              (_hd2019420413_ (##car _e2019320410_)))
                          (if (gx#stx-pair? _hd2019420413_)
                              (let ((_e2019620418_ (gx#stx-e _hd2019420413_)))
                                (let ((_tl2019820423_ (##cdr _e2019620418_))
                                      (_hd2019720421_ (##car _e2019620418_)))
                                  (if (gx#identifier? _hd2019720421_)
                                      (if (gx#stx-eq? '%#lambda _hd2019720421_)
                                          (if (gx#stx-pair? _tl2019820423_)
                                              (let ((_e2019920426_
                                                     (gx#stx-e
                                                      _tl2019820423_)))
                                                (let ((_tl2020120431_
                                                       (##cdr _e2019920426_))
                                                      (_hd2020020429_
                                                       (##car _e2019920426_)))
                                                  (if (gx#stx-pair?
                                                       _hd2020020429_)
                                                      (let ((_e2020220434_
                                                             (gx#stx-e
                                                              _hd2020020429_)))
                                                        (let ((_tl2020420439_
                                                               (##cdr _e2020220434_))
                                                              (_hd2020320437_
                                                               (##car _e2020220434_)))
                                                          (if (gx#stx-pair?
                                                               _tl2020120431_)
                                                              (let ((_e2020520442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2020120431_)))
                        (let ((_tl2020720447_ (##cdr _e2020520442_))
                              (_hd2020620445_ (##car _e2020520442_)))
                          (if (gx#stx-pair? _hd2020620445_)
                              (let ((_e2020820450_ (gx#stx-e _hd2020620445_)))
                                (let ((_tl2021020455_ (##cdr _e2020820450_))
                                      (_hd2020920453_ (##car _e2020820450_)))
                                  (if (gx#identifier? _hd2020920453_)
                                      (if (gx#stx-eq? '%#call _hd2020920453_)
                                          (if (gx#stx-pair? _tl2021020455_)
                                              (let ((_e2021120458_
                                                     (gx#stx-e
                                                      _tl2021020455_)))
                                                (let ((_tl2021320463_
                                                       (##cdr _e2021120458_))
                                                      (_hd2021220461_
                                                       (##car _e2021120458_)))
                                                  (if (gx#stx-pair?
                                                       _hd2021220461_)
                                                      (let ((_e2021420466_
                                                             (gx#stx-e
                                                              _hd2021220461_)))
                                                        (let ((_tl2021620471_
                                                               (##cdr _e2021420466_))
                                                              (_hd2021520469_
                                                               (##car _e2021420466_)))
                                                          (if (gx#identifier?
                                                               _hd2021520469_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2021520469_)
                          (if (gx#stx-pair? _tl2021620471_)
                              (let ((_e2021720474_ (gx#stx-e _tl2021620471_)))
                                (let ((_tl2021920479_ (##cdr _e2021720474_))
                                      (_hd2021820477_ (##car _e2021720474_)))
                                  (if (gx#stx-null? _tl2021920479_)
                                      (if (gx#stx-pair? _tl2021320463_)
                                          (let ((_e2022020482_
                                                 (gx#stx-e _tl2021320463_)))
                                            (let ((_tl2022220487_
                                                   (##cdr _e2022020482_))
                                                  (_hd2022120485_
                                                   (##car _e2022020482_)))
                                              (if (gx#stx-pair? _hd2022120485_)
                                                  (let ((_e2022320490_
                                                         (gx#stx-e
                                                          _hd2022120485_)))
                                                    (let ((_tl2022520495_
                                                           (##cdr _e2022320490_))
                                                          (_hd2022420493_
                                                           (##car _e2022320490_)))
                                                      (if (gx#identifier?
                                                           _hd2022420493_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2022420493_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2022520495_)
                          (let ((_e2022620498_ (gx#stx-e _tl2022520495_)))
                            (let ((_tl2022820503_ (##cdr _e2022620498_))
                                  (_hd2022720501_ (##car _e2022620498_)))
                              (if (gx#stx-null? _tl2022820503_)
                                  (if (gx#stx-pair? _tl2022220487_)
                                      (let ((_e2022920506_
                                             (gx#stx-e _tl2022220487_)))
                                        (let ((_tl2023120511_
                                               (##cdr _e2022920506_))
                                              (_hd2023020509_
                                               (##car _e2022920506_)))
                                          (if (gx#stx-pair? _hd2023020509_)
                                              (let ((_e2023220514_
                                                     (gx#stx-e
                                                      _hd2023020509_)))
                                                (let ((_tl2023420519_
                                                       (##cdr _e2023220514_))
                                                      (_hd2023320517_
                                                       (##car _e2023220514_)))
                                                  (if (gx#identifier?
                                                       _hd2023320517_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2023320517_)
                                                          (if (gx#stx-pair?
                                                               _tl2023420519_)
                                                              (let ((_e2023520522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2023420519_)))
                        (let ((_tl2023720527_ (##cdr _e2023520522_))
                              (_hd2023620525_ (##car _e2023520522_)))
                          (if (gx#stx-null? _tl2023720527_)
                              (if (gx#stx-null? _tl2020720447_)
                                  (if (gx#stx-null? _tl2019520415_)
                                      (if (gx#stx-null? _tl2017420359_)
                                          (if (gx#stx-null? _tl2016520335_)
                                              (if (gx#stx-pair? _tl2016220327_)
                                                  (let ((_e2023820530_
                                                         (gx#stx-e
                                                          _tl2016220327_)))
                                                    (let ((_tl2024020535_
                                                           (##cdr _e2023820530_))
                                                          (_hd2023920533_
                                                           (##car _e2023820530_)))
                                                      (if (gx#stx-pair?
                                                           _hd2023920533_)
                                                          (let ((_e2024120538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2023920533_)))
                    (let ((_tl2024320543_ (##cdr _e2024120538_))
                          (_hd2024220541_ (##car _e2024120538_)))
                      (if (gx#identifier? _hd2024220541_)
                          (if (gx#stx-eq? '%#lambda _hd2024220541_)
                              (if (gx#stx-pair? _tl2024320543_)
                                  (let ((_e2024420546_
                                         (gx#stx-e _tl2024320543_)))
                                    (let ((_tl2024620551_
                                           (##cdr _e2024420546_))
                                          (_hd2024520549_
                                           (##car _e2024420546_)))
                                      (if (gx#stx-pair? _tl2024620551_)
                                          (let ((_e2024720554_
                                                 (gx#stx-e _tl2024620551_)))
                                            (let ((_tl2024920559_
                                                   (##cdr _e2024720554_))
                                                  (_hd2024820557_
                                                   (##car _e2024720554_)))
                                              (if (gx#stx-pair? _hd2024820557_)
                                                  (let ((_e2025020562_
                                                         (gx#stx-e
                                                          _hd2024820557_)))
                                                    (let ((_tl2025220567_
                                                           (##cdr _e2025020562_))
                                                          (_hd2025120565_
                                                           (##car _e2025020562_)))
                                                      (if (gx#identifier?
                                                           _hd2025120565_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2025120565_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2025220567_)
                          (let ((_e2025320570_ (gx#stx-e _tl2025220567_)))
                            (let ((_tl2025520575_ (##cdr _e2025320570_))
                                  (_hd2025420573_ (##car _e2025320570_)))
                              (if (gx#stx-pair? _hd2025420573_)
                                  (let ((_e2025620578_
                                         (gx#stx-e _hd2025420573_)))
                                    (let ((_tl2025820583_
                                           (##cdr _e2025620578_))
                                          (_hd2025720581_
                                           (##car _e2025620578_)))
                                      (if (gx#identifier? _hd2025720581_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2025720581_)
                                              (if (gx#stx-pair? _tl2025820583_)
                                                  (let ((_e2025920586_
                                                         (gx#stx-e
                                                          _tl2025820583_)))
                                                    (let ((_tl2026120591_
                                                           (##cdr _e2025920586_))
                                                          (_hd2026020589_
                                                           (##car _e2025920586_)))
                                                      (if (gx#stx-null?
                                                           _tl2026120591_)
                                                          (if (gx#stx-pair?
                                                               _tl2025520575_)
                                                              (let ((_e2026220594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2025520575_)))
                        (let ((_tl2026420599_ (##cdr _e2026220594_))
                              (_hd2026320597_ (##car _e2026220594_)))
                          (if (gx#stx-pair? _hd2026320597_)
                              (let ((_e2026520602_ (gx#stx-e _hd2026320597_)))
                                (let ((_tl2026720607_ (##cdr _e2026520602_))
                                      (_hd2026620605_ (##car _e2026520602_)))
                                  (if (gx#identifier? _hd2026620605_)
                                      (if (gx#stx-eq? '%#ref _hd2026620605_)
                                          (if (gx#stx-pair? _tl2026720607_)
                                              (let ((_e2026820610_
                                                     (gx#stx-e
                                                      _tl2026720607_)))
                                                (let ((_tl2027020615_
                                                       (##cdr _e2026820610_))
                                                      (_hd2026920613_
                                                       (##car _e2026820610_)))
                                                  (if (gx#stx-null?
                                                       _tl2027020615_)
                                                      (if (gx#stx-pair?
                                                           _tl2026420599_)
                                                          (let ((_e2027120618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2026420599_)))
                    (let ((_tl2027320623_ (##cdr _e2027120618_))
                          (_hd2027220621_ (##car _e2027120618_)))
                      (if (gx#stx-pair? _hd2027220621_)
                          (let ((_e2027420626_ (gx#stx-e _hd2027220621_)))
                            (let ((_tl2027620631_ (##cdr _e2027420626_))
                                  (_hd2027520629_ (##car _e2027420626_)))
                              (if (gx#identifier? _hd2027520629_)
                                  (if (gx#stx-eq? '%#quote _hd2027520629_)
                                      (if (gx#stx-pair? _tl2027620631_)
                                          (let ((_e2027720634_
                                                 (gx#stx-e _tl2027620631_)))
                                            (let ((_tl2027920639_
                                                   (##cdr _e2027720634_))
                                                  (_hd2027820637_
                                                   (##car _e2027720634_)))
                                              (if (gx#stx-null? _tl2027920639_)
                                                  (if (gx#stx-pair?
                                                       _tl2027320623_)
                                                      (let ((_e2028020642_
                                                             (gx#stx-e
                                                              _tl2027320623_)))
                                                        (let ((_tl2028220647_
                                                               (##cdr _e2028020642_))
                                                              (_hd2028120645_
                                                               (##car _e2028020642_)))
                                                          (if (gx#stx-pair?
                                                               _hd2028120645_)
                                                              (let ((_e2028320650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2028120645_)))
                        (let ((_tl2028520655_ (##cdr _e2028320650_))
                              (_hd2028420653_ (##car _e2028320650_)))
                          (if (gx#identifier? _hd2028420653_)
                              (if (gx#stx-eq? '%#ref _hd2028420653_)
                                  (if (gx#stx-pair? _tl2028520655_)
                                      (let ((_e2028620658_
                                             (gx#stx-e _tl2028520655_)))
                                        (let ((_tl2028820663_
                                               (##cdr _e2028620658_))
                                              (_hd2028720661_
                                               (##car _e2028620658_)))
                                          (if (gx#stx-null? _tl2028820663_)
                                              (if (gx#stx-pair? _tl2028220647_)
                                                  (let ((_e2028920666_
                                                         (gx#stx-e
                                                          _tl2028220647_)))
                                                    (let ((_tl2029120671_
                                                           (##cdr _e2028920666_))
                                                          (_hd2029020669_
                                                           (##car _e2028920666_)))
                                                      (if (gx#stx-pair?
                                                           _hd2029020669_)
                                                          (let ((_e2029220674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2029020669_)))
                    (let ((_tl2029420679_ (##cdr _e2029220674_))
                          (_hd2029320677_ (##car _e2029220674_)))
                      (if (gx#identifier? _hd2029320677_)
                          (if (gx#stx-eq? '%#ref _hd2029320677_)
                              (if (gx#stx-pair? _tl2029420679_)
                                  (let ((_e2029520682_
                                         (gx#stx-e _tl2029420679_)))
                                    (let ((_tl2029720687_
                                           (##cdr _e2029520682_))
                                          (_hd2029620685_
                                           (##car _e2029520682_)))
                                      (if (gx#stx-null? _tl2029720687_)
                                          (if (gx#stx-null? _tl2029120671_)
                                              (if (gx#stx-null? _tl2024920559_)
                                                  (if (gx#stx-null?
                                                       _tl2024020535_)
                                                      (___kont2778427785_
                                                       _hd2029620685_
                                                       _hd2028720661_
                                                       _hd2026920613_
                                                       _hd2026020589_
                                                       _hd2024520549_
                                                       _hd2023620525_
                                                       _hd2022720501_
                                                       _hd2021820477_
                                                       _hd2020320437_
                                                       _hd2018820397_
                                                       _hd2017020349_)
                                                      (___kont2778627787_))
                                                  (___kont2778627787_))
                                              (___kont2778627787_))
                                          (___kont2778627787_))))
                                  (___kont2778627787_))
                              (___kont2778627787_))
                          (___kont2778627787_))))
                  (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2778627787_))
                                              (___kont2778627787_))))
                                      (___kont2778627787_))
                                  (___kont2778627787_))
                              (___kont2778627787_))))
                      (___kont2778627787_))))
              (___kont2778627787_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2778627787_))))
                                          (___kont2778627787_))
                                      (___kont2778627787_))
                                  (___kont2778627787_))))
                          (___kont2778627787_))))
                  (___kont2778627787_))
              (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2778627787_))
                                          (___kont2778627787_))
                                      (___kont2778627787_))))
                              (___kont2778627787_))))
                      (___kont2778627787_))
                  (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2778627787_))
                                              (___kont2778627787_))
                                          (___kont2778627787_))))
                                  (___kont2778627787_))))
                          (___kont2778627787_))
                      (___kont2778627787_))
                  (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2778627787_))))
                                          (___kont2778627787_))))
                                  (___kont2778627787_))
                              (___kont2778627787_))
                          (___kont2778627787_))))
                  (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2778627787_))
                                              (___kont2778627787_))
                                          (___kont2778627787_))
                                      (___kont2778627787_))
                                  (___kont2778627787_))
                              (___kont2778627787_))))
                      (___kont2778627787_))
                  (___kont2778627787_))
              (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2778627787_))))
                                      (___kont2778627787_))
                                  (___kont2778627787_))))
                          (___kont2778627787_))
                      (___kont2778627787_))
                  (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2778627787_))))
                                          (___kont2778627787_))
                                      (___kont2778627787_))))
                              (___kont2778627787_))
                          (___kont2778627787_))
                      (___kont2778627787_))))
              (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2778627787_))
                                          (___kont2778627787_))
                                      (___kont2778627787_))))
                              (___kont2778627787_))))
                      (___kont2778627787_))))
              (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2778627787_))
                                          (___kont2778627787_))
                                      (___kont2778627787_))))
                              (___kont2778627787_))))
                      (___kont2778627787_))
                  (___kont2778627787_))
              (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2778627787_))
                                          (___kont2778627787_))))
                                  (___kont2778627787_))))
                          (___kont2778627787_))))
                  (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2778627787_))
                                              (___kont2778627787_))
                                          (___kont2778627787_))))
                                  (___kont2778627787_))))
                          (___kont2778627787_))
                      (___kont2778627787_))))
              (___kont2778627787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2778627787_))))
                                      (___kont2778627787_))))
                              (___kont2778627787_))
                          (___kont2778627787_))
                      (___kont2778627787_))))
              (___kont2778627787_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx19883_ _id19884_ _clauses19885_ _gensym?19886_)
        (let _lp19888_ ((_rest19890_ _clauses19885_)
                        (_ids19891_ '())
                        (_impls19892_ '())
                        (_clauses19893_ '()))
          (let* ((_rest1989419902_ _rest19890_)
                 (_else1989619910_
                  (lambda ()
                    (values (reverse _ids19891_)
                            (reverse _impls19892_)
                            (reverse _clauses19893_))))
                 (_K1989820115_
                  (lambda (_rest19913_ _clause19914_)
                    (if (gxc#dispatch-lambda-form? _clause19914_)
                        (_lp19888_
                         _rest19913_
                         _ids19891_
                         _impls19892_
                         (cons _clause19914_ _clauses19893_))
                        (let* ((_g1991619927_
                                (lambda (_g1991719924_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1991719924_)))
                               (_g1991520112_
                                (lambda (_g1991719930_)
                                  (if (gx#stx-pair? _g1991719930_)
                                      (let ((_e1992019932_
                                             (gx#stx-e _g1991719930_)))
                                        (let ((_hd1992119935_
                                               (##car _e1992019932_))
                                              (_tl1992219937_
                                               (##cdr _e1992019932_)))
                                          ((lambda (_L19940_ _L19941_)
                                             (let* ((_id19958_
                                                     (make-symbol
                                                      (gx#stx-e _id19884_)
                                                      '"__"
                                                      (length _clauses19893_)
                                                      (if _gensym?19886_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id19960_
                                                     (gx#core-quote-syntax__1
                                                      _id19958_
                                                      (gx#stx-source
                                                       _stx19883_)))
                                                    (_impl19962_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L19941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19940_))
              _stx19883_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20109_
                                                     (let* ((___stx2816628167_
                                                             _L19941_)
                                                            (_g1996619994_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx2816628167_))))
                                                       (let ((___kont2816828169_
                                                              (lambda (_L20088_)
                                                                (cons _L19941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id19960_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2009820101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2009920103_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g2009820101_ '()))
                           _g2009920103_))
                   '()
                   _L20088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19883_)
                                    '()))))
                     (___kont2817228173_
                      (lambda (_L20039_ _L20040_)
                        (cons _L19941_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id19960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L20039_ '()))
                             '())
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2005120054_ _g2005220056_)
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _g2005120054_ '()))
                                         _g2005220056_))
                                 '()
                                 _L20040_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19883_)
                                    '()))))
                     (___kont2817628177_
                      (lambda (_L19999_)
                        (cons _L19941_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id19960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L19999_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19883_)
                                    '())))))
                 (let* ((___match2819128192_
                         (lambda (___splice2817428175_
                                  _target1998020015_
                                  _tl1998220017_)
                           (letrec ((_loop1998320020_
                                     (lambda (_hd1998120023_ _arg1998720025_)
                                       (if (gx#stx-pair? _hd1998120023_)
                                           (let ((_e1998420028_
                                                  (gx#stx-e _hd1998120023_)))
                                             (let ((_lp-tl1998620033_
                                                    (##cdr _e1998420028_))
                                                   (_lp-hd1998520031_
                                                    (##car _e1998420028_)))
                                               (_loop1998320020_
                                                _lp-tl1998620033_
                                                (cons _lp-hd1998520031_
                                                      _arg1998720025_))))
                                           (let ((_arg1998820036_
                                                  (reverse _arg1998720025_)))
                                             (___kont2817228173_
                                              _tl1998220017_
                                              _arg1998820036_))))))
                             (_loop1998320020_ _target1998020015_ '()))))
                        (___match2818528186_
                         (lambda (___splice2817028171_
                                  _target1996920064_
                                  _tl1997120066_)
                           (letrec ((_loop1997220069_
                                     (lambda (_hd1997020072_ _arg1997620074_)
                                       (if (gx#stx-pair? _hd1997020072_)
                                           (let ((_e1997320077_
                                                  (gx#stx-e _hd1997020072_)))
                                             (let ((_lp-tl1997520082_
                                                    (##cdr _e1997320077_))
                                                   (_lp-hd1997420080_
                                                    (##car _e1997320077_)))
                                               (_loop1997220069_
                                                _lp-tl1997520082_
                                                (cons _lp-hd1997420080_
                                                      _arg1997620074_))))
                                           (let ((_arg1997720085_
                                                  (reverse _arg1997620074_)))
                                             (___kont2816828169_
                                              _arg1997720085_))))))
                             (_loop1997220069_ _target1996920064_ '())))))
                   (if (gx#stx-pair/null? ___stx2816628167_)
                       (let ((___splice2817028171_
                              (gx#syntax-split-splice ___stx2816628167_ '0)))
                         (let ((_tl1997120066_
                                (##vector-ref ___splice2817028171_ '1))
                               (_target1996920064_
                                (##vector-ref ___splice2817028171_ '0)))
                           (if (gx#stx-null? _tl1997120066_)
                               (___match2818528186_
                                ___splice2817028171_
                                _target1996920064_
                                _tl1997120066_)
                               (___match2819128192_
                                ___splice2817028171_
                                _target1996920064_
                                _tl1997120066_))))
                       (___kont2817628177_ ___stx2816628167_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp19888_
                                                _rest19913_
                                                (cons _id19960_ _ids19891_)
                                                (cons _impl19962_ _impls19892_)
                                                (cons _clause20109_
                                                      _clauses19893_))))
                                           _tl1992219937_
                                           _hd1992119935_)))
                                      (_g1991619927_ _g1991719930_)))))
                          (_g1991520112_ _clause19914_))))))
            (if (##pair? _rest1989419902_)
                (let ((_hd1989920118_ (##car _rest1989419902_))
                      (_tl1990020120_ (##cdr _rest1989419902_)))
                  (let* ((_clause20123_ _hd1989920118_)
                         (_rest20125_ _tl1990020120_))
                    (_K1989820115_ _rest20125_ _clause20123_)))
                (_else1989619910_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20130_ _id20131_ _clauses20132_)
          (let ((_gensym?20134_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx20130_
             _id20131_
             _clauses20132_
             _gensym?20134_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g28708_
          (let ((_g28707_ (length _g28708_)))
            (cond ((##fx= _g28707_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g28708_))
                  ((##fx= _g28707_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g28708_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g28708_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19160_)
      (letrec ((_case-lambda-clause-def19162_
                (lambda (_id19879_ _impl19880_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id19879_ '())
                               (cons (gxc#compile-e _impl19880_) '())))
                   _stx19160_)))
               (_opt-lambda-dispatch-name19163_
                (lambda (_id19875_)
                  (if (uninterned-symbol? _id19875_)
                      (let ((_str19877_ (symbol->string _id19875_)))
                        (if (string-prefix? _str19877_ '"opt-lambda")
                            '"%"
                            _id19875_))
                      _id19875_)))
               (_kw-lambda-dispatch-name19164_
                (lambda (_id19870_ _name19871_)
                  (if (uninterned-symbol? _id19870_)
                      (let ((_str19873_ (symbol->string _id19870_)))
                        (if (string-prefix? _str19873_ '"kw-lambda")
                            _name19871_
                            _id19870_))
                      _id19870_))))
        (let* ((___stx2821428215_ _stx19160_)
               (_g1916919228_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2821428215_))))
          (let ((___kont2821628217_
                 (lambda (_L19779_ _L19780_)
                   (let* ((___stx2819428195_ _L19779_)
                          (_g1979719811_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2819428195_))))
                     (let ((___kont2819628197_ (lambda (_L19855_) _stx19160_))
                           (___kont2819828199_
                            (lambda (_L19824_)
                              (let ((_g28709_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx19160_
                                      _L19780_
                                      _L19824_)))
                                (begin
                                  (let ((_g28710_
                                         (if (##values? _g28709_)
                                             (##vector-length _g28709_)
                                             1)))
                                    (if (not (##fx= _g28710_ 3))
                                        (error "Context expects 3 values"
                                               _g28710_)))
                                  (let ((_ids19834_ (##vector-ref _g28709_ 0))
                                        (_impls19835_
                                         (##vector-ref _g28709_ 1))
                                        (_clauses19836_
                                         (##vector-ref _g28709_ 2)))
                                    (let* ((_g28711_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids19834_))
                                           (_defs19839_
                                            (map _case-lambda-clause-def19162_
                                                 _ids19834_
                                                 _impls19835_)))
                                      (begin
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L19780_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids19834_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L19780_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses19836_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx19160_)
                     '())
               _defs19839_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx19160_)))))))))
                       (let ((___match2820528206_
                              (lambda (_e1980019847_
                                       _hd1980119850_
                                       _tl1980219852_)
                                (let ((_L19855_ _tl1980219852_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L19855_)
                                      (___kont2819628197_ _L19855_)
                                      (___kont2819828199_ _tl1980219852_))))))
                         (if (gx#stx-pair? ___stx2819428195_)
                             (let ((_e1980019847_
                                    (gx#stx-e ___stx2819428195_)))
                               (let ((_tl1980219852_ (##cdr _e1980019847_))
                                     (_hd1980119850_ (##car _e1980019847_)))
                                 (___match2820528206_
                                  _e1980019847_
                                  _hd1980119850_
                                  _tl1980219852_)))
                             (_g1979719811_)))))))
                (___kont2821828219_
                 (lambda (_L19597_ _L19598_)
                   (let* ((_g1961419644_
                           (lambda (_g1961519641_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1961519641_)))
                          (_g1961319739_
                           (lambda (_g1961519647_)
                             (if (gx#stx-pair? _g1961519647_)
                                 (let ((_e1961919649_
                                        (gx#stx-e _g1961519647_)))
                                   (let ((_hd1962019652_ (##car _e1961919649_))
                                         (_tl1962119654_
                                          (##cdr _e1961919649_)))
                                     (if (gx#stx-pair? _tl1962119654_)
                                         (let ((_e1962219657_
                                                (gx#stx-e _tl1962119654_)))
                                           (let ((_hd1962319660_
                                                  (##car _e1962219657_))
                                                 (_tl1962419662_
                                                  (##cdr _e1962219657_)))
                                             (if (gx#stx-pair? _hd1962319660_)
                                                 (let ((_e1962519665_
                                                        (gx#stx-e
                                                         _hd1962319660_)))
                                                   (let ((_hd1962619668_
                                                          (##car _e1962519665_))
                                                         (_tl1962719670_
                                                          (##cdr _e1962519665_)))
                                                     (if (gx#stx-pair?
                                                          _hd1962619668_)
                                                         (let ((_e1962819673_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1962619668_)))
                   (let ((_hd1962919676_ (##car _e1962819673_))
                         (_tl1963019678_ (##cdr _e1962819673_)))
                     (if (gx#stx-pair? _hd1962919676_)
                         (let ((_e1963119681_ (gx#stx-e _hd1962919676_)))
                           (let ((_hd1963219684_ (##car _e1963119681_))
                                 (_tl1963319686_ (##cdr _e1963119681_)))
                             (if (gx#stx-null? _tl1963319686_)
                                 (if (gx#stx-pair? _tl1963019678_)
                                     (let ((_e1963419689_
                                            (gx#stx-e _tl1963019678_)))
                                       (let ((_hd1963519692_
                                              (##car _e1963419689_))
                                             (_tl1963619694_
                                              (##cdr _e1963419689_)))
                                         (if (gx#stx-null? _tl1963619694_)
                                             (if (gx#stx-null? _tl1962719670_)
                                                 (if (gx#stx-pair?
                                                      _tl1962419662_)
                                                     (let ((_e1963719697_
                                                            (gx#stx-e
                                                             _tl1962419662_)))
                                                       (let ((_hd1963819700_
                                                              (##car _e1963719697_))
                                                             (_tl1963919702_
                                                              (##cdr _e1963719697_)))
                                                         (if (gx#stx-null?
                                                              _tl1963919702_)
                                                             ((lambda (_L19705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19706_
                               _L19707_)
                        (let* ((_lambda-id19731_
                                (make-symbol
                                 (gx#stx-e _L19598_)
                                 '"__"
                                 (_opt-lambda-dispatch-name19163_
                                  (gx#stx-e _L19707_))))
                               (_lambda-id19733_
                                (gx#core-quote-syntax__1
                                 _lambda-id19731_
                                 (gx#stx-source _stx19160_)))
                               (_g28712_
                                (gx#core-bind-runtime!__0 _lambda-id19733_))
                               (_new-case-lambda-expr19736_
                                (gxc#apply-expression-subst
                                 _L19705_
                                 _L19707_
                                 _lambda-id19733_)))
                          (begin
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L19598_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id19733_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id19733_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L19706_)
                                                            '())))
                                          _stx19160_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L19598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr19736_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx19160_))
                                               '())))
                             _stx19160_))))
                      _hd1963819700_
                      _hd1963519692_
                      _hd1963219684_)
                     (_g1961419644_ _g1961519647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1961419644_
                                                      _g1961519647_))
                                                 (_g1961419644_ _g1961519647_))
                                             (_g1961419644_ _g1961519647_))))
                                     (_g1961419644_ _g1961519647_))
                                 (_g1961419644_ _g1961519647_))))
                         (_g1961419644_ _g1961519647_))))
                 (_g1961419644_ _g1961519647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1961419644_
                                                  _g1961519647_))))
                                         (_g1961419644_ _g1961519647_))))
                                 (_g1961419644_ _g1961519647_)))))
                     (_g1961319739_ _L19597_))))
                (___kont2822028221_
                 (lambda (_L19311_ _L19312_)
                   (let* ((_g1932819381_
                           (lambda (_g1932919378_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1932919378_)))
                          (_g1932719557_
                           (lambda (_g1932919384_)
                             (if (gx#stx-pair? _g1932919384_)
                                 (let ((_e1933519386_
                                        (gx#stx-e _g1932919384_)))
                                   (let ((_hd1933619389_ (##car _e1933519386_))
                                         (_tl1933719391_
                                          (##cdr _e1933519386_)))
                                     (if (gx#stx-pair? _tl1933719391_)
                                         (let ((_e1933819394_
                                                (gx#stx-e _tl1933719391_)))
                                           (let ((_hd1933919397_
                                                  (##car _e1933819394_))
                                                 (_tl1934019399_
                                                  (##cdr _e1933819394_)))
                                             (if (gx#stx-pair? _hd1933919397_)
                                                 (let ((_e1934119402_
                                                        (gx#stx-e
                                                         _hd1933919397_)))
                                                   (let ((_hd1934219405_
                                                          (##car _e1934119402_))
                                                         (_tl1934319407_
                                                          (##cdr _e1934119402_)))
                                                     (if (gx#stx-pair?
                                                          _hd1934219405_)
                                                         (let ((_e1934419410_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1934219405_)))
                   (let ((_hd1934519413_ (##car _e1934419410_))
                         (_tl1934619415_ (##cdr _e1934419410_)))
                     (if (gx#stx-pair? _hd1934519413_)
                         (let ((_e1934719418_ (gx#stx-e _hd1934519413_)))
                           (let ((_hd1934819421_ (##car _e1934719418_))
                                 (_tl1934919423_ (##cdr _e1934719418_)))
                             (if (gx#stx-null? _tl1934919423_)
                                 (if (gx#stx-pair? _tl1934619415_)
                                     (let ((_e1935019426_
                                            (gx#stx-e _tl1934619415_)))
                                       (let ((_hd1935119429_
                                              (##car _e1935019426_))
                                             (_tl1935219431_
                                              (##cdr _e1935019426_)))
                                         (if (gx#stx-pair? _hd1935119429_)
                                             (let ((_e1935319434_
                                                    (gx#stx-e _hd1935119429_)))
                                               (let ((_hd1935419437_
                                                      (##car _e1935319434_))
                                                     (_tl1935519439_
                                                      (##cdr _e1935319434_)))
                                                 (if (gx#stx-pair?
                                                      _tl1935519439_)
                                                     (let ((_e1935619442_
                                                            (gx#stx-e
                                                             _tl1935519439_)))
                                                       (let ((_hd1935719445_
                                                              (##car _e1935619442_))
                                                             (_tl1935819447_
                                                              (##cdr _e1935619442_)))
                                                         (if (gx#stx-pair?
                                                              _hd1935719445_)
                                                             (let ((_e1935919450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1935719445_)))
                       (let ((_hd1936019453_ (##car _e1935919450_))
                             (_tl1936119455_ (##cdr _e1935919450_)))
                         (if (gx#stx-pair? _hd1936019453_)
                             (let ((_e1936219458_ (gx#stx-e _hd1936019453_)))
                               (let ((_hd1936319461_ (##car _e1936219458_))
                                     (_tl1936419463_ (##cdr _e1936219458_)))
                                 (if (gx#stx-pair? _hd1936319461_)
                                     (let ((_e1936519466_
                                            (gx#stx-e _hd1936319461_)))
                                       (let ((_hd1936619469_
                                              (##car _e1936519466_))
                                             (_tl1936719471_
                                              (##cdr _e1936519466_)))
                                         (if (gx#stx-null? _tl1936719471_)
                                             (if (gx#stx-pair? _tl1936419463_)
                                                 (let ((_e1936819474_
                                                        (gx#stx-e
                                                         _tl1936419463_)))
                                                   (let ((_hd1936919477_
                                                          (##car _e1936819474_))
                                                         (_tl1937019479_
                                                          (##cdr _e1936819474_)))
                                                     (if (gx#stx-null?
                                                          _tl1937019479_)
                                                         (if (gx#stx-null?
                                                              _tl1936119455_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1935819447_)
                         (let ((_e1937119482_ (gx#stx-e _tl1935819447_)))
                           (let ((_hd1937219485_ (##car _e1937119482_))
                                 (_tl1937319487_ (##cdr _e1937119482_)))
                             (if (gx#stx-null? _tl1937319487_)
                                 (if (gx#stx-null? _tl1935219431_)
                                     (if (gx#stx-null? _tl1934319407_)
                                         (if (gx#stx-pair? _tl1934019399_)
                                             (let ((_e1937419490_
                                                    (gx#stx-e _tl1934019399_)))
                                               (let ((_hd1937519493_
                                                      (##car _e1937419490_))
                                                     (_tl1937619495_
                                                      (##cdr _e1937419490_)))
                                                 (if (gx#stx-null?
                                                      _tl1937619495_)
                                                     ((lambda (_L19498_
                                                               _L19499_
                                                               _L19500_
                                                               _L19501_
                                                               _L19502_)
                                                        (let* ((_get-kws-id19542_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L19312_)
                         '"__"
                         (_kw-lambda-dispatch-name19164_
                          (gx#stx-e _L19502_)
                          '"@")))
                       (_get-kws-id19544_
                        (gx#core-quote-syntax__1
                         _get-kws-id19542_
                         (gx#stx-source _stx19160_)))
                       (_main-id19546_
                        (make-symbol
                         (gx#stx-e _L19312_)
                         '"__"
                         (_kw-lambda-dispatch-name19164_
                          (gx#stx-e _L19501_)
                          '"%")))
                       (_main-id19548_
                        (gx#core-quote-syntax__1
                         _main-id19546_
                         (gx#stx-source _stx19160_)))
                       (_g28713_ (gx#core-bind-runtime!__0 _get-kws-id19544_))
                       (_g28714_ (gx#core-bind-runtime!__0 _main-id19548_))
                       (_new-kw-dispatch19552_
                        (gxc#apply-expression-subst
                         _L19498_
                         _L19502_
                         _get-kws-id19544_))
                       (_new-get-kws19554_
                        (gxc#apply-expression-subst
                         _L19499_
                         _L19501_
                         _main-id19548_)))
                  (begin
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L19312_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id19544_)
                     '" => "
                     (gxc#identifier-symbol _main-id19548_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id19548_ '())
                                               (cons _L19500_ '())))
                                   _stx19160_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id19544_
                                                          '())
                                                    (cons _new-get-kws19554_
                                                          '())))
                                        _stx19160_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L19312_ '())
                                                          (cons _new-kw-dispatch19552_
                                                                '())))
                                              _stx19160_)
                                             '()))))
                     _stx19160_))))
              _hd1937519493_
              _hd1937219485_
              _hd1936919477_
              _hd1936619469_
              _hd1934819421_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1932819381_
                                                      _g1932919384_))))
                                             (_g1932819381_ _g1932919384_))
                                         (_g1932819381_ _g1932919384_))
                                     (_g1932819381_ _g1932919384_))
                                 (_g1932819381_ _g1932919384_))))
                         (_g1932819381_ _g1932919384_))
                     (_g1932819381_ _g1932919384_))
                 (_g1932819381_ _g1932919384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1932819381_ _g1932919384_))
                                             (_g1932819381_ _g1932919384_))))
                                     (_g1932819381_ _g1932919384_))))
                             (_g1932819381_ _g1932919384_))))
                     (_g1932819381_ _g1932919384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1932819381_
                                                      _g1932919384_))))
                                             (_g1932819381_ _g1932919384_))))
                                     (_g1932819381_ _g1932919384_))
                                 (_g1932819381_ _g1932919384_))))
                         (_g1932819381_ _g1932919384_))))
                 (_g1932819381_ _g1932919384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1932819381_
                                                  _g1932919384_))))
                                         (_g1932819381_ _g1932919384_))))
                                 (_g1932819381_ _g1932919384_)))))
                     (_g1932719557_ _L19311_))))
                (___kont2822228223_
                 (lambda (_L19257_ _L19258_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L19258_ (cons (gxc#compile-e _L19257_) '())))
                    _stx19160_))))
            (let* ((___match2830728308_
                    (lambda (_e1920119279_
                             _hd1920219282_
                             _tl1920319284_
                             _e1920419287_
                             _hd1920519290_
                             _tl1920619292_
                             _e1920719295_
                             _hd1920819298_
                             _tl1920919300_
                             _e1921019303_
                             _hd1921119306_
                             _tl1921219308_)
                      (let ((_L19311_ _hd1921119306_)
                            (_L19312_ _hd1920819298_))
                        (if (if (gx#identifier? _L19312_)
                                (gxc#kw-lambda-expr? _L19311_)
                                '#f)
                            (___kont2822028221_ _L19311_ _L19312_)
                            (___kont2822228223_
                             _hd1921119306_
                             _hd1920519290_)))))
                   (___match2827928280_
                    (lambda (_e1918719565_
                             _hd1918819568_
                             _tl1918919570_
                             _e1919019573_
                             _hd1919119576_
                             _tl1919219578_
                             _e1919319581_
                             _hd1919419584_
                             _tl1919519586_
                             _e1919619589_
                             _hd1919719592_
                             _tl1919819594_)
                      (let ((_L19597_ _hd1919719592_)
                            (_L19598_ _hd1919419584_))
                        (if (if (gx#identifier? _L19598_)
                                (gxc#opt-lambda-expr? _L19597_)
                                '#f)
                            (___kont2821828219_ _L19597_ _L19598_)
                            (___match2830728308_
                             _e1918719565_
                             _hd1918819568_
                             _tl1918919570_
                             _e1919019573_
                             _hd1919119576_
                             _tl1919219578_
                             _e1919319581_
                             _hd1919419584_
                             _tl1919519586_
                             _e1919619589_
                             _hd1919719592_
                             _tl1919819594_)))))
                   (___match2825128252_
                    (lambda (_e1917319747_
                             _hd1917419750_
                             _tl1917519752_
                             _e1917619755_
                             _hd1917719758_
                             _tl1917819760_
                             _e1917919763_
                             _hd1918019766_
                             _tl1918119768_
                             _e1918219771_
                             _hd1918319774_
                             _tl1918419776_)
                      (let ((_L19779_ _hd1918319774_)
                            (_L19780_ _hd1918019766_))
                        (if (if (gx#identifier? _L19780_)
                                (gxc#case-lambda-expr? _L19779_)
                                '#f)
                            (___kont2821628217_ _L19779_ _L19780_)
                            (___match2827928280_
                             _e1917319747_
                             _hd1917419750_
                             _tl1917519752_
                             _e1917619755_
                             _hd1917719758_
                             _tl1917819760_
                             _e1917919763_
                             _hd1918019766_
                             _tl1918119768_
                             _e1918219771_
                             _hd1918319774_
                             _tl1918419776_))))))
              (if (gx#stx-pair? ___stx2821428215_)
                  (let ((_e1917319747_ (gx#stx-e ___stx2821428215_)))
                    (let ((_tl1917519752_ (##cdr _e1917319747_))
                          (_hd1917419750_ (##car _e1917319747_)))
                      (if (gx#stx-pair? _tl1917519752_)
                          (let ((_e1917619755_ (gx#stx-e _tl1917519752_)))
                            (let ((_tl1917819760_ (##cdr _e1917619755_))
                                  (_hd1917719758_ (##car _e1917619755_)))
                              (if (gx#stx-pair? _hd1917719758_)
                                  (let ((_e1917919763_
                                         (gx#stx-e _hd1917719758_)))
                                    (let ((_tl1918119768_
                                           (##cdr _e1917919763_))
                                          (_hd1918019766_
                                           (##car _e1917919763_)))
                                      (if (gx#stx-null? _tl1918119768_)
                                          (if (gx#stx-pair? _tl1917819760_)
                                              (let ((_e1918219771_
                                                     (gx#stx-e
                                                      _tl1917819760_)))
                                                (let ((_tl1918419776_
                                                       (##cdr _e1918219771_))
                                                      (_hd1918319774_
                                                       (##car _e1918219771_)))
                                                  (if (gx#stx-null?
                                                       _tl1918419776_)
                                                      (___match2825128252_
                                                       _e1917319747_
                                                       _hd1917419750_
                                                       _tl1917519752_
                                                       _e1917619755_
                                                       _hd1917719758_
                                                       _tl1917819760_
                                                       _e1917919763_
                                                       _hd1918019766_
                                                       _tl1918119768_
                                                       _e1918219771_
                                                       _hd1918319774_
                                                       _tl1918419776_)
                                                      (_g1916919228_))))
                                              (_g1916919228_))
                                          (if (gx#stx-pair? _tl1917819760_)
                                              (let ((_e1922119249_
                                                     (gx#stx-e
                                                      _tl1917819760_)))
                                                (let ((_tl1922319254_
                                                       (##cdr _e1922119249_))
                                                      (_hd1922219252_
                                                       (##car _e1922119249_)))
                                                  (if (gx#stx-null?
                                                       _tl1922319254_)
                                                      (___kont2822228223_
                                                       _hd1922219252_
                                                       _hd1917719758_)
                                                      (_g1916919228_))))
                                              (_g1916919228_)))))
                                  (if (gx#stx-pair? _tl1917819760_)
                                      (let ((_e1922119249_
                                             (gx#stx-e _tl1917819760_)))
                                        (let ((_tl1922319254_
                                               (##cdr _e1922119249_))
                                              (_hd1922219252_
                                               (##car _e1922119249_)))
                                          (if (gx#stx-null? _tl1922319254_)
                                              (___kont2822228223_
                                               _hd1922219252_
                                               _hd1917719758_)
                                              (_g1916919228_))))
                                      (_g1916919228_)))))
                          (_g1916919228_))))
                  (_g1916919228_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx18092_)
      (letrec* ((_bind-e__2608626087_
                 (lambda (_id19144_ _expr19145_ _compile?19146_)
                   (cons (cons _id19144_ '())
                         (cons (if _compile?19146_
                                   (gxc#compile-e _expr19145_)
                                   _expr19145_)
                               '()))))
                (_bind-e__0__2608826089_
                 (lambda (_id19151_ _expr19152_)
                   (let ((_compile?19154_ '#t))
                     (_bind-e__2608626087_
                      _id19151_
                      _expr19152_
                      _compile?19154_))))
                (_bind-e18094_
                 (lambda _g28716_
                   (let ((_g28715_ (length _g28716_)))
                     (cond ((##fx= _g28715_ 2)
                            (apply _bind-e__0__2608826089_ _g28716_))
                           ((##fx= _g28715_ 3)
                            (apply _bind-e__2608626087_ _g28716_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28716_))))))
                (_compile-bindings18095_
                 (lambda (_bindings18728_)
                   (let _lp18730_ ((_rest18732_ _bindings18728_)
                                   (_lift118733_ '())
                                   (_lift218734_ '())
                                   (_bind18735_ '()))
                     (let* ((_rest1873618744_ _rest18732_)
                            (_else1873818752_
                             (lambda ()
                               (values (reverse _lift118733_)
                                       (reverse _lift218734_)
                                       (reverse _bind18735_))))
                            (_K1874019131_
                             (lambda (_rest18755_ _hd18756_)
                               (let* ((___stx2835028351_ _hd18756_)
                                      (_g1876018796_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2835028351_))))
                                 (let ((___kont2835228353_
                                        (lambda (_L19038_ _L19039_)
                                          (let* ((___stx2833028331_ _L19038_)
                                                 (_g1905419068_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2833028331_))))
                                            (let ((___kont2833228333_
                                                   (lambda (_L19116_)
                                                     (_lp18730_
                                                      _rest18755_
                                                      _lift118733_
                                                      _lift218734_
                                                      (cons (_bind-e__2608626087_
                                                             _L19039_
                                                             _L19038_
                                                             '#f)
                                                            _bind18735_))))
                                                  (___kont2833428335_
                                                   (lambda (_L19081_)
                                                     (let ((_g28717_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx18092_
                                                             _L19039_
                                                             _L19081_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28718_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28717_)
                            (##vector-length _g28717_)
                            1)))
                   (if (not (##fx= _g28718_ 3))
                       (error "Context expects 3 values" _g28718_)))
                 (let ((_ids19091_ (##vector-ref _g28717_ 0))
                       (_impls19092_ (##vector-ref _g28717_ 1))
                       (_clauses19093_ (##vector-ref _g28717_ 2)))
                   (let* ((_g28719_
                           (for-each gx#core-bind-runtime! _ids19091_))
                          (_xbind19096_
                           (map _bind-e18094_ _ids19091_ _impls19092_))
                          (_expr*19098_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses19093_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*19100_
                           (_bind-e__2608626087_ _L19039_ _expr*19098_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L19039_)
                        '" => "
                        (map gxc#identifier-symbol _ids19091_))
                       (_lp18730_
                        _rest18755_
                        _lift118733_
                        (foldl1 cons _lift218734_ _xbind19096_)
                        (cons _bind*19100_ _bind18735_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2834128342_
                                                     (lambda (_e1905719108_
                                                              _hd1905819111_
                                                              _tl1905919113_)
                                                       (let ((_L19116_
                                                              _tl1905919113_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19116_)
                     (___kont2833228333_ _L19116_)
                     (___kont2833428335_ _tl1905919113_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2833028331_)
                                                    (let ((_e1905719108_
                                                           (gx#stx-e
                                                            ___stx2833028331_)))
                                                      (let ((_tl1905919113_
                                                             (##cdr _e1905719108_))
                                                            (_hd1905819111_
                                                             (##car _e1905719108_)))
                                                        (___match2834128342_
                                                         _e1905719108_
                                                         _hd1905819111_
                                                         _tl1905919113_)))
                                                    (_g1905419068_)))))))
                                       (___kont2835428355_
                                        (lambda (_L18866_ _L18867_)
                                          (let* ((_g1888118911_
                                                  (lambda (_g1888218908_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1888218908_)))
                                                 (_g1888019006_
                                                  (lambda (_g1888218914_)
                                                    (if (gx#stx-pair?
                                                         _g1888218914_)
                                                        (let ((_e1888618916_
                                                               (gx#stx-e
                                                                _g1888218914_)))
                                                          (let ((_hd1888718919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1888618916_))
                        (_tl1888818921_ (##cdr _e1888618916_)))
                    (if (gx#stx-pair? _tl1888818921_)
                        (let ((_e1888918924_ (gx#stx-e _tl1888818921_)))
                          (let ((_hd1889018927_ (##car _e1888918924_))
                                (_tl1889118929_ (##cdr _e1888918924_)))
                            (if (gx#stx-pair? _hd1889018927_)
                                (let ((_e1889218932_
                                       (gx#stx-e _hd1889018927_)))
                                  (let ((_hd1889318935_ (##car _e1889218932_))
                                        (_tl1889418937_ (##cdr _e1889218932_)))
                                    (if (gx#stx-pair? _hd1889318935_)
                                        (let ((_e1889518940_
                                               (gx#stx-e _hd1889318935_)))
                                          (let ((_hd1889618943_
                                                 (##car _e1889518940_))
                                                (_tl1889718945_
                                                 (##cdr _e1889518940_)))
                                            (if (gx#stx-pair? _hd1889618943_)
                                                (let ((_e1889818948_
                                                       (gx#stx-e
                                                        _hd1889618943_)))
                                                  (let ((_hd1889918951_
                                                         (##car _e1889818948_))
                                                        (_tl1890018953_
                                                         (##cdr _e1889818948_)))
                                                    (if (gx#stx-null?
                                                         _tl1890018953_)
                                                        (if (gx#stx-pair?
                                                             _tl1889718945_)
                                                            (let ((_e1890118956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1889718945_)))
                      (let ((_hd1890218959_ (##car _e1890118956_))
                            (_tl1890318961_ (##cdr _e1890118956_)))
                        (if (gx#stx-null? _tl1890318961_)
                            (if (gx#stx-null? _tl1889418937_)
                                (if (gx#stx-pair? _tl1889118929_)
                                    (let ((_e1890418964_
                                           (gx#stx-e _tl1889118929_)))
                                      (let ((_hd1890518967_
                                             (##car _e1890418964_))
                                            (_tl1890618969_
                                             (##cdr _e1890418964_)))
                                        (if (gx#stx-null? _tl1890618969_)
                                            ((lambda (_L18972_
                                                      _L18973_
                                                      _L18974_)
                                               (let* ((_lambda-id18998_
                                                       (make-symbol
                                                        (gx#stx-e _L18867_)
                                                        (gensym '__)))
                                                      (_lambda-id19000_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id18998_
                                                        (gx#stx-source
                                                         _stx18092_)))
                                                      (_g28720_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id19000_))
                                                      (_new-case-lambda-expr19003_
                                                       (gxc#apply-expression-subst
                                                        _L18972_
                                                        _L18974_
                                                        _lambda-id19000_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L18867_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id19000_))
                                                   (_lp18730_
                                                    (cons (_bind-e__2608626087_
                                                           _L18867_
                                                           _new-case-lambda-expr19003_
                                                           '#f)
                                                          _rest18755_)
                                                    (cons (_bind-e__0__2608826089_
                                                           _lambda-id19000_
                                                           _L18973_)
                                                          _lift118733_)
                                                    _lift218734_
                                                    _bind18735_))))
                                             _hd1890518967_
                                             _hd1890218959_
                                             _hd1889918951_)
                                            (_g1888118911_ _g1888218914_))))
                                    (_g1888118911_ _g1888218914_))
                                (_g1888118911_ _g1888218914_))
                            (_g1888118911_ _g1888218914_))))
                    (_g1888118911_ _g1888218914_))
                (_g1888118911_ _g1888218914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1888118911_
                                                 _g1888218914_))))
                                        (_g1888118911_ _g1888218914_))))
                                (_g1888118911_ _g1888218914_))))
                        (_g1888118911_ _g1888218914_))))
                (_g1888118911_ _g1888218914_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1888019006_ _L18866_))))
                                       (___kont2835628357_
                                        (lambda (_L18817_ _L18818_)
                                          (_lp18730_
                                           _rest18755_
                                           _lift118733_
                                           _lift218734_
                                           (cons (cons _L18818_
                                                       (cons (gxc#compile-e
                                                              _L18817_)
                                                             '()))
                                                 _bind18735_)))))
                                   (let* ((___match2840128402_
                                           (lambda (_e1877518842_
                                                    _hd1877618845_
                                                    _tl1877718847_
                                                    _e1877818850_
                                                    _hd1877918853_
                                                    _tl1878018855_
                                                    _e1878118858_
                                                    _hd1878218861_
                                                    _tl1878318863_)
                                             (let ((_L18866_ _hd1878218861_)
                                                   (_L18867_ _hd1877918853_))
                                               (if (if (gx#identifier?
                                                        _L18867_)
                                                       (gxc#opt-lambda-expr?
                                                        _L18866_)
                                                       '#f)
                                                   (___kont2835428355_
                                                    _L18866_
                                                    _L18867_)
                                                   (___kont2835628357_
                                                    _hd1878218861_
                                                    _hd1877618845_)))))
                                          (___match2837928380_
                                           (lambda (_e1876419014_
                                                    _hd1876519017_
                                                    _tl1876619019_
                                                    _e1876719022_
                                                    _hd1876819025_
                                                    _tl1876919027_
                                                    _e1877019030_
                                                    _hd1877119033_
                                                    _tl1877219035_)
                                             (let ((_L19038_ _hd1877119033_)
                                                   (_L19039_ _hd1876819025_))
                                               (if (if (gx#identifier?
                                                        _L19039_)
                                                       (gxc#case-lambda-expr?
                                                        _L19038_)
                                                       '#f)
                                                   (___kont2835228353_
                                                    _L19038_
                                                    _L19039_)
                                                   (___match2840128402_
                                                    _e1876419014_
                                                    _hd1876519017_
                                                    _tl1876619019_
                                                    _e1876719022_
                                                    _hd1876819025_
                                                    _tl1876919027_
                                                    _e1877019030_
                                                    _hd1877119033_
                                                    _tl1877219035_))))))
                                     (if (gx#stx-pair? ___stx2835028351_)
                                         (let ((_e1876419014_
                                                (gx#stx-e ___stx2835028351_)))
                                           (let ((_tl1876619019_
                                                  (##cdr _e1876419014_))
                                                 (_hd1876519017_
                                                  (##car _e1876419014_)))
                                             (if (gx#stx-pair? _hd1876519017_)
                                                 (let ((_e1876719022_
                                                        (gx#stx-e
                                                         _hd1876519017_)))
                                                   (let ((_tl1876919027_
                                                          (##cdr _e1876719022_))
                                                         (_hd1876819025_
                                                          (##car _e1876719022_)))
                                                     (if (gx#stx-null?
                                                          _tl1876919027_)
                                                         (if (gx#stx-pair?
                                                              _tl1876619019_)
                                                             (let ((_e1877019030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1876619019_)))
                       (let ((_tl1877219035_ (##cdr _e1877019030_))
                             (_hd1877119033_ (##car _e1877019030_)))
                         (if (gx#stx-null? _tl1877219035_)
                             (___match2837928380_
                              _e1876419014_
                              _hd1876519017_
                              _tl1876619019_
                              _e1876719022_
                              _hd1876819025_
                              _tl1876919027_
                              _e1877019030_
                              _hd1877119033_
                              _tl1877219035_)
                             (_g1876018796_))))
                     (_g1876018796_))
                 (if (gx#stx-pair? _tl1876619019_)
                     (let ((_e1878918809_ (gx#stx-e _tl1876619019_)))
                       (let ((_tl1879118814_ (##cdr _e1878918809_))
                             (_hd1879018812_ (##car _e1878918809_)))
                         (if (gx#stx-null? _tl1879118814_)
                             (___kont2835628357_ _hd1879018812_ _hd1876519017_)
                             (_g1876018796_))))
                     (_g1876018796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1876619019_)
                                                     (let ((_e1878918809_
                                                            (gx#stx-e
                                                             _tl1876619019_)))
                                                       (let ((_tl1879118814_
                                                              (##cdr _e1878918809_))
                                                             (_hd1879018812_
                                                              (##car _e1878918809_)))
                                                         (if (gx#stx-null?
                                                              _tl1879118814_)
                                                             (___kont2835628357_
                                                              _hd1879018812_
                                                              _hd1876519017_)
                                                             (_g1876018796_))))
                                                     (_g1876018796_)))))
                                         (_g1876018796_))))))))
                       (if (##pair? _rest1873618744_)
                           (let ((_hd1874119134_ (##car _rest1873618744_))
                                 (_tl1874219136_ (##cdr _rest1873618744_)))
                             (let* ((_hd19139_ _hd1874119134_)
                                    (_rest19141_ _tl1874219136_))
                               (_K1874019131_ _rest19141_ _hd19139_)))
                           (_else1873818752_))))))
                (_lift-kw-lambda?18096_
                 (lambda (_bind18652_)
                   (let* ((___stx2841828419_ _bind18652_)
                          (_g1865518672_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2841828419_))))
                     (let ((___kont2842028421_
                            (lambda (_L18708_ _L18709_)
                              (if (gx#identifier? _L18709_)
                                  (gxc#kw-lambda-expr? _L18708_)
                                  '#f)))
                           (___kont2842228423_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx2841828419_)
                           (let ((_e1865918684_ (gx#stx-e ___stx2841828419_)))
                             (let ((_tl1866118689_ (##cdr _e1865918684_))
                                   (_hd1866018687_ (##car _e1865918684_)))
                               (if (gx#stx-pair? _hd1866018687_)
                                   (let ((_e1866218692_
                                          (gx#stx-e _hd1866018687_)))
                                     (let ((_tl1866418697_
                                            (##cdr _e1866218692_))
                                           (_hd1866318695_
                                            (##car _e1866218692_)))
                                       (if (gx#stx-null? _tl1866418697_)
                                           (if (gx#stx-pair? _tl1866118689_)
                                               (let ((_e1866518700_
                                                      (gx#stx-e
                                                       _tl1866118689_)))
                                                 (let ((_tl1866718705_
                                                        (##cdr _e1866518700_))
                                                       (_hd1866618703_
                                                        (##car _e1866518700_)))
                                                   (if (gx#stx-null?
                                                        _tl1866718705_)
                                                       (___kont2842028421_
                                                        _hd1866618703_
                                                        _hd1866318695_)
                                                       (___kont2842228423_))))
                                               (___kont2842228423_))
                                           (___kont2842228423_))))
                                   (___kont2842228423_))))
                           (___kont2842228423_))))))
                (_lift-kw-lambda-bindings18097_
                 (lambda (_bindings18264_)
                   (let _lp18266_ ((_rest18268_ _bindings18264_)
                                   (_lift118269_ '())
                                   (_lift218270_ '())
                                   (_bind18271_ '()))
                     (let* ((_rest1827218280_ _rest18268_)
                            (_else1827418288_
                             (lambda ()
                               (values (reverse _lift118269_)
                                       (reverse _lift218270_)
                                       (reverse _bind18271_))))
                            (_K1827618640_
                             (lambda (_rest18291_ _hd18292_)
                               (let* ((___stx2844828449_ _hd18292_)
                                      (_g1829518320_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2844828449_))))
                                 (let ((___kont2845028451_
                                        (lambda (_L18390_ _L18391_)
                                          (let* ((_g1840518458_
                                                  (lambda (_g1840618455_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1840618455_)))
                                                 (_g1840418634_
                                                  (lambda (_g1840618461_)
                                                    (if (gx#stx-pair?
                                                         _g1840618461_)
                                                        (let ((_e1841218463_
                                                               (gx#stx-e
                                                                _g1840618461_)))
                                                          (let ((_hd1841318466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1841218463_))
                        (_tl1841418468_ (##cdr _e1841218463_)))
                    (if (gx#stx-pair? _tl1841418468_)
                        (let ((_e1841518471_ (gx#stx-e _tl1841418468_)))
                          (let ((_hd1841618474_ (##car _e1841518471_))
                                (_tl1841718476_ (##cdr _e1841518471_)))
                            (if (gx#stx-pair? _hd1841618474_)
                                (let ((_e1841818479_
                                       (gx#stx-e _hd1841618474_)))
                                  (let ((_hd1841918482_ (##car _e1841818479_))
                                        (_tl1842018484_ (##cdr _e1841818479_)))
                                    (if (gx#stx-pair? _hd1841918482_)
                                        (let ((_e1842118487_
                                               (gx#stx-e _hd1841918482_)))
                                          (let ((_hd1842218490_
                                                 (##car _e1842118487_))
                                                (_tl1842318492_
                                                 (##cdr _e1842118487_)))
                                            (if (gx#stx-pair? _hd1842218490_)
                                                (let ((_e1842418495_
                                                       (gx#stx-e
                                                        _hd1842218490_)))
                                                  (let ((_hd1842518498_
                                                         (##car _e1842418495_))
                                                        (_tl1842618500_
                                                         (##cdr _e1842418495_)))
                                                    (if (gx#stx-null?
                                                         _tl1842618500_)
                                                        (if (gx#stx-pair?
                                                             _tl1842318492_)
                                                            (let ((_e1842718503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1842318492_)))
                      (let ((_hd1842818506_ (##car _e1842718503_))
                            (_tl1842918508_ (##cdr _e1842718503_)))
                        (if (gx#stx-pair? _hd1842818506_)
                            (let ((_e1843018511_ (gx#stx-e _hd1842818506_)))
                              (let ((_hd1843118514_ (##car _e1843018511_))
                                    (_tl1843218516_ (##cdr _e1843018511_)))
                                (if (gx#stx-pair? _tl1843218516_)
                                    (let ((_e1843318519_
                                           (gx#stx-e _tl1843218516_)))
                                      (let ((_hd1843418522_
                                             (##car _e1843318519_))
                                            (_tl1843518524_
                                             (##cdr _e1843318519_)))
                                        (if (gx#stx-pair? _hd1843418522_)
                                            (let ((_e1843618527_
                                                   (gx#stx-e _hd1843418522_)))
                                              (let ((_hd1843718530_
                                                     (##car _e1843618527_))
                                                    (_tl1843818532_
                                                     (##cdr _e1843618527_)))
                                                (if (gx#stx-pair?
                                                     _hd1843718530_)
                                                    (let ((_e1843918535_
                                                           (gx#stx-e
                                                            _hd1843718530_)))
                                                      (let ((_hd1844018538_
                                                             (##car _e1843918535_))
                                                            (_tl1844118540_
                                                             (##cdr _e1843918535_)))
                                                        (if (gx#stx-pair?
                                                             _hd1844018538_)
                                                            (let ((_e1844218543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1844018538_)))
                      (let ((_hd1844318546_ (##car _e1844218543_))
                            (_tl1844418548_ (##cdr _e1844218543_)))
                        (if (gx#stx-null? _tl1844418548_)
                            (if (gx#stx-pair? _tl1844118540_)
                                (let ((_e1844518551_
                                       (gx#stx-e _tl1844118540_)))
                                  (let ((_hd1844618554_ (##car _e1844518551_))
                                        (_tl1844718556_ (##cdr _e1844518551_)))
                                    (if (gx#stx-null? _tl1844718556_)
                                        (if (gx#stx-null? _tl1843818532_)
                                            (if (gx#stx-pair? _tl1843518524_)
                                                (let ((_e1844818559_
                                                       (gx#stx-e
                                                        _tl1843518524_)))
                                                  (let ((_hd1844918562_
                                                         (##car _e1844818559_))
                                                        (_tl1845018564_
                                                         (##cdr _e1844818559_)))
                                                    (if (gx#stx-null?
                                                         _tl1845018564_)
                                                        (if (gx#stx-null?
                                                             _tl1842918508_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1842018484_)
                        (if (gx#stx-pair? _tl1841718476_)
                            (let ((_e1845118567_ (gx#stx-e _tl1841718476_)))
                              (let ((_hd1845218570_ (##car _e1845118567_))
                                    (_tl1845318572_ (##cdr _e1845118567_)))
                                (if (gx#stx-null? _tl1845318572_)
                                    ((lambda (_L18575_
                                              _L18576_
                                              _L18577_
                                              _L18578_
                                              _L18579_)
                                       (let* ((_get-kws-id18619_
                                               (make-symbol
                                                (gx#stx-e _L18391_)
                                                (gensym '__)))
                                              (_get-kws-id18621_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id18619_
                                                (gx#stx-source _stx18092_)))
                                              (_main-id18623_
                                               (make-symbol
                                                (gx#stx-e _L18391_)
                                                (gensym '__)))
                                              (_main-id18625_
                                               (gx#core-quote-syntax__1
                                                _main-id18623_
                                                (gx#stx-source _stx18092_)))
                                              (_g28721_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id18621_))
                                              (_g28722_
                                               (gx#core-bind-runtime!__0
                                                _main-id18625_))
                                              (_new-kw-dispatch18629_
                                               (gxc#apply-expression-subst
                                                _L18575_
                                                _L18579_
                                                _get-kws-id18621_))
                                              (_new-get-kws18631_
                                               (gxc#apply-expression-subst
                                                _L18576_
                                                _L18578_
                                                _main-id18625_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L18391_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id18621_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id18625_))
                                           (_lp18266_
                                            _rest18291_
                                            (cons (_bind-e__2608626087_
                                                   _main-id18625_
                                                   _L18577_
                                                   '#f)
                                                  _lift118269_)
                                            (cons (_bind-e__2608626087_
                                                   _get-kws-id18621_
                                                   _new-get-kws18631_
                                                   '#f)
                                                  _lift218270_)
                                            (cons (_bind-e__2608626087_
                                                   _L18391_
                                                   _new-kw-dispatch18629_
                                                   '#f)
                                                  _bind18271_)))))
                                     _hd1845218570_
                                     _hd1844918562_
                                     _hd1844618554_
                                     _hd1844318546_
                                     _hd1842518498_)
                                    (_g1840518458_ _g1840618461_))))
                            (_g1840518458_ _g1840618461_))
                        (_g1840518458_ _g1840618461_))
                    (_g1840518458_ _g1840618461_))
                (_g1840518458_ _g1840618461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1840518458_ _g1840618461_))
                                            (_g1840518458_ _g1840618461_))
                                        (_g1840518458_ _g1840618461_))))
                                (_g1840518458_ _g1840618461_))
                            (_g1840518458_ _g1840618461_))))
                    (_g1840518458_ _g1840618461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1840518458_
                                                     _g1840618461_))))
                                            (_g1840518458_ _g1840618461_))))
                                    (_g1840518458_ _g1840618461_))))
                            (_g1840518458_ _g1840618461_))))
                    (_g1840518458_ _g1840618461_))
                (_g1840518458_ _g1840618461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1840518458_
                                                 _g1840618461_))))
                                        (_g1840518458_ _g1840618461_))))
                                (_g1840518458_ _g1840618461_))))
                        (_g1840518458_ _g1840618461_))))
                (_g1840518458_ _g1840618461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1840418634_ _L18390_))))
                                       (___kont2845228453_
                                        (lambda (_L18341_ _L18342_)
                                          (_lp18266_
                                           _rest18291_
                                           _lift118269_
                                           _lift218270_
                                           (cons (cons _L18342_
                                                       (cons _L18341_ '()))
                                                 _bind18271_)))))
                                   (let ((___match2847528476_
                                          (lambda (_e1829918366_
                                                   _hd1830018369_
                                                   _tl1830118371_
                                                   _e1830218374_
                                                   _hd1830318377_
                                                   _tl1830418379_
                                                   _e1830518382_
                                                   _hd1830618385_
                                                   _tl1830718387_)
                                            (let ((_L18390_ _hd1830618385_)
                                                  (_L18391_ _hd1830318377_))
                                              (if (if (gx#identifier? _L18391_)
                                                      (gxc#kw-lambda-expr?
                                                       _L18390_)
                                                      '#f)
                                                  (___kont2845028451_
                                                   _L18390_
                                                   _L18391_)
                                                  (___kont2845228453_
                                                   _hd1830618385_
                                                   _hd1830018369_))))))
                                     (if (gx#stx-pair? ___stx2844828449_)
                                         (let ((_e1829918366_
                                                (gx#stx-e ___stx2844828449_)))
                                           (let ((_tl1830118371_
                                                  (##cdr _e1829918366_))
                                                 (_hd1830018369_
                                                  (##car _e1829918366_)))
                                             (if (gx#stx-pair? _hd1830018369_)
                                                 (let ((_e1830218374_
                                                        (gx#stx-e
                                                         _hd1830018369_)))
                                                   (let ((_tl1830418379_
                                                          (##cdr _e1830218374_))
                                                         (_hd1830318377_
                                                          (##car _e1830218374_)))
                                                     (if (gx#stx-null?
                                                          _tl1830418379_)
                                                         (if (gx#stx-pair?
                                                              _tl1830118371_)
                                                             (let ((_e1830518382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1830118371_)))
                       (let ((_tl1830718387_ (##cdr _e1830518382_))
                             (_hd1830618385_ (##car _e1830518382_)))
                         (if (gx#stx-null? _tl1830718387_)
                             (___match2847528476_
                              _e1829918366_
                              _hd1830018369_
                              _tl1830118371_
                              _e1830218374_
                              _hd1830318377_
                              _tl1830418379_
                              _e1830518382_
                              _hd1830618385_
                              _tl1830718387_)
                             (_g1829518320_))))
                     (_g1829518320_))
                 (if (gx#stx-pair? _tl1830118371_)
                     (let ((_e1831318333_ (gx#stx-e _tl1830118371_)))
                       (let ((_tl1831518338_ (##cdr _e1831318333_))
                             (_hd1831418336_ (##car _e1831318333_)))
                         (if (gx#stx-null? _tl1831518338_)
                             (___kont2845228453_ _hd1831418336_ _hd1830018369_)
                             (_g1829518320_))))
                     (_g1829518320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1830118371_)
                                                     (let ((_e1831318333_
                                                            (gx#stx-e
                                                             _tl1830118371_)))
                                                       (let ((_tl1831518338_
                                                              (##cdr _e1831318333_))
                                                             (_hd1831418336_
                                                              (##car _e1831318333_)))
                                                         (if (gx#stx-null?
                                                              _tl1831518338_)
                                                             (___kont2845228453_
                                                              _hd1831418336_
                                                              _hd1830018369_)
                                                             (_g1829518320_))))
                                                     (_g1829518320_)))))
                                         (_g1829518320_))))))))
                       (if (##pair? _rest1827218280_)
                           (let ((_hd1827718643_ (##car _rest1827218280_))
                                 (_tl1827818645_ (##cdr _rest1827218280_)))
                             (let* ((_hd18648_ _hd1827718643_)
                                    (_rest18650_ _tl1827818645_))
                               (_K1827618640_ _rest18650_ _hd18648_)))
                           (_else1827418288_)))))))
        (let* ((___stx2849228493_ _stx18092_)
               (_g1810018126_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2849228493_))))
          (let ((___kont2849428495_
                 (lambda (_L18186_ _L18187_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?18096_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1821518218_
                                                     _g1821618220_)
                                              (cons _g1821518218_
                                                    _g1821618220_))
                                            '()
                                            _L18187_)))
                          (let ((_g28723_
                                 (_lift-kw-lambda-bindings18097_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1822218225_
                                                     _g1822318227_)
                                              (cons _g1822218225_
                                                    _g1822318227_))
                                            '()
                                            _L18187_)))))
                            (begin
                              (let ((_g28724_
                                     (if (##values? _g28723_)
                                         (##vector-length _g28723_)
                                         1)))
                                (if (not (##fx= _g28724_ 3))
                                    (error "Context expects 3 values"
                                           _g28724_)))
                              (let ((_lift118230_ (##vector-ref _g28723_ 0))
                                    (_lift218231_ (##vector-ref _g28723_ 1))
                                    (_hd18232_ (##vector-ref _g28723_ 2)))
                                (let* ((_expr18234_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18232_
                                                     (cons _L18186_ '())))
                                         _stx18092_))
                                       (_expr18236_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift218231_
                                                     (cons _expr18234_ '())))
                                         _stx18092_))
                                       (_expr18238_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift118230_
                                                     (cons _expr18236_ '())))
                                         _stx18092_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr18238_)))))
                          (let ((_g28725_
                                 (_compile-bindings18095_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1824018243_
                                                     _g1824118245_)
                                              (cons _g1824018243_
                                                    _g1824118245_))
                                            '()
                                            _L18187_)))))
                            (begin
                              (let ((_g28726_
                                     (if (##values? _g28725_)
                                         (##vector-length _g28725_)
                                         1)))
                                (if (not (##fx= _g28726_ 3))
                                    (error "Context expects 3 values"
                                           _g28726_)))
                              (let ((_lift118248_ (##vector-ref _g28725_ 0))
                                    (_lift218249_ (##vector-ref _g28725_ 1))
                                    (_hd18250_ (##vector-ref _g28725_ 2)))
                                (let* ((_body18252_ (gxc#compile-e _L18186_))
                                       (_expr18254_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18250_
                                                     (cons _body18252_ '())))
                                         _stx18092_))
                                       (_expr18256_
                                        (if (null? _lift218249_)
                                            _expr18254_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift218249_
                                                         (cons _expr18254_
                                                               '())))
                                             _stx18092_)))
                                       (_expr18258_
                                        (if (null? _lift118248_)
                                            _expr18256_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift118248_
                                                         (cons _expr18256_
                                                               '())))
                                             _stx18092_))))
                                  _expr18258_))))))
                    gx#current-expander-context
                    (let ((__obj28699 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28699)
                        __obj28699)))))
                (___kont2849828499_
                 (lambda () (gxc#xform-let-values% _stx18092_))))
            (let ((___match2851928520_
                   (lambda (_e1810418138_
                            _hd1810518141_
                            _tl1810618143_
                            _e1810718146_
                            _hd1810818149_
                            _tl1810918151_
                            ___splice2849628497_
                            _target1811018154_
                            _tl1811218156_)
                     (letrec ((_loop1811318159_
                               (lambda (_hd1811118162_ _bind1811718164_)
                                 (if (gx#stx-pair? _hd1811118162_)
                                     (let ((_e1811418167_
                                            (gx#stx-e _hd1811118162_)))
                                       (let ((_lp-tl1811618172_
                                              (##cdr _e1811418167_))
                                             (_lp-hd1811518170_
                                              (##car _e1811418167_)))
                                         (_loop1811318159_
                                          _lp-tl1811618172_
                                          (cons _lp-hd1811518170_
                                                _bind1811718164_))))
                                     (let ((_bind1811818175_
                                            (reverse _bind1811718164_)))
                                       (if (gx#stx-pair? _tl1810918151_)
                                           (let ((_e1811918178_
                                                  (gx#stx-e _tl1810918151_)))
                                             (let ((_tl1812118183_
                                                    (##cdr _e1811918178_))
                                                   (_hd1812018181_
                                                    (##car _e1811918178_)))
                                               (if (gx#stx-null?
                                                    _tl1812118183_)
                                                   (let ((_L18186_
                                                          _hd1812018181_)
                                                         (_L18187_
                                                          _bind1811818175_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1820718210_ _g1820818212_)
                                     (cons _g1820718210_ _g1820818212_))
                                   '()
                                   _L18187_)))
                 (___kont2849428495_ _L18186_ _L18187_)
                 (___kont2849828499_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2849828499_))))
                                           (___kont2849828499_)))))))
                       (_loop1811318159_ _target1811018154_ '())))))
              (if (gx#stx-pair? ___stx2849228493_)
                  (let ((_e1810418138_ (gx#stx-e ___stx2849228493_)))
                    (let ((_tl1810618143_ (##cdr _e1810418138_))
                          (_hd1810518141_ (##car _e1810418138_)))
                      (if (gx#stx-pair? _tl1810618143_)
                          (let ((_e1810718146_ (gx#stx-e _tl1810618143_)))
                            (let ((_tl1810918151_ (##cdr _e1810718146_))
                                  (_hd1810818149_ (##car _e1810718146_)))
                              (if (gx#stx-pair/null? _hd1810818149_)
                                  (let ((___splice2849628497_
                                         (gx#syntax-split-splice
                                          _hd1810818149_
                                          '0)))
                                    (let ((_tl1811218156_
                                           (##vector-ref
                                            ___splice2849628497_
                                            '1))
                                          (_target1811018154_
                                           (##vector-ref
                                            ___splice2849628497_
                                            '0)))
                                      (if (gx#stx-null? _tl1811218156_)
                                          (___match2851928520_
                                           _e1810418138_
                                           _hd1810518141_
                                           _tl1810618143_
                                           _e1810718146_
                                           _hd1810818149_
                                           _tl1810918151_
                                           ___splice2849628497_
                                           _target1811018154_
                                           _tl1811218156_)
                                          (___kont2849828499_))))
                                  (___kont2849828499_))))
                          (___kont2849828499_))))
                  (___kont2849828499_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx17236_)
      (letrec* ((_bind-e__2609126092_
                 (lambda (_id18076_ _expr18077_ _compile?18078_)
                   (cons (cons _id18076_ '())
                         (cons (if _compile?18078_
                                   (gxc#compile-e _expr18077_)
                                   _expr18077_)
                               '()))))
                (_bind-e__0__2609326094_
                 (lambda (_id18083_ _expr18084_)
                   (let ((_compile?18086_ '#t))
                     (_bind-e__2609126092_
                      _id18083_
                      _expr18084_
                      _compile?18086_))))
                (_bind-e17238_
                 (lambda _g28728_
                   (let ((_g28727_ (length _g28728_)))
                     (cond ((##fx= _g28727_ 2)
                            (apply _bind-e__0__2609326094_ _g28728_))
                           ((##fx= _g28727_ 3)
                            (apply _bind-e__2609126092_ _g28728_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28728_))))))
                (_compile-bindings17239_
                 (lambda (_rest17374_)
                   (let _lp17376_ ((_rest17378_ _rest17374_) (_bind17379_ '()))
                     (let* ((_rest1738017388_ _rest17378_)
                            (_else1738217396_
                             (lambda () (reverse _bind17379_)))
                            (_K1738418063_
                             (lambda (_rest17399_ _hd17400_)
                               (let* ((___stx2854228543_ _hd17400_)
                                      (_g1740517452_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2854228543_))))
                                 (let ((___kont2854428545_
                                        (lambda (_L17970_ _L17971_)
                                          (let* ((___stx2852228523_ _L17970_)
                                                 (_g1798618000_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2852228523_))))
                                            (let ((___kont2852428525_
                                                   (lambda (_L18048_)
                                                     (_lp17376_
                                                      _rest17399_
                                                      (cons (_bind-e__2609126092_
                                                             _L17971_
                                                             _L17970_
                                                             '#f)
                                                            _bind17379_))))
                                                  (___kont2852628527_
                                                   (lambda (_L18013_)
                                                     (let ((_g28729_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx17236_
                                                             _L17971_
                                                             _L18013_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28730_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28729_)
                            (##vector-length _g28729_)
                            1)))
                   (if (not (##fx= _g28730_ 3))
                       (error "Context expects 3 values" _g28730_)))
                 (let ((_ids18023_ (##vector-ref _g28729_ 0))
                       (_impls18024_ (##vector-ref _g28729_ 1))
                       (_clauses18025_ (##vector-ref _g28729_ 2)))
                   (let* ((_g28731_
                           (for-each gx#core-bind-runtime! _ids18023_))
                          (_xbind18028_
                           (map _bind-e17238_ _ids18023_ _impls18024_))
                          (_expr*18030_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses18025_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*18032_
                           (_bind-e__2609126092_ _L17971_ _expr*18030_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L17971_)
                        '" => "
                        (map gxc#identifier-symbol _ids18023_))
                       (_lp17376_
                        _rest17399_
                        (cons _bind*18032_
                              (foldl1 cons _bind17379_ _xbind18028_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2853328534_
                                                     (lambda (_e1798918040_
                                                              _hd1799018043_
                                                              _tl1799118045_)
                                                       (let ((_L18048_
                                                              _tl1799118045_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18048_)
                     (___kont2852428525_ _L18048_)
                     (___kont2852628527_ _tl1799118045_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2852228523_)
                                                    (let ((_e1798918040_
                                                           (gx#stx-e
                                                            ___stx2852228523_)))
                                                      (let ((_tl1799118045_
                                                             (##cdr _e1798918040_))
                                                            (_hd1799018043_
                                                             (##car _e1798918040_)))
                                                        (___match2853328534_
                                                         _e1798918040_
                                                         _hd1799018043_
                                                         _tl1799118045_)))
                                                    (_g1798618000_)))))))
                                       (___kont2854628547_
                                        (lambda (_L17798_ _L17799_)
                                          (let* ((_g1781317843_
                                                  (lambda (_g1781417840_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1781417840_)))
                                                 (_g1781217938_
                                                  (lambda (_g1781417846_)
                                                    (if (gx#stx-pair?
                                                         _g1781417846_)
                                                        (let ((_e1781817848_
                                                               (gx#stx-e
                                                                _g1781417846_)))
                                                          (let ((_hd1781917851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1781817848_))
                        (_tl1782017853_ (##cdr _e1781817848_)))
                    (if (gx#stx-pair? _tl1782017853_)
                        (let ((_e1782117856_ (gx#stx-e _tl1782017853_)))
                          (let ((_hd1782217859_ (##car _e1782117856_))
                                (_tl1782317861_ (##cdr _e1782117856_)))
                            (if (gx#stx-pair? _hd1782217859_)
                                (let ((_e1782417864_
                                       (gx#stx-e _hd1782217859_)))
                                  (let ((_hd1782517867_ (##car _e1782417864_))
                                        (_tl1782617869_ (##cdr _e1782417864_)))
                                    (if (gx#stx-pair? _hd1782517867_)
                                        (let ((_e1782717872_
                                               (gx#stx-e _hd1782517867_)))
                                          (let ((_hd1782817875_
                                                 (##car _e1782717872_))
                                                (_tl1782917877_
                                                 (##cdr _e1782717872_)))
                                            (if (gx#stx-pair? _hd1782817875_)
                                                (let ((_e1783017880_
                                                       (gx#stx-e
                                                        _hd1782817875_)))
                                                  (let ((_hd1783117883_
                                                         (##car _e1783017880_))
                                                        (_tl1783217885_
                                                         (##cdr _e1783017880_)))
                                                    (if (gx#stx-null?
                                                         _tl1783217885_)
                                                        (if (gx#stx-pair?
                                                             _tl1782917877_)
                                                            (let ((_e1783317888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1782917877_)))
                      (let ((_hd1783417891_ (##car _e1783317888_))
                            (_tl1783517893_ (##cdr _e1783317888_)))
                        (if (gx#stx-null? _tl1783517893_)
                            (if (gx#stx-null? _tl1782617869_)
                                (if (gx#stx-pair? _tl1782317861_)
                                    (let ((_e1783617896_
                                           (gx#stx-e _tl1782317861_)))
                                      (let ((_hd1783717899_
                                             (##car _e1783617896_))
                                            (_tl1783817901_
                                             (##cdr _e1783617896_)))
                                        (if (gx#stx-null? _tl1783817901_)
                                            ((lambda (_L17904_
                                                      _L17905_
                                                      _L17906_)
                                               (let* ((_lambda-id17930_
                                                       (make-symbol
                                                        (gx#stx-e _L17799_)
                                                        (gensym '__)))
                                                      (_lambda-id17932_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id17930_
                                                        (gx#stx-source
                                                         _stx17236_)))
                                                      (_g28732_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id17932_))
                                                      (_new-case-lambda-expr17935_
                                                       (gxc#apply-expression-subst
                                                        _L17904_
                                                        _L17906_
                                                        _lambda-id17932_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L17799_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id17932_))
                                                   (_lp17376_
                                                    (cons (_bind-e__2609126092_
                                                           _L17799_
                                                           _new-case-lambda-expr17935_
                                                           '#f)
                                                          _rest17399_)
                                                    (cons (_bind-e__0__2609326094_
                                                           _lambda-id17932_
                                                           _L17905_)
                                                          _bind17379_)))))
                                             _hd1783717899_
                                             _hd1783417891_
                                             _hd1783117883_)
                                            (_g1781317843_ _g1781417846_))))
                                    (_g1781317843_ _g1781417846_))
                                (_g1781317843_ _g1781417846_))
                            (_g1781317843_ _g1781417846_))))
                    (_g1781317843_ _g1781417846_))
                (_g1781317843_ _g1781417846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1781317843_
                                                 _g1781417846_))))
                                        (_g1781317843_ _g1781417846_))))
                                (_g1781317843_ _g1781417846_))))
                        (_g1781317843_ _g1781417846_))))
                (_g1781317843_ _g1781417846_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1781217938_ _L17798_))))
                                       (___kont2854828549_
                                        (lambda (_L17522_ _L17523_)
                                          (let* ((_g1753717590_
                                                  (lambda (_g1753817587_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1753817587_)))
                                                 (_g1753617766_
                                                  (lambda (_g1753817593_)
                                                    (if (gx#stx-pair?
                                                         _g1753817593_)
                                                        (let ((_e1754417595_
                                                               (gx#stx-e
                                                                _g1753817593_)))
                                                          (let ((_hd1754517598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1754417595_))
                        (_tl1754617600_ (##cdr _e1754417595_)))
                    (if (gx#stx-pair? _tl1754617600_)
                        (let ((_e1754717603_ (gx#stx-e _tl1754617600_)))
                          (let ((_hd1754817606_ (##car _e1754717603_))
                                (_tl1754917608_ (##cdr _e1754717603_)))
                            (if (gx#stx-pair? _hd1754817606_)
                                (let ((_e1755017611_
                                       (gx#stx-e _hd1754817606_)))
                                  (let ((_hd1755117614_ (##car _e1755017611_))
                                        (_tl1755217616_ (##cdr _e1755017611_)))
                                    (if (gx#stx-pair? _hd1755117614_)
                                        (let ((_e1755317619_
                                               (gx#stx-e _hd1755117614_)))
                                          (let ((_hd1755417622_
                                                 (##car _e1755317619_))
                                                (_tl1755517624_
                                                 (##cdr _e1755317619_)))
                                            (if (gx#stx-pair? _hd1755417622_)
                                                (let ((_e1755617627_
                                                       (gx#stx-e
                                                        _hd1755417622_)))
                                                  (let ((_hd1755717630_
                                                         (##car _e1755617627_))
                                                        (_tl1755817632_
                                                         (##cdr _e1755617627_)))
                                                    (if (gx#stx-null?
                                                         _tl1755817632_)
                                                        (if (gx#stx-pair?
                                                             _tl1755517624_)
                                                            (let ((_e1755917635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1755517624_)))
                      (let ((_hd1756017638_ (##car _e1755917635_))
                            (_tl1756117640_ (##cdr _e1755917635_)))
                        (if (gx#stx-pair? _hd1756017638_)
                            (let ((_e1756217643_ (gx#stx-e _hd1756017638_)))
                              (let ((_hd1756317646_ (##car _e1756217643_))
                                    (_tl1756417648_ (##cdr _e1756217643_)))
                                (if (gx#stx-pair? _tl1756417648_)
                                    (let ((_e1756517651_
                                           (gx#stx-e _tl1756417648_)))
                                      (let ((_hd1756617654_
                                             (##car _e1756517651_))
                                            (_tl1756717656_
                                             (##cdr _e1756517651_)))
                                        (if (gx#stx-pair? _hd1756617654_)
                                            (let ((_e1756817659_
                                                   (gx#stx-e _hd1756617654_)))
                                              (let ((_hd1756917662_
                                                     (##car _e1756817659_))
                                                    (_tl1757017664_
                                                     (##cdr _e1756817659_)))
                                                (if (gx#stx-pair?
                                                     _hd1756917662_)
                                                    (let ((_e1757117667_
                                                           (gx#stx-e
                                                            _hd1756917662_)))
                                                      (let ((_hd1757217670_
                                                             (##car _e1757117667_))
                                                            (_tl1757317672_
                                                             (##cdr _e1757117667_)))
                                                        (if (gx#stx-pair?
                                                             _hd1757217670_)
                                                            (let ((_e1757417675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1757217670_)))
                      (let ((_hd1757517678_ (##car _e1757417675_))
                            (_tl1757617680_ (##cdr _e1757417675_)))
                        (if (gx#stx-null? _tl1757617680_)
                            (if (gx#stx-pair? _tl1757317672_)
                                (let ((_e1757717683_
                                       (gx#stx-e _tl1757317672_)))
                                  (let ((_hd1757817686_ (##car _e1757717683_))
                                        (_tl1757917688_ (##cdr _e1757717683_)))
                                    (if (gx#stx-null? _tl1757917688_)
                                        (if (gx#stx-null? _tl1757017664_)
                                            (if (gx#stx-pair? _tl1756717656_)
                                                (let ((_e1758017691_
                                                       (gx#stx-e
                                                        _tl1756717656_)))
                                                  (let ((_hd1758117694_
                                                         (##car _e1758017691_))
                                                        (_tl1758217696_
                                                         (##cdr _e1758017691_)))
                                                    (if (gx#stx-null?
                                                         _tl1758217696_)
                                                        (if (gx#stx-null?
                                                             _tl1756117640_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1755217616_)
                        (if (gx#stx-pair? _tl1754917608_)
                            (let ((_e1758317699_ (gx#stx-e _tl1754917608_)))
                              (let ((_hd1758417702_ (##car _e1758317699_))
                                    (_tl1758517704_ (##cdr _e1758317699_)))
                                (if (gx#stx-null? _tl1758517704_)
                                    ((lambda (_L17707_
                                              _L17708_
                                              _L17709_
                                              _L17710_
                                              _L17711_)
                                       (let* ((_get-kws-id17751_
                                               (make-symbol
                                                (gx#stx-e _L17523_)
                                                (gensym '__)))
                                              (_get-kws-id17753_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id17751_
                                                (gx#stx-source _stx17236_)))
                                              (_main-id17755_
                                               (make-symbol
                                                (gx#stx-e _L17523_)
                                                (gensym '__)))
                                              (_main-id17757_
                                               (gx#core-quote-syntax__1
                                                _main-id17755_
                                                (gx#stx-source _stx17236_)))
                                              (_g28733_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id17753_))
                                              (_g28734_
                                               (gx#core-bind-runtime!__0
                                                _main-id17757_))
                                              (_new-kw-dispatch17761_
                                               (gxc#apply-expression-subst
                                                _L17707_
                                                _L17711_
                                                _get-kws-id17753_))
                                              (_new-get-kws17763_
                                               (gxc#apply-expression-subst
                                                _L17708_
                                                _L17710_
                                                _main-id17757_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L17523_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id17753_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id17757_))
                                           (_lp17376_
                                            (cons (_bind-e__2609126092_
                                                   _main-id17757_
                                                   _L17709_
                                                   '#f)
                                                  (cons (_bind-e__2609126092_
                                                         _get-kws-id17753_
                                                         _new-get-kws17763_
                                                         '#f)
                                                        (cons (_bind-e__2609126092_
                                                               _L17523_
                                                               _new-kw-dispatch17761_
                                                               '#f)
                                                              _rest17399_)))
                                            _bind17379_))))
                                     _hd1758417702_
                                     _hd1758117694_
                                     _hd1757817686_
                                     _hd1757517678_
                                     _hd1755717630_)
                                    (_g1753717590_ _g1753817593_))))
                            (_g1753717590_ _g1753817593_))
                        (_g1753717590_ _g1753817593_))
                    (_g1753717590_ _g1753817593_))
                (_g1753717590_ _g1753817593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1753717590_ _g1753817593_))
                                            (_g1753717590_ _g1753817593_))
                                        (_g1753717590_ _g1753817593_))))
                                (_g1753717590_ _g1753817593_))
                            (_g1753717590_ _g1753817593_))))
                    (_g1753717590_ _g1753817593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1753717590_
                                                     _g1753817593_))))
                                            (_g1753717590_ _g1753817593_))))
                                    (_g1753717590_ _g1753817593_))))
                            (_g1753717590_ _g1753817593_))))
                    (_g1753717590_ _g1753817593_))
                (_g1753717590_ _g1753817593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1753717590_
                                                 _g1753817593_))))
                                        (_g1753717590_ _g1753817593_))))
                                (_g1753717590_ _g1753817593_))))
                        (_g1753717590_ _g1753817593_))))
                (_g1753717590_ _g1753817593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1753617766_ _L17522_))))
                                       (___kont2855028551_
                                        (lambda (_L17473_ _L17474_)
                                          (_lp17376_
                                           _rest17399_
                                           (cons (cons _L17474_
                                                       (cons (gxc#compile-e
                                                              _L17473_)
                                                             '()))
                                                 _bind17379_)))))
                                   (let* ((___match2861728618_
                                           (lambda (_e1743117498_
                                                    _hd1743217501_
                                                    _tl1743317503_
                                                    _e1743417506_
                                                    _hd1743517509_
                                                    _tl1743617511_
                                                    _e1743717514_
                                                    _hd1743817517_
                                                    _tl1743917519_)
                                             (let ((_L17522_ _hd1743817517_)
                                                   (_L17523_ _hd1743517509_))
                                               (if (if (gx#identifier?
                                                        _L17523_)
                                                       (gxc#kw-lambda-expr?
                                                        _L17522_)
                                                       '#f)
                                                   (___kont2854828549_
                                                    _L17522_
                                                    _L17523_)
                                                   (___kont2855028551_
                                                    _hd1743817517_
                                                    _hd1743217501_)))))
                                          (___match2859528596_
                                           (lambda (_e1742017774_
                                                    _hd1742117777_
                                                    _tl1742217779_
                                                    _e1742317782_
                                                    _hd1742417785_
                                                    _tl1742517787_
                                                    _e1742617790_
                                                    _hd1742717793_
                                                    _tl1742817795_)
                                             (let ((_L17798_ _hd1742717793_)
                                                   (_L17799_ _hd1742417785_))
                                               (if (if (gx#identifier?
                                                        _L17799_)
                                                       (gxc#opt-lambda-expr?
                                                        _L17798_)
                                                       '#f)
                                                   (___kont2854628547_
                                                    _L17798_
                                                    _L17799_)
                                                   (___match2861728618_
                                                    _e1742017774_
                                                    _hd1742117777_
                                                    _tl1742217779_
                                                    _e1742317782_
                                                    _hd1742417785_
                                                    _tl1742517787_
                                                    _e1742617790_
                                                    _hd1742717793_
                                                    _tl1742817795_)))))
                                          (___match2857328574_
                                           (lambda (_e1740917946_
                                                    _hd1741017949_
                                                    _tl1741117951_
                                                    _e1741217954_
                                                    _hd1741317957_
                                                    _tl1741417959_
                                                    _e1741517962_
                                                    _hd1741617965_
                                                    _tl1741717967_)
                                             (let ((_L17970_ _hd1741617965_)
                                                   (_L17971_ _hd1741317957_))
                                               (if (if (gx#identifier?
                                                        _L17971_)
                                                       (gxc#case-lambda-expr?
                                                        _L17970_)
                                                       '#f)
                                                   (___kont2854428545_
                                                    _L17970_
                                                    _L17971_)
                                                   (___match2859528596_
                                                    _e1740917946_
                                                    _hd1741017949_
                                                    _tl1741117951_
                                                    _e1741217954_
                                                    _hd1741317957_
                                                    _tl1741417959_
                                                    _e1741517962_
                                                    _hd1741617965_
                                                    _tl1741717967_))))))
                                     (if (gx#stx-pair? ___stx2854228543_)
                                         (let ((_e1740917946_
                                                (gx#stx-e ___stx2854228543_)))
                                           (let ((_tl1741117951_
                                                  (##cdr _e1740917946_))
                                                 (_hd1741017949_
                                                  (##car _e1740917946_)))
                                             (if (gx#stx-pair? _hd1741017949_)
                                                 (let ((_e1741217954_
                                                        (gx#stx-e
                                                         _hd1741017949_)))
                                                   (let ((_tl1741417959_
                                                          (##cdr _e1741217954_))
                                                         (_hd1741317957_
                                                          (##car _e1741217954_)))
                                                     (if (gx#stx-null?
                                                          _tl1741417959_)
                                                         (if (gx#stx-pair?
                                                              _tl1741117951_)
                                                             (let ((_e1741517962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1741117951_)))
                       (let ((_tl1741717967_ (##cdr _e1741517962_))
                             (_hd1741617965_ (##car _e1741517962_)))
                         (if (gx#stx-null? _tl1741717967_)
                             (___match2857328574_
                              _e1740917946_
                              _hd1741017949_
                              _tl1741117951_
                              _e1741217954_
                              _hd1741317957_
                              _tl1741417959_
                              _e1741517962_
                              _hd1741617965_
                              _tl1741717967_)
                             (_g1740517452_))))
                     (_g1740517452_))
                 (if (gx#stx-pair? _tl1741117951_)
                     (let ((_e1744517465_ (gx#stx-e _tl1741117951_)))
                       (let ((_tl1744717470_ (##cdr _e1744517465_))
                             (_hd1744617468_ (##car _e1744517465_)))
                         (if (gx#stx-null? _tl1744717470_)
                             (___kont2855028551_ _hd1744617468_ _hd1741017949_)
                             (_g1740517452_))))
                     (_g1740517452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1741117951_)
                                                     (let ((_e1744517465_
                                                            (gx#stx-e
                                                             _tl1741117951_)))
                                                       (let ((_tl1744717470_
                                                              (##cdr _e1744517465_))
                                                             (_hd1744617468_
                                                              (##car _e1744517465_)))
                                                         (if (gx#stx-null?
                                                              _tl1744717470_)
                                                             (___kont2855028551_
                                                              _hd1744617468_
                                                              _hd1741017949_)
                                                             (_g1740517452_))))
                                                     (_g1740517452_)))))
                                         (_g1740517452_))))))))
                       (if (##pair? _rest1738017388_)
                           (let ((_hd1738518066_ (##car _rest1738017388_))
                                 (_tl1738618068_ (##cdr _rest1738017388_)))
                             (let* ((_hd18071_ _hd1738518066_)
                                    (_rest18073_ _tl1738618068_))
                               (_K1738418063_ _rest18073_ _hd18071_)))
                           (_else1738217396_)))))))
        (let* ((___stx2863428635_ _stx17236_)
               (_g1724217269_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2863428635_))))
          (let ((___kont2863628637_
                 (lambda (_L17329_ _L17330_ _L17331_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd17368_
                             (_compile-bindings17239_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1736017363_ _g1736117365_)
                                          (cons _g1736017363_ _g1736117365_))
                                        '()
                                        _L17330_))))
                            (_body17369_ (gxc#compile-e _L17329_)))
                        (gxc#xform-wrap-source
                         (cons _L17331_
                               (cons _hd17368_ (cons _body17369_ '())))
                         _stx17236_)))
                    gx#current-expander-context
                    (let ((__obj28700 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28700)
                        __obj28700)))))
                (___kont2864028641_
                 (lambda () (gxc#xform-let-values% _stx17236_))))
            (let ((___match2866128662_
                   (lambda (_e1724717281_
                            _hd1724817284_
                            _tl1724917286_
                            _e1725017289_
                            _hd1725117292_
                            _tl1725217294_
                            ___splice2863828639_
                            _target1725317297_
                            _tl1725517299_)
                     (letrec ((_loop1725617302_
                               (lambda (_hd1725417305_ _bind1726017307_)
                                 (if (gx#stx-pair? _hd1725417305_)
                                     (let ((_e1725717310_
                                            (gx#stx-e _hd1725417305_)))
                                       (let ((_lp-tl1725917315_
                                              (##cdr _e1725717310_))
                                             (_lp-hd1725817313_
                                              (##car _e1725717310_)))
                                         (_loop1725617302_
                                          _lp-tl1725917315_
                                          (cons _lp-hd1725817313_
                                                _bind1726017307_))))
                                     (let ((_bind1726117318_
                                            (reverse _bind1726017307_)))
                                       (if (gx#stx-pair? _tl1725217294_)
                                           (let ((_e1726217321_
                                                  (gx#stx-e _tl1725217294_)))
                                             (let ((_tl1726417326_
                                                    (##cdr _e1726217321_))
                                                   (_hd1726317324_
                                                    (##car _e1726217321_)))
                                               (if (gx#stx-null?
                                                    _tl1726417326_)
                                                   (let ((_L17329_
                                                          _hd1726317324_)
                                                         (_L17330_
                                                          _bind1726117318_)
                                                         (_L17331_
                                                          _hd1724817284_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1735217355_ _g1735317357_)
                                     (cons _g1735217355_ _g1735317357_))
                                   '()
                                   _L17330_)))
                 (___kont2863628637_ _L17329_ _L17330_ _L17331_)
                 (___kont2864028641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2864028641_))))
                                           (___kont2864028641_)))))))
                       (_loop1725617302_ _target1725317297_ '())))))
              (if (gx#stx-pair? ___stx2863428635_)
                  (let ((_e1724717281_ (gx#stx-e ___stx2863428635_)))
                    (let ((_tl1724917286_ (##cdr _e1724717281_))
                          (_hd1724817284_ (##car _e1724717281_)))
                      (if (gx#stx-pair? _tl1724917286_)
                          (let ((_e1725017289_ (gx#stx-e _tl1724917286_)))
                            (let ((_tl1725217294_ (##cdr _e1725017289_))
                                  (_hd1725117292_ (##car _e1725017289_)))
                              (if (gx#stx-pair/null? _hd1725117292_)
                                  (let ((___splice2863828639_
                                         (gx#syntax-split-splice
                                          _hd1725117292_
                                          '0)))
                                    (let ((_tl1725517299_
                                           (##vector-ref
                                            ___splice2863828639_
                                            '1))
                                          (_target1725317297_
                                           (##vector-ref
                                            ___splice2863828639_
                                            '0)))
                                      (if (gx#stx-null? _tl1725517299_)
                                          (___match2866128662_
                                           _e1724717281_
                                           _hd1724817284_
                                           _tl1724917286_
                                           _e1725017289_
                                           _hd1725117292_
                                           _tl1725217294_
                                           ___splice2863828639_
                                           _target1725317297_
                                           _tl1725517299_)
                                          (___kont2864028641_))))
                                  (___kont2864028641_))))
                          (___kont2864028641_))))
                  (___kont2864028641_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind17154_)
      (let* ((___stx2866428665_ _bind17154_)
             (_g1715717174_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2866428665_))))
        (let ((___kont2866628667_
               (lambda (_L17210_ _L17211_)
                 (if (gx#identifier? _L17211_)
                     (let ((_$e17227_ (gxc#case-lambda-expr? _L17210_)))
                       (if _$e17227_
                           _$e17227_
                           (let ((_$e17230_ (gxc#opt-lambda-expr? _L17210_)))
                             (if _$e17230_
                                 _$e17230_
                                 (gxc#kw-lambda-expr? _L17210_)))))
                     '#f)))
              (___kont2866828669_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2866428665_)
              (let ((_e1716117186_ (gx#stx-e ___stx2866428665_)))
                (let ((_tl1716317191_ (##cdr _e1716117186_))
                      (_hd1716217189_ (##car _e1716117186_)))
                  (if (gx#stx-pair? _hd1716217189_)
                      (let ((_e1716417194_ (gx#stx-e _hd1716217189_)))
                        (let ((_tl1716617199_ (##cdr _e1716417194_))
                              (_hd1716517197_ (##car _e1716417194_)))
                          (if (gx#stx-null? _tl1716617199_)
                              (if (gx#stx-pair? _tl1716317191_)
                                  (let ((_e1716717202_
                                         (gx#stx-e _tl1716317191_)))
                                    (let ((_tl1716917207_
                                           (##cdr _e1716717202_))
                                          (_hd1716817205_
                                           (##car _e1716717202_)))
                                      (if (gx#stx-null? _tl1716917207_)
                                          (___kont2866628667_
                                           _hd1716817205_
                                           _hd1716517197_)
                                          (___kont2866828669_))))
                                  (___kont2866828669_))
                              (___kont2866828669_))))
                      (___kont2866828669_))))
              (___kont2866828669_)))))))
